package labes.facomp.ufpa.br.meuegresso.controller.egresso;

import java.util.List;

import org.modelmapper.ModelMapper;
import org.modelmapper.TypeToken;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import jakarta.validation.Valid;
import labes.facomp.ufpa.br.meuegresso.dto.egresso.EgressoEmpresaDTO;
import labes.facomp.ufpa.br.meuegresso.enumeration.ResponseType;
import labes.facomp.ufpa.br.meuegresso.model.EgressoEmpresaModel;
import labes.facomp.ufpa.br.meuegresso.model.EgressoEmpresaModelId;
import labes.facomp.ufpa.br.meuegresso.service.egresso.EgressoEmpresaService;
import lombok.RequiredArgsConstructor;

/**
 * Responsável por fornecer um end-point para criar um novo egressoEmpresa.
 *
 * @author Alfredo Gabriel
 * @since 21/04/2023
 * @version 1.0
 */
@RestController
@RequiredArgsConstructor
@RequestMapping("/egressoEmpresa")
public class EgressoEmpresaController {

	private final EgressoEmpresaService egressoEmpresaService;

	private final ModelMapper mapper;

	/**
	 * Endpoint responsável por retornar a lista de egressoEmpresa cadastrados no
	 * banco de dados.
	 * 
	 * @return {@link EgressoEmpresaDTO} Lista de egressoEmpresa cadastrados
	 * @author Alfredo Gabriel
	 * @since 21/04/2023
	 */
	@GetMapping
	public List<EgressoEmpresaDTO> consultarEgressoEmpresas() {
		return mapper.map(egressoEmpresaService.findAll(), new TypeToken<List<EgressoEmpresaDTO>>() {
		}.getType());
	}

	/**
	 * Endpoint responsável por retornar um egressoEmpresa por sua ID.
	 * 
	 * @param id Integer
	 * @return {@link EgressoEmpresaDTO} Dados gravados no banco.
	 * @author Alfredo Gabriel, Camilo Santos
	 * @since 21/04/2023
	 */
	@ResponseStatus(code = HttpStatus.OK)
	@GetMapping(params = { "egressoId", "empresaId" })
	public EgressoEmpresaDTO findById(@RequestParam(required = false) Integer egressoId,
			@RequestParam(required = false) Integer empresaId) {
		return mapper.map(
				egressoEmpresaService
						.findById(EgressoEmpresaModelId.builder().egressoId(egressoId).empresaId(empresaId).build()),
				EgressoEmpresaDTO.class);
	}

	/**
	 * Endpoint responsavel por cadastrar o egressoEmpresa.
	 *
	 * @param egressoEmpresaDTO Estrutura de dados contendo as informações
	 *                          necessárias para persistir o egressoEmpresa.
	 * @return String confirmando a transação.
	 * @author Alfredo Gabriel
	 * @see {@link EgressoEmpresaDTO}
	 * @since 21/04/2023
	 */
	@PostMapping
	@ResponseStatus(code = HttpStatus.CREATED)
	public String cadastrarEgressoEmpresa(@RequestBody @Valid EgressoEmpresaDTO egressoEmpresaDTO) {
		EgressoEmpresaModel egressoEmpresaModel = mapper.map(egressoEmpresaDTO, EgressoEmpresaModel.class);
		egressoEmpresaService.save(egressoEmpresaModel);
		return ResponseType.SUCESS_SAVE.getMessage();
	}

	/**
	 * Endpoint responsavel por atualizar o egressoEmpresa.
	 * 
	 * @param egressoEmpresaDTO Estrutura de dados contendo as informações
	 *                          necessárias para
	 *                          atualizar o egressoEmpresa.
	 * @return {@link EgressoEmpresaDTO} Dados gravados no banco com a Id
	 *         atualizada.
	 * @author Alfredo Gabriel
	 * @since 21/04/2023
	 */
	@PutMapping
	@ResponseStatus(code = HttpStatus.CREATED)
	public EgressoEmpresaDTO atualizarEgressoEmpresa(@RequestBody @Valid EgressoEmpresaDTO egressoEmpresaDTO) {
		EgressoEmpresaModel egressoEmpresaModel = mapper.map(egressoEmpresaDTO, EgressoEmpresaModel.class);
		egressoEmpresaModel = egressoEmpresaService.save(egressoEmpresaModel);
		return mapper.map(egressoEmpresaModel, EgressoEmpresaDTO.class);
	}

	/**
	 * Endpoint responsável por deletar egressoEmpresa por sua ID>
	 * 
	 * @param id Integer
	 * @return Boolean
	 * @author Alfredo Gabriel
	 * @since 21/04/2023
	 */
	@DeleteMapping(params = { "egressoId", "empresaId" })
	@PreAuthorize("hasRole('ADMIN')")
	public boolean deleteById(@RequestParam(required = false) Integer egressoId,
			@RequestParam(required = false) Integer empresaId) {
		return egressoEmpresaService
				.deleteById(EgressoEmpresaModelId.builder().egressoId(egressoId).empresaId(empresaId).build());
	}

}
