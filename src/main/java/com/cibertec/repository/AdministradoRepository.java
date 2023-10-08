package com.cibertec.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cibertec.entity.Administrado;

@Repository
public interface AdministradoRepository extends JpaRepository<Administrado,Integer>{

}
