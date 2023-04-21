package labes.facomp.ufpa.br.meuegresso.controller.etnia;

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
import labes.facomp.ufpa.br.meuegresso.dto.egresso.EtniaDTO;
import labes.facomp.ufpa.br.meuegresso.enumeration.ResponseType;
import labes.facomp.ufpa.br.meuegresso.exceptions.InvalidRequestException;
import labes.facomp.ufpa.br.meuegresso.model.EtniaModel;
import labes.facomp.ufpa.br.meuegresso.service.etnia.EtniaService;
import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/etnia")
public class EtniaController {

    private final EtniaService etniaService;

    private final ModelMapper mapper;

    @GetMapping
    @ResponseStatus(code = HttpStatus.OK)
    public List<EtniaDTO> buscarEtnias() {

        return mapper.map(etniaService.findAll(), new TypeToken<List<EtniaDTO>>() {
        }.getType());
    }

    @PostMapping
    @ResponseStatus(code = HttpStatus.CREATED)
    public String cadastrarEtnia(
            @RequestBody @Valid EtniaDTO etniaDTO) {
        EtniaModel etniaModel = mapper.map(etniaDTO, EtniaModel.class);
        etniaService.save(etniaModel);
        return ResponseType.SUCESS_SAVE.getMessage();
    }

    @PutMapping
    @ResponseStatus(code = HttpStatus.CREATED)
    public String atualizarEtnia(@RequestBody @Valid EtniaDTO etniaDTO) throws InvalidRequestException {

        EtniaModel etniaModel = mapper.map(etniaDTO, EtniaModel.class);
        etniaService.update(etniaModel);
        return ResponseType.SUCESS_UPDATE.getMessage();
    }

    @DeleteMapping
    @ResponseStatus(code = HttpStatus.OK)
    public String deletarEtnia(@RequestBody @Valid EtniaDTO etniaDTO) {

        EtniaModel etniaModel = mapper.map(etniaDTO, EtniaModel.class);
        etniaService.deleteById(etniaModel.getId());
        return ResponseType.SUCESS_DELETE.getMessage();
    }
}