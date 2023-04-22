package labes.facomp.ufpa.br.meuegresso.controller.faixasalarial;

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
import labes.facomp.ufpa.br.meuegresso.dto.egresso.FaixaSalarialDTO;
import labes.facomp.ufpa.br.meuegresso.enumeration.ResponseType;
import labes.facomp.ufpa.br.meuegresso.exceptions.InvalidRequestException;
import labes.facomp.ufpa.br.meuegresso.model.FaixaSalarialModel;
import labes.facomp.ufpa.br.meuegresso.service.faixasalarial.FaixaSalarialService;
import lombok.RequiredArgsConstructor;

/**
 * Responsável por fornecer end-points para Faixa Salarial.
 *
 * @author Bruno Eiki
 * @since 21/04/2023
 * @version 1.0
 */
@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/faixaSalarial")
public class FaixaSalarialController {

    private final FaixaSalarialService faixaSalarialService;

    private final ModelMapper mapper;

    /**
     * Endpoint responsavel por buscar todas as faixas salariais do banco.
     *
     * @param void
     * @return {@link List<FaixaSalarialDTO>} Retorna uma lista com todas as faixas
     *         salariais.
     * @author Bruno Eiki
     * @since 21/04/2023
     */
    @GetMapping
    @ResponseStatus(code = HttpStatus.OK)
    public List<FaixaSalarialDTO> buscarFaixaSalarials() {

        return mapper.map(faixaSalarialService.findAll(), new TypeToken<List<FaixaSalarialDTO>>() {
        }.getType());
    }

    /**
     * Endpoint responsavel por adicionar uma faixa salarial no banco.
     *
     * @param faixaSalarialDTO Estrutura de dados contendo as informações
     *                         necessárias para adicionar uma faixa salarial.
     * @return {@link String} Mensagem de confirmacao.
     * @author Bruno Eiki
     * @since 21/04/2023
     */
    @PostMapping
    @ResponseStatus(code = HttpStatus.CREATED)
    public String cadastrarFaixaSalarial(
            @RequestBody @Valid FaixaSalarialDTO faixaSalarialDTO) {
        FaixaSalarialModel faixaSalarialModel = mapper.map(faixaSalarialDTO, FaixaSalarialModel.class);
        faixaSalarialService.save(faixaSalarialModel);
        return ResponseType.SUCESS_SAVE.getMessage();
    }

    /**
     * Endpoint responsavel por atualizar uma faixa salarial no banco.
     *
     * @param faixaSalarialDTO Estrutura de dados contendo as informações
     *                         necessárias para atualizar uma faixa salarial.
     * @return {@link String} Mensagem de confirmacao.
     * @author Bruno Eiki
     * @since 21/04/2023
     */
    @PutMapping
    @ResponseStatus(code = HttpStatus.ACCEPTED)
    public String atualizarFaixaSalarial(@RequestBody @Valid FaixaSalarialDTO faixaSalarialDTO)
            throws InvalidRequestException {

        FaixaSalarialModel faixaSalarialModel = mapper.map(faixaSalarialDTO, FaixaSalarialModel.class);
        faixaSalarialService.update(faixaSalarialModel);
        return ResponseType.SUCESS_UPDATE.getMessage();
    }

    /**
     * Endpoint responsavel por deletar uma faixa salarial no banco.
     *
     * @param faixaSalarialDTO Estrutura de dados contendo as informações
     *                         necessárias para deletar uma faixa salarial.
     * @return {@link String} Mensagem de confirmacao.
     * @author Bruno Eiki
     * @since 21/04/2023
     */
    @DeleteMapping
    @ResponseStatus(code = HttpStatus.OK)
    public String deletarFaixaSalarial(@RequestBody @Valid FaixaSalarialDTO faixaSalarialDTO) {

        FaixaSalarialModel faixaSalarialModel = mapper.map(faixaSalarialDTO, FaixaSalarialModel.class);
        faixaSalarialService.deleteById(faixaSalarialModel.getId());
        return ResponseType.SUCESS_DELETE.getMessage();
    }
}
