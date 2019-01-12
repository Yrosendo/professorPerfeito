package br.com.viking.professor.model;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class TipoUsuarioDao {
	private static final String PERSISTENCE_UNIT = "professor";

	public void salvar(TipoUsuario tipoUsuario) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		manager.persist(tipoUsuario);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
	}

	public List<TipoUsuarioDao> listar() {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		List<TipoUsuarioDao> lista = manager.createQuery("FROM TipoUsuario ORDER BY id").getResultList();
		manager.close();
		factory.close();
		return lista;
	}
}
