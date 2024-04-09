package com.office.sns.comment;

import lombok.Data;

@Data
public class CommentDto {

	private int c_no;
	private int p_no;
	private int m_no; 
	private String c_comment;
	private int l_no; 
	private int l_no_cnt;
	private String c_reg_date;
	private String c_mod_date;
	
}
