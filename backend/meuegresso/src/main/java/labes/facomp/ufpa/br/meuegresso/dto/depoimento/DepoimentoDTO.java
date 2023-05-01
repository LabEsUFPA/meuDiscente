package labes.facomp.ufpa.br.meuegresso.dto.depoimento;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 
 *
 * @author João Paulo
 * @since 16/04/2023
 * @version 1.0
 */
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class DepoimentoDTO {

    private Integer id;

    private String descricao;

    private Integer egressoId;
}
