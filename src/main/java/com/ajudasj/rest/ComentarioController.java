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

import com.ajudasj.model.entity.Comentario;
import com.ajudasj.model.repository.ComentarioRepository;

@RestController
@RequestMapping("/api/comentarios")
public class ComentarioController {
	
	private final ComentarioRepository repository;
	
	@Autowired
	public ComentarioController(ComentarioRepository repository) {
		this.repository = repository;
	}
	
	@PostMapping
	@ResponseStatus(HttpStatus.CREATED)
	public  Comentario salvar (@RequestBody Comentario comentario) {
		try {	
			return repository.save(comentario);
					
		}catch(Exception e) {
			throw new ResponseStatusException( HttpStatus.BAD_REQUEST, "Usuário já cadastrado" );
		}
	}
	
	@GetMapping("{id}")
	public Comentario encontrarPorId(@PathVariable Integer id) {
		return repository.findById(id).orElseThrow( () -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Comentario não encontrado!"));
		
	}
	
	@DeleteMapping("{id}")
	@ResponseStatus(HttpStatus.NO_CONTENT)
	public void deletar (@PathVariable Integer id) {
		repository.findById(id)
		.map( comentario -> {
			repository.delete(comentario);
			return Void.TYPE;
		}		
				)
		.orElseThrow( () -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Comentario não encontrado!"));
	}
	
	@PutMapping("{id}")
	@ResponseStatus(HttpStatus.NO_CONTENT)
	public void atualizar(@PathVariable Integer id, @RequestBody  Comentario comentarioAtualizado ) {
		
		repository.findById(id)
		.map( comentario -> {
			comentarioAtualizado.setId(comentario.getId());
			return repository.save(comentarioAtualizado);
			 
		}		
				)
		.orElseThrow( () -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Comentario não encontrado!"));
	}
}
