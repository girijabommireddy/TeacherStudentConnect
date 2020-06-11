package com.tsc.controller;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.tsc.entity.AddresourceEntity;

import com.tsc.model.Addskill;
import com.tsc.model.Resources;
import com.tsc.model.Teacher;
import com.tsc.model.Teacherresource;
import com.tsc.model.UserLogin;
import com.tsc.service.AddresourceService;

@Controller
public class AddresourceController {
	@Autowired
	AddresourceService addresourceService;

	public void setAddresourceService(AddresourceService addresourceService) {
		this.addresourceService = addresourceService;
	}

	@ModelAttribute("addresource")
	public Resources getResources() {
		return new Resources();
	}

	@ModelAttribute("teacherresource")
	public Teacherresource getTeacherresource() {
		return new Teacherresource();
	}
	/* Admin- Add resource */

	@RequestMapping(value = "/addresources", method = RequestMethod.GET)
	public String createResource(Model model, @SessionAttribute("userLogin") UserLogin usr) {

		model.addAttribute("addresources", new Resources());
		model.addAttribute("userId", usr.getUserId());
		return "addresources";

	}

	@RequestMapping(value = "/resourceadding", method = RequestMethod.POST)
	public String save(@ModelAttribute("resources") Resources resources, @RequestParam("file") MultipartFile file) {

		resources.setFilename(file.getOriginalFilename());
		resources.setContentType(file.getContentType());

		byte[] contents;

		try {
			contents = file.getBytes();
			addresourceService.uploadresources(resources, contents);

		} catch (IOException e) {
			e.printStackTrace();
		}

		return "resadded";
	}
	/* Admin- View Resource List */

	@RequestMapping("/resourceList")
	public String getResources1(ModelMap model) {

		List<Resources> r = addresourceService.fetchResources();
		model.addAttribute("resList", r);
		return "resourceList";

	}

	@RequestMapping("/showEditResources/{resourceID}")
	public String ResourceDetails(Model model, @PathVariable("resourceID") String resourceID) {
		Resources resource = addresourceService.getResourceDetails(resourceID);
		model.addAttribute("resource", resource);
		return "editResourceList";
	}
	/* Admin- Update resource */

	@PostMapping(value = "/update")
	public String updatedetails(@ModelAttribute("resource") Resources resource) {

		@SuppressWarnings("unused")
		boolean result = addresourceService.updatedetaiils(resource);

		return "redirect:resourceList";
	}

	/* Admin- Add Skills */
	@RequestMapping(value = "/addskills", method = RequestMethod.GET)
	public String createSkill(Model model, @SessionAttribute("userLogin") UserLogin usr) {
		List<Addskill> list = addresourceService.getresourceid();

		model.addAttribute("command", new Addskill());
		model.addAttribute("addskill", list);
		model.addAttribute("userId", usr.getUserId());
		return "addskills";

	}

	/* Admin- Update skill */
	@PostMapping(value = "/updateskill")
	public String updateProduct(@ModelAttribute("res") Addskill res) {

		addresourceService.updateAddskill(res);
		return "resadded";
	}

	/* User- View skill list */
	@RequestMapping("/skilllist")
	public String getResources2(ModelMap model) {

		List<Resources> r = addresourceService.fetchResources();

		model.addAttribute("resList", r);
		return "skilllist";

	}

	@RequestMapping("/showskills/{skill}")
	public String ResourceDetail(Model model, @PathVariable("skill") String skill) {

		List<Addskill> resource = addresourceService.skillsres(skill);
		model.addAttribute("rs", resource);
		return "skillsearch";
	}

	@RequestMapping(value = "/resources", method = RequestMethod.GET)
	public String sortResource(Model model) {

		model.addAttribute("resources", new Resources());

		return "resources";

	}

	/* User- Sorting */
	@RequestMapping("/documentPage")
	public String document() {
		return "documentList";
	}

	@RequestMapping("/sortByYearAscending")
	public String sortByDocumentYearAsc(Model model) {
		List<Resources> docList = addresourceService.sortByYearAsc();
		model.addAttribute("doclist", docList);
		return "documentList";

	}

	@RequestMapping("/sortByYearDescending")
	public String sortByDocumentYearDesc(Model model) {
		List<Resources> docList = addresourceService.sortByYearDsc();
		model.addAttribute("doclist", docList);
		return "documentList";

	}

