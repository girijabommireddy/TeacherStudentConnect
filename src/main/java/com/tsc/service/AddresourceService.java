package com.tsc.service;

import java.util.List;

import com.tsc.entity.AddresourceEntity;
import com.tsc.model.Addskill;
import com.tsc.model.Resources;
import com.tsc.model.Teacher;
import com.tsc.model.Teacherresource;

public interface AddresourceService {

	public String saveAddresource(Resources addresource);

	public List<Resources> fetchResources();

	public boolean updatedetaiils(Resources resource);

	public Resources getResourceDetails(String resourceID);

	public String saveAddskill(Addskill addskill);

	public List<Addskill> getresourceid();

	public boolean updateAddskill(Addskill res);

	public List<Addskill> skillsres(String skill);

	public String uploadresources(Resources resources, byte[] contents);

	public List<Resources> sortByYearAsc();

	public List<Resources> sortByYearDsc();

	public List<Resources> sortByTitleAsc();

	public List<Resources> sortByTitleDsc();

	public List<Resources> sortByAuthorAsc();

	public List<Resources> sortByAuthorDsc();

	public List<Resources> sortBySubjectAsc();

	public List<Resources> sortBySubjectDsc();

	public AddresourceEntity downloadResources(String resourceID);

	public List<Teacher> sortByUserIdAsc();

	public List<Teacher> sortByUserIdDsc();

	public List<Teacher> sortBySpecializationAsc();

	public List<Teacher> sortBySpecializationDsc();

	public String uploadTeacherresource(Teacherresource teacherresource, byte[] contents);

//
}
