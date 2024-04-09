package com.office.sns.comment.child;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
@RequestMapping("/commentChild")
public class CommentChildController {
	
	@Autowired
	CommentChildService commentChildService;

}
