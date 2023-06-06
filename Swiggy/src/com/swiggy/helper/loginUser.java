package com.swiggy.helper;

import java.util.ArrayList;

import com.swiggy.dao.registerDao;

public class loginUser 
{
	public static boolean flag = false;

	public static ArrayList<Object> checkCondition(String email, String password)
	{
		ArrayList<Object> obj = (ArrayList<Object>) registerDao.getUserData();
	
		try 
		{
			for (int i = 0; i < obj.size(); i++) 
			{
				String em = (String) obj.get(2);
				String ps = (String) obj.get(6);
	
				if (email.contains(em) && password.contains(ps))
				{
					flag = true;
					break;
				}
			}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return obj;
	}

	public static ArrayList<Object> checkEmailandPassword(String email, String password)
	{
		ArrayList<Object> obj = (ArrayList<Object>) registerDao.getUserData();
		try 
		{
			for (int i = 0; i < obj.size(); i++) 
			{
				String em = (String) obj.get(2);
				String ps = (String) obj.get(6);

				if (email.contains(em) && password.contains(ps))
				{
					flag = true;
					break;
				}
			}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return obj;
	}
}
