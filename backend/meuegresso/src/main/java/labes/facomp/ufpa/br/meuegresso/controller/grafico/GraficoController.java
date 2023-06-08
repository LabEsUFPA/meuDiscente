package labes.facomp.ufpa.br.meuegresso.controller.grafico;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import labes.facomp.ufpa.br.meuegresso.dto.grafico.AreaAtuacaoGraficoDTO;
import labes.facomp.ufpa.br.meuegresso.dto.grafico.BolsistasGraficoDTO;
import labes.facomp.ufpa.br.meuegresso.dto.grafico.CotaGraficoDTO;
import labes.facomp.ufpa.br.meuegresso.dto.grafico.CotistaGraficoDTO;
import labes.facomp.ufpa.br.meuegresso.dto.grafico.CursosGraficoDTO;
import labes.facomp.ufpa.br.meuegresso.dto.grafico.EmpresaGraficoDTO;
import labes.facomp.ufpa.br.meuegresso.dto.grafico.EnderecoEmpresasGraficoDTO;
import labes.facomp.ufpa.br.meuegresso.dto.grafico.GenerosGraficoDTO;
import labes.facomp.ufpa.br.meuegresso.dto.grafico.IdadesGraficoDTO;
import labes.facomp.ufpa.br.meuegresso.dto.grafico.InteresseEmPosGraficoDTO;
import labes.facomp.ufpa.br.meuegresso.dto.grafico.LocalPosGraficoDTO;
import labes.facomp.ufpa.br.meuegresso.dto.grafico.PosGraduacaoGraficoDTO;
import labes.facomp.ufpa.br.meuegresso.dto.grafico.RemuneracaoGraficoDTO;
import labes.facomp.ufpa.br.meuegresso.dto.grafico.SalarioGraficoDTO;
import labes.facomp.ufpa.br.meuegresso.dto.grafico.SetorAtuacaoGraficoDTO;
import labes.facomp.ufpa.br.meuegresso.dto.grafico.TipoAlunoGraficoDTO;
import labes.facomp.ufpa.br.meuegresso.dto.grafico.TipoBolsaGraficoDTO;
import labes.facomp.ufpa.br.meuegresso.model.EgressoEmpresaModel;
import labes.facomp.ufpa.br.meuegresso.model.EgressoModel;
import labes.facomp.ufpa.br.meuegresso.model.SetorAtuacaoModel;
import labes.facomp.ufpa.br.meuegresso.service.areaatuacao.AreaAtuacaoService;
import labes.facomp.ufpa.br.meuegresso.service.cota.CotaService;
import labes.facomp.ufpa.br.meuegresso.service.curso.CursoService;
import labes.facomp.ufpa.br.meuegresso.service.egresso.EgressoEmpresaService;
import labes.facomp.ufpa.br.meuegresso.service.egresso.EgressoService;
import labes.facomp.ufpa.br.meuegresso.service.empresa.EmpresaService;
import labes.facomp.ufpa.br.meuegresso.service.faixasalarial.FaixaSalarialService;
import labes.facomp.ufpa.br.meuegresso.service.genero.GeneroService;
import labes.facomp.ufpa.br.meuegresso.service.setoratuacao.SetorAtuacaoService;
import labes.facomp.ufpa.br.meuegresso.service.tipobolsa.TipoBolsaService;
import lombok.RequiredArgsConstructor;

/**
 * Responsável por fornecer end-points para os graficos.
 *
 * @author Pedro Inácio, Bruno Eiki, Camilo Santos
 * @since 19/05/2023
 * @version 1.0
 */
@RestController
@RequiredArgsConstructor
@RequestMapping("/grafico")
public class GraficoController {

    private final EgressoService egressoService;

    private final EmpresaService empresaService;

    private final CursoService cursoService;

    private final GeneroService generoService;

    private final AreaAtuacaoService areaAtuacaoService;

    private final SetorAtuacaoService setorAtuacaoService;

    private final TipoBolsaService tipoBolsaService;

    private final CotaService cotaService;

