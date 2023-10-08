package com.cibertec.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cibertec.entity.Administrado;
import com.cibertec.repository.AdministradoRepository;
@Service
public class AdministradoServiceImpl implements AdministradoService {
	@Autowired
	private AdministradoRepository repository;
	
	@Override
	public Administrado registroAdmi(Administrado admi) {
		// TODO Auto-generated method stub
		return repository.save(admi);
	}

}
