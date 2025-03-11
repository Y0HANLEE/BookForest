package org.mall.service;

import org.mall.domain.UserVO;
import org.mall.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@AllArgsConstructor
@Log4j
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper mapper;
	
	@Override
	public void insert(UserVO user) {
		log.info("-------Serivce : 'insert' is is running...");
		mapper.insert(user);;
	}
	
	@Override
	public UserVO read(String userid) {
		log.info("-------Serivce : 'read' is running...");
		return mapper.read(userid);		
	}
	
	@Override
	public int update(UserVO user) {
		log.info("-------Serivce : 'update' is running...");
		if(1==mapper.update(user)) {
			log.info("-------Update : success");
			return 1;
		} else {
			log.info("-------Update : fail");
			return 0;
		}
	}
	
	@Override
	public int delete(UserVO user) {
		log.info("-------Serivce : 'delete' is running...");
		if(1==mapper.delete(user)) {
			log.info("-------Delete : success");
			return 1;
		} else {
			log.info("-------Delete : fail");
			return 0;
		}		
	}
	
	@Override
	public int chkId(String userid) {
		log.info("-------Serivce : 'chkId' is running...");
		
		if(1==mapper.chkId(userid)) {
			log.info("-------Already exist this ID");
			return 1;
		} else {
			log.info("-------You can use this ID");
			return 0;
		}
	}
}
