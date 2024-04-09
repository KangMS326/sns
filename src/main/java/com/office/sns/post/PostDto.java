package com.office.sns.post;

import lombok.Data;

@Data
public class PostDto {

	private int p_no; 
	private int m_no;
	private String p_content;
	private int p_like_cnt;
	private int l_no;
	private int p_comment_cnt;
	private int c_no;
	private int p_visibility;
	private String p_imgs;	
	private String p_mp4;	
	private String p_reg_date;
	private String p_mod_date;
	
}
