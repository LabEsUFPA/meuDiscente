package labes.facomp.ufpa.br.meuegresso.dto.administradores.tipobolsa;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * Encapsulamento da tabela Tipo Bolsa a fim de representar os dados de
 * auditoria.
 *
 * @author Alfredo Gabriel
 * @since 22/04/2023
 * @version 1.0
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class TipoBolsaDTO {

    private Integer id;

    private String nome;

    private Double remuneracao;
}
