package com.office.sns.user;

import lombok.Data;

@Data
public class UserDto {
	
	private int m_no;
	private String m_id;
	private String m_pw;
	private String m_name;
	private String m_nicname;
	private String m_profile_pic;
	private String m_phone;
	private String m_mail;
	private String m_birth;
	private char m_auth;
	private char m_gender;
	private int m_visibility;
	private String m_reg_date;
	private String m_mod_date;
	
}
