package com.ajudasj.model.repository;

import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.JpaRepository;

import com.ajudasj.model.entity.Usuario;

@Repository
public interface UsuarioRepository extends JpaRepository <Usuario, Integer>{

	Usuario findByEmail(String email);
	
}
