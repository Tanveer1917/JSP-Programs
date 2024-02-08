package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Utility.DBUtil;
import model.User;
import service.CustomerService;

public class UserDao implements CustomerService {

	public User signUp(User user) {
		
		try(Connection con=DBUtil.getConnect())
		{
			String regQuery="insert into UserTable(user_name,user_password,user_phone)values(?,?,?)";
			PreparedStatement ps=con.prepareStatement(regQuery);
			ps.setString(1,user.getUserName());
			ps.setString(2,user.getPassword());
			ps.setLong(3,user.getPhone());
			
			int signup = ps.executeUpdate();
			if(signup>0)
			{
				return user;
			}

					
			
		}catch(Exception e)
		{
			System.out.println(e);
		}
		return null;
	}

	public User getLogin(String userName, String pw) {
		User user=null;
		try(Connection con=DBUtil.getConnect();)
		
		{
			String loginQuery="select * from UserTable where user_name=? and user_password=?";
			PreparedStatement ps=con.prepareStatement(loginQuery);
			ps.setString(1, userName);
			ps.setString(2,pw);
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			{
				int id=rs.getInt(1);
				String un=rs.getString(2);
				String pw1=rs.getString(3);
				long ph=rs.getLong(4);
				
				user=new User();
				user.setUserId(id);
				user.setUserName(un);
				user.setPassword(pw);
				user.setPhone(ph);
				return user;
			}
			
		
		}catch(Exception e)
		{
			System.out.println(e);
		}
		return null;
	}

}
