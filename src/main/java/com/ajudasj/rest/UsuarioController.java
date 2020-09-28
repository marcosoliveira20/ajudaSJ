package com.ajudasj.rest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import com.ajudasj.model.entity.Usuario;
import com.ajudasj.model.repository.UsuarioRepository;





@RestController
@RequestMapping("/api/usuarios")
public class UsuarioController {
	
	private final UsuarioRepository repository;
	
	@Autowired
	public UsuarioController(UsuarioRepository repository) {
		this.repository = repository;
	}
	
	@PostMapping
	@ResponseStatus(HttpStatus.CREATED)
	public  Usuario salvar (@RequestBody Usuario usuario) {
		try {	
			return repository.save(usuario);
					
		}catch(Exception e) {
			throw new ResponseStatusException( HttpStatus.BAD_REQUEST, "Usuário já cadastrado" );
		}
	}
	
	@GetMapping("{id}")
	public Usuario encontrarPorId(@PathVariable Integer id) {
		return repository.findById(id).orElseThrow( () -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Usuario não encontrado!"));
		
	}
	
	@DeleteMapping("{id}")
	@ResponseStatus(HttpStatus.NO_CONTENT)
	public void deletar (@PathVariable Integer id) {
		repository.findById(id)
		.map( usuario -> {
			repository.delete(usuario);
			return Void.TYPE;
		}		
				)
		.orElseThrow( () -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Usuario não encontrado!"));
	}
	
	@PutMapping("{id}")
	@ResponseStatus(HttpStatus.NO_CONTENT)
	public void atualizar(@PathVariable Integer id, @RequestBody  Usuario usuarioAtualizado ) {
		
		repository.findById(id)
		.map( usuario -> {
			usuarioAtualizado.setId(usuario.getId());
			return repository.save(usuarioAtualizado);
			 
		}		
				)
		.orElseThrow( () -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Usuario não encontrado!"));
	}

}
