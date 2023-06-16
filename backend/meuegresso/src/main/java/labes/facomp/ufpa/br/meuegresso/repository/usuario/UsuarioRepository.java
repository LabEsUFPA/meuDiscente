package labes.facomp.ufpa.br.meuegresso.repository.usuario;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import labes.facomp.ufpa.br.meuegresso.model.UsuarioModel;
import labes.facomp.ufpa.br.meuegresso.projections.usuario.RecoveryPasswordProjection;
import jakarta.persistence.Tuple;

/**
 * Interface utilizada para realizar a comunicação entre a aplicação é o banco
 * de dados.
 * Nota: O Spring Boot irá cuidar da implementação da mesma.
 *
 * @author Alfredo Gabriel
 * @since 26/03/2023
 * @version 1.0
 */
public interface UsuarioRepository extends CrudRepository<UsuarioModel, Integer> {
	Optional<UsuarioModel> findByUsernameIgnoreCase(String username);

	List<UsuarioModel> findAll();

	Optional<RecoveryPasswordProjection> findByEmailIgnoreCase(String email);

	boolean existsByIdAndCreatedById(Integer id, Integer createdBy);

	boolean existsByUsernameIgnoreCase(String username);

	
	@Query(nativeQuery = true,value = """
			SELECT u.email, u.last_modified_date
			FROM usuario u
			JOIN egresso e ON u.id_usuario = e.usuario_id
			WHERE e.ativo = true;
			""")
	List<Tuple> findByEmailAndData();
}