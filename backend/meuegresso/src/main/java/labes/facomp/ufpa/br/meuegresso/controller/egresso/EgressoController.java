package labes.facomp.ufpa.br.meuegresso.controller.egresso;

import java.io.IOException;

import org.modelmapper.ModelMapper;
import org.modelmapper.convention.MatchingStrategies;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.oauth2.server.resource.authentication.JwtAuthenticationToken;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import jakarta.validation.Valid;
import labes.facomp.ufpa.br.meuegresso.dto.egresso.EgressoCadastroDTO;
import labes.facomp.ufpa.br.meuegresso.dto.egresso.EgressoDTO;
import labes.facomp.ufpa.br.meuegresso.dto.egresso.EgressoPublicDTO;
import labes.facomp.ufpa.br.meuegresso.dto.empresa.EmpresaBasicDTO;
import labes.facomp.ufpa.br.meuegresso.dto.empresa.EmpresaCadastroEgressoDTO;
import labes.facomp.ufpa.br.meuegresso.dto.titulacao.TitulacaoEgressoDTO;
import labes.facomp.ufpa.br.meuegresso.enumeration.ResponseType;
import labes.facomp.ufpa.br.meuegresso.exceptions.UnauthorizedRequestException;
import labes.facomp.ufpa.br.meuegresso.model.AreaAtuacaoModel;
import labes.facomp.ufpa.br.meuegresso.model.ContribuicaoModel;
import labes.facomp.ufpa.br.meuegresso.model.CursoModel;
import labes.facomp.ufpa.br.meuegresso.model.DepoimentoModel;
import labes.facomp.ufpa.br.meuegresso.model.EgressoEmpresaModel;
import labes.facomp.ufpa.br.meuegresso.model.EgressoModel;
import labes.facomp.ufpa.br.meuegresso.model.EgressoTitulacaoModel;
import labes.facomp.ufpa.br.meuegresso.model.EmpresaModel;
import labes.facomp.ufpa.br.meuegresso.model.EnderecoModel;
import labes.facomp.ufpa.br.meuegresso.model.FaixaSalarialModel;
import labes.facomp.ufpa.br.meuegresso.model.PalestraModel;
import labes.facomp.ufpa.br.meuegresso.model.SetorAtuacaoModel;
import labes.facomp.ufpa.br.meuegresso.model.TitulacaoModel;
import labes.facomp.ufpa.br.meuegresso.service.areaatuacao.AreaAtuacaoService;
import labes.facomp.ufpa.br.meuegresso.service.auth.JwtService;
import labes.facomp.ufpa.br.meuegresso.service.curso.CursoService;
import labes.facomp.ufpa.br.meuegresso.service.egresso.EgressoEmpresaService;
import labes.facomp.ufpa.br.meuegresso.service.egresso.EgressoService;
import labes.facomp.ufpa.br.meuegresso.service.empresa.EmpresaService;
import labes.facomp.ufpa.br.meuegresso.service.endereco.EnderecoService;
import labes.facomp.ufpa.br.meuegresso.service.setoratuacao.SetorAtuacaoService;
import labes.facomp.ufpa.br.meuegresso.service.titulacao.TitulacaoService;
import labes.facomp.ufpa.br.meuegresso.service.usuario.UsuarioService;
import lombok.RequiredArgsConstructor;

/**
 * Responsável por fornecer um end-point para criar um novo Egresso.
 *
 * @author João Paulo
 * @since 16/04/2023
 * @version 1.0
 */
@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/egresso")
public class EgressoController {

    private final EgressoService egressoService;
    private final EgressoEmpresaService egressoEmpresaService;
    private final UsuarioService usuarioService;
    private final EmpresaService empresaService;
    private final SetorAtuacaoService setorAtuacaoService;
    private final CursoService cursoService;
    private final EnderecoService enderecoService;
    private final TitulacaoService titulacaoService;
    private final AreaAtuacaoService areaAtuacaoService;

    private final ModelMapper mapper;

    private final JwtService jwtService;

