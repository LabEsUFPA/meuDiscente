package labes.facomp.ufpa.br.meuegresso.controller.administrador.mensagem;

import java.util.List;

import org.modelmapper.ModelMapper;
import org.modelmapper.TypeToken;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import jakarta.validation.Valid;
import labes.facomp.ufpa.br.meuegresso.dto.mensagem.MensagemDTO;
import labes.facomp.ufpa.br.meuegresso.enumeration.ResponseType;
import labes.facomp.ufpa.br.meuegresso.exceptions.InvalidRequestException;
import labes.facomp.ufpa.br.meuegresso.exceptions.UnauthorizedRequestException;
import labes.facomp.ufpa.br.meuegresso.model.MensagemModel;
import labes.facomp.ufpa.br.meuegresso.service.mail.MailService;
import lombok.RequiredArgsConstructor;

/**
 * Responsável por fornecer um end-point para criar um novo usuário.
 *
 * @author Alfredo Gabriel
 * @since 26/03/2023
 * @version 1.0.1
 */
@RestController
@RequiredArgsConstructor
@RequestMapping("/administrador/mensagem")
public class MensagemAdmController {

	private final MailService mailService;

	private final ModelMapper mapper;

	//private TaskScheduler taskScheduler;

	/**
	 * Endpoint responsável por retornar a lista de usuários cadastrados no banco de
	 * dados.
	 *
	 * @return {@link MailAuthDTO} Lista de usuários cadastrados
	 * @author Alfredo Gabriel, Camilo Santos
	 * @since 18/04/2023
	 */
	@GetMapping
	@PreAuthorize(value = "hasRole('ADMIN') or hasRole('SECRETARIA')")
	public List<MensagemDTO> consultarEmails() {
		return mapper.map(mailService.findAll(), new TypeToken<List<MensagemDTO>>() {
		}.getType());
	}

	/**
	 * Endpoint responsavel por atualizar o usuário.
	 *
	 * @param MailDTO Estrutura de dados contendo as informações necessárias para
	 *                   atualizar o Usuário.
	 * @return {@link MailAuthDTO} Dados gravados no banco com a Id atualizada.
	 * @author Camilo Santos
	 * @throws InvalidRequestException
	 * @throws UnauthorizedRequestException
	 * @since 16/04/2023
	 */
	@PutMapping(value = "/{id}")
	@ResponseStatus(code = HttpStatus.CREATED)
	@PreAuthorize("hasRole('ADMIN') or hasRole('SECRETARIO')")
	public String atualizarEmail(@RequestBody @Valid MensagemDTO mensagemDTO) {
		mailService.update(mapper.map(mensagemDTO, MensagemModel.class));
		return ResponseType.SUCCESS_UPDATE.getMessage();
	}

	/**
	 * Endpoint responsável por deletar usuário por sua ID>
	 *
	 * @param id Integer
	 * @return Boolean
	 * @author Camilo Santos
	 * @since 19/04/2023
	 */
	@DeleteMapping(value = "/{id}")
	@PreAuthorize("hasRole('ADMIN')")
	@ResponseStatus(code = HttpStatus.OK)
	public String deleteById(@PathVariable(name = "id") Integer id) {
		if (mailService.deleteById(id)) {
			return ResponseType.SUCCESS_DELETE.getMessage();
		}
		return ResponseType.FAIL_DELETE.getMessage();
	}

	@PostMapping(value = "/email")
	@PreAuthorize("hasRole('ADMIN')")
	@ResponseStatus(code = HttpStatus.OK)
	public String saveEmail(@RequestBody @Valid MensagemDTO mensagemDTO) {
		mailService.deleteById(mailService.findAll().get(0).getId());
		mailService.save(mapper.map(mensagemDTO, MensagemModel.class));
		return ResponseType.SUCCESS_UPDATE.getMessage();
	}

}