    private final EgressoEmpresaService egressoEmpresaService;

    private final FaixaSalarialService faixaSalarialService;

    /**
     * Endpoint responsavel por buscar as informacoes de endereco dos empregos dos
     * egressos.
     *
     * @return {@link EnderecoEmpresasGraficoDTO} retorna endereco dos empregos.
     * @author Pedro Inácio
     * @since 22/05/2023
     */
    @GetMapping(value = "/enderecoEmpresas")
    @ResponseStatus(code = HttpStatus.OK)
    public EnderecoEmpresasGraficoDTO getEnderecoEmpresas() {
        List<EgressoEmpresaModel> lista = egressoEmpresaService.findAll();

        List<List<String>> enderecos = new ArrayList<>();

        List<String> umEndereco;

        for (int i = 0; i < lista.size(); i++) {
            umEndereco = new ArrayList<>();
            umEndereco.add(lista.get(i).getEmpresa().getNome());
            umEndereco.add(lista.get(i).getEmpresa().getEndereco().getPais());
            umEndereco.add(lista.get(i).getEmpresa().getEndereco().getEstado());
            umEndereco.add(lista.get(i).getEmpresa().getEndereco().getCidade());
            enderecos.add(umEndereco);
        }

        return new EnderecoEmpresasGraficoDTO(enderecos);
    }

    /**
     * Endpoint responsavel por buscar todas as idades dos egressos no banco.
     *
     * @return {@link IdadesGraficoDTO} Retorna uma lista com todas as idades e a
     *         media delas.
     * @author Pedro Inácio
     * @since 19/05/2023
     */
    @GetMapping(value = "/idades")
    @ResponseStatus(code = HttpStatus.OK)
    public IdadesGraficoDTO getIdades() {

        Map<Integer, Integer> idadesContagens = egressoService.countAgeFromEgressos();

        return new IdadesGraficoDTO(idadesContagens.values().stream().mapToDouble(a -> a).average().orElse(-1),
                idadesContagens);
    }

    /**
     * Endpoint responsavel por buscar todos os generos dos egressos no banco.
     *
     * @return {@link GenerosGraficoDTO} Retorna a contagem de cada genero (masc,
     *         fem, trans e outros).
     * @author Pedro Inácio, Alfredo Gabriel
     * @since 08/06/2023
     */
    @GetMapping(value = "/generos")
    @ResponseStatus(code = HttpStatus.OK)
    public GenerosGraficoDTO getGeneros() {
        Map<String, Integer> generosContagens = generoService.countEgressoByGenero();

        return new GenerosGraficoDTO(generosContagens);
    }

    /**
     * Endpoint responsavel por buscar todos os salarios dos egressos no banco.
     *
     * @return {@link GenerosGraficoDTO} Retorna a contagem de cada egressos por
     *         faixa salarial.
     * @author Pedro Inácio, Alfredo Gabriel
     * @since 08/06/2023
     */
    @GetMapping(value = "/salarios")
    @ResponseStatus(code = HttpStatus.OK)
    public SalarioGraficoDTO getSalarios() {
        Map<String, Integer> salariosContagens = faixaSalarialService.countEgressoInFaixa();

        return new SalarioGraficoDTO(salariosContagens);
    }

    /**
     * Endpoint responsavel por buscar todos os tipo de alunos dos egressos no
     * banco.
     *
     * @return {@link TipoAlunoGraficoDTO} Retorna a contagem de cada tipo de aluno.
     * @author Pedro Inácio, Alfredo Gabriel
     * @since 08/06/2023
     */
    @GetMapping(value = "/tipoAlunos")
    @ResponseStatus(code = HttpStatus.OK)
    public TipoAlunoGraficoDTO getTipoAlunos() {

        Map<String, Integer> tipoAluno = egressoService.countFezPos();

        return new TipoAlunoGraficoDTO(tipoAluno);
    }

