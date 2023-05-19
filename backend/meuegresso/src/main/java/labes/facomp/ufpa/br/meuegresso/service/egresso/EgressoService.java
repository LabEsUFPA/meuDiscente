package labes.facomp.ufpa.br.meuegresso.service.egresso;

import java.util.List;

import labes.facomp.ufpa.br.meuegresso.model.EgressoModel;

/**
 * Interface responsável por especificar os metodos a serem implementados.
 *
 * @author Joao Paulo
 * @since 16/04/2023
 * @version 1.0
 */
public interface EgressoService {

	public EgressoModel findByUsuarioId(Integer idUsuario);

	public EgressoModel findById(Integer idEgresso);

	public List<EgressoModel> findAll();

	/**
	 * Metodo responsavel retornar lista de idades dos egressos.
	 *
	 * @param nenhum
	 * @return Lista com idade de todos os egressos
	 * @author Pedro Inácio
	 * @since 19/05/2023
	 */
	public List<Integer> findAllIdades();


	public EgressoModel adicionarEgresso(EgressoModel egresso);

	/**
	 * Metodo responsavel por atualizar informacoes do egresso no banco de dados.
	 *
	 * @param egresso Dados do egresso
	 * @return Dados após serem gravados no banco de dados.
	 * @author Pedro Inácio
	 * @since 16/04/2023
	 */
	public EgressoModel updateEgresso(EgressoModel egresso);

	/**
	 * Metodo responsavel por deletar informacoes do egresso no banco de dados.
	 *
	 * @param egresso Dados do egresso
	 * @return Mensagem de confirmacao
	 * @author Bruno Eiki
	 * @since 17/04/2023
	 */
	public boolean deletarEgresso(EgressoModel egresso);

	/**
	 * Metodo responsavel por verificar se egresso existe no banco de dados.
	 *
	 * @param id Id do egresso
	 * @return True caso egresso exista, false do contrario.
	 * @author Pedro Inácio
	 * @since 16/04/2023
	 */
	public boolean existsById(Integer id);

	/**
	 * Metodo responsavel por deletar informacoes do egresso no banco de dados a
	 * partir do id.
	 *
	 * @param id Id do egresso
	 * @return
	 * @author Pedro Inácio
	 * @since 16/04/2023
	 */
	public void deleteById(Integer id);

	/**
	 * Método responsável por verificar se existe um determinado elemento.
	 *
	 * @param id
	 * @param createdBy
	 * @return boolean
	 */
	boolean existsByIdAndCreatedById(Integer id, Integer createdBy);

}
