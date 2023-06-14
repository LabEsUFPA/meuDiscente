package labes.facomp.ufpa.br.meuegresso.service.egresso;

import java.util.List;

import labes.facomp.ufpa.br.meuegresso.dto.publico.grafico.EmpresaGraficoDTO;
import labes.facomp.ufpa.br.meuegresso.exceptions.InvalidRequestException;
import labes.facomp.ufpa.br.meuegresso.model.EgressoEmpresaModel;
import labes.facomp.ufpa.br.meuegresso.model.EgressoEmpresaModelId;

/**
 * Interface responsável por especificar os metodos a serem implementados.
 *
 * @author Alfredo Gabriel, Camilo Santos
 * @since 21/04/2023
 * @version 1.0
 */
public interface EgressoEmpresaService {

	/**
	 * Método responsável por persistir determinado egressoEmpresa no banco de
	 * dados.
	 *
	 * @param egressoEmpresaModel Dados do egressoEmpresa
	 * @return Dados após serem gravados no banco de dados.
	 */
	public EgressoEmpresaModel save(EgressoEmpresaModel egressoEmpresaModel);

	/**
	 * Método responsável por encontrar um determinado egressoEmpresa por sua ID.
	 *
	 * @param id EgressoEmpresaModelId
	 * @return EgressoEmpresaModel
	 */
	public EgressoEmpresaModel findById(EgressoEmpresaModelId id);

	/**
	 * Método responsável por encontrar todos os egressoEmpresas cadastrados.
	 *
	 * @return Lista de objetos da classe EgressoEmpresaModel.
	 */
	public List<EgressoEmpresaModel> findAll();

	/**
	 * Método responsável por atualizar dados de um egressoEmpresa cadastrado.
	 *
	 * @param egressoEmpresa objeto egressoEmpresa
	 * @return EgressoEmpresaModel
	 */
	public EgressoEmpresaModel update(EgressoEmpresaModel egressoEmpresa) throws InvalidRequestException;

	/**
	 * Método responsável por deletar um egressoEmpresa cadastrado por sua ID.
	 *
	 * @param id de EgressoEmpresaModelId
	 */
	public boolean deleteById(EgressoEmpresaModelId id);

	/**
	 * Método responsável por verificar se existe um determinado elemento.
	 *
	 * @param id
	 * @param createdBy
	 * @return boolean
	 */
	boolean existsByIdAndCreatedById(EgressoEmpresaModelId id, Integer createdBy);

	/**
	 * Método responsável por retornar os dados para o mapa sociodemográfico
	 *
	 * @return List<EgressoMapaDTO>
	 */
	public List<EgressoEmpresaModel> findAllEgressoMapa();

	/**
	 * Método responsável por retornar os dados para o grafico de emprego
	 *
	 * @return List<EmpresaGraficoDTO>
	 */
	public List<EmpresaGraficoDTO> countEgressoByEmpresas();
}
