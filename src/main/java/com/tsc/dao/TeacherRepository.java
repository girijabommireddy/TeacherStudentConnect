package com.tsc.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.tsc.entity.TeacherEntity;

@Repository
public interface TeacherRepository extends JpaRepository<TeacherEntity, String> {

	@Query("select u from TeacherEntity u where u.userId=?1")
	TeacherEntity valid(String userId);

	@Query("select t from TeacherEntity t ORDER BY t.specialization")
	List<TeacherEntity> sortBySpecializationAsc();

	@Query("select t from TeacherEntity t ORDER BY t.specialization desc")
	List<TeacherEntity> sortBySpecializationDsc();

	@Query("select t from TeacherEntity t ORDER BY t.userId desc")
	List<TeacherEntity> sortByUserIdDsc();

	@Query("select t from TeacherEntity t ORDER BY t.userId")
	List<TeacherEntity> sortByUserIdAsc();

}
