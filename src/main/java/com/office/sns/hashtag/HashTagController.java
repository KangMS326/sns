package com.office.sns.hashtag;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
@RequestMapping("/hashTag")
public class HashTagController {
	
	@Autowired
	HashTagService hashTagService;

}
