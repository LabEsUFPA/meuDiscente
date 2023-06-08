package labes.facomp.ufpa.br.meuegresso.dto.grafico;

import java.util.Map;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Dto para retorno de informacoes de egressos cotistas e não cotistas.
 *
 * @author Camilo Santos
 * @since 22/05/2023
 * @version 1.0
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class CotistaGraficoDTO {

    private Map<String, Integer> cotistasEnumerados;

}