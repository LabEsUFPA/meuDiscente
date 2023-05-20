package labes.facomp.ufpa.br.meuegresso.controller.anuncio;

import java.time.LocalDate;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import org.modelmapper.ModelMapper;
import org.modelmapper.TypeToken;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.oauth2.server.resource.authentication.JwtAuthenticationToken;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import jakarta.validation.Valid;
import labes.facomp.ufpa.br.meuegresso.dto.anuncio.AnuncioDTO;
import labes.facomp.ufpa.br.meuegresso.dto.anuncio.BuscaAnuncioDTO;
import labes.facomp.ufpa.br.meuegresso.enumeration.ResponseType;
import labes.facomp.ufpa.br.meuegresso.exceptions.InvalidRequestException;
import labes.facomp.ufpa.br.meuegresso.exceptions.UnauthorizedRequestException;
import labes.facomp.ufpa.br.meuegresso.model.AnuncioModel;
import labes.facomp.ufpa.br.meuegresso.service.anuncio.AnuncioService;
import labes.facomp.ufpa.br.meuegresso.service.auth.JwtService;
import lombok.RequiredArgsConstructor;

/**
 * Responsável por fornecer um end-point para criar um novo anuncio.
 *
 * @author Alfredo Gabriel
 * @since 21/04/2023
 * @version 1.0
 */
@RestController
@RequiredArgsConstructor
@RequestMapping("/anuncio")
public class AnuncioController {

	private final AnuncioService anuncioService;

	private final ModelMapper mapper;

	private final JwtService jwtService;

	/**
	 * Endpoint responsável por retornar a lista de anuncio cadastrados no banco de
	 * dados.
	 *
	 * @return {@link AnuncioDTO} Lista de anuncio cadastrados
	 * @author Alfredo Gabriel
	 * @since 21/04/2023
	 */
	@GetMapping
	@Operation(security = { @SecurityRequirement(name = "Bearer") })
	public List<AnuncioDTO> consultarAnuncios() {
		List<AnuncioDTO> anuncios = mapper.map(anuncioService.findAll(), new TypeToken<List<AnuncioDTO>>() {}.getType());
		return anuncios.stream()
			.filter(anuncio -> LocalDate.now().isBefore(anuncio.getDataExpiracao()))
			.collect(Collectors.toList());
	}

	/**
	 * Endpoint responsável por retornar a lista de anuncios filtrados
	 *
	 * @return {@link List<AnuncioDTO>} Lista de anuncio cadastrados
	 * @param titulo título do anúncio deve conter
	 * @param minValorSalario valor mínimo do salário do anúncio
	 * @param maxValorSalario valor máximo do salário do anúncio
	 * @param areaEmprego id da area de emprego o qual anúncio se refere
	 * @author João Paulo, Lucas Cantão
	 * @since 19/05/2023
	 */
	@GetMapping("/busca")
	@Operation(security = { @SecurityRequirement(name = "Bearer") })
	public List<AnuncioDTO> filtrarAnuncios(
		@RequestParam(name = "titulo", defaultValue = "") String titulo,
		@RequestParam(name = "minValorSalario", defaultValue = "0") Double minValorSalario,
		@RequestParam(name = "maxValorSalario", defaultValue = "100000") Double maxValorSalario,
		@RequestParam(name = "areaEmprego", defaultValue = "") Integer[] areaEmprego) {

		List<AnuncioModel> filtro = anuncioService.findBySearch(
			BuscaAnuncioDTO.builder().titulo(titulo).minValorSalario(minValorSalario).maxValorSalario(maxValorSalario).areaEmprego(Arrays.asList(areaEmprego)).build());

		return mapper.map(filtro, new TypeToken<List<AnuncioDTO>>() {}.getType());
	}


	/**
	 * Endpoint responsavel por cadastrar o anuncio.
	 *
	 * @param anuncioDTO Estrutura de dados contendo as informações necessárias para
	 *                   persistir o anuncio.
	 * @return String confirmando a transação.
	 * @author Alfredo Gabriel
	 * @see {@link AnuncioDTO}
	 * @since 21/04/2023
	 */
	@PostMapping
	@ResponseStatus(code = HttpStatus.CREATED)
	@Operation(security = { @SecurityRequirement(name = "Bearer") })
	public String cadastrarAnuncio(@RequestBody @Valid AnuncioDTO anuncioDTO) {
		AnuncioModel anuncioModel = mapper.map(anuncioDTO, AnuncioModel.class);
		anuncioService.save(anuncioModel);
		return ResponseType.SUCESS_SAVE.getMessage();
	}



	/**
	 * Endpoint responsavel por atualizar o anuncio.
	 *
	 * @param anuncioDTO Estrutura de dados contendo as informações necessárias para
	 *                   atualizar o anuncio.
	 * @return {@link AnuncioDTO} Dados gravados no banco com a Id atualizada.
	 * @author Alfredo Gabriel
	 * @throws UnauthorizedRequestException
	 * @throws InvalidRequestException
	 * @since 21/04/2023
	 */
	@PutMapping
	@ResponseStatus(code = HttpStatus.CREATED)
	@Operation(security = { @SecurityRequirement(name = "Bearer") })
	public String atualizarAnuncio(@RequestBody @Valid AnuncioDTO anuncioDTO, JwtAuthenticationToken token) throws UnauthorizedRequestException, InvalidRequestException {
		if (anuncioService.existsByIdAndCreatedById(anuncioDTO.getId(), jwtService.getIdUsuario(token))) {
			AnuncioModel anuncioModel = mapper.map(anuncioDTO, AnuncioModel.class);
			anuncioService.update(anuncioModel);
			return ResponseType.SUCESS_UPDATE.getMessage();
		}
		throw new UnauthorizedRequestException();
	}

	/**
	 * Endpoint responsavel por deletar o anuncio do egresso.
	 *
	 * @param anuncio Estrutura de dados contendo as informações
	 *                necessárias para deletar o anuncio.
	 * @return {@link ResponseEntity<String>} Mensagem de confirmacao.
	 * @author Bruno Eiki
	 * @since 17/04/2023
	 */
	@DeleteMapping
	@PreAuthorize("hasRole('ADMIN')")
	@Operation(security = { @SecurityRequirement(name = "Bearer") })
	public boolean deleteById(Integer id) {
		return anuncioService.deleteById(id);
	}

}
