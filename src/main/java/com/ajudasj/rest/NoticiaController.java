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

import com.ajudasj.model.entity.Noticia;
import com.ajudasj.model.repository.NoticiaRepository;

@RestController
@RequestMapping("/api/noticias")
public class NoticiaController {
	
	private final NoticiaRepository repository;
	
	@Autowired
	public NoticiaController (NoticiaRepository repository) {
		this.repository = repository;
	}
	
	@PostMapping
	@ResponseStatus(HttpStatus.CREATED)
	public  Noticia salvar (@RequestBody Noticia noticia) {
		try {	
			return repository.save(noticia);
					
		}catch(Exception e) {
			throw new ResponseStatusException( HttpStatus.BAD_REQUEST, "Usuário já cadastrado" );
		}
	}
	
	@GetMapping("{id}")
	public Noticia encontrarPorId(@PathVariable Integer id) {
		return repository.findById(id).orElseThrow( () -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Noticia não encontrado!"));
		
	}
	
	@DeleteMapping("{id}")
	@ResponseStatus(HttpStatus.NO_CONTENT)
	public void deletar (@PathVariable Integer id) {
		repository.findById(id)
		.map( noticia -> {
			repository.delete(noticia);
			return Void.TYPE;
		}		
				)
		.orElseThrow( () -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Noticia não encontrado!"));
	}
	
	@PutMapping("{id}")
	@ResponseStatus(HttpStatus.NO_CONTENT)
	public void atualizar(@PathVariable Integer id, @RequestBody  Noticia noticiaAtualizado ) {
		
		repository.findById(id)
		.map( noticia -> {
			noticiaAtualizado.setId(noticia.getId());
			return repository.save(noticiaAtualizado);
			 
		}		
				)
		.orElseThrow( () -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Noticia não encontrado!"));
	}
}
