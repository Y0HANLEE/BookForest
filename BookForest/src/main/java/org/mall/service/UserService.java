package org.mall.service;

import org.mall.domain.UserVO;
import org.springframework.stereotype.Service;

@Service
public interface UserService {
	public void insert(UserVO user);
	public UserVO read(String userid);
	public int update(UserVO user);
	public int delete(UserVO user);
}
