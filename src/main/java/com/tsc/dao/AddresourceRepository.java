
package com.tsc.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.tsc.entity.AddresourceEntity;

import com.tsc.model.Resources;

public interface AddresourceRepository extends JpaRepository<AddresourceEntity, String> {
	@Query("SELECT r FROm AddresourceEntity r ")
	List<AddresourceEntity> fetchResources();

	@Query("SELECT  distinct r FROm AddresourceEntity r where r.skill=?1 ")
	List<AddresourceEntity> skillsres(String skill);

	Resources save(Resources entity);

	@Query("select d from AddresourceEntity d ORDER BY d.year")
	List<AddresourceEntity> sortByYearDsc();

	@Query("select d from AddresourceEntity d ORDER BY d.subject")
	List<AddresourceEntity> sortBySubjectAsc();

	@Query("select d from AddresourceEntity d ORDER BY d.subject desc")
	List<AddresourceEntity> sortBySubjectDsc();

	@Query("select d from AddresourceEntity d ORDER BY d.author desc")
	List<AddresourceEntity> sortByAuthorDsc();

	@Query("select d from AddresourceEntity d ORDER BY d.author")
	List<AddresourceEntity> sortByAuthorAsc();

	@Query("select d from AddresourceEntity d ORDER BY d.title desc")
	List<AddresourceEntity> sortByTitleDsc();

	@Query("select d from AddresourceEntity d ORDER BY d.title")
	List<AddresourceEntity> sortByTitleAsc();

	@Query("select d from AddresourceEntity d ORDER BY d.year desc")
	List<AddresourceEntity> sortByYearAsc();
	
	
	

}
