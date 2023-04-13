package labes.facomp.ufpa.br.meuegresso.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import labes.facomp.ufpa.br.meuegresso.model.audit.Auditable;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity(name = "trabalho_publicado")
public class TrabalhoPublicadoModel extends Auditable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @Column(name = "id_trabalho_publicado", unique = true, nullable = false)
    private Integer idTrabalhoPublicado;

    @Column(name = "link_trabalho_publico", unique = false, nullable = false)
    private String linkTrabalho;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "egresso_id", unique = false, nullable = false)
    private EgressoModel egresso;
}
