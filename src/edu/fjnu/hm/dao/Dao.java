package edu.fjnu.hm.dao;
import java.sql.ResultSet;
import edu.fjnu.hm.sever.Notice;


//����һ��Dao��ӿڣ����������ݿ���н���
public interface Dao {
	public boolean addNotice(Notice not);//��ʦ��������
	public Notice getNotice(String notId);//����Ż�ù�����Ϣ
	public boolean deleteNotice(String notId);//�����ɾ��������Ϣ

	//public boolean uploadResourceInfo(Resource rs);//��ʦ�ϴ���Դ
	//public boolean deleteResourceInfo(Resource rs);//��ʦɾ����Դ
	public ResultSet getAllNotice();//�������й���	
	public ResultSet getAllResourceInfo();//����������Դ��Ϣ
	
}
