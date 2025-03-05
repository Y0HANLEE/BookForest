package org.mall.mapper;

import org.mall.domain.UserVO;

public interface UserMapper {
	public void insert(UserVO user);
	public UserVO read(String userid);
	public int update(UserVO user);
	public int delete(UserVO user);
}
