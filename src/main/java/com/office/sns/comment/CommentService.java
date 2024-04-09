package com.office.sns.comment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
public class CommentService {
	
	@Autowired
	ICommentDao iCommentDao;

}
