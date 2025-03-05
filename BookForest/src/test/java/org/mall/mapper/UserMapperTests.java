package org.mall.mapper;

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
public class UserMapperTests {
	@Autowired
	private UserMapper mapper;
	
	@Test
	public void insertTest() {
		UserVO vo = new UserVO();
		vo.setUserid("user");
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
	
		mapper.insert(vo);
	}
	
	@Test
	public void readTest() {
		mapper.read("user");
	}
	
	@Test
	public void updateTest() {
		UserVO vo = mapper.read("user");
		vo.setUserid("userid");
		
		if(mapper.update(vo) == 1) {
			log.warn("--------------------------success");
		} else {
			log.warn("--------------------------fail");			
		};
	}
	
	@Test
	public void deleteTest() {
		UserVO vo = mapper.read("user");
		if(mapper.delete(vo) == 1) {
			log.warn("--------------------------success");
		} else {
			log.warn("--------------------------fail");			
		};
	}
}
