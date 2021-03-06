package com.springjobs.ajaxController;


import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.springjobs.domain.UPhotos;
import com.springjobs.domain.Unotify;
import com.springjobs.domain.Upfurl;
import com.springjobs.domain.Users;
import com.springjobs.service.user.UserService;

@Controller
public class UserController {
	
	@Autowired
	@Qualifier("userServiceImpl")
	private UserService userService;
	
	@RequestMapping( value="/user1", method=RequestMethod.POST)
	public void getJsonUser1(	@RequestBody Users user, 
									 			Model model) throws Exception{
		System.out.println("/getJsonUser2 : POST value : "+user);
		model.addAttribute("user", user);
	}
	
	@RequestMapping( value="/user2", method=RequestMethod.GET)
	public void getJsonUser2(	@RequestParam("userId") String userId, 
			Model model) throws Exception{
		System.out.println("/getJsonUser2 : GET value : "+userId);
		model.addAttribute("user", null);
	}
	
	@RequestMapping( value="/addUser", method=RequestMethod.POST)
	public void addUser(@RequestBody Users user,Model model){
		System.out.println("addUser called"+user.getUem());
		model.addAttribute("joinUser",userService.addUser(user));
	}
	
	@RequestMapping( value="/login", method=RequestMethod.POST)
	public void login(@RequestBody Users user, HttpSession session, Model model){
		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("Login Request executed: "+user.getUem());
		Users loginUser = userService.login(user);
		session.setAttribute("user", loginUser);
		System.out.println("SESSION : "+session.getAttribute("user"));
		model.addAttribute("user", loginUser);
	}

	@RequestMapping( value="/loginCheck", method=RequestMethod.POST)
	public void loginCheck(HttpSession session, Model model){
		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Users loginUser = (Users) session.getAttribute("user");
		if(loginUser!=null){
			List<Unotify> notiList = userService.getNotifyCount(loginUser);
			loginUser.setUnotify(notiList);
			System.out.println("update된 list : "+loginUser);
		}
		model.addAttribute("user", loginUser);
	}
	
	@RequestMapping( value="/logout", method=RequestMethod.POST)
	public void logout(HttpSession session, Model model){
		session.invalidate();
	}
	
	@RequestMapping(value="/user/userEmailConfirm", method=RequestMethod.GET)
	public void userEmailConfirm(@RequestParam("uno") int uno,  Model model){
		System.out.println("userEmailConfirm : "+ uno);
		userService.userEmailConfirm(uno);
	}

	@RequestMapping(value="/user/getUserPhoto", method=RequestMethod.POST)
	public void getUserPhoto(@RequestBody Users user,  Model model){
		System.out.println("getUserPhoto : "+ user);
		model.addAttribute("result",userService.getUserPhoto(user));
	}
	
	@RequestMapping(value="/user/uploadPhoto", method=RequestMethod.POST)
	public void uploadPhoto(MultipartHttpServletRequest request, HttpSession session,  Model model){
		try {
			Map<String, MultipartFile>	files = request.getFileMap();
			CommonsMultipartFile cmf = (CommonsMultipartFile) files.get("uploadFile");
			Users loginUser = (Users) session.getAttribute("user");
			String path = "/view/resources/img/"+loginUser.getUno()+"@"+cmf.getOriginalFilename();
			String realPath = request.getSession().getServletContext().getRealPath(path);
			File file = new File(realPath);
			cmf.transferTo(file);
			UPhotos uPhotos = new UPhotos(0,path,loginUser.getUno());
//			UPhotos uPhotos = new UPhotos(0,path,1);
			userService.uploadPhoto(uPhotos);
			model.addAttribute("result", 1);
		} catch (IllegalStateException | IOException e) {
			model.addAttribute("result", 0);
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="/user/getUserSkills", method=RequestMethod.POST)
	public void getUserSkills(@RequestBody Users user,  Model model){
		System.out.println("getUserSkills : "+ user);
		model.addAttribute("result",userService.getUserSkills(user));
	}
	
	@RequestMapping(value="/user/updateUserSkills", method=RequestMethod.POST)
	public void updateUserSkills(@RequestBody Users user,  Model model){
		System.out.println("updateUserSkills : "+ user);
		userService.deleteUserSkills(user);
		model.addAttribute("result",userService.updateUserSkills(user));
	}
	
	@RequestMapping(value="/user/getTotalCount", method=RequestMethod.GET)
	public void getTotalCount(Model model){
		System.out.println("UserController의 getTotalCount!");
		model.addAttribute("map",userService.getTotalCount());
	}	
	
	@RequestMapping(value="/user/insertUserPfUrl", method=RequestMethod.POST)
	public void insertUserPfUrl(@RequestBody Upfurl upfurl,  Model model) {
		model.addAttribute("result", userService.insertUserPfUrl(upfurl));
	}

	@RequestMapping(value="/user/getUserPfUrlList", method=RequestMethod.POST)
	public void getUserPfUrlList(@RequestBody Upfurl upfurl,  Model model) {
		System.out.println("result : "+userService.getUserPfUrlList(upfurl));
		model.addAttribute("result", userService.getUserPfUrlList(upfurl));
	}

	@RequestMapping(value="/user/deleteUserPfUrl", method=RequestMethod.POST)
	public void deleteUserPfUrl(@RequestBody Upfurl upfurl,  Model model) {
		model.addAttribute("result", userService.deleteUserPfUrl(upfurl));
	}
	
	@RequestMapping(value="/user/getDeveloperList", method=RequestMethod.POST)
	public void getDeveloperList(@RequestBody List<Integer> sknoList,  Model model) {
		model.addAttribute("result", userService.getDeveloperList(sknoList));
	}
	
	@RequestMapping(value="/user/getUserInfo", method=RequestMethod.GET)
	public void getUserInfo(@RequestParam("uno") int uno,  Model model) {
		System.out.println("getUserinfo : "+userService.getUserInfo(uno));
		model.addAttribute("userInfo", userService.getUserInfo(uno));
	}
	
	@RequestMapping(value="/user/getNotifyList", method=RequestMethod.POST)
	public void getNotifyList(@RequestBody Users user,  HttpSession session, Model model) {
		Users temp = (Users) session.getAttribute("user");
		temp.setUnotify(null);
		model.addAttribute("result", userService.getNotifyList(user));
	}
}
