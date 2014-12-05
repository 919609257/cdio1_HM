package edu.fjnu.hm.dao;
import java.sql.ResultSet;
import edu.fjnu.hm.sever.Notice;


//定义一个Dao层接口，负责与数据库进行交互
public interface Dao {
	public boolean addNotice(Notice not);//教师发布公告
	public Notice getNotice(String notId);//按标号获得公告信息
	public boolean deleteNotice(String notId);//安标好删除公告信息

	//public boolean uploadResourceInfo(Resource rs);//教师上传资源
	//public boolean deleteResourceInfo(Resource rs);//教师删除资源
	public ResultSet getAllNotice();//返回所有公告	
	public ResultSet getAllResourceInfo();//返回所有资源信息
	
}