    /**
     * Endpoint responsavel por contabilizar egressos com e sem bolsa
     *
     * @return {@link BolsistasGraficoDTO} Retorna a quantidade de egressos com e
     *         sem bolsa
     * @author Pedro Inácio, Alfredo Gabriel
     * @since 08/06/2023
     */
    @GetMapping(value = "/bolsistas")
    @ResponseStatus(code = HttpStatus.OK)
    public BolsistasGraficoDTO getBolsistas() {

        Map<String, Integer> bolsistasContagens = egressoService.countBolsista();

        return new BolsistasGraficoDTO(bolsistasContagens);
    }

    /**
     * Endpoint responsavel por buscar todos os Tipo de Bolsa dos egressos no banco.
     *
     * @return {@link TipoBolsaGraficoDTO} Retorna a contagem de cada tipo de Bolsa.
     * @author Pedro Inácio, Alfredo Gabriel
     * @since 08/06/2023
     */
    @GetMapping(value = "/tipoBolsa")
    @ResponseStatus(code = HttpStatus.OK)
    public TipoBolsaGraficoDTO getTipoBolsa() {
        Map<String, Integer> tipoBolsaContagens = tipoBolsaService.countEgressoForBolsa();

        return new TipoBolsaGraficoDTO(tipoBolsaContagens);
    }

    /**
     * EndPoint responsável por enumerar a quantidade de egressos em cada
     * remuneração.
     *
     * @return {@link RemuneracaoGraficoDTO} retorna a quantidade de egressos por
     *         cada tipo de remuneração.
     * @author Camilo Santos, Alfredo Gabriel
     * @since 08/06/2023
     */
    @GetMapping(value = "/remuneracao")
    @ResponseStatus(code = HttpStatus.OK)
    public RemuneracaoGraficoDTO getRemuneracao() {
        Map<Double, Integer> remuneracaoContagem = egressoService.countRemuneracaoBolsa();

        return new RemuneracaoGraficoDTO(remuneracaoContagem);
    }

    /**
     * EndPoint responsável por enumerar a quantidade de egressos cotistas e
     * não-cotistas.
     *
     * @return {@link CotistaGraficoDTO} retorna cotistas e não-cotistas enumerados.
     * @author Camilo Santos, Alfredo Gabriel
     * @since 08/06/2023
     */
    @GetMapping(value = "/cotista")
    @ResponseStatus(code = HttpStatus.OK)
    public CotistaGraficoDTO getCotista() {

        Map<String, Integer> cotistaContagem = egressoService.countCotista();

        return new CotistaGraficoDTO(cotistaContagem);
    }

    /**
     * Endpoint responsavel por buscar todos os Locais da Pos dos egressos no banco.
     *
     * @return {@link LocalPosGraficoDTO} Retorna o endereco do local da pos.
     * @author Pedro Inácio
     * @since 21/05/2023
     */
    @GetMapping(value = "/localPos")
    @ResponseStatus(code = HttpStatus.OK)
    public List<LocalPosGraficoDTO> getLocalPos() {
        return empresaService.countEgressoByPos();
    }

    /**
     * Endpoint responsavel por buscar todos os cursos de pós dos egressos no banco.
     *
     * @return {@link CursosGraficoDTO} Retorna a lista de cursos de pós.
     * @author Pedro Inácio
     * @since 21/05/2023
     */
    @GetMapping(value = "/cursos")
    @ResponseStatus(code = HttpStatus.OK)
    public List<CursosGraficoDTO> getCursos() {
        return cursoService.countEgressoByCurso();
    }

    /**
     * Endpoint responsavel por contabilizar egressos com interesse em pós graduação
     *
     * @return {@link SetorAtuacaoGraficoDTO} Retorna a quantidade de egressos
     *         interesse em pós graduação
     * @author Pedro Inácio, Alfredo Gabriel
     * @since 08/06/2023
     */
    @GetMapping(value = "/interesseEmPos")
    @ResponseStatus(code = HttpStatus.OK)
    public InteresseEmPosGraficoDTO getInteresseEmPos() {
        Map<String, Integer> interesseContagens = egressoService.countInteressePos();

        return new InteresseEmPosGraficoDTO(interesseContagens);
    }

