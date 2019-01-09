package br.com.viking.professor.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import br.com.viking.professor.model.TipoUsuario;
import br.com.viking.professor.model.TipoUsuarioDao;

@Controller
public class TipoUsuarioController {
	
	@RequestMapping("/tipousuario/add")
	public String adicionarTipoUsuario() {
		return "usuario/incluirTipoUsuario";
	}
	
	@RequestMapping("/tipousuario/save")
	public String save(TipoUsuario tipoUsuario) {
		TipoUsuarioDao tipo = new TipoUsuarioDao(); 
		tipo.salvar(tipoUsuario);
		return "usuario/incluirTipoUsuarioSucesso";
	}
}