    /**
     * Endpoint responsavel por cadastrar o egresso.
     *
     * @param egressoCadastroDTO,token Estruturas de dados contendo as informações
     *                                 necessárias para
     *                                 salvar o egresso.
     * @return {@link String} Uma string representando uma mensagem de êxito
     *         indicando que o egresso
     *         foi salvo.
     * @author João Paulo, Alfredo Gabriel
     * @since 16/04/2023
     */
    @PostMapping
    @ResponseStatus(code = HttpStatus.CREATED)
    @Operation(security = { @SecurityRequirement(name = "Bearer") })
    public String cadastrarEgressoPrimeiroCadastro(@RequestBody @Valid EgressoCadastroDTO egressoCadastroDTO,
            JwtAuthenticationToken token) {

        mapper.getConfiguration().setMatchingStrategy(MatchingStrategies.STANDARD);

        // em cima ok
        EgressoModel egresso = mapper.map(egressoCadastroDTO, EgressoModel.class);

        // Cadastro da titulacao POS-Graduação ou n
        if (egressoCadastroDTO.getTitulacao() != null) {
            TitulacaoEgressoDTO titulacaoEgressoDTO = egressoCadastroDTO.getTitulacao();
            // Cadastro do curso
            CursoModel curso = cursoService.findByNome(titulacaoEgressoDTO.getCurso());
            if (curso == null) {
                curso = CursoModel.builder().nome(titulacaoEgressoDTO.getCurso()).build();
                curso = cursoService.save(curso);
            }
            // Cadastro do Instituição ex: UFPA
            EmpresaModel instituicao = empresaService.findByNome(titulacaoEgressoDTO.getInstituicao());
            if (instituicao == null) {
                instituicao = EmpresaModel.builder().nome(titulacaoEgressoDTO.getInstituicao()).build();
                instituicao = empresaService.save(instituicao);
            }
            TitulacaoModel titulacao = titulacaoService
                    .findById(egressoCadastroDTO.getPosGraduacao().booleanValue() ? 2 : 1);
            EgressoTitulacaoModel egressoTitulacao = EgressoTitulacaoModel.builder().empresa(instituicao)
                    .titulacao(titulacao).egresso(egresso)
                    .curso(curso).build();
            egresso.setTitulacao(egressoTitulacao);
        }

        // Cadastro EMPRESA - EMPREGO
        EmpresaModel empresa;
        EmpresaCadastroEgressoDTO empresaDTO;
        EmpresaBasicDTO empAndEnd;
        EnderecoModel enderecoEmpresa;
        if (egressoCadastroDTO.getEmpresa() != null) {
            empresaDTO = egressoCadastroDTO.getEmpresa();
            empAndEnd = empresaDTO.getEmpresaAndEndereco();

            if (empAndEnd.getId() != null) {
                empresa = empresaService.findById(empAndEnd.getId());
            } else {
                enderecoEmpresa = enderecoService.findByCidadeAndEstadoAndPais(
                        empAndEnd.getEndereco().getCidade(),
                        empAndEnd.getEndereco().getEstado(),
                        empAndEnd.getEndereco().getPais());
                // se localizacao nao existe empresa nao existe, entao da tudo certo
                if (enderecoEmpresa == null) {
                    enderecoEmpresa = mapper.map(empAndEnd.getEndereco(), EnderecoModel.class);
                    enderecoEmpresa = enderecoService.save(enderecoEmpresa);
                }

                empresa = empresaService.findByNome(empAndEnd.getNome());
                if (empresa == null) {
                    empresa = mapper.map(empresaDTO, EmpresaModel.class);
                    empresa.setEndereco(enderecoEmpresa);
                    empresa = empresaService.save(empresa);
                }
            }

            egresso.setEmprego(EgressoEmpresaModel.builder()
                    .egresso(egresso)
                    .empresa(empresa)
                    .faixaSalarial(FaixaSalarialModel.builder()
                            .id(empresaDTO.getFaixaSalarialId())
                            .build())
                    .build());
            validaSetorAtuacao(empresaDTO.getSetorAtuacao(), egresso);
            validaAreaAtuacao(empresaDTO.getAreaAtuacao(), egresso);
        }

        egresso.setUsuario(usuarioService.findById(jwtService.getIdUsuario(token)));
        egresso.getUsuario().setNome(egressoCadastroDTO.getNome());
        PalestraModel palestra;
        if (egresso.getPalestras() != null) {
            palestra = egresso.getPalestras();
            palestra.setEgresso(egresso);

        }
        DepoimentoModel depoimento = egresso.getDepoimento();
        ContribuicaoModel contribuicao = egresso.getContribuicao();
        depoimento.setEgresso(egresso);
        contribuicao.setEgresso(egresso);

        egressoService.adicionarEgresso(egresso);

        return ResponseType.SUCCESS_SAVE.getMessage();
    }

