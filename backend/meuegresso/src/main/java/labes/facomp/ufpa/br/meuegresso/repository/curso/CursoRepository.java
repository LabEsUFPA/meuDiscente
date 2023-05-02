package labes.facomp.ufpa.br.meuegresso.repository.curso;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import labes.facomp.ufpa.br.meuegresso.model.CursoModel;

public interface CursoRepository extends CrudRepository<CursoModel,Integer>{

    List<CursoModel> findAll();

    boolean existsByIdAndCreatedById(Integer id, Integer createdBy);

    Optional<CursoModel> findByNomeIgnoreCase(String nome);
}
