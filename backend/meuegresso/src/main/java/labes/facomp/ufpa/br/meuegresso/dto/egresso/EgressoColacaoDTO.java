package labes.facomp.ufpa.br.meuegresso.dto.egresso;

import java.util.Date;

import labes.facomp.ufpa.br.meuegresso.dto.curso.CursoDTO;
import labes.facomp.ufpa.br.meuegresso.dto.titulacao.TitulacaoDTO;
import lombok.Data;

/**
 * 
 *
 * @author João Paulo
 * @since 16/04/2023
 * @version 1.0
 */
@Data
public class EgressoColacaoDTO {

    private Date ingresso;
    
    private Date conclusao;

    private CursoDTO curso;

    private TitulacaoDTO titulacao;
}
