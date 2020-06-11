package com.tsc.service;

import java.sql.Blob;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.rowset.serial.SerialBlob;
import javax.transaction.Transactional;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tsc.dao.AddresourceRepository;
import com.tsc.dao.TeacherRepository;
import com.tsc.entity.AddresourceEntity;
import com.tsc.entity.TeacherEntity;

import com.tsc.model.Addskill;
import com.tsc.model.Resources;
import com.tsc.model.Teacher;
import com.tsc.model.Teacherresource;
import com.tsc.service.AddresourceService;

@Service
public class AddresourceServiceImpl implements AddresourceService {

	@Autowired
	AddresourceRepository addresourceDao;
	@Autowired
	TeacherRepository teacherDao;

	@Autowired
	private ModelMapper modelMapper;

	@Override
	@Transactional
	public String saveAddresource(Resources addresource) {

		String result = "success";

		AddresourceEntity u = modelMapper.map(addresource, AddresourceEntity.class);

		boolean found = addresourceDao.existsById(addresource.getResourceID());

		System.out.println("found=" + found);

		if (found)

		{
			result = "exists";

		}

		else {

			AddresourceEntity res = addresourceDao.save(u);

			if (res == null)

				result = "failure";

		}
		return result;

	}

	@Override
	@Transactional
	public List<Resources> fetchResources() {
		// TODO Auto-generated method stub

		List<AddresourceEntity> resourceList = addresourceDao.fetchResources();

		List<Resources> resDto = new ArrayList<>();

		for (AddresourceEntity a : resourceList)

		{
			Resources rdto = modelMapper.map(a, Resources.class);

			resDto.add(rdto);

		}

		return resDto;
	}

	@Override
	@Transactional
	public boolean updatedetaiils(Resources resource) {
		boolean result = false;
		AddresourceEntity c = modelMapper.map(resource, AddresourceEntity.class);
		AddresourceEntity res = addresourceDao.save(c);
		if (res != null)
			result = true;
		return result;
	}

	@Override
	@Transactional
	public Resources getResourceDetails(String resourceID) {
		AddresourceEntity a = addresourceDao.findById(resourceID).get();
		Resources res = modelMapper.map(a, Resources.class);
		return res;
	}

	@Override
	public String saveAddskill(Addskill addskill) {
		// TODO Auto-generated method stub
		String result = "success";
		AddresourceEntity u = modelMapper.map(addskill, AddresourceEntity.class);

		boolean found = addresourceDao.existsById(addskill.getResourceID());

		System.out.println("found=" + found);

		if (found)

		{
			result = "exists";

		}

		else {

			AddresourceEntity res = addresourceDao.save(u);

			if (res == null)

				result = "failure";

		}
		return result;

	}

	@Override
	public List<Addskill> getresourceid() {
		// TODO Auto-generated method stub

		List<AddresourceEntity> adminList = addresourceDao.findAll();

		List<Addskill> empDto = new ArrayList<>();

		for (AddresourceEntity e : adminList)

		{
			Addskill edto = modelMapper.map(e, Addskill.class);

			empDto.add(edto);

		}

		System.out.println("at service" + empDto);

		return empDto;
	}

	@Override
	@Transactional
	public boolean updateAddskill(Addskill addskill) {
		// TODO Auto-generated method stub

		boolean result = false;
		AddresourceEntity c = modelMapper.map(addskill, AddresourceEntity.class);
		AddresourceEntity addskill1 = addresourceDao.save(c);
		if (addskill1 != null)
			result = true;
		return result;
	}

	@Override
	@Transactional
	public List<Addskill> skillsres(String skill) {
		// TODO Auto-generated method stub
		List<AddresourceEntity> a = addresourceDao.skillsres(skill);
		List<Addskill> rd = new ArrayList<>();
		for (AddresourceEntity r : a) {
			Addskill ad = modelMapper.map(r, Addskill.class);

			rd.add(ad);
		}

		return rd;

	}

