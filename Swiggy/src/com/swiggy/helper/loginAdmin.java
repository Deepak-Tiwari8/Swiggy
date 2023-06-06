package com.swiggy.helper;

import java.util.ArrayList;

import com.swiggy.dao.PartnerDao;

public class loginAdmin {

	public static boolean flag = false;

	public static ArrayList<Object> checkAdminValidation(String email, String password)
	{
		ArrayList<Object> obj = (ArrayList<Object>) PartnerDao.getAllAdminData();
	
		for(int i=0;i<obj.size();i++)
		{
			System.out.println(obj.get(i));
		}
		try 
		{
			for (int i = 0; i < obj.size(); i++) 
			{
				String em = (String) obj.get(2);
				String ps = (String) obj.get(4);
	
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
