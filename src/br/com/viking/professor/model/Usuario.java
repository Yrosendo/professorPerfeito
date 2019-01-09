package br.com.viking.professor.model;


//import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity 
@Table(name = "usuario")
public class Usuario {
	
	@Id    
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idusuario;
	
	/*
	private TipoUsuario tipousuario;
	*/
	@Column
	private String login;
	
	@Column
	private String senha;
	
	@Column
	private String nome;
	
	/*
	@Column(name = "data_nascimento") 
	private Date dataNascimento;
	*/
	
	@Column
	private String cpf;
	
	@Column
	private String endereco;
	
	@Column
	private String telefone;
	
	@Column
	private String formacao;
	
	@Column(name = "email_pagseguro") 
	private String emailPagSeguro;
	
	@Column
	private String estado;
	
	@Column
	private String cidade;
	
	@Column
	private String cep;
	
	@Column
	private String foto;
	
	public int getIdusuario() {
		return idusuario;
	}
	public void setIdusuario(int idusuario) {
		this.idusuario = idusuario;
	}
	/*
	public TipoUsuario getTipousuario() {
		return tipousuario;
	}
	public void setTipousuario(TipoUsuario tipousuario) {
		this.tipousuario = tipousuario;
	}
	*/
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	/*
	public Date getDataNascimento() {
		return dataNascimento;
	}
	public void setDataNascimento(Date dataNascimento) {
		this.dataNascimento = dataNascimento;
	}
	*/
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	public String getFormacao() {
		return formacao;
	}
	public void setFormacao(String formacao) {
		this.formacao = formacao;
	}
	public String getEmailPagSeguro() {
		return emailPagSeguro;
	}
	public void setEmailPagSeguro(String emailPagSeguro) {
		this.emailPagSeguro = emailPagSeguro;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	public String getCep() {
		return cep;
	}
	public void setCep(String cep) {
		this.cep = cep;
	}
	
	public String getFoto() {
		return foto;
	}
	public void setFoto(String foto) {
		this.foto = foto;
	}
	
	
}
