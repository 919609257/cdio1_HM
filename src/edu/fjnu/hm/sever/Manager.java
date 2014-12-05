/**
 * 
 */
package edu.fjnu.hm.sever;


/**
 * @author admin
 *
 */
public class Manager {

	public String getMid() {
		return Mid;
	}
	public void setMid(String mid) {
		Mid = mid;
	}
	public String getMName() {
		return MName;
	}
	public void setMName(String mName) {
		MName = mName;
	}
	public String getMPwd() {
		return MPwd;
	}
	public void setMPwd(String mPwd) {
		MPwd = mPwd;
	}
	public String getMSex() {
		return MSex;
	}
	public void setMSex(String mSex) {
		MSex = mSex;
	}
	public String getMPC() {
		return MPC;
	}
	public void setMPC(String mPC) {
		MPC = mPC;
	}
	public String getMNP() {
		return MNP;
	}
	public void setMNP(String mNP) {
		MNP = mNP;
	}
	public String getMNation() {
		return MNation;
	}
	public void setMNation(String mNation) {
		MNation = mNation;
	}
	public String getMBP() {
		return MBP;
	}
	public void setMBP(String mBP) {
		MBP = mBP;
	}
	public String getMTel() {
		return MTel;
	}
	public void setMTel(String mTel) {
		MTel = mTel;
	}
	public String getDatetime() {
		return datetime;
	}
	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}
	public String getMICN() {
		return MICN;
	}
	public void setMICN(String mICN) {
		MICN = mICN;
	}
	public String getMImage() {
		return MImage;
	}
	public void setMImage(String mImage) {
		MImage = mImage;
	}
	String Mid; 	// 管理员工号
	String MName;	// 用户名
	String MPwd;	// 登录密码
	String MSex; 	// 性别
	String MPC; 	// 政治面貌
	String MNP; 	// 籍贯
	String MNation; // 民族
	String MBP;		// 家庭地址
	String MTel;	// 电话号码
	String datetime;	// 出生日期
	String MICN;	// 身份证号码
	String MImage;	// 相片

	
}
