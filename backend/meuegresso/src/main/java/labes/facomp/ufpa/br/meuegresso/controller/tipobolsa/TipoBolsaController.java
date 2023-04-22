package labes.facomp.ufpa.br.meuegresso.controller.tipobolsa;

import java.util.List;

import org.modelmapper.ModelMapper;
import org.modelmapper.TypeToken;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import jakarta.validation.Valid;
import labes.facomp.ufpa.br.meuegresso.dto.egresso.TipoBolsaDTO;
import labes.facomp.ufpa.br.meuegresso.enumeration.ResponseType;
import labes.facomp.ufpa.br.meuegresso.exceptions.InvalidRequestException;
import labes.facomp.ufpa.br.meuegresso.model.TipoBolsaModel;
import labes.facomp.ufpa.br.meuegresso.service.tipobolsa.TipoBolsaService;
import lombok.RequiredArgsConstructor;

/**
 * Responsável por fornecer end-points para tipo bolsa.
 *
 * @author Bruno Eiki
 * @since 21/04/2023
 * @version 1.0
 */
@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/tipoBolsa")
public class TipoBolsaController {

    private final TipoBolsaService tipoBolsaService;

    private final ModelMapper mapper;

    /**
     * Endpoint responsavel por buscar todas bolsas do banco.
     *
     * @param void
     * @return {@link List<TipoBolsaDTO} Retorna uma lista com todos os tipos de
     *         bolsa.
     * @author Bruno Eiki
     * @since 21/04/2023
     */
    @GetMapping
    @ResponseStatus(code = HttpStatus.OK)
    public List<TipoBolsaDTO> buscarTipoBolsas() {

        return mapper.map(tipoBolsaService.findAll(), new TypeToken<List<TipoBolsaDTO>>() {
        }.getType());
    }

    /**
     * Endpoint responsavel por adicionar um tipo de bolsa no banco.
     *
     * @param tipoBolsaDTO Estrutura de dados contendo as informações necessárias
     *                     para
     *                     adicionar um tipo de bolsa.
     * @return {@link String} Mensagem de confirmacao.
     * @author Bruno Eiki
     * @since 21/04/2023
     */
    @PostMapping
    @ResponseStatus(code = HttpStatus.CREATED)
    public String cadastrarTipoBolsa(
            @RequestBody @Valid TipoBolsaDTO tipoBolsaDTO) {
        TipoBolsaModel tipoBolsaModel = mapper.map(tipoBolsaDTO, TipoBolsaModel.class);
        tipoBolsaService.save(tipoBolsaModel);
        return ResponseType.SUCESS_SAVE.getMessage();
    }

    /**
     * Endpoint responsavel por atualizar um tipo de bolsa no banco.
     *
     * @param tipoBolsaDTO Estrutura de dados contendo as informações necessárias
     *                     para
     *                     atualizar uma cota.
     * @return {@link String} Mensagem de confirmacao.
     * @author Bruno Eiki
     * @since 21/04/2023
     */
    @PutMapping
    @ResponseStatus(code = HttpStatus.ACCEPTED)
    public String atualizarTipoBolsa(@RequestBody @Valid TipoBolsaDTO tipoBolsaDTO) throws InvalidRequestException {

        TipoBolsaModel tipoBolsaModel = mapper.map(tipoBolsaDTO, TipoBolsaModel.class);
        tipoBolsaService.update(tipoBolsaModel);
        return ResponseType.SUCESS_UPDATE.getMessage();
    }

    /**
     * Endpoint responsavel por deletar um tipo de bolsa no banco.
     *
     * @param tipoBolsaDTO Estrutura de dados contendo as informações necessárias
     *                     para
     *                     deletar um tipo de bolsa.
     * @return {@link String} Mensagem de confirmacao.
     * @author Bruno Eiki
     * @since 21/04/2023
     */
    @DeleteMapping
    @ResponseStatus(code = HttpStatus.OK)
    public String deletarTipoBolsa(@RequestBody @Valid TipoBolsaDTO tipoBolsaDTO) {

        TipoBolsaModel tipoBolsaModel = mapper.map(tipoBolsaDTO, TipoBolsaModel.class);
        tipoBolsaService.deleteById(tipoBolsaModel.getId());
        return ResponseType.SUCESS_DELETE.getMessage();
    }
}