	@RequestMapping("/sortByTitleAscending")
	public String sortByDocumentTitleAesc(Model model) {
		List<Resources> docList = addresourceService.sortByTitleAsc();
		model.addAttribute("doclist", docList);
		return "documentList";

	}

	@RequestMapping("/sortByTitleDescending")
	public String sortByDocumentTitleDesc(Model model) {
		List<Resources> docList = addresourceService.sortByTitleDsc();
		model.addAttribute("doclist", docList);
		return "documentList";

	}

	@RequestMapping("/sortByAuthorAscending")
	public String sortByDocumentAuthorAesc(Model model) {
		List<Resources> docList = addresourceService.sortByAuthorAsc();
		model.addAttribute("doclist", docList);
		return "documentList";

	}

	@RequestMapping("/sortByAuthorDescending")
	public String sortByDocumentAuthorDesc(Model model) {
		List<Resources> docList = addresourceService.sortByAuthorDsc();
		model.addAttribute("doclist", docList);
		return "documentList";

	}

	@RequestMapping("/sortBySubjectAscending")
	public String sortByDocumentSubjectAesc(Model model) {
		List<Resources> docList = addresourceService.sortBySubjectAsc();
		model.addAttribute("doclist", docList);
		return "documentList";

	}

	@RequestMapping("/sortBySubjectDescending")
	public String sortByDocumentSubjectDesc(Model model) {
		List<Resources> docList = addresourceService.sortBySubjectDsc();
		model.addAttribute("doclist", docList);
		return "documentList";

	}

	@RequestMapping("/teacherPage")
	public String teacher() {
		return "teachersort";
	}

	@RequestMapping("/sortByUserIdAscending")
	public String sortByUserIdAesc(Model model) {
		List<Teacher> teacherList = addresourceService.sortByUserIdAsc();

		model.addAttribute("teacherlist", teacherList);
		return "teachersort";

	}

	@RequestMapping("/sortByUserIdDescending")
	public String sortByTeacherUserIdDesc(Model model) {
		List<Teacher> teacherList = addresourceService.sortByUserIdDsc();
		model.addAttribute("teacherlist", teacherList);
		return "teachersort";

	}

	@RequestMapping("/sortBySpecializationAscending")
	public String sortByTeacherSpecializationAesc(Model model) {
		List<Teacher> teacherList = addresourceService.sortBySpecializationAsc();
		model.addAttribute("teacherlist", teacherList);
		return "teachersort";

	}

	@RequestMapping("/sortBySpecializationDescending")
	public String sortByTeacherSpecializationDesc(Model model) {
		List<Teacher> teacherList = addresourceService.sortBySpecializationDsc();
		model.addAttribute("teacherlist", teacherList);
		return "teachersort";

	}
	/* User- Preview and Download document */

	@RequestMapping("/download/{resourceID}")
	public String download(@PathVariable("resourceID") String resourceID, HttpServletResponse response) {

		AddresourceEntity doc = addresourceService.downloadResources(resourceID);

		try {

			response.setHeader("Content-Disposition", "inline;title=\"" + doc.getTitle() + "\"");
			OutputStream out = response.getOutputStream();
			response.setContentType(doc.getContentType());
			IOUtils.copy(doc.getContent().getBinaryStream(), out);
			out.flush();
			out.close();

		} catch (IOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;

	}

	@RequestMapping(value = "/teacherresource")
	public String showTeacherresource(ModelMap model, @SessionAttribute("userLogin") UserLogin usr) {
		model.addAttribute("teacherresource", new Teacherresource());
		model.addAttribute("userId", usr.getUserId());
		return "teacherresource";
	}

	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public String save(@ModelAttribute("teacherresource") Teacherresource teacherresource,
			@RequestParam("file") MultipartFile file) {

		teacherresource.setFilename(file.getOriginalFilename());
		teacherresource.setContentType(file.getContentType());
		teacherresource.setAuthor("pending");

		byte[] contents;

		try {
			contents = file.getBytes();
			addresourceService.uploadTeacherresource(teacherresource, contents);

		} catch (IOException e) {
			e.printStackTrace();
		}

		return "resadded";
	}
}
