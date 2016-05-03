package com.springjobs.dao.developer.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.springjobs.common.Search;
import com.springjobs.dao.developer.DeveloperDao;
import com.springjobs.domain.Cpjts;
import com.springjobs.domain.UTags;
import com.springjobs.domain.Users;


@Repository("developerDaoImpl")
public class DeveloperDaoImpl implements DeveloperDao {
	
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<Cpjts> getProjectList(Search search) {
		return sqlSession.selectList("ProjectMapper.getProjectList", search);
	}
	@Override

	public int addInfo(Users users){
		sqlSession.insert("UserMapper.addInfo", users);
		int uno = users.getUno();
		System.out.println("dao impl에서 uno 값은??"+ uno);
		return uno;
	}
	@Override
	public List<UTags> uTags(Search search){
		return sqlSession.selectList("UserMapper.uTags", search);
	}


	@Override
	public List<String> getUtag(int uno) throws Exception {
		return sqlSession.selectList("UserMapper.getUtag", uno);
	}
	
	
}
