package labes.facomp.ufpa.br.meuegresso.dto.grafico;

import java.util.Map;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Dto para retorno de informacoes da área de atuação dos egressos para o grafico
 *
 * @author Camilo Santos
 * @since 20/05/2023
 * @version 1.0
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class AreaAtuacaoGraficoDTO {

    private Map<String, Integer> areaAtuacao;

}