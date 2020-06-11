package com.tsc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import com.tsc.model.Teacher;
import com.tsc.model.User;
import com.tsc.model.UserLogin;
import com.tsc.service.UserService;

@SessionAttributes({ "usr", "userLogin" })
@Controller
public class UserController {
	@Autowired
	UserService userService;

	public void setUs(UserService userService) {
		this.userService = userService;
	}

	/* Registration For User */
	@GetMapping("/Register")
	public String createreg(Model model) {
		model.addAttribute("user", new User());
		return "user-registration-page";
	}

	
	@GetMapping("/adminhome")
	public String adminhome(Model model) {
		
		return "admin-page";
	}
	
	
	/* SuperAdmin-Approve */
	@SuppressWarnings("unused")
	@RequestMapping(value = "/updateStatus/{userId}")
	public String updateStatus(@RequestParam(value="status",required=false) String status, @PathVariable("userId") String userid,
			ModelMap model) {

		
		boolean result = userService.updateStatus(userid, status);
		List<User> m = userService.Adminid();
		
		model.addAttribute("list", m);
		
		return "superadmin-approve-admin";
	}
	

	/* Registration values adding to data base */
	@RequestMapping(value = "/addtodb", method = RequestMethod.POST)
	public String saveUser(@ModelAttribute("user") User user, Model model, @RequestParam("file") MultipartFile file) {

		try {

			byte[] image = file.getBytes();

			user.setPicture(image);
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}
		if (user.getRole().equals("Admin"))
			user.setStatus("pending");
		else
			user.setStatus("approved");
		String result = userService.saveUser(user);

		if (result.equals("exists"))
			model.addAttribute("msg", "User Id already exists");
		else if (result.equals("success"))
			model.addAttribute("msg", "Details saved successfully");
		model.addAttribute("userLogin", new UserLogin());
		return "success";

	}

	/* Teacher values adding to database */
	@RequestMapping(value = "/teacher", method = RequestMethod.POST)
	public String saveteacher(@ModelAttribute("teacher") Teacher teacher, Model model,
			@RequestParam("file") MultipartFile file) {

		try {

			byte[] image = file.getBytes();

			teacher.setPicture(image);
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}

		String result = userService.saveteacher(teacher);
		
		if (result.equals("exists"))
			model.addAttribute("msg", "User Id already exists");
		else if (result.equals("success"))
			model.addAttribute("msg", "Details saved successfully");
		model.addAttribute("userLogin", new UserLogin());
		return "login";
		
	}
/*login page*/
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String createLogin(Model model) {
		model.addAttribute("userLogin", new UserLogin());
		return "login";
		
	}
/*login validation from database*/
	@RequestMapping(value = "/validate", method = RequestMethod.POST)
	public String validateLogin(@Valid @ModelAttribute("userLogin") UserLogin user, BindingResult bresult,
			ModelMap model, RedirectAttributes redirectAttributes, @SessionAttribute("userLogin") UserLogin usr,
			HttpSession session) {
		String result = "";
		if (bresult.hasErrors()) {
			System.out.println("validation errors");

			return "login";
		}

		else {

			UserLogin u = userService.validateUser(user);
			
			if (u != null) {
				session.setAttribute("usr", u);
				List<String> list = userService.getRole(user.getUserId());
				if (list.get(0).equals("Admin")) {
					if (list.get(1).equals("pending")) {
						redirectAttributes.addFlashAttribute("uname", "You Are Not Approved");
						result = "redirect:login";
					}

					else {
						model.addAttribute("uname", u.getUserId());
						result = "admin-page";

					}
				}

				else if (user.getRole().equals("Teacher")) {
					result = "teacher-page";
				} else if (user.getRole().equals("Student")) {
					result = "student-page";
				} else if (user.getRole().equals("SuperAdmin"))

				{
					List<User> m = userService.Adminid();
					
					model.addAttribute("list", m);
					
					result = "superadmin-approve-admin";
				}

			}

			else {
				redirectAttributes.addFlashAttribute("uname", "Invalid UserId/password");
				result = "redirect:login";
			}

		}
		return result;
	}

	/*Logout*/

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(@ModelAttribute User user, HttpSession session, SessionStatus status) {

		status.setComplete();
		session.invalidate();
		return "redirect:/login";

	}

	@RequestMapping(value = "/logoutt", method = RequestMethod.GET)
	public String logoutt(@ModelAttribute User user,HttpSession session, SessionStatus s) {

		s.setComplete();
		session.invalidate();
		return "redirect:/login";

	}
	@GetMapping("/home")
	public String home(Model model) {
		
		return "index";
	}

	@RequestMapping("/studenthome")
	public String studenthome() {
		return "student-page";
	}

	@RequestMapping("/studentPage")
	public String student() {
		return "studentsort";
	}

	@RequestMapping("/sortByfirstNameAscending")
	public String sortByfirstNameAesc(Model model) {
		List<User> stuList = userService.sortByfirstNameAsc();
		model.addAttribute("stulist", stuList);
		return "studentsort";

	}

	@RequestMapping("/sortByfirstNameDescending")
	public String sortByfirstNameDesc(Model model) {
		List<User> stuList = userService.sortByfirstNameDsc();
		model.addAttribute("stulist", stuList);
		return "studentsort";

	}

}
