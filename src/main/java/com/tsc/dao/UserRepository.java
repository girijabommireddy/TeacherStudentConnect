package com.tsc.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.tsc.entity.UserEntity;

@Repository
public interface UserRepository extends JpaRepository<UserEntity, String> {

	@Query("SELECT e FROm UserEntity e WHERE e.status = 'pending'")
	List<UserEntity> adminIds();

	@Query("SELECT e FROm UserEntity e WHERE e.userId=?1 and e.secretQuestion=?2 and e.answer=?3")
	UserEntity validateUser2(String userId, String secretQuestion, String answer);

	@Query("select u from UserEntity u where u.userId=?1 and u.password=?2 and u.role=?3")
	UserEntity validateUser(String userId, String password, String role);

	@Modifying
	@Query("update UserEntity u set u.status=?2 where u.userId=?1")
	int updateStatus(String userId, String status);

	@Query("select d from UserEntity d where d.role='Student' ORDER BY d.firstName desc")
	List<UserEntity> sortByfirstNameDsc();

	@Query("select d from UserEntity d where d.role='Student' ORDER BY d.firstName")
	List<UserEntity> sortByfirstNameAsc();
}
