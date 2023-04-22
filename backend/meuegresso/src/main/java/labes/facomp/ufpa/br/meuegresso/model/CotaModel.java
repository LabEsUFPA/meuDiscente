package labes.facomp.ufpa.br.meuegresso.model;

import java.util.Set;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity(name = "cota")
@EqualsAndHashCode(callSuper = false)
public class CotaModel {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @Column(name = "id_cota", unique = true, nullable = false)
    private Integer id;

    @Column(name = "nome_cota", unique = true, nullable = false, length = 50)
    private String nome;

    @OneToMany(mappedBy = "cota", fetch = FetchType.LAZY)
    private Set<EgressoModel> egressos;
}
