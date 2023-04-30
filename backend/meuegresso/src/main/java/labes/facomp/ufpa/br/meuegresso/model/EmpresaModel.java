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
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity(name = "empresa")
@EqualsAndHashCode(callSuper = false)
public class EmpresaModel extends Auditable {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @Column(name = "id_empresa", unique = true, nullable = false)
    private Integer id;

    @Column(name = "nome_empresa", unique = false, nullable = false, length = 130)
    private String nome;

    @Column(name = "setor_atuacao_empresa", unique = false, nullable = false, length = 130)
    private String setorAtuacao;

    @ManyToOne(optional = true, fetch = FetchType.LAZY)
    @JoinColumn(name = "endereco_empresa", unique = false, nullable = true)
    private EnderecoModel enderecoModel;
}
