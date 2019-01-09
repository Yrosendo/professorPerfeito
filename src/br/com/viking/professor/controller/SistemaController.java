package br.com.viking.professor.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SistemaController {
	@RequestMapping("ola")
	public String listar() {
		System.out.println("olaolaolaojseuobfgui");
		return "ola";
		

	}
}
