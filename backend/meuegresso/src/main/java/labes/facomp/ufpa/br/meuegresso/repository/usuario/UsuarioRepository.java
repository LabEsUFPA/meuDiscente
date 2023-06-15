package labes.facomp.ufpa.br.meuegresso.repository.usuario;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import jakarta.persistence.Tuple;
import labes.facomp.ufpa.br.meuegresso.dto.administradores.egresso.EgressoDashDTO;
import labes.facomp.ufpa.br.meuegresso.model.UsuarioModel;

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

	boolean existsByIdAndCreatedById(Integer id, Integer createdBy);

	boolean existsByUsernameIgnoreCase(String username);

	/**
	 * Método responsável por retornar dados para o EgressoDashDTO
	 * 
	 * @author Eude Monteiro
	 * @return Um objeto map com informações sobre o nome do usuário,
	 *         seu status de cadastro e data de modificação.
	 * @since 12/06/2023
	 */
	@Query(nativeQuery = true, 
	value = """
			SELECT u.id_usuario, u.nome_usuario, empr.nome_empresa, u.email, u.created_date, e.foto, CASE WHEN ug.grupo = 'EGRESSO' AND e.usuario_id IS NOT NULL then CASE WHEN e.ativo = FALSE THEN 'excluido' WHEN u.valido_usuario = TRUE THEN 'completo'WHEN u.valido_usuario = FALSE THEN 'pendente' END ELSE 'incompleto' END AS status FROM usuario_grupo ug LEFT JOIN egresso e ON ug.id_usuario = e.usuario_id JOIN usuario u ON ug.id_usuario = u.id_usuario JOIN egresso_empresa ee ON ee.egresso_id_egresso  = e.id_egresso JOIN empresa empr ON ee.empresa_id_empresa  = empr.id_empresa WHERE ug.grupo = 'EGRESSO' and CASE WHEN ug.grupo = 'EGRESSO' AND e.usuario_id IS NOT NULL then CASE WHEN e.ativo = FALSE THEN 'excluido' WHEN u.valido_usuario = TRUE THEN 'completo' WHEN u.valido_usuario = FALSE THEN 'pendente' END ELSE 'incompleto' end ilike %:status% and u.nome_usuario ilike %:nomeUsuario% and empr.nome_empresa ilike %:nomeEmpresa% and u.email ilike %:email% and u.created_date >= :minDate and u.created_date <= :maxDate AND (ug.GRUPO = 'EGRESSO' AND e.usuario_id IS NOT NULL OR u.valido_usuario = FALSE) 
			""")
	Page<EgressoDashDTO> findBySearch(
			@Param("nomeUsuario") String nomeUsuario,
			@Param("nomeEmpresa") String nomeEmpresa,
			@Param("minDate") LocalDateTime minDate,
			@Param("maxDate") LocalDateTime maxDate,
			@Param("status") String status,
			@Param("email") String email,
			Pageable page);

	@Query(value = """
			    SELECT u.nome_usuario, u.id_usuario,
			    CASE
			        WHEN ug.id_grupo = 3 AND e.usuario_id IS NOT NULL THEN
			        CASE
			            WHEN e.ativo = FALSE THEN 'excluido'
			            WHEN u.valido_usuario = TRUE THEN 'completo'
			            WHEN u.valido_usuario = FALSE THEN 'pendente'
			        END
			        ELSE 'incompleto'
			    END AS status
			    FROM usuario_grupo ug
			    LEFT JOIN egresso e ON ug.id_usuario = e.usuario_id
			    JOIN usuario u ON ug.id_usuario = u.id_usuario
			    WHERE ug.id_grupo = 3
			    AND (ug.id_grupo = 3 AND e.usuario_id IS NOT NULL OR u.valido_usuario = FALSE)
			""", nativeQuery = true)
	List<Tuple> setStatus();
}
