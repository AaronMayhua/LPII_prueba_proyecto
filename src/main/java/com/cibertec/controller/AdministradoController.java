package com.cibertec.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.cibertec.entity.Administrado;
import com.cibertec.service.AdministradoService;

@Controller
public class AdministradoController {
	
	@Autowired
	public AdministradoService service;
	
	@GetMapping(value = "/verAdmi")/*Se pone este nomnbre en el local hots es la ruta*/
	public String ver() {
		return "RegistroAdmi";
	}
	
	@PostMapping("/registroAdmi")
	public Map<?, ?> registra(Administrado admi){
		service.registroAdmi(admi);
		return null;
	}
	
}
