package br.com.viking.professor.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import br.com.viking.professor.model.Usuario;
import br.com.viking.professor.model.UsuarioDao;
import br.com.viking.professor.util.Util;

@Controller
public class UsuarioController {

	@RequestMapping("/usuario/add")
	public String adicionarUsuario() {
		return "usuario/incluirUsuario";
	}

	@RequestMapping("/usuario/save")
	public String save(Usuario usuario, @RequestParam("file") MultipartFile foto) {
		if (Util.fazerUploadImagem(foto)) {
			usuario.setFoto(Util.obterMomentoAtual() + " - " + foto.getOriginalFilename());
		}
		UsuarioDao dao = new UsuarioDao();
		dao.salvar(usuario);
		return "usuario/incluirUsuarioSucesso";
	}
}
