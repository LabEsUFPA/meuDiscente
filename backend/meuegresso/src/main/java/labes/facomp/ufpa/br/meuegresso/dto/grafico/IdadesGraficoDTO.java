package labes.facomp.ufpa.br.meuegresso.dto.grafico;

import java.util.HashMap;
import java.util.OptionalDouble;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Dto para retorno de informacoes de idades dos egressos para o grafico
 *
 * @author Pedro Inácio
 * @since 19/05/2023
 * @version 1.0
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class IdadesGraficoDTO {

    private OptionalDouble mediaIdades;
    
    private HashMap<Integer, Integer> idadesEgressos;

}
