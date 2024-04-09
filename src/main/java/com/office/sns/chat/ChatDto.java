package com.office.sns.chat;

import lombok.Data;

@Data
public class ChatDto {

	private int ch_no;
	private int ch_sender_no;
	private int ch_receiver_no;
	private String ch_content;
	private String ch_reg_date;
	
}
