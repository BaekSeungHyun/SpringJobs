                               package com.springjobs.domain;

import java.sql.Date;

//채용 공고 
public class Crecs {
	private int reno; //구인 일련번호
	private String retl;
	private String recnm;
	private String rewc;
	private int renpl;
	private String rechk;
	private String reyr;
	private String reidt;
	private String rejp;
	private String retp;
	private int repay;
	private String rerg;
	private Date rerd;
	private Date reed;
	private int rehtn;
	private String rear;
	private String rewt;
	private int cno;
	
	public Crecs() {
		// TODO Auto-generated constructor stub
	}
	
	public Crecs(int reno, String retl, String recnm, String rewc, int renpl, String rechk, String reyr, String reidt,
			String rejp, String retp, int repay, String rerg, Date rerd, Date reed, int rehtn, String rear, String rewt,
			int cno, int uno) {
		super();
		this.reno = reno;
		this.retl = retl;
		this.recnm = recnm;
		this.rewc = rewc;
		this.renpl = renpl;
		this.rechk = rechk;
		this.reyr = reyr;
		this.reidt = reidt;
		this.rejp = rejp;
		this.retp = retp;
		this.repay = repay;
		this.rerg = rerg;
		this.rerd = rerd;
		this.reed = reed;
		this.rehtn = rehtn;
		this.rear = rear;
		this.rewt = rewt;
		this.cno = cno;
	}



	public int getReno() {
		return reno;
	}
	public void setReno(int reno) {
		this.reno = reno;
	}
	public String getRetl() {
		return retl;
	}
	public void setRetl(String retl) {
		this.retl = retl;
	}
	public String getRecnm() {
		return recnm;
	}
	public void setRecnm(String recnm) {
		this.recnm = recnm;
	}
	public String getRewc() {
		return rewc;
	}
	public void setRewc(String rewc) {
		this.rewc = rewc;
	}
	public int getRenpl() {
		return renpl;
	}
	public void setRenpl(int renpl) {
		this.renpl = renpl;
	}
	public String getRechk() {
		return rechk;
	}
	public void setRechk(String rechk) {
		this.rechk = rechk;
	}
	public String getReyr() {
		return reyr;
	}
	public void setReyr(String reyr) {
		this.reyr = reyr;
	}
	public String getReidt() {
		return reidt;
	}
	public void setReidt(String reidt) {
		this.reidt = reidt;
	}
	public String getRejp() {
		return rejp;
	}
	public void setRejp(String rejp) {
		this.rejp = rejp;
	}
	public String getRetp() {
		return retp;
	}
	public void setRetp(String retp) {
		this.retp = retp;
	}
	public int getRepay() {
		return repay;
	}
	public void setRepay(int repay) {
		this.repay = repay;
	}
	public String getRerg() {
		return rerg;
	}
	public void setRerg(String rerg) {
		this.rerg = rerg;
	}
	public Date getRerd() {
		return rerd;
	}
	public void setRerd(Date rerd) {
		this.rerd = rerd;
	}
	public Date getReed() {
		return reed;
	}
	public void setReed(Date reed) {
		this.reed = reed;
	}
	public int getRehtn() {
		return rehtn;
	}
	public void setRehtn(int rehtn) {
		this.rehtn = rehtn;
	}
	public String getRear() {
		return rear;
	}
	public void setRear(String rear) {
		this.rear = rear;
	}
	public String getRewt() {
		return rewt;
	}
	public void setRewt(String rewt) {
		this.rewt = rewt;
	}
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	
	@Override
	public String toString() {
		return "Crecs [reno=" + reno + ", retl=" + retl + ", recnm=" + recnm + ", rewc=" + rewc + ", renpl=" + renpl
				+ ", rechk=" + rechk + ", reyr=" + reyr + ", reidt=" + reidt + ", rejp=" + rejp + ", retp=" + retp
				+ ", repay=" + repay + ", rerg=" + rerg + ", rerd=" + rerd + ", reed=" + reed + ", rehtn=" + rehtn
				+ ", rear=" + rear + ", rewt=" + rewt + ", cno=" + cno + "]";
	}
	
	
	
}
