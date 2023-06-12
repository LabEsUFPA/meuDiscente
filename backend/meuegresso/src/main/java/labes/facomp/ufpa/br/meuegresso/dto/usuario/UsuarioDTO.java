package labes.facomp.ufpa.br.meuegresso.dto.usuario;

import java.util.HashSet;
import java.util.Set;

import jakarta.validation.Valid;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import labes.facomp.ufpa.br.meuegresso.dto.egresso.EgressoPublicDTO;
import labes.facomp.ufpa.br.meuegresso.enumeration.Grupos;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Nota: Use este DTO somente para persistir o usuário, não retorne o mesmo.
 *
 * @author Alfredo Gabriel, Camilo Santos
 * @since 26/03/2023
 * @version 1.0.1
 */
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UsuarioDTO {

	private Integer id;

	@NotBlank(message = "Infome um usuário.")
	private String username;

	@NotBlank(message = "Infome uma senha.")
	private String password;

	@Email(message = "Informe um e-mail valido.")
	@NotBlank(message = "Infome um email.")
	private String email;

	@NotBlank(message = "Infome um nome.")
	private String nome;

	@Valid
	private EgressoPublicDTO egresso;

	@Builder.Default
	private Set<Grupos> grupos = new HashSet<>();

}
