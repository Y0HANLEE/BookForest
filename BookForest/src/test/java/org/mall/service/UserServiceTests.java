package org.mall.service;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mall.domain.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class UserServiceTests {
	@Autowired
	private UserService service;
	
	@Test
	public void insertTest() {
		UserVO vo = new UserVO();
		vo.setUserid("user1");
		vo.setUserpw("user");
		vo.setName("사용자");
		vo.setEmail("user@naver.com");
		vo.setPhone("010-1111-1111");
		vo.setAddr1("1");
		vo.setAddr2("2");
		vo.setAddr3("3");
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date birth = sdf.parse("1990-01-01");
			vo.setBirth(birth);
		} catch(Exception e) {
			e.printStackTrace();
		}
	
		service.insert(vo);
	}
	
	@Test
	public void readTest() {
		service.read("user1");
	}
	
	@Test
	public void updateTest() {
		UserVO vo = service.read("user1");
		vo.setUserid("userid");
		
		if(service.update(vo) == 1) {
			log.info("---------Update : success");
		} else {
			log.info("---------Update : fail");
		}
	}

	@Test
	public void deleteTest() {
		UserVO vo = service.read("user1");
		
		if(service.delete(vo) == 1) {
			log.info("---------Delete : success");
		} else {
			log.info("---------Delete : fail");
		}
	}
	
	@Test
	public void chkIdTest() {
		String userid = "admin";
		if(service.chkId(userid) == 1) {
			log.info("-------Already exist this ID");
		} else {
			log.info("-------You can use this ID");
		}
	}
}