	@Override
	public String uploadresources(Resources resources, byte[] contents) {
		String result = "";
		Blob blob = null;
		try {

			blob = new SerialBlob(contents);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		AddresourceEntity entity = modelMapper.map(resources, AddresourceEntity.class);
		entity.setContent(blob);
		AddresourceEntity d = addresourceDao.save(entity);
		if (d != null)
			result = "uploaded";
		return result;
	}

	@Override
	public List<Resources> sortByYearAsc() {
		List<Resources> resultList = new ArrayList<>();
		List<AddresourceEntity> yearList = addresourceDao.sortByYearAsc();
		for (AddresourceEntity e : yearList) {
			Resources d = modelMapper.map(e, Resources.class);
			resultList.add(d);
		}
		return resultList;
	}

	@Override
	public List<Resources> sortByYearDsc() {
		List<Resources> resultList = new ArrayList<>();
		List<AddresourceEntity> yearList = addresourceDao.sortByYearDsc();
		for (AddresourceEntity e : yearList) {
			Resources d = modelMapper.map(e, Resources.class);
			resultList.add(d);
		}
		return resultList;
	}

	@Override
	public List<Resources> sortByTitleAsc() {
		List<Resources> resultList = new ArrayList<>();
		List<AddresourceEntity> TitleList = addresourceDao.sortByTitleAsc();
		for (AddresourceEntity e : TitleList) {
			Resources d = modelMapper.map(e, Resources.class);
			resultList.add(d);
		}
		return resultList;
	}

	@Override
	public List<Resources> sortByTitleDsc() {
		List<Resources> resultList = new ArrayList<>();
		List<AddresourceEntity> titleList = addresourceDao.sortByTitleDsc();
		for (AddresourceEntity e : titleList) {
			Resources d = modelMapper.map(e, Resources.class);
			resultList.add(d);
		}
		return resultList;
	}

	@Override
	public List<Resources> sortByAuthorAsc() {
		List<Resources> resultList = new ArrayList<>();
		List<AddresourceEntity> authorList = addresourceDao.sortByAuthorAsc();
		for (AddresourceEntity e : authorList) {
			Resources d = modelMapper.map(e, Resources.class);
			resultList.add(d);
		}
		return resultList;
	}

	@Override
	public List<Resources> sortByAuthorDsc() {
		List<Resources> resultList = new ArrayList<>();
		List<AddresourceEntity> authorList = addresourceDao.sortByAuthorDsc();
		for (AddresourceEntity e : authorList) {
			Resources d = modelMapper.map(e, Resources.class);
			resultList.add(d);
		}
		return resultList;
	}

	@Override
	public List<Resources> sortBySubjectAsc() {
		List<Resources> resultList = new ArrayList<>();
		List<AddresourceEntity> subjectList = addresourceDao.sortBySubjectAsc();
		for (AddresourceEntity e : subjectList) {
			Resources d = modelMapper.map(e, Resources.class);
			resultList.add(d);
		}
		return resultList;
	}

	@Override
	public List<Resources> sortBySubjectDsc() {
		List<Resources> resultList = new ArrayList<>();
		List<AddresourceEntity> subjectList = addresourceDao.sortBySubjectDsc();
		for (AddresourceEntity e : subjectList) {
			Resources d = modelMapper.map(e, Resources.class);
			resultList.add(d);
		}
		return resultList;
	}

	@Override
	public AddresourceEntity downloadResources(String resourceID) {
		// TODO Auto-generated method stub

		AddresourceEntity doc = addresourceDao.getOne(resourceID);
		return doc;
	}

	@Override
	public List<Teacher> sortByUserIdAsc() {
		// TODO Auto-generated method stub
		List<Teacher> resultList = new ArrayList<>();
		List<TeacherEntity> userIdList = teacherDao.sortByUserIdAsc();
		System.out.println("teacherin impl" + userIdList);
		for (TeacherEntity e : userIdList) {
			Teacher t = modelMapper.map(e, Teacher.class);
			resultList.add(t);
		}
		return resultList;
	}

	@Override
	public List<Teacher> sortByUserIdDsc() {
		List<Teacher> resultList = new ArrayList<>();
		List<TeacherEntity> userIdList = teacherDao.sortByUserIdDsc();
		for (TeacherEntity e : userIdList) {
			Teacher t = modelMapper.map(e, Teacher.class);
			resultList.add(t);
		}
		return resultList;
	}

	@Override
	public List<Teacher> sortBySpecializationAsc() {
		List<Teacher> resultList = new ArrayList<>();
		List<TeacherEntity> specializationList = teacherDao.sortBySpecializationAsc();
		for (TeacherEntity e : specializationList) {
			Teacher t = modelMapper.map(e, Teacher.class);
			resultList.add(t);
		}
		return resultList;

	}

	@Override
	public List<Teacher> sortBySpecializationDsc() {
		List<Teacher> resultList = new ArrayList<>();
		List<TeacherEntity> userIdList = teacherDao.sortBySpecializationDsc();
		for (TeacherEntity e : userIdList) {
			Teacher t = modelMapper.map(e, Teacher.class);
			resultList.add(t);
		}
		return resultList;
	}

	@Override
	public String uploadTeacherresource(Teacherresource teacherresource, byte[] contents) {
		// TODO Auto-generated method stub
		String result = "";
		Blob blob = null;
		try {

			blob = new SerialBlob(contents);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		AddresourceEntity entity = modelMapper.map(teacherresource, AddresourceEntity.class);
		entity.setContent(blob);
		AddresourceEntity d = addresourceDao.save(entity);
		if (d != null)
			result = "uploaded";
		return result;

	}

}