    /**
     * Endpoint responsavel por buscar o egresso.
     *
     * @param token Estrutura de dados contendo as informações necessárias para
     *              buscar o egresso.
     * @return {@link EgressoDTO} Dados retornados do banco.
     * @author Pedro Inácio, João Paulo, Alfredo Gabriel, Camilo Santos
     * @since 11/05/2023
     */
    @GetMapping
    @ResponseStatus(code = HttpStatus.OK)
    @Operation(security = { @SecurityRequirement(name = "Bearer") })
    public EgressoDTO getEgresso(JwtAuthenticationToken token) {
        mapper.getConfiguration().setMatchingStrategy(MatchingStrategies.STANDARD);

        EgressoModel egressoModel = egressoService.findByUsuarioId(jwtService.getIdUsuario(token));
        return mapper.map(egressoModel, EgressoDTO.class);
    }

    /**
     * Endpoint responsavel por atualizar o egresso.
     *
     * @param egresso Estrutura de dados contendo as informações necessárias para
     *                persistir o Usuário.
     * @return {@link EgressoModel} Dados gravados no banco com a Id atualizada.
     * @author Pedro Inácio
     * @throws UnauthorizedRequestException
     * @since 16/04/2023
     */
    @PutMapping
    @ResponseStatus(code = HttpStatus.CREATED)
    @Operation(security = { @SecurityRequirement(name = "Bearer") })
    public String atualizarEgresso(
            @RequestBody EgressoDTO egresso, JwtAuthenticationToken token)
            throws UnauthorizedRequestException {
        if (egressoService.existsByIdAndCreatedById(egresso.getId(), jwtService.getIdUsuario(token))) {
            mapper.getConfiguration().setMatchingStrategy(MatchingStrategies.STRICT);
            EgressoModel egressoModel = mapper.map(egresso, EgressoModel.class);
            if (egressoModel.getContribuicao() != null) {
                egressoModel.getContribuicao().setEgresso(egressoModel);
            }
            if (egressoModel.getDepoimento() != null) {
                egressoModel.getDepoimento().setEgresso(egressoModel);
            }
            if (egressoModel.getEmprego() != null) {
                EgressoEmpresaModel egressoEmpresaModel = egressoModel.getEmprego();
                EmpresaModel empresaModelNoBanco = empresaService
                        .findById(egressoEmpresaModel.getEmpresa().getId());
                if (empresaModelNoBanco != null) {
                    egressoEmpresaModel.setEmpresa(empresaModelNoBanco);
                }
                egressoModel.getEmprego().setEgresso(egressoModel);
                EnderecoModel enderecoModel = egressoEmpresaModel.getEmpresa().getEndereco();
                EnderecoModel enderecoModelNoBanco = enderecoService.findById(enderecoModel.getId());
                if (enderecoModelNoBanco != null && enderecoModel != enderecoModelNoBanco) {
                    egressoEmpresaModel.getEmpresa().setEndereco(enderecoModelNoBanco);
                } else if (enderecoModelNoBanco == null) {
                    egressoEmpresaModel.getEmpresa()
                            .setEndereco(EnderecoModel.builder().cidade(enderecoModel.getCidade())
                                    .estado(enderecoModel.getEstado()).pais(enderecoModel.getPais()).build());
                }
                SetorAtuacaoModel setorAtuacaoModel = egressoModel.getEmprego().getSetorAtuacao();
                AreaAtuacaoModel areaAtuacaoModel = egressoModel.getEmprego().getAreaAtuacao();
                validaAreaAtuacao(areaAtuacaoModel.getNome(), egressoModel);
                validaSetorAtuacao(setorAtuacaoModel.getNome(), egressoModel);
            }
            if (egressoModel.getPalestras() != null) {
                egressoModel.getPalestras().setEgresso(egressoModel);
            }
            egressoModel.getUsuario()
                    .setPassword(usuarioService.findById(jwtService.getIdUsuario(token)).getPassword());

            if (egressoModel.getTitulacao() != null) {
                validaCurso(egressoModel.getTitulacao().getCurso().getNome(), egressoModel);
                validaInstituicao(egresso.getTitulacao().getEmpresa().getNome(), egressoModel);
                egressoModel.getTitulacao().setEgresso(egressoModel);
            }
            egressoService.updateEgresso(egressoModel);
            return ResponseType.SUCCESS_UPDATE.getMessage();
        }
        throw new UnauthorizedRequestException();
    }

    /**
     * Endpoint responsavel por deletar o egresso.
     *
     * @param egressoPublicDTO Estrutura de dados contendo as informações
     *                         necessárias para deletar o egresso.
     * @return {@link ResponseEntity<String>} Mensagem de confirmacao.
     * @author Bruno Eiki, Marcus Maciel Oliveira
     * @since 05/06/2023
     */
    @DeleteMapping
    @PreAuthorize("hasRole('ADMIN')")
    @ResponseStatus(code = HttpStatus.OK)
    @Operation(security = { @SecurityRequirement(name = "Bearer") })
    public String deletarEgresso(@RequestBody @Valid EgressoPublicDTO egressoPublicDTO) {
        EgressoModel egressoModel = mapper.map(egressoPublicDTO, EgressoModel.class);
        if (egressoService.existsById(egressoModel.getId())) {
            egressoService.deleteById(egressoModel.getId());
            return ResponseType.SUCCESS_DELETE.getMessage();
        }
        return ResponseType.FAIL_DELETE.getMessage();
    }

