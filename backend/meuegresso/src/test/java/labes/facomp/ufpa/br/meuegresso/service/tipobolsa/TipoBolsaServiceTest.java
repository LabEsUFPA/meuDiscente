package labes.facomp.ufpa.br.meuegresso.service.tipobolsa;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.MethodOrderer.OrderAnnotation;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;
import org.junit.jupiter.api.TestInstance.Lifecycle;
import org.junit.jupiter.api.TestMethodOrder;
import org.mockito.BDDMockito;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.boot.test.mock.mockito.MockitoTestExecutionListener;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.TestExecutionListeners;
import org.springframework.test.context.support.DependencyInjectionTestExecutionListener;

import labes.facomp.ufpa.br.meuegresso.model.TipoBolsaModel;
import labes.facomp.ufpa.br.meuegresso.repository.tipobolsa.TipoBolsaRepository;

/**
 * classe que implementa os testes da TipoBolsaService
 * 
 * @author Pedro Inácio
 * @since 27/04/2023
 */
@SpringBootTest
@ActiveProfiles("test")
@TestInstance(Lifecycle.PER_CLASS)
@TestMethodOrder(OrderAnnotation.class)
@TestExecutionListeners({ DependencyInjectionTestExecutionListener.class, MockitoTestExecutionListener.class })
public class TipoBolsaServiceTest {
    @Autowired
    private TipoBolsaService service;

    @MockBean
    private TipoBolsaRepository repository;
    
    /**
     * metodo para criar um PesquisaCientifica para uso nos testes.
     * 
     * @author Pedro Inácio
     * @since 27/04/2023
     */
    @Test
    @Order(1)
    public void testSave() {

        BDDMockito.given(repository.save(Mockito.any(TipoBolsaModel.class)))
                .willReturn(getMockTipoBolsaModel());
        TipoBolsaModel response = service.save(new TipoBolsaModel());

        assertNotNull(response);
        assertEquals("PesquisaIA", response.getNome());
    }

    /**
     * metodo para atualizar uma tipobolsa para uso no teste.
     * 
     * @author Pedro Inácio
     * @since 27/04/2023
     */
    /* 
    @Test
    @Order(2)
    public void testUpdate() {

        BDDMockito.given(repository.save(Mockito.any(TipoBolsaModel.class)))
                .willReturn(getMockTipoBolsaModel());
        TipoBolsaModel response = service.save(new TipoBolsaModel());
        response.setNome(null);
        repository.update();

        TipoBolsaModel responseUpdate = new TipoBolsaModel(1, "Homem trans");
        response = service.update(responseUpdate);

        assertNotNull(response);
        assertEquals("Homem Cis", response.getNome());
    }*/

    /**
     * metodo que preenche um mock de um tipobolsa para usar como return nos testes.
     * 
     * @author Pedro Inácio
     * @since 27/04/2023
     * 
     * @return <code>TipoBolsaModel</code> object
     */
    private TipoBolsaModel getMockTipoBolsaModel() {

        TipoBolsaModel tipoBolsaModel = new TipoBolsaModel(1,"PIBIC", null);
        return tipoBolsaModel;
    }

    /**
     * Metodo para remover todos os dados do teste de tipobolsa
     * 
     * @author Pedro Inácio
     * @since 27/04/2023
     */
    @AfterAll
    private void tearDown() {
        repository.deleteAll();
    }

}
