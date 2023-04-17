package labes.facomp.ufpa.br.meuegresso.controller.egresso;

import org.modelmapper.ModelMapper;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.v3.oas.annotations.parameters.RequestBody;
import jakarta.validation.Valid;
import labes.facomp.ufpa.br.meuegresso.dto.egresso.ContribuicoesDTO;
import labes.facomp.ufpa.br.meuegresso.dto.egresso.DepoimentoDTO;
import labes.facomp.ufpa.br.meuegresso.dto.egresso.EgressoPublicDTO;
import labes.facomp.ufpa.br.meuegresso.dto.egresso.EmpregoDTO;
import labes.facomp.ufpa.br.meuegresso.dto.egresso.PublicacoesDTO;
import labes.facomp.ufpa.br.meuegresso.model.ContribuicaoModel;
import labes.facomp.ufpa.br.meuegresso.model.DepoimentoModel;
import labes.facomp.ufpa.br.meuegresso.model.EgressoEmpresaModel;
import labes.facomp.ufpa.br.meuegresso.model.EgressoModel;
import labes.facomp.ufpa.br.meuegresso.model.TrabalhoPublicadoModel;
import labes.facomp.ufpa.br.meuegresso.service.egresso.EgressoService;
import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
@RequestMapping("/egresso")

public class EgressoController {

    private EgressoService egressoService;
    private final ModelMapper mapper;

    @PostMapping
    public ResponseEntity<EgressoPublicDTO> cadastrarEgresso(@RequestBody EgressoPublicDTO egresso) {
        EgressoModel egressoModel = mapper.map(egresso, EgressoModel.class);
        egressoModel = egressoService.adicionarEgresso(egressoModel);
        return ResponseEntity.ok(mapper.map(egressoModel, EgressoPublicDTO.class));
    }

    @PostMapping(value = "/publicao")
    public ResponseEntity<PublicacoesDTO> cadastrarPublicacoes(@RequestBody PublicacoesDTO publicacao) {
        TrabalhoPublicadoModel publicacaoModel = mapper.map(publicacao, TrabalhoPublicadoModel.class);
        publicacaoModel = egressoService.adicionarPesquisa(publicacaoModel);
        return ResponseEntity.ok(mapper.map(publicacaoModel, PublicacoesDTO.class));
    }

    @PostMapping(value = "/emprego")
    public ResponseEntity<EmpregoDTO> cadastrarEmprego(@RequestBody EmpregoDTO emprego) {
        EgressoEmpresaModel empregoModel = mapper.map(emprego, EgressoEmpresaModel.class);
        empregoModel = egressoService.adicionarEmprego(empregoModel);
        return ResponseEntity.ok(mapper.map(empregoModel, EmpregoDTO.class));
    }

    @PostMapping(value = "/contribuicao")
    public ResponseEntity<ContribuicoesDTO> cadastrarContribuicao(@RequestBody ContribuicoesDTO contribucao) {
        ContribuicaoModel contribuicaoModel = mapper.map(contribucao, ContribuicaoModel.class);
        contribuicaoModel = egressoService.adicionarContribuicao(contribuicaoModel);
        return ResponseEntity.ok(mapper.map(contribuicaoModel, ContribuicoesDTO.class));
    }

    @PostMapping(value = "/depoimento")
    public ResponseEntity<DepoimentoDTO> cadastrarDepoimento(@RequestBody DepoimentoDTO depoimento) {
        DepoimentoModel depoimentoModel = mapper.map(depoimento, DepoimentoModel.class);
        depoimentoModel = egressoService.adicionarDepoimento(depoimentoModel);
        return ResponseEntity.ok(mapper.map(depoimentoModel, DepoimentoDTO.class));
    }


    @DeleteMapping(value = "/deletar")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<String> deletarEgresso(@RequestBody @Valid EgressoPublicDTO egressoPublicDTO) {
        EgressoModel egressoModel = mapper.map(egressoPublicDTO, EgressoModel.class);
        return egressoService.deletarEgresso(egressoModel);
    }

    @DeleteMapping(value = "/deletar/pesquisa")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<String> deletarPesquisa(@RequestBody @Valid PublicacoesDTO publicacao) {
        TrabalhoPublicadoModel publicacaoModel = mapper.map(publicacao, TrabalhoPublicadoModel.class);
        return egressoService.deletarPesquisa(publicacaoModel);
    }

    @PostMapping(value = "/deletar/emprego")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<String> deletarEmprego(@RequestBody EmpregoDTO emprego) {
        EgressoEmpresaModel empregoModel = mapper.map(emprego, EgressoEmpresaModel.class);
        return egressoService.deletarEmprego(empregoModel);
    }

    @PostMapping(value = "/deletar/contribuicao")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<String> deletarContribuicao(@RequestBody ContribuicoesDTO contribucao) {
        ContribuicaoModel contribuicaoModel = mapper.map(contribucao, ContribuicaoModel.class);
        return egressoService.deletarContribuicao(contribuicaoModel);
    }

    @PostMapping(value = "/deletar/depoimento")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<String> deletarDepoimento(@RequestBody DepoimentoDTO depoimento) {
        DepoimentoModel depoimentoModel = mapper.map(depoimento, DepoimentoModel.class);
        return egressoService.deletarDepoimento(depoimentoModel);
    }
}