    /**
     * Endpoint responsável pela deleção local do arquivo da foto do egresso
     *
     * @author Camilo Santos, Eude Monteiro
     * @since 11/05/2023
     * @param token
     * @return Uma string representando uma mensagem de êxito indicando que a foto
     *         foi deletada.
     * @throws IOException
     */
    @ResponseStatus(code = HttpStatus.OK)
    @DeleteMapping(value = "/foto")
    @Operation(security = { @SecurityRequirement(name = "Bearer") })
    public ResponseEntity<String> deleteFotoEgresso(JwtAuthenticationToken token) throws IOException {
        EgressoModel egressoModel = egressoService.findByUsuarioId(jwtService.getIdUsuario(token));
        if (egressoModel.getFotoNome() != null) {
            egressoService.deleteFile(egressoModel.getFotoNome());
            egressoModel.setFotoNome(null);
            egressoService.updateEgresso(egressoModel);
            return ResponseEntity.ok(ResponseType.SUCCESS_IMAGE_DELETE.getMessage());
        }
        return ResponseEntity.status(HttpStatus.NO_CONTENT).body(ResponseType.FAIL_IMAGE_DELETE.getMessage());

    }

    /**
     * Endpoint responsável pelo salvamento local do arquivo da foto do egresso
     *
     * @author Camilo Santos, Eude Monteiro
     * @since 11/05/2023
     * @param MultipartFile arquivo
     * @return Uma string representando uma mensagem de êxito indicando que a foto
     *         foi salva.
     * @throws IOException
     */
    @PostMapping(value = "/foto", consumes = { MediaType.MULTIPART_FORM_DATA_VALUE })
    @ResponseStatus(code = HttpStatus.CREATED)
    public String saveFotoEgresso(JwtAuthenticationToken token, @RequestPart MultipartFile arquivo) throws IOException {
        EgressoModel egressoModel = egressoService.findByUsuarioId(jwtService.getIdUsuario(token));
        String fileCode = egressoModel.getId().toString() + ".png";
        if (egressoModel.getFotoNome() != null) {
            egressoService.deleteFile(egressoModel.getFotoNome());
        }
        egressoModel.setFotoNome(fileCode);
        egressoService.updateEgresso(egressoModel);
        egressoService.saveFoto(fileCode, arquivo);
        return ResponseType.SUCCESS_IMAGE_SAVE.getMessage();
    }

    private void validaSetorAtuacao(String setorAtuacaoNome, EgressoModel egressoModel) {
        SetorAtuacaoModel setorAtuacaoModelNoBanco = setorAtuacaoService.findByNome(setorAtuacaoNome);
        if (setorAtuacaoModelNoBanco == null) {
            setorAtuacaoModelNoBanco = SetorAtuacaoModel.builder().nome(setorAtuacaoNome).build();
        }
        egressoModel.getEmprego().setSetorAtuacao(setorAtuacaoModelNoBanco);
    }

    private void validaAreaAtuacao(String areaAtuacaoNome, EgressoModel egressoModel) {
        AreaAtuacaoModel areaAtuacaoModelNoBanco = areaAtuacaoService.findByNome(areaAtuacaoNome);
        if (areaAtuacaoModelNoBanco == null) {
            areaAtuacaoModelNoBanco = AreaAtuacaoModel.builder().nome(areaAtuacaoNome).build();
        }
        egressoModel.getEmprego().setAreaAtuacao(areaAtuacaoModelNoBanco);
    }

    private void validaCurso(String cursoNome, EgressoModel egressoModel) {
        CursoModel cursoModel = cursoService.findByNome(cursoNome);
        if (cursoModel == null) {
            cursoModel = CursoModel.builder().nome(cursoNome).build();
        }
        egressoModel.getTitulacao().setCurso(cursoModel);
    }

    private void validaInstituicao(String cursoInstituicao, EgressoModel egressoModel) {
        EmpresaModel empresaModel = empresaService.findByNome(cursoInstituicao);
        if (empresaModel == null) {
            empresaModel = EmpresaModel.builder().nome(cursoInstituicao).build();
        }
        egressoModel.getTitulacao().setEmpresa(empresaModel);
    }
}
