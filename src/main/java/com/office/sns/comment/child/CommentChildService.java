package com.office.sns.comment.child;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
public class CommentChildService {
	
	@Autowired
	ICommentChildDao iCommentChildDao;

}