    /**
     * Endpoint responsavel por listar as empresas onde os egressos trabalham.
     *
     * @return {@link SetorAtuacaoGraficoDTO} Retorna a lista de nome de empresas
     *         onde os egressos trabalham
     * @author Pedro Inácio
     * @since 22/05/2023
     */
    @GetMapping(value = "/empresas")
    @ResponseStatus(code = HttpStatus.OK)
    public List<EmpresaGraficoDTO> getEmpresas() {
        return egressoEmpresaService.countEgressoByEmpresas();
    }

    /**
     * Endpoint responsavel por contar todos os egressos cotistas e não cotistas.
     *
     * @return {@link CotaGraficoDTO} Retorna a contagem de cotistas e não cotistas,
     *         usernames separados por grupo.
     * @author Camilo Santos, Alfredo Gabriel
     * @since 08/06/2023
     */
    @GetMapping(value = "/cotas")
    @ResponseStatus(code = HttpStatus.OK)
    public CotaGraficoDTO getCotas() {
        Map<String, Integer> cotasContagens = cotaService.countEgressoByCota();

        return new CotaGraficoDTO(cotasContagens);
    }

    /**
     * Endpoint responsavel por retornar a contagem de egresso por área de atuação.
     *
     * @return {@link AreaAtuacaoGraficoDTO} Retorna a contagem de egresso por área
     *         de atuação.
     * @author Camilo Santos
     * @since 20/05/2023
     */
    @GetMapping(value = "/atuacao")
    @ResponseStatus(code = HttpStatus.OK)
    public AreaAtuacaoGraficoDTO getAtuacao() {

        Map<String, Integer> areaAtuacao = areaAtuacaoService.countEgressoByAreaAtuacao();

        return new AreaAtuacaoGraficoDTO(areaAtuacao);
    }

    /**
     * Endpoint responsavel por retornar a contagem de egressos por setor de
     * atuação.
     *
     * @return {@link SetorAtuacaoGraficoDTO} Retorna a contagem de egresso por
     *         setor de atuação.
     * @author Camilo Santos
     * @since 20/05/2023
     */
    @GetMapping(value = "/setor")
    @ResponseStatus(code = HttpStatus.OK)
    public SetorAtuacaoGraficoDTO getSetor() {
        List<EgressoModel> lista = egressoService.findAll();
        List<EgressoModel> listaFiltrada = lista.stream().filter(e -> e.getEmprego() != null).toList();

        List<SetorAtuacaoModel> setorAtuacao = setorAtuacaoService.findAll();

        HashMap<String, Integer> setorAtuacaoContagens = new HashMap<>();

        int count = 0;
        for (int i = 0; i < setorAtuacao.size(); i++) {
            final String nomeFinal = setorAtuacao.get(i).getNome();
            count = (int) listaFiltrada.stream()
                    .filter(a -> a.getEmprego().getSetorAtuacao().getNome().equalsIgnoreCase(nomeFinal)).count();

            setorAtuacaoContagens.put(nomeFinal, count);
        }

        return new SetorAtuacaoGraficoDTO(setorAtuacaoContagens);
    }

    /**
     * Endpoint responsavel por contabilizar egressos com e sem pós graduação
     *
     * @return {@link SetorAtuacaoGraficoDTO} Retorna a quantidade de egressos com e
     *         sem pós
     * @author Camilo Santos
     * @since 20/05/2023
     */
    @GetMapping(value = "/pos")
    @ResponseStatus(code = HttpStatus.OK)
    public PosGraduacaoGraficoDTO getPos() {
        List<EgressoModel> lista = egressoService.findAll();

        HashMap<String, Long> posGradContagens = new HashMap<>();

        posGradContagens.put("Fez", lista.stream().filter(e -> e.getPosGraduacao().equals(true)).count());
        posGradContagens.put("Não fez", lista.stream().filter(e -> e.getPosGraduacao().equals(false)).count());

        return new PosGraduacaoGraficoDTO(posGradContagens);
    }
}
