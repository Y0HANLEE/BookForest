package org.mall.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class UserVO {
	private int uno;		//primary
	private String userid;	//unique
	private String userpw;
	private String name;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date birth;
	private String phone;
	private String email;
	private String addr1;
	private String addr2;
	private String addr3;
	private int tier;		//default 1(basic)
	private int money;		//defualt 10,000 
	private int point;		//defualt 5,000
	private Date regdate;
	private Date update;
}
