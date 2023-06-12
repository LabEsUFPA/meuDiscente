--
-- TOC entry 214 (class 1259 OID 16385)
-- Name: anuncio; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.anuncio (
    id_anuncio integer NOT NULL,
    ativo boolean DEFAULT true NOT NULL,
    created_date timestamp(6) without time zone DEFAULT now(),
    last_modified_date timestamp(6) without time zone,
    data_expiracao_anuncio date NOT NULL,
    descricao_anuncio oid NOT NULL,
    link_anuncio character varying(255) NOT NULL,
    salario_anuncio character varying(255),
    titulo_anuncio character varying(255) NOT NULL,
    created_by integer,
    last_modified_by integer,
    area_emprego_anuncio_id integer NOT NULL
);


--
-- TOC entry 215 (class 1259 OID 16392)
-- Name: anuncio_id_anuncio_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.anuncio_id_anuncio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3705 (class 0 OID 0)
-- Dependencies: 215
-- Name: anuncio_id_anuncio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.anuncio_id_anuncio_seq OWNED BY public.anuncio.id_anuncio;


--
-- TOC entry 216 (class 1259 OID 16393)
-- Name: area_atuacao; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.area_atuacao (
    id_area_atuacao integer NOT NULL,
    ativo boolean DEFAULT true NOT NULL,
    created_date timestamp(6) without time zone DEFAULT now(),
    last_modified_date timestamp(6) without time zone,
    nome_area_atuacao character varying(60) NOT NULL,
    created_by integer,
    last_modified_by integer
);


--
-- TOC entry 217 (class 1259 OID 16398)
-- Name: area_atuacao_id_area_atuacao_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.area_atuacao_id_area_atuacao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3706 (class 0 OID 0)
-- Dependencies: 217
-- Name: area_atuacao_id_area_atuacao_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.area_atuacao_id_area_atuacao_seq OWNED BY public.area_atuacao.id_area_atuacao;


--
-- TOC entry 218 (class 1259 OID 16399)
-- Name: area_emprego; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.area_emprego (
    id_area_emprego integer NOT NULL,
    ativo boolean DEFAULT true NOT NULL,
    created_date timestamp(6) without time zone DEFAULT now(),
    last_modified_date timestamp(6) without time zone,
    nome_area_emprego character varying(60) NOT NULL,
    created_by integer,
    last_modified_by integer
);


--
-- TOC entry 219 (class 1259 OID 16404)
-- Name: area_emprego_id_area_emprego_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.area_emprego_id_area_emprego_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3707 (class 0 OID 0)
-- Dependencies: 219
-- Name: area_emprego_id_area_emprego_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.area_emprego_id_area_emprego_seq OWNED BY public.area_emprego.id_area_emprego;


--
-- TOC entry 220 (class 1259 OID 16405)
-- Name: comentario; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.comentario (
    id_comentario integer NOT NULL,
    ativo boolean DEFAULT true NOT NULL,
    created_date timestamp(6) without time zone DEFAULT now(),
    last_modified_date timestamp(6) without time zone,
    descricao_comentario character varying(255) NOT NULL,
    created_by integer,
    last_modified_by integer,
    anuncio_id integer NOT NULL
);


--
-- TOC entry 221 (class 1259 OID 16410)
-- Name: comentario_id_comentario_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.comentario_id_comentario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3708 (class 0 OID 0)
-- Dependencies: 221
-- Name: comentario_id_comentario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.comentario_id_comentario_seq OWNED BY public.comentario.id_comentario;


--
-- TOC entry 222 (class 1259 OID 16411)
-- Name: contribuicao; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.contribuicao (
    id_contribuicao integer NOT NULL,
    ativo boolean DEFAULT true NOT NULL,
    created_date timestamp(6) without time zone DEFAULT now(),
    last_modified_date timestamp(6) without time zone,
    descricao_contribuicao oid NOT NULL,
    created_by integer,
    last_modified_by integer,
    egresso_id integer NOT NULL
);


--
-- TOC entry 223 (class 1259 OID 16416)
-- Name: contribuicao_id_contribuicao_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.contribuicao_id_contribuicao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3709 (class 0 OID 0)
-- Dependencies: 223
-- Name: contribuicao_id_contribuicao_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.contribuicao_id_contribuicao_seq OWNED BY public.contribuicao.id_contribuicao;


--
-- TOC entry 224 (class 1259 OID 16417)
-- Name: cota; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cota (
    id_cota integer NOT NULL,
    ativo boolean DEFAULT true NOT NULL,
    created_date timestamp(6) without time zone DEFAULT now(),
    last_modified_date timestamp(6) without time zone,
    nome_cota character varying(50) NOT NULL,
    created_by integer,
    last_modified_by integer
);


--
-- TOC entry 225 (class 1259 OID 16422)
-- Name: cota_id_cota_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cota_id_cota_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3710 (class 0 OID 0)
-- Dependencies: 225
-- Name: cota_id_cota_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cota_id_cota_seq OWNED BY public.cota.id_cota;


--
-- TOC entry 226 (class 1259 OID 16423)
-- Name: curso; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.curso (
    id_curso integer NOT NULL,
    ativo boolean DEFAULT true NOT NULL,
    created_date timestamp(6) without time zone DEFAULT now(),
    last_modified_date timestamp(6) without time zone,
    nome_curso character varying(100) NOT NULL,
    created_by integer,
    last_modified_by integer
);


--
-- TOC entry 227 (class 1259 OID 16428)
-- Name: curso_id_curso_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.curso_id_curso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3711 (class 0 OID 0)
-- Dependencies: 227
-- Name: curso_id_curso_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.curso_id_curso_seq OWNED BY public.curso.id_curso;


--
-- TOC entry 228 (class 1259 OID 16429)
-- Name: depoimento; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.depoimento (
    id_depoimento integer NOT NULL,
    ativo boolean DEFAULT true NOT NULL,
    created_date timestamp(6) without time zone DEFAULT now(),
    last_modified_date timestamp(6) without time zone,
    descricao_depoimento oid NOT NULL,
    created_by integer,
    last_modified_by integer,
    egresso_id integer NOT NULL
);


--
-- TOC entry 229 (class 1259 OID 16434)
-- Name: depoimento_id_depoimento_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.depoimento_id_depoimento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3712 (class 0 OID 0)
-- Dependencies: 229
-- Name: depoimento_id_depoimento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.depoimento_id_depoimento_seq OWNED BY public.depoimento.id_depoimento;


--
-- TOC entry 230 (class 1259 OID 16435)
-- Name: egresso; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.egresso (
    id_egresso integer NOT NULL,
    ativo boolean DEFAULT true NOT NULL,
    created_date timestamp(6) without time zone DEFAULT now(),
    last_modified_date timestamp(6) without time zone,
    bolsista_egresso boolean NOT NULL,
    cotista_egresso boolean NOT NULL,
    foto_egresso character varying(255),
    interesse_em_pos_egresso boolean NOT NULL,
    lattes_egresso character varying(255),
    linkedin_egresso character varying(255),
    matricula_egresso character varying(12),
    nascimento_egresso date NOT NULL,
    pos_graduacao_egresso boolean,
    remuneracao_bolsa_egresso double precision,
    created_by integer,
    last_modified_by integer,
    tipo_bolsa_id integer,
    genero_id integer NOT NULL,
    usuario_id integer,
    CONSTRAINT egresso_remuneracao_bolsa_egresso_check CHECK ((remuneracao_bolsa_egresso >= (0)::double precision))
);


--
-- TOC entry 231 (class 1259 OID 16443)
-- Name: egresso_cota; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.egresso_cota (
    id_egresso integer NOT NULL,
    id_cota integer NOT NULL
);


--
-- TOC entry 232 (class 1259 OID 16446)
-- Name: egresso_empresa; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.egresso_empresa (
    ativo boolean DEFAULT true NOT NULL,
    created_date timestamp(6) without time zone DEFAULT now(),
    last_modified_date timestamp(6) without time zone,
    empresa_id_empresa integer NOT NULL,
    egresso_id_egresso integer NOT NULL,
    created_by integer,
    last_modified_by integer,
    area_atuacao_id integer NOT NULL,
    faixa_salarial_id integer NOT NULL,
    setor_atuacao_id integer NOT NULL
);


--
-- TOC entry 233 (class 1259 OID 16451)
-- Name: egresso_id_egresso_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.egresso_id_egresso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3713 (class 0 OID 0)
-- Dependencies: 233
-- Name: egresso_id_egresso_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.egresso_id_egresso_seq OWNED BY public.egresso.id_egresso;


--
-- TOC entry 234 (class 1259 OID 16452)
-- Name: egresso_titulacao; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.egresso_titulacao (
    ativo boolean DEFAULT true NOT NULL,
    created_date timestamp(6) without time zone DEFAULT now(),
    last_modified_date timestamp(6) without time zone,
    egresso_id_egresso integer NOT NULL,
    titulacao_id_titulacao integer NOT NULL,
    created_by integer,
    last_modified_by integer,
    curso_id integer NOT NULL,
    empresa_id integer NOT NULL
);


--
-- TOC entry 235 (class 1259 OID 16457)
-- Name: egresso_valido; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.egresso_valido (
    id_egresso_valido integer NOT NULL,
    email_egresso_valido character varying(255),
    matricula_egresso_valido character varying(12),
    nome_egresso_valido character varying(100) NOT NULL
);


--
-- TOC entry 236 (class 1259 OID 16460)
-- Name: egresso_valido_id_egresso_valido_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.egresso_valido_id_egresso_valido_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3714 (class 0 OID 0)
-- Dependencies: 236
-- Name: egresso_valido_id_egresso_valido_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.egresso_valido_id_egresso_valido_seq OWNED BY public.egresso_valido.id_egresso_valido;


--
-- TOC entry 237 (class 1259 OID 16461)
-- Name: empresa; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.empresa (
    id_empresa integer NOT NULL,
    ativo boolean DEFAULT true NOT NULL,
    created_date timestamp(6) without time zone DEFAULT now(),
    last_modified_date timestamp(6) without time zone,
    nome_empresa character varying(130) NOT NULL,
    created_by integer,
    last_modified_by integer,
    endereco_empresa integer,
    empresa_is_emprego boolean DEFAULT true NOT NULL
);


--
-- TOC entry 238 (class 1259 OID 16467)
-- Name: empresa_id_empresa_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.empresa_id_empresa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3715 (class 0 OID 0)
-- Dependencies: 238
-- Name: empresa_id_empresa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.empresa_id_empresa_seq OWNED BY public.empresa.id_empresa;


--
-- TOC entry 239 (class 1259 OID 16468)
-- Name: endereco; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.endereco (
    id_endereco integer NOT NULL,
    ativo boolean DEFAULT true NOT NULL,
    created_date timestamp(6) without time zone DEFAULT now(),
    last_modified_date timestamp(6) without time zone,
    cidade_endereco character varying(255) NOT NULL,
    estado_endereco character varying(255) NOT NULL,
    pais_endereco character varying(255) NOT NULL,
    created_by integer,
    last_modified_by integer
);


--
-- TOC entry 240 (class 1259 OID 16475)
-- Name: endereco_id_endereco_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.endereco_id_endereco_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3716 (class 0 OID 0)
-- Dependencies: 240
-- Name: endereco_id_endereco_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.endereco_id_endereco_seq OWNED BY public.endereco.id_endereco;


--
-- TOC entry 241 (class 1259 OID 16476)
-- Name: faixa_salarial; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.faixa_salarial (
    id_faixa_salarial integer NOT NULL,
    ativo boolean DEFAULT true NOT NULL,
    created_date timestamp(6) without time zone DEFAULT now(),
    last_modified_date timestamp(6) without time zone,
    faixa_faixa_salarial character varying(60) NOT NULL,
    created_by integer,
    last_modified_by integer
);


--
-- TOC entry 242 (class 1259 OID 16481)
-- Name: faixa_salarial_id_faixa_salarial_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.faixa_salarial_id_faixa_salarial_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3717 (class 0 OID 0)
-- Dependencies: 242
-- Name: faixa_salarial_id_faixa_salarial_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.faixa_salarial_id_faixa_salarial_seq OWNED BY public.faixa_salarial.id_faixa_salarial;


--
-- TOC entry 243 (class 1259 OID 16482)
-- Name: genero; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.genero (
    id_genero integer NOT NULL,
    ativo boolean DEFAULT true NOT NULL,
    created_date timestamp(6) without time zone DEFAULT now(),
    last_modified_date timestamp(6) without time zone,
    nome_genero character varying(60) NOT NULL,
    created_by integer,
    last_modified_by integer
);


--
-- TOC entry 244 (class 1259 OID 16487)
-- Name: genero_id_genero_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.genero_id_genero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3718 (class 0 OID 0)
-- Dependencies: 244
-- Name: genero_id_genero_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.genero_id_genero_seq OWNED BY public.genero.id_genero;


--
-- TOC entry 245 (class 1259 OID 16488)
-- Name: grupo; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.grupo (
    id_grupo integer NOT NULL,
    ativo boolean DEFAULT true NOT NULL,
    created_date timestamp(6) without time zone DEFAULT now(),
    last_modified_date timestamp(6) without time zone,
    nome_grupo character varying(50) NOT NULL,
    created_by integer,
    last_modified_by integer
);


--
-- TOC entry 246 (class 1259 OID 16493)
-- Name: grupo_id_grupo_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.grupo_id_grupo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3719 (class 0 OID 0)
-- Dependencies: 246
-- Name: grupo_id_grupo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.grupo_id_grupo_seq OWNED BY public.grupo.id_grupo;


--
-- TOC entry 247 (class 1259 OID 16494)
-- Name: palestra; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.palestra (
    id_palestra integer NOT NULL,
    ativo boolean DEFAULT true NOT NULL,
    created_date timestamp(6) without time zone DEFAULT now(),
    last_modified_date timestamp(6) without time zone,
    descricao_palestra oid NOT NULL,
    created_by integer,
    last_modified_by integer,
    egresso_id integer NOT NULL
);


--
-- TOC entry 248 (class 1259 OID 16499)
-- Name: palestra_id_palestra_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.palestra_id_palestra_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3720 (class 0 OID 0)
-- Dependencies: 248
-- Name: palestra_id_palestra_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.palestra_id_palestra_seq OWNED BY public.palestra.id_palestra;


--
-- TOC entry 249 (class 1259 OID 16500)
-- Name: setor_atuacao; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.setor_atuacao (
    id_setor_atuacao integer NOT NULL,
    ativo boolean DEFAULT true NOT NULL,
    created_date timestamp(6) without time zone DEFAULT now(),
    last_modified_date timestamp(6) without time zone,
    nome_setor_atuacao character varying(60) NOT NULL,
    created_by integer,
    last_modified_by integer
);


--
-- TOC entry 250 (class 1259 OID 16505)
-- Name: setor_atuacao_id_setor_atuacao_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.setor_atuacao_id_setor_atuacao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3721 (class 0 OID 0)
-- Dependencies: 250
-- Name: setor_atuacao_id_setor_atuacao_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.setor_atuacao_id_setor_atuacao_seq OWNED BY public.setor_atuacao.id_setor_atuacao;


--
-- TOC entry 251 (class 1259 OID 16506)
-- Name: tipo_bolsa; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tipo_bolsa (
    id_tipo_bolsa integer NOT NULL,
    ativo boolean DEFAULT true NOT NULL,
    created_date timestamp(6) without time zone DEFAULT now(),
    last_modified_date timestamp(6) without time zone,
    nome_tipo_bolsa character varying(100) NOT NULL,
    created_by integer,
    last_modified_by integer
);


--
-- TOC entry 252 (class 1259 OID 16511)
-- Name: tipo_bolsa_id_tipo_bolsa_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tipo_bolsa_id_tipo_bolsa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3722 (class 0 OID 0)
-- Dependencies: 252
-- Name: tipo_bolsa_id_tipo_bolsa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tipo_bolsa_id_tipo_bolsa_seq OWNED BY public.tipo_bolsa.id_tipo_bolsa;


--
-- TOC entry 253 (class 1259 OID 16512)
-- Name: titulacao; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.titulacao (
    id_titulacao integer NOT NULL,
    ativo boolean DEFAULT true NOT NULL,
    created_date timestamp(6) without time zone DEFAULT now(),
    last_modified_date timestamp(6) without time zone,
    nome_titulacao character varying(30) NOT NULL,
    created_by integer,
    last_modified_by integer
);


--
-- TOC entry 254 (class 1259 OID 16517)
-- Name: titulacao_id_titulacao_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.titulacao_id_titulacao_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3723 (class 0 OID 0)
-- Dependencies: 254
-- Name: titulacao_id_titulacao_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.titulacao_id_titulacao_seq OWNED BY public.titulacao.id_titulacao;


--
-- TOC entry 255 (class 1259 OID 16518)
-- Name: usuario; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    ativo boolean DEFAULT true NOT NULL,
    created_date timestamp(6) without time zone DEFAULT now(),
    last_modified_date timestamp(6) without time zone,
    email character varying(50) NOT NULL,
    nome_usuario character varying(100) NOT NULL,
    senha_usuario character varying(80) NOT NULL,
    login_usuario character varying(50) NOT NULL,
    created_by integer,
    last_modified_by integer
);


--
-- TOC entry 256 (class 1259 OID 16523)
-- Name: usuario_grupo; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.usuario_grupo (
    id_usuario integer NOT NULL,
    id_grupo integer NOT NULL
);


--
-- TOC entry 257 (class 1259 OID 16526)
-- Name: usuario_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3724 (class 0 OID 0)
-- Dependencies: 257
-- Name: usuario_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.usuario_id_usuario_seq OWNED BY public.usuario.id_usuario;


--
-- TOC entry 3287 (class 2604 OID 16527)
-- Name: anuncio id_anuncio; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.anuncio ALTER COLUMN id_anuncio SET DEFAULT nextval('public.anuncio_id_anuncio_seq'::regclass);


--
-- TOC entry 3290 (class 2604 OID 16528)
-- Name: area_atuacao id_area_atuacao; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.area_atuacao ALTER COLUMN id_area_atuacao SET DEFAULT nextval('public.area_atuacao_id_area_atuacao_seq'::regclass);


--
-- TOC entry 3293 (class 2604 OID 16529)
-- Name: area_emprego id_area_emprego; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.area_emprego ALTER COLUMN id_area_emprego SET DEFAULT nextval('public.area_emprego_id_area_emprego_seq'::regclass);


--
-- TOC entry 3296 (class 2604 OID 16530)
-- Name: comentario id_comentario; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comentario ALTER COLUMN id_comentario SET DEFAULT nextval('public.comentario_id_comentario_seq'::regclass);


--
-- TOC entry 3299 (class 2604 OID 16531)
-- Name: contribuicao id_contribuicao; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contribuicao ALTER COLUMN id_contribuicao SET DEFAULT nextval('public.contribuicao_id_contribuicao_seq'::regclass);


--
-- TOC entry 3302 (class 2604 OID 16532)
-- Name: cota id_cota; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cota ALTER COLUMN id_cota SET DEFAULT nextval('public.cota_id_cota_seq'::regclass);


--
-- TOC entry 3305 (class 2604 OID 16533)
-- Name: curso id_curso; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.curso ALTER COLUMN id_curso SET DEFAULT nextval('public.curso_id_curso_seq'::regclass);


--
-- TOC entry 3308 (class 2604 OID 16534)
-- Name: depoimento id_depoimento; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.depoimento ALTER COLUMN id_depoimento SET DEFAULT nextval('public.depoimento_id_depoimento_seq'::regclass);


--
-- TOC entry 3311 (class 2604 OID 16535)
-- Name: egresso id_egresso; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso ALTER COLUMN id_egresso SET DEFAULT nextval('public.egresso_id_egresso_seq'::regclass);


--
-- TOC entry 3318 (class 2604 OID 16536)
-- Name: egresso_valido id_egresso_valido; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso_valido ALTER COLUMN id_egresso_valido SET DEFAULT nextval('public.egresso_valido_id_egresso_valido_seq'::regclass);


--
-- TOC entry 3319 (class 2604 OID 16537)
-- Name: empresa id_empresa; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.empresa ALTER COLUMN id_empresa SET DEFAULT nextval('public.empresa_id_empresa_seq'::regclass);


--
-- TOC entry 3323 (class 2604 OID 16538)
-- Name: endereco id_endereco; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.endereco ALTER COLUMN id_endereco SET DEFAULT nextval('public.endereco_id_endereco_seq'::regclass);


--
-- TOC entry 3326 (class 2604 OID 16539)
-- Name: faixa_salarial id_faixa_salarial; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.faixa_salarial ALTER COLUMN id_faixa_salarial SET DEFAULT nextval('public.faixa_salarial_id_faixa_salarial_seq'::regclass);


--
-- TOC entry 3329 (class 2604 OID 16540)
-- Name: genero id_genero; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genero ALTER COLUMN id_genero SET DEFAULT nextval('public.genero_id_genero_seq'::regclass);


--
-- TOC entry 3332 (class 2604 OID 16541)
-- Name: grupo id_grupo; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grupo ALTER COLUMN id_grupo SET DEFAULT nextval('public.grupo_id_grupo_seq'::regclass);


--
-- TOC entry 3335 (class 2604 OID 16542)
-- Name: palestra id_palestra; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.palestra ALTER COLUMN id_palestra SET DEFAULT nextval('public.palestra_id_palestra_seq'::regclass);


--
-- TOC entry 3338 (class 2604 OID 16543)
-- Name: setor_atuacao id_setor_atuacao; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.setor_atuacao ALTER COLUMN id_setor_atuacao SET DEFAULT nextval('public.setor_atuacao_id_setor_atuacao_seq'::regclass);


--
-- TOC entry 3341 (class 2604 OID 16544)
-- Name: tipo_bolsa id_tipo_bolsa; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tipo_bolsa ALTER COLUMN id_tipo_bolsa SET DEFAULT nextval('public.tipo_bolsa_id_tipo_bolsa_seq'::regclass);


--
-- TOC entry 3344 (class 2604 OID 16545)
-- Name: titulacao id_titulacao; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.titulacao ALTER COLUMN id_titulacao SET DEFAULT nextval('public.titulacao_id_titulacao_seq'::regclass);


--
-- TOC entry 3347 (class 2604 OID 16546)
-- Name: usuario id_usuario; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuario_id_usuario_seq'::regclass);


--
-- TOC entry 3655 (class 0 OID 16385)
-- Dependencies: 214
-- Data for Name: anuncio; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3657 (class 0 OID 16393)
-- Dependencies: 216
-- Data for Name: area_atuacao; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.area_atuacao VALUES (1, true, '2023-06-12 12:25:27.525302', NULL, 'Computação', 1, NULL);
INSERT INTO public.area_atuacao VALUES (2, true, '2023-06-12 12:25:27.532983', NULL, 'Pesquisa', 1, NULL);
INSERT INTO public.area_atuacao VALUES (3, true, '2023-06-12 12:25:27.541087', NULL, 'Desempregado', 1, NULL);
INSERT INTO public.area_atuacao VALUES (4, true, '2023-06-12 12:25:27.548708', NULL, 'Programador', 1, NULL);
INSERT INTO public.area_atuacao VALUES (5, true, '2023-06-12 12:25:27.556442', NULL, 'Analista', 1, NULL);
INSERT INTO public.area_atuacao VALUES (6, true, '2023-06-12 12:25:27.563775', NULL, 'Outros', 1, NULL);


--
-- TOC entry 3659 (class 0 OID 16399)
-- Dependencies: 218
-- Data for Name: area_emprego; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.area_emprego VALUES (22, true, '2023-06-12 12:25:59.374043', NULL, 'Engenharia de Software', 1, NULL);
INSERT INTO public.area_emprego VALUES (23, true, '2023-06-12 12:25:59.382561', NULL, 'Programação', 1, NULL);
INSERT INTO public.area_emprego VALUES (24, true, '2023-06-12 12:25:59.389761', NULL, 'Informática', 1, NULL);
INSERT INTO public.area_emprego VALUES (25, true, '2023-06-12 12:25:59.397167', NULL, 'Suporte a TI', 1, NULL);
INSERT INTO public.area_emprego VALUES (26, true, '2023-06-12 12:25:59.404256', NULL, 'Analista de Sistema', 1, NULL);
INSERT INTO public.area_emprego VALUES (27, true, '2023-06-12 12:25:59.412045', NULL, 'Analista de QA', 1, NULL);
INSERT INTO public.area_emprego VALUES (28, true, '2023-06-12 12:25:59.419255', NULL, 'Outros', 1, NULL);


--
-- TOC entry 3661 (class 0 OID 16405)
-- Dependencies: 220
-- Data for Name: comentario; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3663 (class 0 OID 16411)
-- Dependencies: 222
-- Data for Name: contribuicao; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3665 (class 0 OID 16417)
-- Dependencies: 224
-- Data for Name: cota; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.cota VALUES (1, true, '2023-06-12 12:25:27.425989', NULL, 'Escola', 1, NULL);
INSERT INTO public.cota VALUES (2, true, '2023-06-12 12:25:27.434707', NULL, 'Renda', 1, NULL);
INSERT INTO public.cota VALUES (3, true, '2023-06-12 12:25:27.44239', NULL, 'Autodeclaração de Raça', 1, NULL);
INSERT INTO public.cota VALUES (4, true, '2023-06-12 12:25:27.453639', NULL, 'Quilombolas/Indígenas', 1, NULL);
INSERT INTO public.cota VALUES (5, true, '2023-06-12 12:25:27.461149', NULL, 'PCD', 1, NULL);


--
-- TOC entry 3667 (class 0 OID 16423)
-- Dependencies: 226
-- Data for Name: curso; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.curso VALUES (1, true, '2023-06-12 12:25:27.469535', NULL, 'CIÊNCIA DA COMPUTAÇÃO', 1, NULL);


--
-- TOC entry 3669 (class 0 OID 16429)
-- Dependencies: 228
-- Data for Name: depoimento; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3671 (class 0 OID 16435)
-- Dependencies: 230
-- Data for Name: egresso; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3672 (class 0 OID 16443)
-- Dependencies: 231
-- Data for Name: egresso_cota; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3673 (class 0 OID 16446)
-- Dependencies: 232
-- Data for Name: egresso_empresa; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3675 (class 0 OID 16452)
-- Dependencies: 234
-- Data for Name: egresso_titulacao; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3676 (class 0 OID 16457)
-- Dependencies: 235
-- Data for Name: egresso_valido; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.egresso_valido VALUES (1, NULL, '200411140009', 'ADALBERTO DOS REMEDIOS SILVA JUNIOR');
INSERT INTO public.egresso_valido VALUES (2, 'quase_4ever@yahoo.com.br', '200511140025', 'ADONIAS PINHEIRO PIRES');
INSERT INTO public.egresso_valido VALUES (3, NULL, '200311140030', 'ADRIANA MENDONCA GARCES');
INSERT INTO public.egresso_valido VALUES (4, 'adrianocbsi05@gmail.com', '200511140017', 'ADRIANO ANDRADE SILVA');
INSERT INTO public.egresso_valido VALUES (5, NULL, '200311140009', 'ALAYR MAUES MELO SOBRINHO');
INSERT INTO public.egresso_valido VALUES (6, NULL, '200411140017', 'ALBERTO WILLIAMS CORREA FERREIRA');
INSERT INTO public.egresso_valido VALUES (7, 'alessandrocunha1@gmail.com', '200711140025', 'ALESSANDRO PEDRO DA CUNHA');
INSERT INTO public.egresso_valido VALUES (8, 'alexandrecjr@ufpa.br', '200611140006', 'ALEXANDRE BRITO CARDIAS JUNIOR');
INSERT INTO public.egresso_valido VALUES (9, 'alexandretelesbastos@gmail.com', '200811140014', 'ALEXANDRE TELES BASTOS');
INSERT INTO public.egresso_valido VALUES (10, NULL, '200411140008', 'ALEXSANDER HAGE DE MELO');
INSERT INTO public.egresso_valido VALUES (11, 'alisoncosta@globo.com', '200811140007', 'ALISON COSTA DA CONCEICAO');
INSERT INTO public.egresso_valido VALUES (12, 'apbelem@bol.com.br', '200511140033', 'ALISSON PAULO SOUSA SIQUEIRA');
INSERT INTO public.egresso_valido VALUES (13, 'allan.pa.br@gmail.com', '201311140010', 'ALLAN DA SILVA ALCANTARA');
INSERT INTO public.egresso_valido VALUES (14, 'jardim-do-heden@hotmail.com', '200811140040', 'ALLE HEDEN TRINDADE DE SOUZA');
INSERT INTO public.egresso_valido VALUES (15, 'altisouza@gmail.com', '200311140004', 'ALTIERE COSTA DE SOUZA');
INSERT INTO public.egresso_valido VALUES (16, 'anovaes27@gmail.com', '201111140034', 'ANDERSON COSTA NOVAES DE OLIVEIRA');
INSERT INTO public.egresso_valido VALUES (17, 'andufpa@gmail.com', '201111140018', 'ANDERSON JORGE SANTOS FERREIRA');
INSERT INTO public.egresso_valido VALUES (18, 'andsilvapara@bol.com.br', '200311140029', 'ANDERSON JUNIOR PARAENSE DA SILVA');
INSERT INTO public.egresso_valido VALUES (19, 'andervilo@hotmail.com', '201111140007', 'ANDERSON NAZARENO ALCANTARA DE OLIVEIRA');
INSERT INTO public.egresso_valido VALUES (20, 'andre.n.los@gmail.com', '201211140004', 'ANDRÉ AVELINO DA SILVA NETO');
INSERT INTO public.egresso_valido VALUES (21, 'andre.def93@gmail.com', '201311140016', 'ANDRE DEFREMONT');
INSERT INTO public.egresso_valido VALUES (22, 'acgrafic@gmail.com', '200711140013', 'ANDRE LUIZ COELHO PINHEIRO');
INSERT INTO public.egresso_valido VALUES (23, 'andredgusmao@gmail.com', '200811140002', 'ANDRE LUIZ DE GUSMAO');
INSERT INTO public.egresso_valido VALUES (24, 'andressa.myrtys@gmail.com', '200911140012', 'ANDRESSA MYRTYS PEREIRA NOWACZYK');
INSERT INTO public.egresso_valido VALUES (25, NULL, '200211140003', 'ANDRE THIAGO SANTANA FERNANDES');
INSERT INTO public.egresso_valido VALUES (26, 'antonilsonalcantara@gmail.com', '201211140014', 'ANTONILSON DA SILVA ALCANTARA');
INSERT INTO public.egresso_valido VALUES (27, 'alan.menezes@yahoo.com.br', '200911140029', 'ANTONIO ALAN MENEZES DA SILVA');
INSERT INTO public.egresso_valido VALUES (28, NULL, '200211140020', 'ANTONIO NICOLAU MAIA JUNIOR');
INSERT INTO public.egresso_valido VALUES (29, NULL, '200411140016', 'ARLEM ANTONIO PEREIRA LEMOS');
INSERT INTO public.egresso_valido VALUES (30, 'berton28@hotmail.com', '200211140032', 'BELARDIM BERTON LOPES ARAUJO');
INSERT INTO public.egresso_valido VALUES (31, NULL, '200711140015', 'BERNARDO JOSE DA SILVA ESTACIO');
INSERT INTO public.egresso_valido VALUES (32, 'brenobcampos@gmail.com', '200711140017', 'BRENO BRUNO VIEIRA DE CAMPOS');
INSERT INTO public.egresso_valido VALUES (33, 'bjullynn@gmail.com', '200911140031', 'BRUNA JULLY NEVES NUNES');
INSERT INTO public.egresso_valido VALUES (34, 'botabotelho@hotmail.com', '200311140035', 'BRUNO BOTELHO CARDOSO');
INSERT INTO public.egresso_valido VALUES (35, 'brunolmartins@gmail.com', '201011140026', 'BRUNO LIMA MARTINS');
INSERT INTO public.egresso_valido VALUES (36, 'csp@ufpa.br', '200611140025', 'CARLOS DOS SANTOS PORTELA');
INSERT INTO public.egresso_valido VALUES (37, NULL, '200511140024', 'CARMEN LUCIA MARTINS DO NASCIMENTO');
INSERT INTO public.egresso_valido VALUES (38, NULL, '200311140024', 'CECIL CORDEIRO DA SILVA');
INSERT INTO public.egresso_valido VALUES (39, 'crsg.si.2012@gmail.com', '201211140034', 'CLEBER ROBSON DA SILVA GOMES');
INSERT INTO public.egresso_valido VALUES (40, NULL, '200411140023', 'DACIO PANTOJA SILVA');
INSERT INTO public.egresso_valido VALUES (41, 'dangelomendes10@gmail.com', '201011140021', 'DANGELO WESLEY OLIVEIRA MENDES');
INSERT INTO public.egresso_valido VALUES (42, NULL, '200511140036', 'DANIEL BERG SOUZA DE OLIVEIRA');
INSERT INTO public.egresso_valido VALUES (43, NULL, '200211140015', 'DANIELLE GONCALVES BARROS');
INSERT INTO public.egresso_valido VALUES (44, 'danilopinto@museu-goeldi.br', '200411140019', 'DANILO ANDERSON PALHANO PINTO');
INSERT INTO public.egresso_valido VALUES (45, NULL, '200411140005', 'DANILO HENRIQUE SOUSA MARTINS');
INSERT INTO public.egresso_valido VALUES (46, 'danilomatosdasilva@gmail.com', '200811140023', 'DANILO MATOS DA SILVA');
INSERT INTO public.egresso_valido VALUES (47, 'danilosduarte5@gmail.com', '201611140020', 'DANILO SOUZA DUARTE');
INSERT INTO public.egresso_valido VALUES (48, 'david.barros.j@gmail.com', '201111140037', 'DAVID BARROS DE OLIVEIRA JUNIOR');
INSERT INTO public.egresso_valido VALUES (49, 'cuentrosilva@gmail.com', '201011140007', 'DEBORA DA SILVA CUENTRO');
INSERT INTO public.egresso_valido VALUES (50, 'deboraelima58@gmail.com', '201111140005', 'DEBORA EMERIQUE DE LIMA');
INSERT INTO public.egresso_valido VALUES (51, 'denermaues@gmail.com', '201511140004', 'DENER MAUES NEGRAO');
INSERT INTO public.egresso_valido VALUES (52, 'denisson_roney@hotmail.com', '201111140039', 'DENISSON RONEY ALVES REIS');
INSERT INTO public.egresso_valido VALUES (53, 'diegolisboa@ufpa.br', '200711140027', 'DIEGO ASSIS DA SILVA LISBOA');
INSERT INTO public.egresso_valido VALUES (54, 'diego.souza@icen.ufpa.br', '200911140008', 'DIEGO RODRIGUES DE SOUZA');
INSERT INTO public.egresso_valido VALUES (55, 'diegofuture@yahoo.com.br', '200711140022', 'DIEGO SAMPAIO PANTOJA');
INSERT INTO public.egresso_valido VALUES (56, 'diellefranco@yahoo.com.br', '200211140004', 'DIELLE DA SILVA CORREA FRANCO');
INSERT INTO public.egresso_valido VALUES (57, 'cetlho@gmail.com', '201011140022', 'DIOGO ADRIEL LIMA FERREIRA');
INSERT INTO public.egresso_valido VALUES (58, 'diogo.marinho@gmail.com', '200411140002', 'DIOGO MARINHO ALMEIDA');
INSERT INTO public.egresso_valido VALUES (59, 'diorgino@gmail.com', '201011140023', 'DIORGINO RIGLES ALVES REIS');
INSERT INTO public.egresso_valido VALUES (60, 'diovanini@gmail.com', '200611140021', 'DIOVANNI MORAES DE ARAUJO');
INSERT INTO public.egresso_valido VALUES (61, 'edgar.eguchi@gmail.com', '200611140033', 'EDGAR EGUCHI ALVES');
INSERT INTO public.egresso_valido VALUES (62, NULL, '200411140015', 'EDILSON ALVARO CUSTODIO JUNIOR');
INSERT INTO public.egresso_valido VALUES (63, 'ednssousa@yahoo.com.br', '200511140020', 'EDNELSON SILVA DE SOUSA');
INSERT INTO public.egresso_valido VALUES (64, NULL, '200411140027', 'EDSON GOMES DE AGUIAR SILVA');
INSERT INTO public.egresso_valido VALUES (65, NULL, '200311140008', 'EDUARDO SOUSA DE ARAUJO');
INSERT INTO public.egresso_valido VALUES (66, 'edwinchagas@ufpa.br', '201511140005', 'EDWIN VIANA CHAGAS');
INSERT INTO public.egresso_valido VALUES (67, 'ebec2012@gmail.com', '201211140035', 'ELDER BRUNO EVARISTO CORREA');
INSERT INTO public.egresso_valido VALUES (68, 'thiagom@ufpa.br', '201111140031', 'ELDER THIAGO COSTA MOREIRA');
INSERT INTO public.egresso_valido VALUES (69, 'elielsbentes@hotmail.com', '201111140019', 'ELIEL DOS SANTOS BENTES');
INSERT INTO public.egresso_valido VALUES (70, 'elienenb@yahoo.com.br', '200411140012', 'ELIENE DE NAZARE NASCIMENTO PAIXAO');
INSERT INTO public.egresso_valido VALUES (71, 'eliwelton.g.p@gmail.com', '201311140007', 'ELIWELTON GOMES PAES');
INSERT INTO public.egresso_valido VALUES (72, 'eltonsarmanho@gmail.com', '200611140008', 'ELTON SARMANHO SIQUEIRA');
INSERT INTO public.egresso_valido VALUES (73, 'elvisthermo@hotmail.com', '201611140041', 'ELVIS THERMO CARVALHO MIRANDA');
INSERT INTO public.egresso_valido VALUES (74, 'e.syadetbo@gmail.com', '201311140005', 'ERICK CARDOSO SYADE');
INSERT INTO public.egresso_valido VALUES (75, 'erikasoueu@gmail.com', '200611140019', 'ERIKA MAIA LIMA');
INSERT INTO public.egresso_valido VALUES (76, NULL, '200411140035', 'EUDO NEVES PRIMO');
INSERT INTO public.egresso_valido VALUES (77, 'evandroofox@gmail.com', '201211140005', 'EVANDRO DE SOUZA MONTEIRO');
INSERT INTO public.egresso_valido VALUES (78, 'ewertom.moraes@gmail.com', '201311140004', 'EWERTOM MOZART MORAES DE MIRANDA');
INSERT INTO public.egresso_valido VALUES (79, 'expeditonobrefilho@gmail.com', '201311140031', 'EXPEDITO AUGUSTO CARDOSO NOBRE FILHO');
INSERT INTO public.egresso_valido VALUES (80, NULL, '200411140034', 'FABIO LUIZ CORDEIRO REZENDE');
INSERT INTO public.egresso_valido VALUES (81, 'araujopa@gmail.com', '200711140024', 'FABRICIO ALMEIDA ARAUJO');
INSERT INTO public.egresso_valido VALUES (82, NULL, '200611140013', 'FABRICIO BRAGA DE SOUZA');
INSERT INTO public.egresso_valido VALUES (83, NULL, '200711140019', 'FAUSTINO FIRMINO DE CARVALHO JUNIOR');
INSERT INTO public.egresso_valido VALUES (84, 'felipe.leite.nazareth@gmail.com', '200811140009', 'FELIPE LEITE DE NAZARETH');
INSERT INTO public.egresso_valido VALUES (85, 'fernandoaj@ufpa.br', '201411140003', 'FERNANDO CESAR CHAVES ALVES JUNIOR');
INSERT INTO public.egresso_valido VALUES (86, 'f.fabiogama88@gmail.com', '201011140028', 'FERNANDO FABIO DIAS GAMA DA MATA');
INSERT INTO public.egresso_valido VALUES (87, 'fernandols.cardoso@gmail.com', '200811140010', 'FERNANDO LUIZ DE SIQUEIRA CARDOSO');
INSERT INTO public.egresso_valido VALUES (88, 'flash104@gmail.com', '200811140024', 'FERNANDO WAGNER ASSUNCAO TEIXEIRA');
INSERT INTO public.egresso_valido VALUES (89, 'flavio.oliveira@ica.ufpa.br', '200511140018', 'FLAVIO AUGUSTO SANTOS DE OLIVEIRA');
INSERT INTO public.egresso_valido VALUES (90, 'franccy.b@gmail.com', '201211140015', 'FRANCIELLEM MAYARA PONTES BEZERRA');
INSERT INTO public.egresso_valido VALUES (91, 'assuncao.francielma@gmail.com', '201611140010', 'FRANCIELMA DOS SANTOS ASSUNCAO');
INSERT INTO public.egresso_valido VALUES (92, NULL, '200711140010', 'FRANCISCO BANDEIRA BRITO JUNIOR');
INSERT INTO public.egresso_valido VALUES (93, 'jramlen@gmail.com', '200911140027', 'FRANCISCO CARLOS GUALBERTO DOS SANTOS JUNIOR');
INSERT INTO public.egresso_valido VALUES (94, NULL, '200311140033', 'FRANCISCO PAULO BRITO BORGES');
INSERT INTO public.egresso_valido VALUES (95, NULL, '200211140031', 'FRANKNALDO TORRES GOMES');
INSERT INTO public.egresso_valido VALUES (96, 'ggomes873@gmail.com', '201611140012', 'GABRIEL CRUZ SOARES GOMES');
INSERT INTO public.egresso_valido VALUES (97, 'gabrielmedsilva@hotmail.com', '201111140025', 'GABRIEL MEDEIROS DA SILVA');
INSERT INTO public.egresso_valido VALUES (98, 'gedean.carvalho@hotmail.com', '201011140002', 'GEDEAN GONCALVES CARVALHO');
INSERT INTO public.egresso_valido VALUES (99, NULL, '200311140001', 'GENE SHUCHIN WEN');
INSERT INTO public.egresso_valido VALUES (100, NULL, '200511140008', 'GEORGE GILSON OLIVEIRA DOS REIS');
INSERT INTO public.egresso_valido VALUES (101, 'geovanipaz7@gmail.com', '201211140009', 'GEOVANI OLIVEIRA CABRAL DA PAZ');
INSERT INTO public.egresso_valido VALUES (102, 'gersonsouza2@gmail.com', '201111140012', 'GERSON SOUZA DA SILVA');
INSERT INTO public.egresso_valido VALUES (103, 'gilbertojr@ufpa.br', '200611140023', 'GILBERTO NERINO DE SOUZA JUNIOR');
INSERT INTO public.egresso_valido VALUES (104, 'assumpcaogiovanni@yahoo.com.br', '200711140033', 'GIOVANNI ASSUMPCAO MAGNO');
INSERT INTO public.egresso_valido VALUES (105, 'g3oaugusto@gmail.com', '200611140005', 'GIOVANNI AUGUSTO MELO PINHEIRO');
INSERT INTO public.egresso_valido VALUES (106, NULL, '200711140035', 'GLEIDSON FELIPE PEREIRA DA SILVA');
INSERT INTO public.egresso_valido VALUES (107, 'gleisebaldez@gmail.com', '200711140001', 'GLEISE PINHEIRO BALDEZ');
INSERT INTO public.egresso_valido VALUES (108, NULL, '200311140010', 'GLEYDSON DA COSTA FERREIRA');
INSERT INTO public.egresso_valido VALUES (109, NULL, '200311140011', 'GLEYSON MIRANDA MELO');
INSERT INTO public.egresso_valido VALUES (110, 'gustavomaues@ufpa.br', '200311140005', 'GUSTAVO MAUES DE OLIVEIRA LOBATO');
INSERT INTO public.egresso_valido VALUES (111, 'hanagabrielle@outlook.com', '201711140009', 'HANA GABRIELLE DOS SANTOS BARATA');
INSERT INTO public.egresso_valido VALUES (112, 'hans.w.santos@gmail.com', '201011140010', 'HANS WILLIAM DOS SANTOS SILVA');
INSERT INTO public.egresso_valido VALUES (113, 'hegoncbsi@yahoo.com.br', '200511140022', 'HEGON HENRIQUE CORREA DA SILVA');
INSERT INTO public.egresso_valido VALUES (114, 'herberthalmeida@hotmail.com', '200811140031', 'HERBERTH MENDES DE ALMEIDA');
INSERT INTO public.egresso_valido VALUES (115, 'hieda@ufpa.br', '200211140009', 'HIEDA ADRIANA NASCIMENTO SILVA');
INSERT INTO public.egresso_valido VALUES (116, 'hbsnhugo@gmail.com', '200711140011', 'HUGO BISPO SANTOS DO NASCIMENTO');
INSERT INTO public.egresso_valido VALUES (117, NULL, '200311140032', 'HUGO RONALDO GONZALEZ NOGUEIRA');
INSERT INTO public.egresso_valido VALUES (118, 'ideraldo_carlos@hotmail.com', '200611140010', 'IDERALDO CARLOS PAVESI');
INSERT INTO public.egresso_valido VALUES (119, NULL, '200811140041', 'IGOR BARBOSA DE CARVALHO');
INSERT INTO public.egresso_valido VALUES (120, 'i.moreiragt@gmail.com', '201511140003', 'INGRID MOREIRA MIRANDA DA SILVA');
INSERT INTO public.egresso_valido VALUES (121, 'isaacelgrably@hotmail.com', '201111140020', 'ISAAC SOUZA ELGRABLY');
INSERT INTO public.egresso_valido VALUES (122, 'iuriraiol@gmail.com', '200911140006', 'IURI IGONEZ SILVA RAIOL');
INSERT INTO public.egresso_valido VALUES (123, 'jacksonpscruz@outlook.com', '200411140011', 'JACKSON PEREIRA DA SILVA CRUZ');
INSERT INTO public.egresso_valido VALUES (124, 'jadirjunior@ufpa.br', '200911140023', 'JADIR HORACIO SARMENTO PINTO JUNIOR');
INSERT INTO public.egresso_valido VALUES (125, 'jailsontolosa@gmail.com', '201111140014', 'JAILSON MARTINS TOLOSA');
INSERT INTO public.egresso_valido VALUES (126, 'junior.jairo1@gmail.com', '200811140039', 'JAIRO DE JESUS NASCIMENTO DA SILVA JUNIOR');
INSERT INTO public.egresso_valido VALUES (127, 'jamysonmatoso@yahoo.com.br', '200911140011', 'JAMYSON DA SILVA MATOSO');
INSERT INTO public.egresso_valido VALUES (128, NULL, '200211140010', 'JANDER DE SOUZA E SILVA');
INSERT INTO public.egresso_valido VALUES (129, 'jeffklister@gmail.com', '201311140001', 'JEFFERSON KLISTER DUARTE DA SILVA JUNIOR');
INSERT INTO public.egresso_valido VALUES (130, 'jesserocha2012@gmail.com', '201111140001', 'JESSÉ DA COSTA ROCHA');
INSERT INTO public.egresso_valido VALUES (131, 'jessicadepaula.stm@gmail.com', '201411140036', 'JESSICA DE PAULA FIGUEIRA RIBEIRO');
INSERT INTO public.egresso_valido VALUES (132, 'j0g4d0r1@hotmail.com', '200611140012', 'JHONATHAS SOUSA DOS SANTOS');
INSERT INTO public.egresso_valido VALUES (133, NULL, '200211140028', 'JHOVAN OBEDE TERRA DA SILVA');
INSERT INTO public.egresso_valido VALUES (134, 'joaoamil@hotmail.com', '200911140002', 'JOAO LUIS DOS REIS LIMA');
INSERT INTO public.egresso_valido VALUES (135, 'jvpaternostroc2@gmail.com', '201211140003', 'JOAO VICTOR PATERNOSTRO CORREA');
INSERT INTO public.egresso_valido VALUES (136, 'jq.quaresma12@gmail.com', '201111140011', 'JOSE AUGUSTO DE SENA QUARESMA');
INSERT INTO public.egresso_valido VALUES (137, NULL, '200711140020', 'JOSE BRICIO MACHADO CARDOSO NETO');
INSERT INTO public.egresso_valido VALUES (138, 'deivisonvx@gmail.com', '201311140026', 'JOSE DEIVISON VIEIRA XAVIER');
INSERT INTO public.egresso_valido VALUES (139, NULL, '200211140012', 'JOSE HIRVALDO LOBO MONTEIRO');
INSERT INTO public.egresso_valido VALUES (140, 'jose.monteiro@icen.ufpa.br', '201411140019', 'JOSE RAMON DA CONCEIÇAO MONTEIRO');
INSERT INTO public.egresso_valido VALUES (141, 'joycesinfo03@yahoo.com.br', '200311140015', 'JOYCE ANNE PINTO RODRIGUES');
INSERT INTO public.egresso_valido VALUES (142, 'julio.menezesi2013@gmail.com', '201311140036', 'JULIO DE PADUA LOPES MENEZES');
INSERT INTO public.egresso_valido VALUES (143, 'julioebs20@hotmail.com', '200711140014', 'JULIO EDUARDO BITTENCOURT DA SILVA');
INSERT INTO public.egresso_valido VALUES (144, 'juliusufpa2010@gmail.com', '201011140033', 'JULIO FRANCISCO COUTO DE CARVALHO');
INSERT INTO public.egresso_valido VALUES (145, 'julioramonufpa@gmail.com', '200811140025', 'JULIO RAMON NOGUEIRA LISBOA');
INSERT INTO public.egresso_valido VALUES (146, NULL, '200711140004', 'KAIO SERGIO DA MOTTA VALENTE');
INSERT INTO public.egresso_valido VALUES (147, 'kalill.lameira@gmail.com', '201411140013', 'KALILL CORDEIRO LAMEIRA');
INSERT INTO public.egresso_valido VALUES (148, NULL, '200611140029', 'KAMILA BALTAZAR CORREIA');
INSERT INTO public.egresso_valido VALUES (149, 'katyakeila@gmail.com', '200511140031', 'KATYA KEILA COSTA ASSIS');
INSERT INTO public.egresso_valido VALUES (150, 'kelvintvieira@hotmail.com', '201111140016', 'KELVIN TEIXEIRA VIEIRA');
INSERT INTO public.egresso_valido VALUES (151, 'brunocorrea@ufpa.br', '200811140013', 'KLEOSON BRUNO CORREA DOS SANTOS');
INSERT INTO public.egresso_valido VALUES (152, 'laerte-gm@hotmail.com', '200911140001', 'LAERTE GUEDES MONTEIRO');
INSERT INTO public.egresso_valido VALUES (153, 'laertthpotter@hotmail.com', '201011140034', 'LAERTH LASERINO PINTO MONTEIRO');
INSERT INTO public.egresso_valido VALUES (154, 'laissribeiro@gmail.com', '200811140019', 'LAIS CONCEICAO RIBEIRO');
INSERT INTO public.egresso_valido VALUES (155, NULL, '200511140027', 'LARISSA DE SOUZA CARNEIRO');
INSERT INTO public.egresso_valido VALUES (156, 'leandro.goms.moura@gmail.com', '200911140033', 'LEANDRO GOMES DE MOURA');
INSERT INTO public.egresso_valido VALUES (157, NULL, '200411140004', 'LEANDRO HERNANDEZ ALMEIDA');
INSERT INTO public.egresso_valido VALUES (158, 'leidiel@ufpa.br', '200611140003', 'LEIDIEL ARAUJO DE OLIVEIRA');
INSERT INTO public.egresso_valido VALUES (159, 'leonardoandre27@gmail.com', '201111140010', 'LEONARDO ANDRE SILVA DOS SANTOS');
INSERT INTO public.egresso_valido VALUES (160, 'barbosleonardo@gmail.com', '201011140001', 'LEONARDO BARBOSA DA COSTA');
INSERT INTO public.egresso_valido VALUES (161, 'leonardofig88@gmail.com', '201411140011', 'LEONARDO DA COSTA FIGUEIREDO');
INSERT INTO public.egresso_valido VALUES (162, 'leo_dm@live.it', '201111140008', 'LEONARDO DIAS MARTINS');
INSERT INTO public.egresso_valido VALUES (163, NULL, '200911140015', 'LEONARDO FERREIRA E SILVA');
INSERT INTO public.egresso_valido VALUES (164, 'leofozzy@yahoo.com.br', '200411140020', 'LEONARDO HERNANDEZ ALMEIDA');
INSERT INTO public.egresso_valido VALUES (165, 'leo-sdl@hotmail.br', '200511140002', 'LEO SANTOS DE LIMA');
INSERT INTO public.egresso_valido VALUES (166, NULL, '200511140015', 'LEYRILANE DE SOUZA');
INSERT INTO public.egresso_valido VALUES (167, 'lourdilene.souza@gmail.com', '201011140031', 'LOURDILENE SILVA DE SOUZA');
INSERT INTO public.egresso_valido VALUES (168, NULL, '200311140013', 'LOURIVAL DA CONCEICAO PEREIRA JUNIOR');
INSERT INTO public.egresso_valido VALUES (169, 'luanoliveira35@hotmail.com', '201411140029', 'LUAN DOS SANTOS OLIVEIRA');
INSERT INTO public.egresso_valido VALUES (170, 'akaluan.la@gmail.com', '201611140015', 'LUAN FELIPE BRITTO ALVES');
INSERT INTO public.egresso_valido VALUES (171, NULL, '200611140031', 'LUCIANA NEVES BENTES');
INSERT INTO public.egresso_valido VALUES (172, NULL, '200411140025', 'LUCIANE FARIAS SOARES');
INSERT INTO public.egresso_valido VALUES (173, 'alelibbra@hotmail.com', '200511140009', 'LUIZ ALESSANDRO LOPES FEITOSA');
INSERT INTO public.egresso_valido VALUES (174, 'luizdsousa@gmail.com', '201311140013', 'LUIZ ANTONIO ANDRADE DE SOUSA');
INSERT INTO public.egresso_valido VALUES (175, 'eduardo@alcantara.net.br', '201111140006', 'LUIZ EDUARDO ALVES DE ALCANTARA');
INSERT INTO public.egresso_valido VALUES (176, 'luizfelipph@gmail.com', '201211140006', 'LUIZ FELIPPH CALADO SOSINHO');
INSERT INTO public.egresso_valido VALUES (177, 'otaviodanin@gmail.com', '200911140021', 'LUIZ OTAVIO DANIN DE LIMA');
INSERT INTO public.egresso_valido VALUES (178, NULL, '200311140026', 'LUZIANA BRAGA CORREA');
INSERT INTO public.egresso_valido VALUES (179, NULL, '200411140003', 'LYNDON JOHNSON BRITO SOUSA');
INSERT INTO public.egresso_valido VALUES (180, 'mpillar@yahoo.com.br', '200211140013', 'MABEL PILAR NASCIMENTO DUARTE');
INSERT INTO public.egresso_valido VALUES (181, 'victor.ufpaa@gmail.com', '201211140022', 'MANOEL VICTOR RODRIGUES LEITE');
INSERT INTO public.egresso_valido VALUES (182, 'manuely.guedes@icen.ufpa.br', '201011140020', 'MANUELY BARBOSA GUEDES');
INSERT INTO public.egresso_valido VALUES (183, NULL, '200211140007', 'MARCELA SANTIAGO DOS SANTOS');
INSERT INTO public.egresso_valido VALUES (184, 'marcelo@ufpa.br', '200411140029', 'MARCELO DA SILVA MORAES');
INSERT INTO public.egresso_valido VALUES (185, 'marcelosarraf@gmail.com', '200211140006', 'MARCELO SARRAF PINHO');
INSERT INTO public.egresso_valido VALUES (186, 'marcio.ponte@ufopa.edu.br', '200211140014', 'MARCIO JOSE MOUTINHO DA PONTE');
INSERT INTO public.egresso_valido VALUES (187, 'marciogomes@mpf.mp.br', '200311140016', 'MARCIO NUNES GOMES');
INSERT INTO public.egresso_valido VALUES (188, 'macapela@ufpa.br', '200411140032', 'MARCO AURELIO CAPELA');
INSERT INTO public.egresso_valido VALUES (189, 'almeidmar@gmail.com', '201511140034', 'MARCOS ALMEIDA DA COSTA');
INSERT INTO public.egresso_valido VALUES (190, NULL, '200411140030', 'MARCOS AUGUSTO BARATA DA SILVA');
INSERT INTO public.egresso_valido VALUES (191, 'marcsi2320@gmail.com', '201311140034', 'MARCOS PAULO FERREIRA COSTA');
INSERT INTO public.egresso_valido VALUES (192, NULL, '200411140024', 'MARCOS PAULO NASCIMENTO SILVA');
INSERT INTO public.egresso_valido VALUES (193, NULL, '200611140020', 'MARCOS VALERIO DA SILVA RENDEIRO');
INSERT INTO public.egresso_valido VALUES (194, 'marianojefferson@hotmail.com', '200711140021', 'MARIANO JEFFERSON BATISTA GOMES JUNIOR');
INSERT INTO public.egresso_valido VALUES (195, 'mario_oliveira10@yahoo.com.br', '201011140039', 'MARIO ANTONIO PEREIRA DE OLIVEIRA');
INSERT INTO public.egresso_valido VALUES (196, NULL, '200211140017', 'MARIO BASTOS DE BRITO JUNIOR');
INSERT INTO public.egresso_valido VALUES (197, 'marlonufpasi@gmail.com', '201211140028', 'MARLON SILVA PIMENTEL CRUZ');
INSERT INTO public.egresso_valido VALUES (198, 'marlon.santos.santos@icen.ufpa.br', '201511140006', 'MARLON WILSON SANTOS DOS SANTOS');
INSERT INTO public.egresso_valido VALUES (199, 'jodye_st@hotmail.com', '200511140019', 'MARTA JODYE BORDO DA CONCEICAO');
INSERT INTO public.egresso_valido VALUES (200, 'matheusvieiracoelho@gmail.com', '201311140021', 'MATHEUS SEABRA DE CARVALHO VIEIRA COELHO');
INSERT INTO public.egresso_valido VALUES (201, 'mauricio.si.ufpa@gmail.com', '201811140014', 'MAURICIO MARTINS RIBEIRO');
INSERT INTO public.egresso_valido VALUES (202, 'mauroabferreira@yahoo.com.br', '201111140048', 'MAURO AUGUSTO BARROS FERREIRA');
INSERT INTO public.egresso_valido VALUES (203, NULL, '200411140026', 'MAXIMIANO DAVES DA COSTA VIEIRA');
INSERT INTO public.egresso_valido VALUES (204, NULL, '200511140010', 'MAX WANDERSON DE ARAUJO FAVACHO');
INSERT INTO public.egresso_valido VALUES (205, 'maykonaraujo23@gmail.com', '201311140018', 'MAYKON ARAUJO DE SOUZA');
INSERT INTO public.egresso_valido VALUES (206, 'michelgondim@yahoo.com.br', '200511140034', 'MICHEL FEU CASTRO GONDIM');
INSERT INTO public.egresso_valido VALUES (207, NULL, '200711140008', 'MICHEL PEREIRA MARQUES');
INSERT INTO public.egresso_valido VALUES (208, 'NILJUNIOR@GMAIL.COM                                                             ', '200611140028', 'NILTON RODRIGUES DE ASSIS JUNIOR');
INSERT INTO public.egresso_valido VALUES (209, 'odirley007@yahoo.com.br', '201211140008', 'ODIRLEY PINHEIRO DE MATOS');
INSERT INTO public.egresso_valido VALUES (210, 'ontf.filho@gmail.com', '200811140026', 'ORLANDO DO NASCIMENTO TAVARES FILHO');
INSERT INTO public.egresso_valido VALUES (211, NULL, '200211140022', 'OTAVIO DUTRA LEITE');
INSERT INTO public.egresso_valido VALUES (212, 'patricia.diniz@tucurui.ufpa.br', '200411140010', 'PATRICIA PINTO DINIZ');
INSERT INTO public.egresso_valido VALUES (213, 'psn_leandro@hotmail.com', '200811140030', 'PAULEANDRO SILVA NUNES');
INSERT INTO public.egresso_valido VALUES (214, 'paulo_alp19@hotmail.com', '200611140026', 'PAULO ALBERTO LIMA PRADO');
INSERT INTO public.egresso_valido VALUES (215, NULL, '200211140008', 'PAULO ANDRE MOREIRA CARVALHO');
INSERT INTO public.egresso_valido VALUES (216, 'paulohenriq10@gmail.com', '201211140025', 'PAULO HENRIQUE AMORIM PEREIRA');
INSERT INTO public.egresso_valido VALUES (217, 'pv.lima05@gmail.com', '201111140024', 'PAULO VITOR CHAVES DE LIMA');
INSERT INTO public.egresso_valido VALUES (218, 'paulocardoso.dev@gmail.com', '200811140008', 'PAULO VITOR RODRIGUES CARDOSO');
INSERT INTO public.egresso_valido VALUES (219, 'weskleyalmeida.si@gmail.com', '201011140032', 'PAULO WESKLEY DE ALMEIDA FERREIRA');
INSERT INTO public.egresso_valido VALUES (220, 'pedro_cabeludow@hotmail.com', '200611140002', 'PEDRO ESTEVAO DA CONCEICAO MOUTINHO JUNIOR');
INSERT INTO public.egresso_valido VALUES (221, 'rafmout@yahoo.com.br', '200511140012', 'RAFAELA CARDOSO MOUTINHO');
INSERT INTO public.egresso_valido VALUES (222, 'peccatiello@ig.com.br', '200511140007', 'RAFAEL BRUNO PECCATIELLO');
INSERT INTO public.egresso_valido VALUES (223, NULL, '200711140031', 'RAFAEL DANTAS CARVALHO');
INSERT INTO public.egresso_valido VALUES (224, 'rafcavalheiro@gmail.com', '201211140030', 'RAFAEL DE SOUZA CAVALHEIRO');
INSERT INTO public.egresso_valido VALUES (225, 'desouza.timao@gmail.com', '201011140005', 'RAFAEL FERREIRA DE SOUZA');
INSERT INTO public.egresso_valido VALUES (226, 'rafael.sousa@ifpa.edu.br', '200711140032', 'RAFAEL GOMES SOUSA');
INSERT INTO public.egresso_valido VALUES (227, 'raimundonorberto@yahoo.com.br', '200211140021', 'RAIMUNDO NORBERTO LAMEIRA JUNIOR');
INSERT INTO public.egresso_valido VALUES (228, 'razeved@yahoo.com.br', '200511140011', 'RAPHAEL DA SILVA AZEVEDO');
INSERT INTO public.egresso_valido VALUES (229, NULL, '200911140025', 'RAPHAEL ROGERIO MOUTA');
INSERT INTO public.egresso_valido VALUES (230, 'fa15698@yahoo.com.br', '200811140018', 'RAUL CESAR MONTEIRO DA SILVA');
INSERT INTO public.egresso_valido VALUES (231, 'renaneduardorodrigues@gmail.com', '201011140016', 'RENAN EDUARDO SOARES RODRIGUES');
INSERT INTO public.egresso_valido VALUES (232, NULL, '200511140032', 'RENATA RODRIGUES DE CARVALHO');
INSERT INTO public.egresso_valido VALUES (233, 'ricardosarmanho@hotmail.com', '201411140007', 'RICARDO ANDERSON MUNIZ SARMANHO');
INSERT INTO public.egresso_valido VALUES (234, 'rafeio@bol.com.br', '200611140018', 'RICARDO ARAUJO FEIO');
INSERT INTO public.egresso_valido VALUES (235, NULL, '200411140007', 'RICARDO PAES ALMEIDA');
INSERT INTO public.egresso_valido VALUES (236, 'roberto.almeida@icen.ufpa.br', '201311140002', 'ROBERTO BARBOSA DE ALMEIDA JUNIOR');
INSERT INTO public.egresso_valido VALUES (237, 'rbxjunior@gmail.com', '201211140019', 'ROBERTO BRITO XAVIER JUNIOR');
INSERT INTO public.egresso_valido VALUES (238, 'bob.felix89@gmail.com', '201011140014', 'ROBERTO FELIX');
INSERT INTO public.egresso_valido VALUES (239, 'rsantsil@gmail.com', '201011140015', 'ROBSON DOS SANTOS SILVA');
INSERT INTO public.egresso_valido VALUES (240, 'rodrigobbrasil@gmail.com', '200711140002', 'RODRIGO BEZERRA BRASIL');
INSERT INTO public.egresso_valido VALUES (241, 'rodrigoviana@ufpa.br', '201011140030', 'RODRIGO DO CARMO VIANA');
INSERT INTO public.egresso_valido VALUES (242, 'rvidalth@yahoo.com.br', '200811140027', 'RODRIGO VIDAL MIRANDA');
INSERT INTO public.egresso_valido VALUES (243, 'rlimac@gmail.com', '200211140019', 'ROGERIO LIMA CARNEIRO');
INSERT INTO public.egresso_valido VALUES (244, 'rjsilva@ufpa.br', '200411140022', 'ROMAO SOUZA SILVA');
INSERT INTO public.egresso_valido VALUES (245, NULL, '200311140025', 'ROSANE DA SILVA SIQUEIRA');
INSERT INTO public.egresso_valido VALUES (246, 'zanraiol@gmail.com', '200211140026', 'ROSANGELA SOUSA RAIOL');
INSERT INTO public.egresso_valido VALUES (247, 'rfgomesjr@gmail.com', '200911140020', 'ROSIVALDO FONSECA GOMES JUNIOR');
INSERT INTO public.egresso_valido VALUES (248, NULL, '200811140032', 'ROUSEVELT RODRIGUES DE ALMEIDA');
INSERT INTO public.egresso_valido VALUES (249, NULL, '200211140018', 'RUMENIGG NOGUEIRA VIEIRA');
INSERT INTO public.egresso_valido VALUES (250, 'samwallflowergirl@gmail.com', '201511140002', 'SAMARA FERNANDES PIMENTEL');
INSERT INTO public.egresso_valido VALUES (251, 'ifpa.santana@gmail.com', '200911140014', 'SAMUEL LINHARES SANTANA');
INSERT INTO public.egresso_valido VALUES (252, NULL, '200711140006', 'SANDRO ALAN DE SOUZA MONTEIRO');
INSERT INTO public.egresso_valido VALUES (253, NULL, '200511140035', 'SEBASTIAO GILBERTO LOPES VAZ');
INSERT INTO public.egresso_valido VALUES (254, 'sergio_ewr17@hotmail.com', '201111140030', 'SERGIO EWERTON MACIEL RODES');
INSERT INTO public.egresso_valido VALUES (255, 'sbpaco@gmail.com', '200511140014', 'SILVIO BRUNO PAIVA COSTA');
INSERT INTO public.egresso_valido VALUES (256, 'simondelarocha@yahoo.com.br', '200511140004', 'SIMON AFONSO CORREA LOBATO');
INSERT INTO public.egresso_valido VALUES (257, NULL, '200711140007', 'SIVALDO DE OLIVEIRA BARBOSA');
INSERT INTO public.egresso_valido VALUES (258, 'talitatravassos.tt@gmail.com', '201411140025', 'TALITA DE CACIA SOUSA TRAVASSOS');
INSERT INTO public.egresso_valido VALUES (259, NULL, '200211140016', 'TAMARA CUNHA MENDES');
INSERT INTO public.egresso_valido VALUES (260, 'tatianejbm@yahoo.com.br', '200811140015', 'TATIANE BOTELHO BORGES');
INSERT INTO public.egresso_valido VALUES (261, 'thiagobm01@hotmail.com', '201611140002', 'THIAGO BENICIO MACEDO');
INSERT INTO public.egresso_valido VALUES (262, 'tsilva0891@gmail.com', '201211140010', 'THIAGO CORDEIRO COSTA DA SILVA');
INSERT INTO public.egresso_valido VALUES (263, NULL, '200211140001', 'THIAGO DA SILVA GILLA');
INSERT INTO public.egresso_valido VALUES (264, NULL, '200311140020', 'THIAGO DE LIMA ARAUJO');
INSERT INTO public.egresso_valido VALUES (265, 'thiagomatos99@hotmail.com', '200911140017', 'THIAGO DE MATOS BEZERRA');
INSERT INTO public.egresso_valido VALUES (266, NULL, '200711140023', 'THIAGO MODESTO DIAS');
INSERT INTO public.egresso_valido VALUES (267, 'ioritss@hotmail.com', '200711140034', 'THIAGO SALES SANTOS');
INSERT INTO public.egresso_valido VALUES (268, 'jvantero@gmail.com', '201011140012', 'TIAGO ANTERO DE SOUSA ALVES');
INSERT INTO public.egresso_valido VALUES (269, NULL, '200311140003', 'TIAGO PORTO SANTOS DO NASCIMENTO');
INSERT INTO public.egresso_valido VALUES (270, 'VCPSINFO@YAHOO.COM.BR', '200311140017', 'VERONICA COSTA PANTOJA');
INSERT INTO public.egresso_valido VALUES (271, NULL, '200511140016', 'VICTOR GUSTAVO DE MELLO GONCALVES');
INSERT INTO public.egresso_valido VALUES (272, 'victorhugo543af@gmail.com', '201711140002', 'VICTOR HUGO AZEVEDO FERREIRA');
INSERT INTO public.egresso_valido VALUES (273, 'viniciusqquei@gmail.com', '201611140031', 'VINICIUS FAVACHO QUEIROZ');
INSERT INTO public.egresso_valido VALUES (274, 'vitor.cirilo3@gmail.com', '201011140003', 'VITOR CIRILO ARAUJO SANTOS');
INSERT INTO public.egresso_valido VALUES (275, 'vitor@ufpa.br', '200711140003', 'VITOR DE SOUZA CASTRO');
INSERT INTO public.egresso_valido VALUES (276, 'walbert.monteiro@ifpa.edu.br', '200511140021', 'WALBERT CUNHA MONTEIRO');
INSERT INTO public.egresso_valido VALUES (277, 'walbertsilva5@gmail.com', '201011140009', 'WALBERT EMANUEL DA SILVA NASCIMENTO');
INSERT INTO public.egresso_valido VALUES (278, 'walderwolf.tm@gmail.com', '201111140038', 'WALDER LOBO MARQUES');
INSERT INTO public.egresso_valido VALUES (279, 'waleriamoura@gmail.com', '200511140028', 'WALERIA PAULA DA LUZ MOURA SOUZA');
INSERT INTO public.egresso_valido VALUES (280, NULL, '200311140034', 'WANDERSON AUGUSTO DE SOUZA PEREIRA');
INSERT INTO public.egresso_valido VALUES (281, NULL, '200311140007', 'WELLINGTON CARDOSO COSTA');
INSERT INTO public.egresso_valido VALUES (282, 'engwillsm@yahoo.com.br', '200811140003', 'WELLINGTON SOUZA MORAES');
INSERT INTO public.egresso_valido VALUES (283, 'wesleyandmelo@gmail.com', '200911140032', 'WESLEY ANDERSON OLIVEIRA DE MELO');
INSERT INTO public.egresso_valido VALUES (284, 'wesley.tadsi@yahoo.com.br', '201011140013', 'WESLEY DE OLIVEIRA BARBOSA');
INSERT INTO public.egresso_valido VALUES (285, NULL, '200511140029', 'WILLIAM CAPELA CARDOSO');
INSERT INTO public.egresso_valido VALUES (286, 'williamsawaki@gmail.com', '201011140006', 'WILLIAM SAWAKI DE MELO E SILVA');
INSERT INTO public.egresso_valido VALUES (287, NULL, '200411140033', 'WILLY CLEYBER ALMEIDA SILVA');
INSERT INTO public.egresso_valido VALUES (288, 'wilton.cns@gmail.com', '200511140037', 'WILTON CESAR NASCIMENTO DA SILVA');
INSERT INTO public.egresso_valido VALUES (289, NULL, '200311140018', 'YASMIN VIEIRA DE MELO KOURY');
INSERT INTO public.egresso_valido VALUES (290, 'yurimelo89@gmail.com', '201611140027', 'YURI MELO E SILVA DO ESPIRITO SANTO');
INSERT INTO public.egresso_valido VALUES (291, 'abelbruno@hotmail.com', '200804940012', 'ABEL BRUNO NASCIMENTO SILVA');
INSERT INTO public.egresso_valido VALUES (292, NULL, '199904940002', 'ABNATAL PEREIRA CORDOVIL JUNIOR');
INSERT INTO public.egresso_valido VALUES (293, 'abner.cardo@gmail.com', '201604940029', 'ABNER CARDOSO DA SILVA');
INSERT INTO public.egresso_valido VALUES (294, 'abnergillet16@gmail.com', '201304940017', 'ABNER GILLET FARIAS');
INSERT INTO public.egresso_valido VALUES (295, NULL, '199504940031', 'ABRAHAM LINCOLN RABELO DE SOUSA');
INSERT INTO public.egresso_valido VALUES (296, 'acza.silva@icen.ufpa.br', '201704940024', 'ACZA LIRA SILVA');
INSERT INTO public.egresso_valido VALUES (297, 'adailton@ufpa.br', '200204940003', 'ADAILTON MAGALHAES LIMA');
INSERT INTO public.egresso_valido VALUES (298, NULL, '200304940019', 'ADEILSON NAZARENO ARAUJO PINHEIRO');
INSERT INTO public.egresso_valido VALUES (299, NULL, '199104940049', 'ADELMO FREIRES GOMES');
INSERT INTO public.egresso_valido VALUES (300, 'adcorecha@gmail.com', '200904940039', 'ADENILTON CORECHA DE SOUZA');
INSERT INTO public.egresso_valido VALUES (301, NULL, '199104940090', 'ADERBAL MOURA SANTOS');
INSERT INTO public.egresso_valido VALUES (302, NULL, '200104940034', 'ADEVALDO QUEIROZ DA SILVA');
INSERT INTO public.egresso_valido VALUES (303, 'adieltab16@gmail.com', '201504940002', 'ADIEL DOS SANTOS NASCIMENTO');
INSERT INTO public.egresso_valido VALUES (304, 'adilson.sousa@icen.ufpa.br', '200904940009', 'ADILSON FRANCISCO FERREIRA SOUSA');
INSERT INTO public.egresso_valido VALUES (305, NULL, '199304940001', 'ADRIANA LEITE DE ALCANTARA');
INSERT INTO public.egresso_valido VALUES (306, NULL, '199904940016', 'ADRIANA NUNES TELES');
INSERT INTO public.egresso_valido VALUES (307, 'ribeiroadrianno@ig.com.br', '200204940036', 'ADRIANO DE AGUIAR RIBEIRO');
INSERT INTO public.egresso_valido VALUES (308, NULL, '200004940020', 'ADRIANO DE OLIVEIRA MARTINS');
INSERT INTO public.egresso_valido VALUES (309, NULL, '199404940002', 'ADRIANO LUIZ PINTO SOBRAL');
INSERT INTO public.egresso_valido VALUES (310, 'adriano.sbarreto@hotmail.com', '201304940025', 'ADRIANO SILVA BARRETO');
INSERT INTO public.egresso_valido VALUES (311, 'aianshay@gmail.com', '201704940041', 'AIAN SHAY BENTES DAMASCENO CARDOSO');
INSERT INTO public.egresso_valido VALUES (312, NULL, '200004940046', 'AILTO LORASCHI');
INSERT INTO public.egresso_valido VALUES (313, 'airton@ufpa.br', '200604940031', 'AIRTON NOBUMASA ISHIMORI');
INSERT INTO public.egresso_valido VALUES (314, 'aveloso@ufpa.br', '201504940009', 'ALAN TONY SOUZA VELOSO');
INSERT INTO public.egresso_valido VALUES (315, 'aclsobrinho@gmail.com', '201704940019', 'ALBERTO DA CRUZ LIMA SOBRINHO');
INSERT INTO public.egresso_valido VALUES (316, NULL, '199104940107', 'ALBERTO SHINTA KURODA');
INSERT INTO public.egresso_valido VALUES (317, 'almeida.alcyr@gmail.com', '201204940025', 'ALCYR DA COSTA ALMEIDA JUNIOR');
INSERT INTO public.egresso_valido VALUES (318, NULL, '199104940108', 'ALEKSANDRA DO SOCORRO DA SILVA');
INSERT INTO public.egresso_valido VALUES (319, NULL, '200404940026', 'ALESSANDRA CAROLINE DOS SANTOS NASCIMENTO');
INSERT INTO public.egresso_valido VALUES (320, NULL, '200104940011', 'ALESSANDRA DA SILVA GOMES');
INSERT INTO public.egresso_valido VALUES (321, NULL, '199104940050', 'ALESSANDRA FONTEL POMPEU');
INSERT INTO public.egresso_valido VALUES (322, 'alessandra.araujo@icen.ufpa.br', '201204940027', 'ALESSANDRA PANTOJA DE ARAUJO');
INSERT INTO public.egresso_valido VALUES (323, 'alessandrapriscila.alves@gmail.com', '201004940012', 'ALESSANDRA PRISCILA ALVES DE OLIVEIRA');
INSERT INTO public.egresso_valido VALUES (324, NULL, '199304940002', 'ALETEIA PATRICIA FAVACHO DE ARAUJO');
INSERT INTO public.egresso_valido VALUES (325, NULL, '200004940013', 'ALEXANDER RICHARD VINSON');
INSERT INTO public.egresso_valido VALUES (326, 'alexandre.freytas@gmail.com', '201104940039', 'ALEXANDRE ABREU DE FREITAS');
INSERT INTO public.egresso_valido VALUES (327, NULL, '199504940001', 'ALEXANDRE ALVAREZ MARTINI SANTOS');
INSERT INTO public.egresso_valido VALUES (328, NULL, '199304940004', 'ALEXANDRE CARLOS BEZERRA MACEDO');
INSERT INTO public.egresso_valido VALUES (329, NULL, '199204940001', 'ALEXANDRE MELO BRAGA');
INSERT INTO public.egresso_valido VALUES (330, 'alexandre.monassa@gmail.com', '200504940011', 'ALEXANDRE MONASSA MOREIRA');
INSERT INTO public.egresso_valido VALUES (331, 'gomes.bcc@gmail.com', '201004940020', 'ALEXANDRE RODRIGUES GOMES');
INSERT INTO public.egresso_valido VALUES (332, NULL, '200004940016', 'ALEX YUICHI YOKOKURA');
INSERT INTO public.egresso_valido VALUES (333, 'jrcdz01@gmail.com', '201104940033', 'ALFREDO LIMA DA COSTA JUNIOR');
INSERT INTO public.egresso_valido VALUES (334, NULL, '199704940017', 'ALINE CLAIREFONT TAVARES MELO');
INSERT INTO public.egresso_valido VALUES (335, NULL, '200304940005', 'ALINE DE OLIVEIRA SILVA');
INSERT INTO public.egresso_valido VALUES (336, 'apssig@ig.com.br', '200204940047', 'ALINE PATRICIA DA SILVA PIMENTEL');
INSERT INTO public.egresso_valido VALUES (337, NULL, '199404940045', 'ALINE REGINA DE OLIVEIRA MIRANDA');
INSERT INTO public.egresso_valido VALUES (338, 'alisonricss@yahoo.com.br', '200304940003', 'ALISON RICARDO SANTOS DA SILVA');
INSERT INTO public.egresso_valido VALUES (339, 'allinelemos@gmail.com', '200204940007', 'ALLINE DE MELO LEMOS');
INSERT INTO public.egresso_valido VALUES (340, 'alline_peixoto@yahoo.com.br', '200104940049', 'ALLINE DE OLIVEIRA PEIXOTO');
INSERT INTO public.egresso_valido VALUES (341, 'allisknarf@gmail.com', '200904940031', 'ALLISFRANK DOS SANTOS');
INSERT INTO public.egresso_valido VALUES (342, 'aluizio.ramos.adv@gmail.com', '201004940028', 'ALUIZIO RAMOS PEREIRA NETO');
INSERT INTO public.egresso_valido VALUES (343, NULL, '200204940060', 'AMANDA NOBRE COSTA');
INSERT INTO public.egresso_valido VALUES (344, 'acms@ufpa.br', '199104940001', 'ANA CARLA MACEDO DA SILVA');
INSERT INTO public.egresso_valido VALUES (345, 'carolufpa@gmail.com', '200204940055', 'ANA CAROLINA DE ARAUJO BARBOSA');
INSERT INTO public.egresso_valido VALUES (346, 'idabiap@yahoo.com.br', '200204940046', 'ANA IDALINA TENORIO PIEDADE');
INSERT INTO public.egresso_valido VALUES (347, 'aisabelamr@gmail.com', '201404940021', 'ANA ISABELA MANITO RAMOS');
INSERT INTO public.egresso_valido VALUES (348, NULL, '199204940044', 'ANA KARLA MIRANDA DE OLIVEIRA');
INSERT INTO public.egresso_valido VALUES (349, 'av503vitoria@gmail.com', '201704940008', 'ANA VITORIA DE BACELAR MACHADO E SILVA');
INSERT INTO public.egresso_valido VALUES (350, NULL, '199804940029', 'ANDERSON BAIA MAIA');
INSERT INTO public.egresso_valido VALUES (351, NULL, '200504940036', 'ANDERSON DE OLIVEIRA BANDEIRA');
INSERT INTO public.egresso_valido VALUES (352, 'anderson.fn88@gmail.com', '200904940015', 'ANDERSON FURTADO DE NAZARE');
INSERT INTO public.egresso_valido VALUES (353, NULL, '199704940007', 'ANDERSON JONES SILVA DE JESUS');
INSERT INTO public.egresso_valido VALUES (354, 'andersonjsc@gmail.com', '200204940052', 'ANDERSON JORGE SERRA DA COSTA');
INSERT INTO public.egresso_valido VALUES (355, 'andersonoanjo18@gmail.com', '200904940016', 'ANDERSON MARQUES MORAIS');
INSERT INTO public.egresso_valido VALUES (356, 'arr@ufpa.br', '199504940002', 'ANDERSON RAIOL RODRIGUES');
INSERT INTO public.egresso_valido VALUES (357, 'agoes@ufpa.br', '200304940016', 'ANDERSON SILVA DE OLIVEIRA GÓES');
INSERT INTO public.egresso_valido VALUES (358, 'andre.cbcc@gmail.com', '200804940001', 'ANDRE LUIS MACHADO DE VASCONCELOS');
INSERT INTO public.egresso_valido VALUES (359, 'andrebahia.cbcc@gmail.com', '200804940022', 'ANDRE MIGUEL PENA BAHIA');
INSERT INTO public.egresso_valido VALUES (360, 'andremirandap93@gmail.com', '201604940032', 'ANDRE MIRANDA PINHEIRO');
INSERT INTO public.egresso_valido VALUES (361, NULL, '199504940032', 'ANDRE RICARDO FARIA GOMES');
INSERT INTO public.egresso_valido VALUES (362, 'andreymacedo06@hotmail.com', '200904940014', 'ANDREY DE MACEDO SOUSA');
INSERT INTO public.egresso_valido VALUES (363, NULL, '199104940052', 'ANE MARGARETH MONTE VERDE SILVA');
INSERT INTO public.egresso_valido VALUES (364, NULL, '199104940053', 'ANETE HIROMI HASHIMOTO');
INSERT INTO public.egresso_valido VALUES (365, NULL, '199304940006', 'ANGELA CRISTINA SOUZA DE AQUINO');
INSERT INTO public.egresso_valido VALUES (366, 'angelaamador@ufpa.br', '201104940028', 'ANGELA MARIA TRINDADE AMADOR');
INSERT INTO public.egresso_valido VALUES (367, '3390955@gmail.com', '200104940031', 'ANGELO DE BARROS BRAGA');
INSERT INTO public.egresso_valido VALUES (368, 'angeloluizz@gmail.com', '201004940045', 'ANGELO LUIZ DA CRUZ OLIVEIRA');
INSERT INTO public.egresso_valido VALUES (369, 'aandrecunhas@gmail.com', '201004940031', 'ANTONIO ANDRE CUNHA DA SILVA');
INSERT INTO public.egresso_valido VALUES (370, NULL, '199604940015', 'ANTONIO FABIO RODRIGUES DOS SANTOS');
INSERT INTO public.egresso_valido VALUES (371, 'antonio.almeida.negocios@gamial.com', '199104940110', 'ANTONIO JOSE CASTRO DE ALMEIDA JUNIOR');
INSERT INTO public.egresso_valido VALUES (372, 'amsouzapa2@gmail.com', '200204940048', 'ANTONIO MARCOS FERREIRA DE SOUZA');
INSERT INTO public.egresso_valido VALUES (373, NULL, '199904940023', 'ANTONIO SOARES LOBATO');
INSERT INTO public.egresso_valido VALUES (374, 'aeng.garcia@gmail.com', '201204940030', 'ARIANE ELIZABETH NUNES GARCIA');
INSERT INTO public.egresso_valido VALUES (375, NULL, '199604940006', 'AROLDO CRISTIANO GUERREIRO LEAL');
INSERT INTO public.egresso_valido VALUES (376, 'ivson.ma@gmail.com', '201204940014', 'ARTHUR IVSON XAVIER DE MORAES BATISTA');
INSERT INTO public.egresso_valido VALUES (377, 'arthur_masahiro@hotmail.com', '201104940003', 'ARTHUR MASAHIRO YOSHINO');
INSERT INTO public.egresso_valido VALUES (378, 'arthur.yoshikawa@icen.ufpa.br', '201704940039', 'ARTHUR TAKESHI NORONHA YOSHIKAWA');
INSERT INTO public.egresso_valido VALUES (379, 'aruandasimoes@gmail.com', '199404940005', 'ARUANDA SIMOES GONCALVES  MEIGUINS');
INSERT INTO public.egresso_valido VALUES (380, 'augusto.f.cravo@gmail.com', '201404940003', 'AUGUSTO FARIAS CRAVO');
INSERT INTO public.egresso_valido VALUES (381, NULL, '199104940111', 'BARBARA CONCEICAO DE OLIVEIRA BARBOSA');
INSERT INTO public.egresso_valido VALUES (382, NULL, '200304940021', 'BERNARDO LOBATO DOS SANTOS NETO');
INSERT INTO public.egresso_valido VALUES (383, 'haquiticos@gmail.com', '200204940054', 'BILLY ANDERSON PINHEIRO');
INSERT INTO public.egresso_valido VALUES (384, 'blenofvale@gmail.com', '201204940035', 'BLENO WILSON FRANKLIN VALE DA SILVA');
INSERT INTO public.egresso_valido VALUES (385, 'brenofranca@yahoo.com.br', '200204940005', 'BRENO BERNARD NICOLAU DE FRANCA');
INSERT INTO public.egresso_valido VALUES (386, NULL, '200004940043', 'BRENO CRISTOVAO RODRIGUES PINTO');
INSERT INTO public.egresso_valido VALUES (387, 'brunelli.miranda@gmail.com', '201104940015', 'BRUNELLI PINTO MIRANDA');
INSERT INTO public.egresso_valido VALUES (388, 'murakami.bruno@gmail.com', '201204940005', 'BRUNO AKIRA FUKUSHIMA MURAKAMI');
INSERT INTO public.egresso_valido VALUES (389, NULL, '199504940004', 'BRUNO BITAR MORHY');
INSERT INTO public.egresso_valido VALUES (390, NULL, '200104940029', 'BRUNO DA COSTA BARROSO');
INSERT INTO public.egresso_valido VALUES (391, 'bnmonteiro2@gmail.com', '200704940029', 'BRUNO DO NASCIMENTO MONTEIRO');
INSERT INTO public.egresso_valido VALUES (392, 'caiomfrodrigues@gmail.com', '201204940010', 'CAIO MARCOS FLEXA RODRIGUES');
INSERT INTO public.egresso_valido VALUES (393, 'caiocarvalho1996@hotmail.com', '201304940006', 'CAIO PINHEIRO DE CARVALHO');
INSERT INTO public.egresso_valido VALUES (394, 'xcaiosr@gmail.com', '201604940020', 'CAIO SHIMADA RABELLO');
INSERT INTO public.egresso_valido VALUES (395, NULL, '199104940048', 'CALADO PEREIRA FIJAMO');
INSERT INTO public.egresso_valido VALUES (396, NULL, '200004940039', 'CAMILA MARINHO ALMEIDA');
INSERT INTO public.egresso_valido VALUES (397, NULL, '199104940054', 'CARLA ALESSANDRA GOMES DE LIMA');
INSERT INTO public.egresso_valido VALUES (398, 'alrac.cruz@gmail.com', '200804940032', 'CARLA CRISTINA DA CRUZ ARAUJO');
INSERT INTO public.egresso_valido VALUES (399, NULL, '199904940035', 'CARLA MARINA COSTA PAXIUBA');
INSERT INTO public.egresso_valido VALUES (400, NULL, '199104940112', 'CARLOS ALBERTO LEITE MENDES');
INSERT INTO public.egresso_valido VALUES (401, NULL, '199904940060', 'CARLOS ALEXANDRE LOURINHO GOMES');
INSERT INTO public.egresso_valido VALUES (402, NULL, '200004940058', 'CARLOS ANDRE NEVES DO VALE');
INSERT INTO public.egresso_valido VALUES (403, 'carlos.damasceno@icen.ufpa.br', '200804940017', 'CARLOS DIEGO NASCIMENTO DAMASCENO');
INSERT INTO public.egresso_valido VALUES (404, NULL, '200104940017', 'CARLOS EDUARDO COSTEIRA CALDAS');
INSERT INTO public.egresso_valido VALUES (405, 'kadu-marinho@hotmail.com', '200804940014', 'CARLOS EDUARDO MARINHO GOMES');
INSERT INTO public.egresso_valido VALUES (406, NULL, '199304940007', 'CARLOS EDUARDO RIBEIRO BASTOS');
INSERT INTO public.egresso_valido VALUES (407, 'gustavoresqueufpa@gmail.com', '201004940024', 'CARLOS GUSTAVO RESQUE DOS SANTOS');
INSERT INTO public.egresso_valido VALUES (408, 'carlos.h.cardoso140@gmail.com', '201604940014', 'CARLOS HENRIQUE RIBEIRO CARDOSO');
INSERT INTO public.egresso_valido VALUES (409, NULL, '199604940034', 'CARLOS MARCIO JORGE SARAIVA');
INSERT INTO public.egresso_valido VALUES (410, NULL, '199104940004', 'CARLOS RENATO LISBOA FRANCES');
INSERT INTO public.egresso_valido VALUES (411, NULL, '200004940026', 'CASSIO ALEXANDRE TEIXEIRA MENEZES');
INSERT INTO public.egresso_valido VALUES (412, NULL, '199804940001', 'CIDIANE ARACATY LOBATO');
INSERT INTO public.egresso_valido VALUES (413, NULL, '200104940023', 'CINTIA KELLI CABRAL RODRIGUES');
INSERT INTO public.egresso_valido VALUES (414, NULL, '199104940005', 'CIRNEY RICARDO J B CARNEIRO');
INSERT INTO public.egresso_valido VALUES (415, 'claricemoraesf@gmail.com', '200904940035', 'CLARICE MORAES FERREIRA');
INSERT INTO public.egresso_valido VALUES (416, NULL, '199104940114', 'CLARK DA CUNHA SA');
INSERT INTO public.egresso_valido VALUES (417, NULL, '199904940031', 'CLAUDIA MYLENE DA SILVA PINHEIRO');
INSERT INTO public.egresso_valido VALUES (418, NULL, '199904940057', 'CLAUDIO ANTONIO DA SILVA CAVALCANTI');
INSERT INTO public.egresso_valido VALUES (419, 'diegodisouzza@gmail.com', '201004940007', 'CLAUDIO DIEGO TEIXEIRA DE SOUZA');
INSERT INTO public.egresso_valido VALUES (420, NULL, '199704940025', 'CLAUDIO KENJI KAWAMURA DA SILVA');
INSERT INTO public.egresso_valido VALUES (421, NULL, '199604940018', 'CLEBER ROBERTO PAES DA ROCHA');
INSERT INTO public.egresso_valido VALUES (422, 'cmguerreiro2@gmail.com', '200204940032', 'CLEBERSON MALCHER GUERREIRO');
INSERT INTO public.egresso_valido VALUES (423, NULL, '199104940008', 'CLEIDSON RONALD BOTELHO DE SOUZA');
INSERT INTO public.egresso_valido VALUES (424, 'cleidyr.system@gmail.com', '201004940049', 'CLEIDYR DA SILVA LIMA');
INSERT INTO public.egresso_valido VALUES (425, NULL, '200304940018', 'CLODOALDO ESTUMANO DA SILVA');
INSERT INTO public.egresso_valido VALUES (426, NULL, '199104940105', 'CLOVIS DA PAZ TAVARES JUNIOR');
INSERT INTO public.egresso_valido VALUES (427, NULL, '200104940019', 'CRISTIANE DO SOCORRO PIRES ALMEIDA');
INSERT INTO public.egresso_valido VALUES (428, NULL, '200104940024', 'CRISTIANE MARQUES DA SILVA');
INSERT INTO public.egresso_valido VALUES (429, NULL, '200304940007', 'CRYS SAYURI GOTO');
INSERT INTO public.egresso_valido VALUES (430, NULL, '199104940009', 'CYNTHIA MARA FONSECA DE OLIVEIRA');
INSERT INTO public.egresso_valido VALUES (431, 'donk14@gmail.com', '200904940022', 'DANIELA KARINE MARAVALHO AVELAR');
INSERT INTO public.egresso_valido VALUES (432, NULL, '199104940093', 'DANIELA NAZARE MAIA DA CONCEICAO');
INSERT INTO public.egresso_valido VALUES (433, 'djtavaresieq@gmail.com', '200704940023', 'DANIEL DE JESUS TAVARES');
INSERT INTO public.egresso_valido VALUES (434, 'danieldiascv@gmail.com', '200304940035', 'DANIEL DIAS DE CARVALHO');
INSERT INTO public.egresso_valido VALUES (435, 'daniqueiroz.bt@gmail.com', '200504940034', 'DANIELE MOURA DE QUEIROZ');
INSERT INTO public.egresso_valido VALUES (436, NULL, '200104940001', 'DANIEL HENRIQUES MOREIRA');
INSERT INTO public.egresso_valido VALUES (437, 'danicostas@yahoo.com.br', '200304940029', 'DANIELLE DA SILVA COSTA NUNES');
INSERT INTO public.egresso_valido VALUES (438, NULL, '200204940053', 'DANIELLE DE MICHELI PALHANO PINTO');
INSERT INTO public.egresso_valido VALUES (439, NULL, '200004940025', 'DANIELLE FURTADO DOS SANTOS');
INSERT INTO public.egresso_valido VALUES (440, NULL, '199904940010', 'DANIEL LIMA BRASIL');
INSERT INTO public.egresso_valido VALUES (441, 'daniellcavalcanti@bol.com.br', '201204940018', 'DANIELL SOARES CAVALCANTI VIEIRA');
INSERT INTO public.egresso_valido VALUES (442, 'dosdasilva@hotmail.com', '199204940004', 'DANIEL ORLANDO SERPA DA SILVA');
INSERT INTO public.egresso_valido VALUES (443, NULL, '199504940005', 'DANIEL SANTOS RODRIGUES');
INSERT INTO public.egresso_valido VALUES (444, 'cabraldanilo@yahoo.com.br', '200104940046', 'DANILO DO CARMO QUADROS CABRAL');
INSERT INTO public.egresso_valido VALUES (445, 'danjsteixeira@gmail.com', '201204940020', 'DAN JHONATAN DA SILVA TEIXEIRA');
INSERT INTO public.egresso_valido VALUES (446, NULL, '199104940056', 'DARLENE DOS REIS SOARES GONCALVES');
INSERT INTO public.egresso_valido VALUES (447, NULL, '199504940006', 'DAUCIKELEM BRAGA DOS SANTOS');
INSERT INTO public.egresso_valido VALUES (448, NULL, '200404940017', 'DAVID LEONARDO MIRANDA BENTOLILA');
INSERT INTO public.egresso_valido VALUES (449, NULL, '200004940057', 'DAVID SAMUEL BELICHA ISRAEL');
INSERT INTO public.egresso_valido VALUES (450, NULL, '199604940031', 'DAVI MITSUO DA SILVA SHIBAYAMA');
INSERT INTO public.egresso_valido VALUES (451, 'davisonph@ufpa.br', '200704940024', 'DAVISON HOLANDA PACHECO');
INSERT INTO public.egresso_valido VALUES (452, NULL, '200204940061', 'DEDIER GOMES MERCES LIMA');
INSERT INTO public.egresso_valido VALUES (453, 'detilufpa@yahoo.com.br', '200304940034', 'DEIVID TINOCO LEMOS');
INSERT INTO public.egresso_valido VALUES (454, NULL, '199204940006', 'DELCIO NONATO ARAUJO DA SILVA');
INSERT INTO public.egresso_valido VALUES (455, NULL, '199904940042', 'DELIANE DE JESUS ALVES DE ANDRADE');
INSERT INTO public.egresso_valido VALUES (456, NULL, '199804940019', 'DENIS TAVARES SILVA');
INSERT INTO public.egresso_valido VALUES (457, 'derickedu@gmail.com', '201004940001', 'DERICK EDUARDO DIAS ROSA');
INSERT INTO public.egresso_valido VALUES (458, NULL, '200004940032', 'DEUZINEI PINHEIRO MIRANDA');
INSERT INTO public.egresso_valido VALUES (459, NULL, '200104940021', 'DIEGO JOSE CUNHA QUEIROZ');
INSERT INTO public.egresso_valido VALUES (460, 'diegooabreu@gmail.com', '201204940013', 'DIEGO OLIVEIRA ABREU');
INSERT INTO public.egresso_valido VALUES (461, NULL, '199104940010', 'DILMA FARIAS VIANA');
INSERT INTO public.egresso_valido VALUES (462, NULL, '199504940007', 'DOGEVAL AUGUSTO SACHETT');
INSERT INTO public.egresso_valido VALUES (463, 'ddamalio@yahoo.com.br', '200304940032', 'DOUGLAS BRITO DAMALIO');
INSERT INTO public.egresso_valido VALUES (464, NULL, '200204940069', 'DOUGLAS CARDOSO PINHEIRO');
INSERT INTO public.egresso_valido VALUES (465, NULL, '199604940014', 'DURVAL CASTRO DE BASTOS JUNIOR');
INSERT INTO public.egresso_valido VALUES (466, 'ponto_flutuante@yahoo.com.br', '200304940012', 'EDER CRUZ BARBOSA');
INSERT INTO public.egresso_valido VALUES (467, NULL, '200504940038', 'EDER TAVEIRA DOS SANTOS');
INSERT INTO public.egresso_valido VALUES (468, NULL, '200204940043', 'EDGAR ALMEIDA MANESCHY');
INSERT INTO public.egresso_valido VALUES (469, NULL, '199604940025', 'EDGARD ASSUNCAO ARAUJO');
INSERT INTO public.egresso_valido VALUES (470, NULL, '199204940007', 'EDILA MARTA MIRANDA LOBO');
INSERT INTO public.egresso_valido VALUES (471, NULL, '199104940095', 'EDMAR LUIZ DA COSTA BENTES');
INSERT INTO public.egresso_valido VALUES (472, 'ale-remo@hotmail.com', '201404940001', 'EDSON ALESSANDRO FAGUNDES COSTA');
INSERT INTO public.egresso_valido VALUES (473, 'ecdias@ufpa.br', '200304940015', 'EDSON COSTA DIAS');
INSERT INTO public.egresso_valido VALUES (474, NULL, '199404940006', 'EDSON EUSTACHIO OLIVEIRA DE AZEVEDO');
INSERT INTO public.egresso_valido VALUES (475, NULL, '199304940009', 'EDSON PRESTES E SILVA JUNIOR');
INSERT INTO public.egresso_valido VALUES (476, NULL, '199204940008', 'EDSON SILVA DOS SANTOS');
INSERT INTO public.egresso_valido VALUES (477, 'duducostacarvalho@gmail.com', '200704940030', 'EDUARDO COSTA DE CARVALHO');
INSERT INTO public.egresso_valido VALUES (478, NULL, '199704940014', 'EDUARDO DE CARVALHO LEITE');
INSERT INTO public.egresso_valido VALUES (479, NULL, '199804940003', 'EDUARDO LEAL GUERRA');
INSERT INTO public.egresso_valido VALUES (480, NULL, '199204940009', 'EDVIRGES MARIA DA SILVA NASCIMENTO');
INSERT INTO public.egresso_valido VALUES (481, 'ekcy00@gmail.com', '201104940006', 'EHILTON KAZUO CHIBA YOSHIDOME');
INSERT INTO public.egresso_valido VALUES (482, NULL, '199204940010', 'ELAINE DO SOCORRO FURRIEL AMANAJAS');
INSERT INTO public.egresso_valido VALUES (483, 'elderferreirass@gmail.com', '201004940006', 'ELDER DE JESUS FERREIRA DA SILVA');
INSERT INTO public.egresso_valido VALUES (484, NULL, '200004940055', 'ELENILTON ALEX SANTOS DA COSTA');
INSERT INTO public.egresso_valido VALUES (485, 'eliassm.ufpa@gmail.com', '201304940023', 'ELIAS SENA MORAES');
INSERT INTO public.egresso_valido VALUES (486, NULL, '199104940057', 'ELINETE NUNES FREITAS');
INSERT INTO public.egresso_valido VALUES (487, 'eaguiar@ufpa.br', '199504940009', 'ELISANGELA SANTANA AGUIAR');
INSERT INTO public.egresso_valido VALUES (488, NULL, '200304940033', 'ELIZEL PINHEIRO LEAL');
INSERT INTO public.egresso_valido VALUES (489, 'elltonsalesbarros@gmail.com', '201004940026', 'ELLTON SALES BARROS');
INSERT INTO public.egresso_valido VALUES (490, 'elton.private@gmail.com', '200704940032', 'ELTON JHON DIAS GONCALVES');
INSERT INTO public.egresso_valido VALUES (491, 'eltonpeniche14@gmail.com', '201504940035', 'ELTON PENICHE QUARESMA');
INSERT INTO public.egresso_valido VALUES (492, 'emanuel.estumano@gmail.com', '200104940042', 'EMANUEL ESTUMANO SANTOS');
INSERT INTO public.egresso_valido VALUES (493, NULL, '200304940017', 'EMANUEL NUNES REIS');
INSERT INTO public.egresso_valido VALUES (494, NULL, '199104940058', 'EMERSON JOSE SILVEIRA DA COSTA');
INSERT INTO public.egresso_valido VALUES (495, NULL, '199204940011', 'EMILIO JUN NAGAHAMA');
INSERT INTO public.egresso_valido VALUES (496, 'eric.cbcc@gmail.com', '201104940012', 'ERIC FELIPE DE OLIVEIRA PEREIRA');
INSERT INTO public.egresso_valido VALUES (497, 'erlon.fpinheiro@gmail.com', '201604940045', 'ERLON FONSECA PINHEIRO');
INSERT INTO public.egresso_valido VALUES (498, 'ernani@ufpa.br', '200204940006', 'ERNANI DE OLIVEIRA SALES');
INSERT INTO public.egresso_valido VALUES (499, 'esther.cardoso.silva@gmail.com', '201404940009', 'ESTHER CARDOSO DA SILVA');
INSERT INTO public.egresso_valido VALUES (500, NULL, '199104940115', 'EURICO OLIVEIRA DA ROCHA');
INSERT INTO public.egresso_valido VALUES (501, NULL, '200404940008', 'EVANDRO KOUJI DA SILVA TORII');
INSERT INTO public.egresso_valido VALUES (502, NULL, '199904940050', 'EVERTON MEIRELES COSTA');
INSERT INTO public.egresso_valido VALUES (503, 'ewelton.yoshio@gmail.com', '200504940019', 'EWELTON YOSHIO CHIBA YOSHIDOME');
INSERT INTO public.egresso_valido VALUES (504, NULL, '200504940004', 'EWERTON ALMEIDA SILVA');
INSERT INTO public.egresso_valido VALUES (505, NULL, '199304940010', 'EWERTON DA COSTA VAZ');
INSERT INTO public.egresso_valido VALUES (506, NULL, '199404940009', 'EWERTON DAVID MARTINS LEITE');
INSERT INTO public.egresso_valido VALUES (507, NULL, '199304940011', 'EZEQUIAS CARLOS FERREIRA DA SILVA');
INSERT INTO public.egresso_valido VALUES (508, 'fabil.goes@gmail.com', '200904940024', 'FABIANA RODRIGUES DE GÓES');
INSERT INTO public.egresso_valido VALUES (509, 'fa.vasconc@gmail.com', '201504940030', 'FABIO ALEX MENDES CAMPOS VASCONCELOS');
INSERT INTO public.egresso_valido VALUES (510, NULL, '199304940012', 'FABIO AUGUSTO DAS DORES SILVA');
INSERT INTO public.egresso_valido VALUES (511, NULL, '200004940001', 'FABIO AUGUSTO GUIMARAES TEIXEIRA');
INSERT INTO public.egresso_valido VALUES (512, 'fbragas@ufpa.br', '200304940026', 'FABIO BRAGA DOS SANTOS');
INSERT INTO public.egresso_valido VALUES (513, NULL, '199104940012', 'FABIO CARVALHO DA COSTA');
INSERT INTO public.egresso_valido VALUES (514, NULL, '199604940009', 'FABIO DE LIMA BEZERRA');
INSERT INTO public.egresso_valido VALUES (515, NULL, '199704940005', 'FABIO DE OLIVEIRA FERREIRA');
INSERT INTO public.egresso_valido VALUES (516, 'fabiosouza21777@gmail.com', '201704940029', 'FABIO DE SOUZA MIRANDA');
INSERT INTO public.egresso_valido VALUES (517, NULL, '199304940013', 'FABIOLA PANTOJA OLIVEIRA');
INSERT INTO public.egresso_valido VALUES (518, 'miranda.fmm@gmail.com', '201104940008', 'FABIO MALCHER MIRANDA');
INSERT INTO public.egresso_valido VALUES (519, NULL, '199904940030', 'FABIO MENDES MONTEIRO');
INSERT INTO public.egresso_valido VALUES (520, 'fabiosizo@yahoo.com.br', '200304940027', 'FABIO REIS SIZO NASCIMENTO');
INSERT INTO public.egresso_valido VALUES (521, 'nagahama@yahoo.com', '199704940012', 'FABIO YU NAGAHAMA');
INSERT INTO public.egresso_valido VALUES (522, NULL, '199504940011', 'FABRICIO JOSE UCHOA CORREA');
INSERT INTO public.egresso_valido VALUES (523, NULL, '199804940011', 'FABRICIO SILVA DE MAGALHAES');
INSERT INTO public.egresso_valido VALUES (524, 'fagnerleal@ufpa.br', '200904940002', 'FAGNER LEAL PANTOJA');
INSERT INTO public.egresso_valido VALUES (525, 'sem.ideias.na.hora@gmail.com', '201704940017', 'FELIPE DE MELO RODRIGUES E OLIVEIRA');
INSERT INTO public.egresso_valido VALUES (526, 'felipe.quevici@gmail.com', '201304940003', 'FELIPE ELIASQUEVICI');
INSERT INTO public.egresso_valido VALUES (527, 'shinakuma3000@hotmail.com', '201604940033', 'FELIPE GUSMAO ARAUJO');
INSERT INTO public.egresso_valido VALUES (528, 'felipe.leite3@gmail.com', '200804940010', 'FELIPE LEITE DA SILVA');
INSERT INTO public.egresso_valido VALUES (529, NULL, '199104940059', 'FERNANDO CESAR SILVA DE MENEZES');
INSERT INTO public.egresso_valido VALUES (530, NULL, '199604940012', 'FERNANDO MENEZES MATOS');
INSERT INTO public.egresso_valido VALUES (531, 'fernando.vilanova@gmail.com', '200104940058', 'FERNANDO SILVA VILA NOVA');
INSERT INTO public.egresso_valido VALUES (532, 'filipecoelho@ufpa.br', '201304940029', 'FILIPE DAMASCENO COELHO');
INSERT INTO public.egresso_valido VALUES (533, NULL, '200204940051', 'FLAVIA COELHO PINHEIRO');
INSERT INTO public.egresso_valido VALUES (534, 'flavio.dias@yahoo.com.br', '200504940003', 'FLAVIO DIAS DE ASSUNCAO');
INSERT INTO public.egresso_valido VALUES (535, NULL, '199204940012', 'FLAVIO JOSE FERRO BARROS');
INSERT INTO public.egresso_valido VALUES (536, 'francisco_nascimento@outlook.com.br', '201304940028', 'FRANCISCO CARRERA NASCIMENTO JUNIOR');
INSERT INTO public.egresso_valido VALUES (537, NULL, '199904940033', 'FRANCISCO CESAR DE JESUS SILVA');
INSERT INTO public.egresso_valido VALUES (538, NULL, '199504940012', 'FRANCISCO COSTA COELHO JUNIOR');
INSERT INTO public.egresso_valido VALUES (539, 'junior.demarimm@gmail.com', '201004940027', 'FRANCISCO DEMARIM DE AGUIAR JUNIOR');
INSERT INTO public.egresso_valido VALUES (540, 'wertherjr@gmail.com', '200704940025', 'FRANCISCO WERTHER SILVA DE SANTANA JUNIOR');
INSERT INTO public.egresso_valido VALUES (541, NULL, '199804940028', 'FRANCIS JAMES VIANA RIBEIRO');
INSERT INTO public.egresso_valido VALUES (542, NULL, '200104940008', 'FRANK DA SILVA MALCHER');
INSERT INTO public.egresso_valido VALUES (543, NULL, '200204940027', 'FRANKLIM HARRISON MOREIRA DOS SANTOS');
INSERT INTO public.egresso_valido VALUES (544, NULL, '199904940020', 'FREDERICO NOBRE REIS');
INSERT INTO public.egresso_valido VALUES (545, 'andrade.f.gabriela@gmail.com', '200304940011', 'GABRIELA FONSECA ANDRADE');
INSERT INTO public.egresso_valido VALUES (546, NULL, '199104940060', 'GABRIELA NUNES CAMPOS');
INSERT INTO public.egresso_valido VALUES (547, 'gab.abreu23@gmail.com', '201404940017', 'GABRIEL BELTRAO DE ABREU');
INSERT INTO public.egresso_valido VALUES (548, 'gabrielescudeiro1@gmail.com', '201304940019', 'GABRIEL DE MAGALHAES ESCUDEIRO');
INSERT INTO public.egresso_valido VALUES (549, NULL, '200404940014', 'GABRIEL DE SOUSA ARAUJO');
INSERT INTO public.egresso_valido VALUES (550, 'gabriel.crispino@hotmail.com', '201304940010', 'GABRIEL NUNES CRISPINO');
INSERT INTO public.egresso_valido VALUES (551, NULL, '199104940015', 'GARDENIA VIEIRA DE ALBUQUERQUE');
INSERT INTO public.egresso_valido VALUES (552, 'george.melo7@gmail.com', '201304940008', 'GEORGE TASSIANO MELO PEREIRA');
INSERT INTO public.egresso_valido VALUES (553, 'gesspinhero@gmail.com', '201204940022', 'GESSICA PINHEIRO DE MORAES BATISTA');
INSERT INTO public.egresso_valido VALUES (554, NULL, '199104940016', 'GHISLENE BRITO DE FREITAS');
INSERT INTO public.egresso_valido VALUES (555, NULL, '199204940041', 'GILBERT ASDRUBAL HERNANDEZ LOURENCO');
INSERT INTO public.egresso_valido VALUES (556, NULL, '199704940015', 'GILMARA SANTOS DA SILVA');
INSERT INTO public.egresso_valido VALUES (557, NULL, '199704940022', 'GILSON TAVARES QUEIROZ');
INSERT INTO public.egresso_valido VALUES (558, 'gior.grs@gmail.com', '201304940009', 'GIORDANNA DE GREGORIIS');
INSERT INTO public.egresso_valido VALUES (559, NULL, '199104940062', 'GIOVANI FONTENELLE COSTA');
INSERT INTO public.egresso_valido VALUES (560, NULL, '200004940038', 'GISSELEN RENEE DE OLIVEIRA SOUZA');
INSERT INTO public.egresso_valido VALUES (561, NULL, '200004940005', 'GLAUCO ESTACIO GONCALVES');
INSERT INTO public.egresso_valido VALUES (562, NULL, '200304940030', 'GLEFSON FRANCO CARNEIRO');
INSERT INTO public.egresso_valido VALUES (563, 'glenonmateus@gmail.com', '200704940017', 'GLENON MATEUS BARBOSA ARAUJO');
INSERT INTO public.egresso_valido VALUES (564, 'gleysongama@gmail.com.br', '200604940035', 'GLEYSON DO NASCIMENTO GAMA');
INSERT INTO public.egresso_valido VALUES (565, NULL, '199304940015', 'GUILHERME AUGUSTO BARROS CONDE');
INSERT INTO public.egresso_valido VALUES (566, 'guilhermef.bcc@gmail.com', '201004940036', 'GUILHERME FARIAS LIMA');
INSERT INTO public.egresso_valido VALUES (567, 'guitrompa1@gmail.com', '201604940009', 'GUILHERME SMETHURST ALBUQUERQUE');
INSERT INTO public.egresso_valido VALUES (568, NULL, '199404940010', 'GUSTAVO HENRIQUE SAMPAIO COUTO');
INSERT INTO public.egresso_valido VALUES (569, 'hamiltoncavalcante@gmail.com', '200704940015', 'HAMILTON DA SILVA CAVALCANTE');
INSERT INTO public.egresso_valido VALUES (570, NULL, '200104940027', 'HAMILTON JOSE MORAES DE ALBUQUERQUE');
INSERT INTO public.egresso_valido VALUES (571, NULL, '199604940024', 'HAMILTON LUIZ RODRIGUES DE OLIVEIRA');
INSERT INTO public.egresso_valido VALUES (572, 'heitorom9@gmail.com', '201004940013', 'HEITOR DE OLIVEIRA MACEDO');
INSERT INTO public.egresso_valido VALUES (573, NULL, '200104940004', 'HELDER KLEMP CORREA DA SILVA');
INSERT INTO public.egresso_valido VALUES (574, NULL, '199104940096', 'HELDER LUIZ BEZERRA DE OLIVEIRA GARCIA');
INSERT INTO public.egresso_valido VALUES (575, NULL, '199304940016', 'HELIO CARVALHO OLIVEIRA');
INSERT INTO public.egresso_valido VALUES (576, NULL, '199904940048', 'HELIO MARCOS PAZ DE ALMEIDA');
INSERT INTO public.egresso_valido VALUES (577, NULL, '199204940014', 'HENLY KOUICHI TSUCHIYA');
INSERT INTO public.egresso_valido VALUES (578, 'heresson@gmail.com', '200504940006', 'HERESSON JOÃO PAMPOLHA DE SIQUEIRA MENDES');
INSERT INTO public.egresso_valido VALUES (579, NULL, '199604940011', 'HERIVELTON BARBOSA LIMA');
INSERT INTO public.egresso_valido VALUES (580, 'hugo141592@gmail.com', '201104940023', 'HUGO BRITO LIMA');
INSERT INTO public.egresso_valido VALUES (581, NULL, '200104940052', 'HUGO CEZAR DO NASCIMENTO GOES');
INSERT INTO public.egresso_valido VALUES (582, 'hugo@unifesspa.edu.br', '200204940022', 'HUGO PEREIRA KURIBAYASHI');
INSERT INTO public.egresso_valido VALUES (583, 'hogotoda@gmail.com', '200104940012', 'HUGO SAWADA TODA');
INSERT INTO public.egresso_valido VALUES (584, 'hyagogow@gmail.com', '201004940015', 'HYAGO PINHEIRO COSTA OLIVEIRA');
INSERT INTO public.egresso_valido VALUES (585, 'iancamposcc@gmail.com', '201604940043', 'IAN CAMPOS BEZERRA REGO');
INSERT INTO public.egresso_valido VALUES (586, NULL, '200104940013', 'IGOR DE SOUZA ALMEIDA');
INSERT INTO public.egresso_valido VALUES (587, 'igfuca@gmail.com', '200604940011', 'IGOR FURTADO CARVALHO');
INSERT INTO public.egresso_valido VALUES (588, 'imatheus.sm@gmail.com', '201704940007', 'IGOR MATHEUS SOUZA MOREIRA');
INSERT INTO public.egresso_valido VALUES (589, 'ivoquimico@gmail.com', '200404940024', 'IGOR SAMUEL MOREIRA DE MELO');
INSERT INTO public.egresso_valido VALUES (590, 'ingrid.frcomp@gmail.com', '201504940028', 'INGRID FURTADO RAIOL');
INSERT INTO public.egresso_valido VALUES (591, 'iraquitanfilho@gmail.com', '200804940006', 'IRAQUITAN CORDEIRO FILHO');
INSERT INTO public.egresso_valido VALUES (592, NULL, '199104940116', 'IROMAR GOMES DA SILVA');
INSERT INTO public.egresso_valido VALUES (593, 'maues.isa@gmail.com', '201704940005', 'ISABELA LOPES MAUES BATISTA');
INSERT INTO public.egresso_valido VALUES (594, 'hisara3@gmail.com', '201504940001', 'ISRAEL SEWANOU HOUNSOU');
INSERT INTO public.egresso_valido VALUES (595, 'italo.campos@icen.ufpa.br', '201504940012', 'ITALO RAMON DA COSTA CAMPOS');
INSERT INTO public.egresso_valido VALUES (596, NULL, '199804940017', 'IVANDILSON DE SOUZA DUARTE');
INSERT INTO public.egresso_valido VALUES (597, NULL, '199104940017', 'IVAN DOS SANTOS MELLO');
INSERT INTO public.egresso_valido VALUES (598, NULL, '199304940017', 'JAIME DE MELO SABAT NETO');
INSERT INTO public.egresso_valido VALUES (599, NULL, '199104940019', 'JAIME NAZARENO DA SILVA SOARES JUNIOR');
INSERT INTO public.egresso_valido VALUES (600, NULL, '199504940013', 'JAIR DA SILVA FERREIRA JUNIOR');
INSERT INTO public.egresso_valido VALUES (601, 'jairofilho79@gmail.com', '201604940016', 'JAIRO NASCIMENTO DE SOUSA FILHO');
INSERT INTO public.egresso_valido VALUES (602, NULL, '199404940013', 'JANAINA DE FATIMA ROLLA FERREIRA');
INSERT INTO public.egresso_valido VALUES (603, NULL, '199104940117', 'JANAINA DJENANE SOUZA CATETE');
INSERT INTO public.egresso_valido VALUES (604, NULL, '199204940016', 'JANNE YUKIKO YOSHIKAWA OEIRAS');
INSERT INTO public.egresso_valido VALUES (605, 'janynnepalheta@gmail.com', '201104940030', 'JANYNNE STEPHANIE DE OLIVEIRA PALHETA');
INSERT INTO public.egresso_valido VALUES (606, 'jaymejunior@yahoo.com.br', '201504940005', 'JAYME DA COSTA CABRAL JUNIOR');
INSERT INTO public.egresso_valido VALUES (607, 'jeancnasc@hotmail.com', '201004940008', 'JEAN CARNEIRO DO NASCIMENTO');
INSERT INTO public.egresso_valido VALUES (608, NULL, '200404940002', 'JEAN MARCEL DOS REIS COSTA');
INSERT INTO public.egresso_valido VALUES (609, 'jeanneop22@gmail.com', '201304940002', 'JEANNE DE OLIVEIRA PEREIRA');
INSERT INTO public.egresso_valido VALUES (610, NULL, '200004940031', 'JEFERSON MARCELO DE OLIVEIRA CAMARA');
INSERT INTO public.egresso_valido VALUES (611, 'jefjr2504@gmail.com', '201004940014', 'JEFFERSON FERREIRA DE FIGUEIREDO JUNIOR');
INSERT INTO public.egresso_valido VALUES (612, NULL, '199704940023', 'JEFFERSON MIGUEL GONCALVES FERREIRA');
INSERT INTO public.egresso_valido VALUES (613, 'jeffson.celeiro@gmail.com', '201504940027', 'JEFFSON CELEIRO SOUSA');
INSERT INTO public.egresso_valido VALUES (614, NULL, '200004940002', 'JESSE DE SOUZA SOARES');
INSERT INTO public.egresso_valido VALUES (615, 'jnane@ufpa.br', '200004940022', 'JNANE DE SOUSA NEIVA');
INSERT INTO public.egresso_valido VALUES (616, NULL, '199104940063', 'JOAO CALDAS JUNIOR');
INSERT INTO public.egresso_valido VALUES (617, 'lubien1996@gmail.com', '201504940020', 'JOAO DE DEUS FERREIRA FILHO');
INSERT INTO public.egresso_valido VALUES (618, 'jjcf_cc_ufpa@hotmail.com', '201004940018', 'JOAO JOSE CORSI FILHO');
INSERT INTO public.egresso_valido VALUES (619, 'salvatti@ufpa.br', '200104940050', 'JOÃO JÚLIO SALVATTI NETO');
INSERT INTO public.egresso_valido VALUES (620, 'jmfda00@gmail.com', '201704940004', 'JOAO MARCELO FREITAS DE ALMEIDA');
INSERT INTO public.egresso_valido VALUES (621, NULL, '200004940047', 'JOAO MAURICIO SILVA DE CARVALHO');
INSERT INTO public.egresso_valido VALUES (622, NULL, '199904940043', 'JOAO PAULO SOUZA ALVES DE SOUZA');
INSERT INTO public.egresso_valido VALUES (623, 'joaopedromoraes@outlook.com', '201504940006', 'JOAO PEDRO MOREIRA MORAES');
INSERT INTO public.egresso_valido VALUES (624, NULL, '199104940064', 'JOAO ROBERTO PINHEIRO DA CRUZ');
INSERT INTO public.egresso_valido VALUES (625, 'jvcanavarro@gmail.com', '201704940015', 'JOAO VICTOR DA SILVA DIAS CANAVARRO');
INSERT INTO public.egresso_valido VALUES (626, 'jmcpa1982@gmail.com', '199904940019', 'JOAQUIM MAGNO CUNHA');
INSERT INTO public.egresso_valido VALUES (627, NULL, '199504940014', 'JOEL COSTA DE OLIVEIRA');
INSERT INTO public.egresso_valido VALUES (628, NULL, '199404940014', 'JOERCIO DE SENA RODRIGUES');
INSERT INTO public.egresso_valido VALUES (629, NULL, '199304940018', 'JOGINETE PEREIRA ACRIAO');
INSERT INTO public.egresso_valido VALUES (630, NULL, '200004940017', 'JONATHAN TRINDADE DO NASCIMENTO');
INSERT INTO public.egresso_valido VALUES (631, NULL, '199604940030', 'JONATHAS REIS DA SILVA');
INSERT INTO public.egresso_valido VALUES (632, NULL, '200104940045', 'JONE KAZUKI YAMAGUCHI');
INSERT INTO public.egresso_valido VALUES (633, NULL, '199104940065', 'JORGE LUIS MORAES VALENTE');
INSERT INTO public.egresso_valido VALUES (634, 'jorgedelima911@gmail.com', '200904940023', 'JORGE LUIZ VASCONCELOS DE LIMA');
INSERT INTO public.egresso_valido VALUES (635, 'ailtonvaladares@yahoo.com.br', '200404940023', 'JOSÉ AILTON SOARES VALADARES JÚNIOR');
INSERT INTO public.egresso_valido VALUES (636, 'zeavila@gmail.com', '200504940028', 'JOSE ALBERTO DE ANDRADE AVILA');
INSERT INTO public.egresso_valido VALUES (637, NULL, '199604940010', 'JOSE ALEX AIRES DOS SANTOS');
INSERT INTO public.egresso_valido VALUES (638, NULL, '200204940037', 'JOSEANE DE CASSIA DA SILVA VIANA');
INSERT INTO public.egresso_valido VALUES (639, 'josesarmanho@ufpa.br', '199304940019', 'JOSE ANTONIO SARMANHO DOS SANTOS FREIRE');
INSERT INTO public.egresso_valido VALUES (640, 'correasjunior@gmail.com', '200904940028', 'JOSE CORREA DA SILVA JUNIOR');
INSERT INTO public.egresso_valido VALUES (641, NULL, '200104940041', 'JOSE ENDERSON FERREIRA RODRIGUES');
INSERT INTO public.egresso_valido VALUES (642, 'contato@joseflavio.com', '200404940035', 'JOSÉ FLÁVIO DE SOUZA DIAS JÚNIOR');
INSERT INTO public.egresso_valido VALUES (643, NULL, '200604940037', 'JOSE MARIA DE OLIVEIRA JUNIOR');
INSERT INTO public.egresso_valido VALUES (644, NULL, '199604940037', 'JOSE RAIMUNDO FREITAS DE MENESES');
INSERT INTO public.egresso_valido VALUES (645, NULL, '199204940018', 'JOSE RICARDO SIQUEIRA DE MIRANDA');
INSERT INTO public.egresso_valido VALUES (646, NULL, '199104940069', 'JOSUE PEREIRA DE CASTRO');
INSERT INTO public.egresso_valido VALUES (647, NULL, '199204940017', 'JO UEYAMA');
INSERT INTO public.egresso_valido VALUES (648, 'joyce.csb@gmail.com', '200604940023', 'JOYCE CRISTINA SOUZA BASTOS');
INSERT INTO public.egresso_valido VALUES (649, NULL, '199204940019', 'JOZENILDO SOARES DE SOUZA');
INSERT INTO public.egresso_valido VALUES (650, NULL, '199804940004', 'JULIANO KAZUKI MATSUZAKI OYA');
INSERT INTO public.egresso_valido VALUES (651, NULL, '199304940021', 'JULIO VALENTE DA COSTA JUNIOR');
INSERT INTO public.egresso_valido VALUES (652, NULL, '200004940014', 'JUSSARA ALEIXO SILVA SOUSA');
INSERT INTO public.egresso_valido VALUES (653, 'kaeuchoa@hotmail.com', '201304940012', 'KAE UCHOA SARMANHO');
INSERT INTO public.egresso_valido VALUES (654, NULL, '199804940021', 'KARLA NAZARE FERREIRA DAMASCENO');
INSERT INTO public.egresso_valido VALUES (655, 'karla.santoli@gmail.com', '200104940055', 'KARLA SANTOS DE OLIVEIRA');
INSERT INTO public.egresso_valido VALUES (656, 'braga.paoola@gmail.com', '201004940029', 'KARLYANNE PAOOLA SILVA BRAGA');
INSERT INTO public.egresso_valido VALUES (657, NULL, '199204940020', 'KAZUSHIGE BATISTA MATSUMOTO');
INSERT INTO public.egresso_valido VALUES (658, NULL, '199704940003', 'KEISE BARBOSA PEIXOTO');
INSERT INTO public.egresso_valido VALUES (659, 'kellydosocorro@gmail.com', '201604940040', 'KELLY DO SOCORRO SILVA DA COSTA');
INSERT INTO public.egresso_valido VALUES (660, NULL, '200104940032', 'KELLY ROBERTA TORRES GUIMARAES');
INSERT INTO public.egresso_valido VALUES (661, NULL, '199104940021', 'KELVIN LOPES DIAS');
INSERT INTO public.egresso_valido VALUES (662, NULL, '199304940022', 'KIWAKO BATISTA MATSUMOTO');
INSERT INTO public.egresso_valido VALUES (663, NULL, '199704940024', 'KIZZY BEZERRA THE');
INSERT INTO public.egresso_valido VALUES (664, 'kleber.mendonca@hotmail.com', '200904940036', 'KLEBER MENDONCA DE MELO');
INSERT INTO public.egresso_valido VALUES (665, NULL, '199504940034', 'KLEBER PALHETA SILVA');
INSERT INTO public.egresso_valido VALUES (666, NULL, '199804940023', 'KLEDER MIRANDA GONCALVES');
INSERT INTO public.egresso_valido VALUES (667, NULL, '199804940025', 'KLESSIS LOPES DIAS');
INSERT INTO public.egresso_valido VALUES (668, 'kleverton.macedo@gmail.com', '200704940021', 'KLEVERTON CARLOS MACEDO DE OLIVEIRA');
INSERT INTO public.egresso_valido VALUES (669, NULL, '199504940016', 'KLISSIOMARA LOPES DIAS');
INSERT INTO public.egresso_valido VALUES (670, NULL, '199704940029', 'KYLME IKEGAMI SAKIYAMA');
INSERT INTO public.egresso_valido VALUES (671, 'lanapsf@gmail.com', '201204940009', 'LANA PRISCILA DA SILVA FERREIRA');
INSERT INTO public.egresso_valido VALUES (672, NULL, '199404940017', 'LANA RAQUEL SOUZA DE SOUZA');
INSERT INTO public.egresso_valido VALUES (673, 'alilari@uol.com.br', '200504940030', 'LARISSA FERNANDES CHAGAS');
INSERT INTO public.egresso_valido VALUES (674, 'laudafarias@yahoo.com.br', '200204940033', 'LAUDEMIRA PACHECO FARIAS');
INSERT INTO public.egresso_valido VALUES (675, NULL, '200704940034', 'LEANDRO BEZERRA COUTINHO');
INSERT INTO public.egresso_valido VALUES (676, 'hscleandro@gmail.com', '200804940008', 'LEANDRO HENRIQUE SANTOS CORREA');
INSERT INTO public.egresso_valido VALUES (677, NULL, '199904940012', 'LEANDRO LAGES DE CARVALHO FARIA');
INSERT INTO public.egresso_valido VALUES (678, 'le-an-dro95@hotmail.com', '201404940031', 'LEANDRO ORLANDO SOUSA DA SILVA');
INSERT INTO public.egresso_valido VALUES (679, NULL, '200204940039', 'LEANDRO PANTOJA PEREIRA');
INSERT INTO public.egresso_valido VALUES (680, 'ledaoliveiramonteiro@gmail.com', '199104940121', 'LEDA MARA SOUZA DE OLIVEIRA MONTEIRO');
INSERT INTO public.egresso_valido VALUES (681, NULL, '199804940012', 'LENON JOSE COSTA RAIOL');
INSERT INTO public.egresso_valido VALUES (682, 'leomarioguitarr@yahoo.com.br', '200604940025', 'LEOMARIO SILVA MACHADO');
INSERT INTO public.egresso_valido VALUES (683, 'leohenryster@gmail.com', '200904940033', 'LEONAM GAMA DA SILVA');
INSERT INTO public.egresso_valido VALUES (684, NULL, '199804940026', 'LEONARDO ATHANAZIO DE CERQUEIRA GATTI');
INSERT INTO public.egresso_valido VALUES (685, 'nardoasafonso@gmail.com', '201204940026', 'LEONARDO AUGUSTO SOUZA AFONSO');
INSERT INTO public.egresso_valido VALUES (686, 'srleonardofurtado@gmail.com', '201604940024', 'LEONARDO BARBOSA FURTADO');
INSERT INTO public.egresso_valido VALUES (687, 'leonardo.chfc@gmail.com', '201504940019', 'LEONARDO CHRISTIAN FERREIRA DA COSTA');
INSERT INTO public.egresso_valido VALUES (688, NULL, '200104940009', 'LEONARDO CORREA BAIMA');
INSERT INTO public.egresso_valido VALUES (689, 'leosr89@gmail.com', '200904940007', 'LEONARDO DE SOUSA RAMOS');
INSERT INTO public.egresso_valido VALUES (690, NULL, '199704940008', 'LEONARDO HIROKAZU DE SOUZA HAMADA');
INSERT INTO public.egresso_valido VALUES (691, 'leonardovalente@gmail.com', '200104940048', 'LEONARDO JUNQUEIRA DA SILVA VALENTE');
INSERT INTO public.egresso_valido VALUES (692, 'leonardopfb@gmail.com', '200304940004', 'LEONARDO PATRICIO FERREIRA BARBOSA');
INSERT INTO public.egresso_valido VALUES (693, 'leonardo.santos.formento@gmail.com', '201104940007', 'LEONARDO SANTOS FORMENTO');
INSERT INTO public.egresso_valido VALUES (694, 'leonardosarraff@gmail.com', '200704940005', 'LEONARDO SARRAFF NUNES DE MORAES');
INSERT INTO public.egresso_valido VALUES (695, NULL, '200104940014', 'LEONARDO YOICHI FEIO OKADA');
INSERT INTO public.egresso_valido VALUES (696, NULL, '199404940041', 'LICIA CRISTINA BRITO DE CARVALHO');
INSERT INTO public.egresso_valido VALUES (697, NULL, '200004940007', 'LIDIANE PARENTE ANDRADE');
INSERT INTO public.egresso_valido VALUES (698, NULL, '199404940018', 'LIGEIA DE ALMEIDA ALENCAR');
INSERT INTO public.egresso_valido VALUES (699, 'liken_iu@yahoo.com.br', '200404940025', 'LIKEN IU MATSUMOTO CORREIA LIMA');
INSERT INTO public.egresso_valido VALUES (700, 'lilianferreira@ufpa.br', '200904940017', 'LILIAN SANTOS FERREIRA DA SILVA');
INSERT INTO public.egresso_valido VALUES (701, NULL, '199104940023', 'LINDALVO GONZAGA DE ALCANTARA NETO');
INSERT INTO public.egresso_valido VALUES (702, NULL, '200304940001', 'LIS WEIJI KANASHIRO PEREIRA');
INSERT INTO public.egresso_valido VALUES (703, NULL, '199804940006', 'LIVIA RENATA VALE FRANCO DE SA');
INSERT INTO public.egresso_valido VALUES (704, 'louisebarros@yahoo.com.br', '200404940012', 'LOUISE GONCALVES DE BARROS');
INSERT INTO public.egresso_valido VALUES (705, 'lucasmelo@ufpa.br', '200804940007', 'LUCAS DE MELO SILVA');
INSERT INTO public.egresso_valido VALUES (706, 'luks.ferraro@gmail.com', '201604940042', 'LUCAS FELIPE FERRARO CARDOSO');
INSERT INTO public.egresso_valido VALUES (707, 'lucassouzaufpa@gmail.com', '201604940039', 'LUCAS GABRIEL DE SOUZA');
INSERT INTO public.egresso_valido VALUES (708, 'lucasrodriguesgui@hotmail.com', '201404940005', 'LUCAS RODRIGUES GUIMARAES');
INSERT INTO public.egresso_valido VALUES (709, 'tavares.lucas1996@gmail.com', '201404940026', 'LUCAS TAVARES MONTEIRO');
INSERT INTO public.egresso_valido VALUES (710, 'luceliapgoncalves@gmail.com', '200304940006', 'LUCELIA PEREIRA GONCALVES');
INSERT INTO public.egresso_valido VALUES (711, NULL, '199304940023', 'LUCIANA CRISTINA MARTINS');
INSERT INTO public.egresso_valido VALUES (712, 'paiva@ufpa.br', '199604940013', 'LUCIANA DE NAZARE PAIVA NUNES');
INSERT INTO public.egresso_valido VALUES (713, 'lucianabrito@openmailbox.org', '201204940031', 'LUCIANA LIMA BRITO');
INSERT INTO public.egresso_valido VALUES (714, 'luma@ufpa.br', '199904940026', 'LUCIANA MARIA AZEVEDO NASCIMENTO');
INSERT INTO public.egresso_valido VALUES (715, NULL, '199104940024', 'LUCIANA TOUREIRO HAGE');
INSERT INTO public.egresso_valido VALUES (716, NULL, '199404940020', 'LUCIENE PEREIRA COSTA');
INSERT INTO public.egresso_valido VALUES (717, NULL, '199104940071', 'LUCIO EDUARDO SOLANO REIS');
INSERT INTO public.egresso_valido VALUES (718, NULL, '199504940030', 'LUIS MIGUEL FONSECA DE MORAIS');
INSERT INTO public.egresso_valido VALUES (719, NULL, '199904940029', 'LUIZ ACACIO CENTENO CORDEIRO JUNIOR');
INSERT INTO public.egresso_valido VALUES (720, NULL, '199404940021', 'LUIZ ALANO ALEXANDRE LOPES');
INSERT INTO public.egresso_valido VALUES (721, 'lasf_bel@yahoo.com.br', '200204940017', 'LUIZ ALBERTO DA SILVA FILHO');
INSERT INTO public.egresso_valido VALUES (722, NULL, '199604940022', 'LUIZ ALBUQUERQUE LEAO');
INSERT INTO public.egresso_valido VALUES (723, 'luizdanin@gmail.com', '201104940004', 'LUIZ AUGUSTO MONTEIRO ROSO DANIN');
INSERT INTO public.egresso_valido VALUES (724, NULL, '200104940005', 'LUIZ DANIEL CREAO AUGUSTO');
INSERT INTO public.egresso_valido VALUES (725, 'ldourado1980@globo.com', '199904940015', 'LUIZ DOURADO DIAS JUNIOR');
INSERT INTO public.egresso_valido VALUES (726, NULL, '200004940037', 'LUIZ GUSTAVO COSTA CARVALHO');
INSERT INTO public.egresso_valido VALUES (727, NULL, '200104940030', 'LUIZ OTAVIO DA SILVA BARATA');
INSERT INTO public.egresso_valido VALUES (728, NULL, '200004940035', 'LUIZ TOME VILHENA DANTAS NETO');
INSERT INTO public.egresso_valido VALUES (729, NULL, '199104940072', 'LUIZ WALDOMIRO MONTEIRO NETO');
INSERT INTO public.egresso_valido VALUES (730, 'filholuzio@gmail.com', '200204940042', 'LUZIO SANTANA DA SILVA FILHO');
INSERT INTO public.egresso_valido VALUES (731, NULL, '199204940021', 'LUZONILDO LEAO DA SILVA');
INSERT INTO public.egresso_valido VALUES (732, 'manoel.afonsoo@gmail.com', '201004940009', 'MANOEL AFONSO PEREIRA DE LIMA FILHO');
INSERT INTO public.egresso_valido VALUES (733, NULL, '199504940018', 'MANOEL FREDERICO BELTRAO ROSAS JUNIOR');
INSERT INTO public.egresso_valido VALUES (734, NULL, '199704940010', 'MANUELA DE JESUS SEMBLANO BITTENCOURT');
INSERT INTO public.egresso_valido VALUES (735, NULL, '200004940050', 'MARCEL ABREU DA MOTA');
INSERT INTO public.egresso_valido VALUES (736, NULL, '199104940026', 'MARCELA PIEDADE DO AMARAL');
INSERT INTO public.egresso_valido VALUES (737, NULL, '200004940029', 'MARCELIO D OLIVEIRA LEAL');
INSERT INTO public.egresso_valido VALUES (738, NULL, '200004940008', 'MARCELLA LETICIA DE SOUZA COSTA');
INSERT INTO public.egresso_valido VALUES (739, 'mpmota@ufpa.br', '200304940014', 'MARCELLE PEREIRA MOTA');
INSERT INTO public.egresso_valido VALUES (740, NULL, '199504940035', 'MARCELLO ADOLFO VELOSO DA SILVA');
INSERT INTO public.egresso_valido VALUES (741, 'mas@ufpa.br', '200204940013', 'MARCELO ALMEIDA DA SILVA');
INSERT INTO public.egresso_valido VALUES (742, NULL, '200004940028', 'MARCELO ANDRADE DA GAMA MALCHER');
INSERT INTO public.egresso_valido VALUES (743, NULL, '200204940019', 'MARCELO ANDRADE PEREIRA');
INSERT INTO public.egresso_valido VALUES (744, 'marceloalves@ufpa.br', '201404940014', 'MARCELO ANTONIO ALVES ALENCAR');
INSERT INTO public.egresso_valido VALUES (745, NULL, '199704940004', 'MARCELO DE BRITO GARCIA');
INSERT INTO public.egresso_valido VALUES (746, 'mmaia.cc@gmail.com', '200904940027', 'MARCELO MAIA DA SILVA');
INSERT INTO public.egresso_valido VALUES (747, NULL, '199404940022', 'MARCELO NASCIMENTO COSTA');
INSERT INTO public.egresso_valido VALUES (748, NULL, '200204940050', 'MARCELO RIBEIRO ALBERNAZ');
INSERT INTO public.egresso_valido VALUES (749, NULL, '199504940019', 'MARCELO SAMUEL DA COSTA MAGALHAES');
INSERT INTO public.egresso_valido VALUES (750, NULL, '199204940022', 'MARCIA ANDREA DE CARVALHO FREITAS');
INSERT INTO public.egresso_valido VALUES (751, NULL, '199804940002', 'MARCIA CRISTINA MONTEIRO DE MORAES');
INSERT INTO public.egresso_valido VALUES (752, NULL, '199504940020', 'MARCIA MARIA DA SILVA AMARAL');
INSERT INTO public.egresso_valido VALUES (753, NULL, '199104940123', 'MARCIO AMAZON KOHLER DA C KURIBAYASHI');
INSERT INTO public.egresso_valido VALUES (754, NULL, '199104940098', 'MARCIO AUGUSTO PEREIRA BAILOSA');
INSERT INTO public.egresso_valido VALUES (755, NULL, '200204940035', 'MARCIO BRAGA DOS SANTOS');
INSERT INTO public.egresso_valido VALUES (756, NULL, '199604940003', 'MARCIO FREITAS CABRAL DA LUZ');
INSERT INTO public.egresso_valido VALUES (757, NULL, '200204940031', 'MARCIO KUROKI GONCALVES');
INSERT INTO public.egresso_valido VALUES (758, NULL, '199204940023', 'MARCO ANTONIO FAGUNDES DE MORAES');
INSERT INTO public.egresso_valido VALUES (759, NULL, '199104940027', 'MARCOS AURELIO TRAJANO DE ASSIS');
INSERT INTO public.egresso_valido VALUES (760, NULL, '199904940005', 'MARCOS ROMERO GONZAGA DE ALMEIDA');
INSERT INTO public.egresso_valido VALUES (761, 'marcosbenaion@gmail.com', '201204940019', 'MARCOS SENNA BENAION LEAL');
INSERT INTO public.egresso_valido VALUES (762, NULL, '199104940106', 'MARCUS DE BARROS BRAGA');
INSERT INTO public.egresso_valido VALUES (763, NULL, '199204940024', 'MARIA ADALZIRA SEIXAS LOPES');
INSERT INTO public.egresso_valido VALUES (764, 'mariaandreia@ufpa.br', '199504940021', 'MARIA ANDRÉIA RODRIGUES DOS SANTOS');
INSERT INTO public.egresso_valido VALUES (765, NULL, '200004940011', 'MARIANA DE NAZARE DOS ANJOS LIMA');
INSERT INTO public.egresso_valido VALUES (766, NULL, '200104940007', 'MARINA ATSUMI OIKAWA');
INSERT INTO public.egresso_valido VALUES (767, NULL, '199404940025', 'MARINA NERY BRACCHI');
INSERT INTO public.egresso_valido VALUES (768, NULL, '200004940030', 'MARIO DO SOCORRO JARDIM MONTEIRO');
INSERT INTO public.egresso_valido VALUES (769, 'marissabc@ufpa.br', '201104940005', 'MARISSA BRASIL DE CARVALHO');
INSERT INTO public.egresso_valido VALUES (770, 'marjoriepmarques@gmail.com', '201004940010', 'MARJORIE PEREIRA MARQUES');
INSERT INTO public.egresso_valido VALUES (771, 'marlos_ferreira@yahoo.com.br', '200204940026', 'MARLOS BATISTA FERREIRA');
INSERT INTO public.egresso_valido VALUES (772, 'marlos1415@gmail.com', '200604940027', 'MARLOS DE MORAES TAVARES');
INSERT INTO public.egresso_valido VALUES (773, NULL, '199104940124', 'MARTHA CASTELLO BRANCO DE MELLO');
INSERT INTO public.egresso_valido VALUES (774, NULL, '200304940031', 'MARYANNE PACHECO SOEIRO DE BARROS');
INSERT INTO public.egresso_valido VALUES (775, NULL, '199704940021', 'MASAO IIDA');
INSERT INTO public.egresso_valido VALUES (776, 'mprodrigues@openmailbox.org', '201204940006', 'MATEUS PINTO RODRIGUES');
INSERT INTO public.egresso_valido VALUES (777, 'matheusfreire.cbcc@gmail.com', '201104940020', 'MATHEUS FERREIRA FREIRE');
INSERT INTO public.egresso_valido VALUES (778, 'sa.matheus.leite@gmail.com', '201504940018', 'MATHEUS OLIVEIRA LEITE DE SA');
INSERT INTO public.egresso_valido VALUES (779, NULL, '199904940025', 'MAURICIO PIO DE LACERDA');
INSERT INTO public.egresso_valido VALUES (780, 'mauricio.ronny@ufla.br', '200504940015', 'MAURICIO RONNY DE ALMEIDA SOUZA');
INSERT INTO public.egresso_valido VALUES (781, NULL, '199304940028', 'MAX HIDEYUKI MATSUZAKI');
INSERT INTO public.egresso_valido VALUES (782, 'maxwelmdias@gmail.com', '200404940028', 'MAXWEL MACEDO DIAS');
INSERT INTO public.egresso_valido VALUES (783, 'mcfigueiredo@ufpa.br', '200404940001', 'MAYARA COSTA FIGUEIREDO');
INSERT INTO public.egresso_valido VALUES (784, NULL, '199804940022', 'MELINA DE VASCONCELOS ALBERIO');
INSERT INTO public.egresso_valido VALUES (785, NULL, '199304940029', 'MELISSA SA OTERO');
INSERT INTO public.egresso_valido VALUES (786, 'michellkruz@gmail.com', '201104940035', 'MICHELL COSTA OLIVEIRA DA CRUZ');
INSERT INTO public.egresso_valido VALUES (787, NULL, '200004940049', 'MICHEL PENA DOS SANTOS NERY');
INSERT INTO public.egresso_valido VALUES (788, 'migsiq2@gmail.com', '199904940047', 'MIGUEL FORMIGOSA SIQUEIRA');
INSERT INTO public.egresso_valido VALUES (789, 'mp_godan@hotmail.com', '200504940016', 'MIGUEL JOSE DE ALMEIDA PERNAMBUCO FILHO');
INSERT INTO public.egresso_valido VALUES (790, NULL, '199404940026', 'MIGUEL PEREIRA MARQUES');
INSERT INTO public.egresso_valido VALUES (791, NULL, '199604940027', 'MILENA HELLEM BEZERRA DA SILVA');
INSERT INTO public.egresso_valido VALUES (792, 'milenarayane@ufpa.br', '200904940030', 'MILENA RAYANE DOS SANTOS GALVAO');
INSERT INTO public.egresso_valido VALUES (793, 'mizaelm2@yahoo.com.br', '200604940020', 'MIZAEL PANTOJA MONTEIRO');
INSERT INTO public.egresso_valido VALUES (794, NULL, '199604940016', 'MOISES BEN HUR SOUSA SEIFFERT SIMOES');
INSERT INTO public.egresso_valido VALUES (795, 'moises.silva@icen.ufpa.br', '201204940021', 'MOISES FELIPE MELLO DA SILVA');
INSERT INTO public.egresso_valido VALUES (796, NULL, '199304940030', 'MONICA DE NAZARE TAVARES DE PAULA GOYANA');
INSERT INTO public.egresso_valido VALUES (797, NULL, '199604940004', 'MONICA FERNANDES DA SILVA');
INSERT INTO public.egresso_valido VALUES (798, 'mosheribeiro@yahoo.com.br', '200504940008', 'MOSHE DAYAN SOUSA RIBEIRO');
INSERT INTO public.egresso_valido VALUES (799, 'murilosalles@yahoo.com.br', '200204940045', 'MURILO FARIAS SALES');
INSERT INTO public.egresso_valido VALUES (800, NULL, '200104940056', 'NATALIA COUTO DIAS');
INSERT INTO public.egresso_valido VALUES (801, NULL, '199104940036', 'NAYME CRISTHINA GOMES DE ALMEIDA');
INSERT INTO public.egresso_valido VALUES (802, NULL, '199304940031', 'NELSON BRAZAO MACIEL JUNIOR');
INSERT INTO public.egresso_valido VALUES (803, 'nickspsouza@gmail.com', '201104940037', 'NICOLI DA SILVA PEREIRA DE SOUZA');
INSERT INTO public.egresso_valido VALUES (804, 'nikolas.carneiro@gmail.com', '201104940009', 'NIKOLAS JORGE SANTIAGO CARNEIRO');
INSERT INTO public.egresso_valido VALUES (805, NULL, '199904940040', 'NILSON JOSE MENDES DA COSTA FILHO');
INSERT INTO public.egresso_valido VALUES (806, NULL, '199404940027', 'NOEL BASTOS GONZAGA');
INSERT INTO public.egresso_valido VALUES (807, NULL, '200004940009', 'ODNALRO CRUZ VIDEIRA JUNIOR');
INSERT INTO public.egresso_valido VALUES (808, NULL, '199104940028', 'OLINDA MIOKA CHUBACHI');
INSERT INTO public.egresso_valido VALUES (809, NULL, '199704940011', 'OSIEL MARLON NEGRAO DA SILVA');
INSERT INTO public.egresso_valido VALUES (810, 'onoura@gmail.com', '199504940023', 'OTÁVIO NOURA TEIXEIRA');
INSERT INTO public.egresso_valido VALUES (811, 'orvoltz@gmail.com', '200004940053', 'OTAVIO RODRIGUES JUNIOR');
INSERT INTO public.egresso_valido VALUES (812, 'patriciaufpa@gmail.com', '200404940011', 'PATRICIA MATIAS LOPES');
INSERT INTO public.egresso_valido VALUES (813, 'pdanni@gmail.com', '200204940021', 'PAULA DANIELE DE OLIVEIRA MOREIRA');
INSERT INTO public.egresso_valido VALUES (814, NULL, '199104940100', 'PAULA JOSIANE DE SA SANTOS');
INSERT INTO public.egresso_valido VALUES (815, NULL, '199304940032', 'PAULO ANDRE EVANGELISTA DA SILVA');
INSERT INTO public.egresso_valido VALUES (816, 'paulocleiton@ufpa.br', '200304940036', 'PAULO CLEITON VIEIRA DA SILVA');
INSERT INTO public.egresso_valido VALUES (817, 'pjpaulor@gmail.com', '200504940031', 'PAULO FERNANDO SOUZA RODRIGUES JUNIOR');
INSERT INTO public.egresso_valido VALUES (818, NULL, '199704940019', 'PAULO GLEIDSON RISUENHO PEINADO');
INSERT INTO public.egresso_valido VALUES (819, NULL, '199104940087', 'PAULO GUILHERME DOS SANTOS NASCIMENTO');
INSERT INTO public.egresso_valido VALUES (820, NULL, '199104940101', 'PAULO JORGE OLIVEIRA BRAGA');
INSERT INTO public.egresso_valido VALUES (821, NULL, '199104940128', 'PAULO NAZARENO MAIA SAMPAIO');
INSERT INTO public.egresso_valido VALUES (822, 'paulo.robertojr100@gmail.com', '201104940001', 'PAULO ROBERTO SILVA CHAGAS JUNIOR');
INSERT INTO public.egresso_valido VALUES (823, 'prcmalcher@gmail.com', '200804940027', 'PAULO ROBSON CAMPELO MALCHER');
INSERT INTO public.egresso_valido VALUES (824, 'paulorudolph07@gmail.com', '200504940009', 'PAULO RUDOLPH DA SILVA NASCIMENTO');
INSERT INTO public.egresso_valido VALUES (825, 'paulosena99@gmail.com', '201404940044', 'PAULO SENA FERREIRA FILHO');
INSERT INTO public.egresso_valido VALUES (826, NULL, '199104940029', 'PAULO SERGIO DOS SANTOS COSTA');
INSERT INTO public.egresso_valido VALUES (827, NULL, '199104940075', 'PAULO SERGIO LAMEIRA SANTOS');
INSERT INTO public.egresso_valido VALUES (828, NULL, '199304940033', 'PAULO SERGIO SILVA RODRIGUES');
INSERT INTO public.egresso_valido VALUES (829, NULL, '199404940029', 'PAULO TAKASHI SAWAKI FILHO');
INSERT INTO public.egresso_valido VALUES (830, 'pvsfair@gmail.com', '201304940021', 'PAULO VICTOR DE LIMA SFAIR ALVARES');
INSERT INTO public.egresso_valido VALUES (831, 'paulusanglada@hotmail.com', '200204940010', 'PAULUS ROBERTO GUEIROS ANGLADA');
INSERT INTO public.egresso_valido VALUES (832, NULL, '200804940021', 'PEDRO AFONSO NASCIMENTO DE AVIZ');
INSERT INTO public.egresso_valido VALUES (833, NULL, '200104940060', 'PEDRO NOLASCO FERREIRA NETO');
INSERT INTO public.egresso_valido VALUES (834, 'ppvitorr@gmail.com', '201704940003', 'PEDRO VICTOR AROUCK MELO');
INSERT INTO public.egresso_valido VALUES (835, NULL, '199904940007', 'PRISCILA CORREA SABOIA');
INSERT INTO public.egresso_valido VALUES (836, NULL, '200204940009', 'PRISCILA GOES BURLE');
INSERT INTO public.egresso_valido VALUES (837, NULL, '199404940042', 'PRISCILLA LANNE CORDEIRO DE LEAO');
INSERT INTO public.egresso_valido VALUES (838, NULL, '200104940040', 'RAFAELA DA SILVA LOBO');
INSERT INTO public.egresso_valido VALUES (839, NULL, '200304940009', 'RAFAEL DA SILVA TAKASHIMA');
INSERT INTO public.egresso_valido VALUES (840, NULL, '200304940028', 'RAFAEL FREITAS DE MORAIS');
INSERT INTO public.egresso_valido VALUES (841, 'rafaellgom@gmail.com', '200504940018', 'RAFAEL LOPES GOMES');
INSERT INTO public.egresso_valido VALUES (842, 'rafaelmf@ufpa.br', '200404940007', 'RAFAEL MARTINS FEITOSA');
INSERT INTO public.egresso_valido VALUES (843, 'rafamesquita89@gmail.com', '200804940029', 'RAFAEL MESQUITA DO MAR');
INSERT INTO public.egresso_valido VALUES (844, 'rafaelsousa2187@gmail.com', '201604940041', 'RAFAEL NASCIMENTO DE SOUSA');
INSERT INTO public.egresso_valido VALUES (845, 'nascimento.rsouza@gmail.com', '200904940012', 'RAFAEL NASCIMENTO DE SOUZA');
INSERT INTO public.egresso_valido VALUES (846, NULL, '200204940001', 'RAFAEL PEREIRA ESTEVES');
INSERT INTO public.egresso_valido VALUES (847, 'rafaveguim@gmail.com', '200604940002', 'RAFAEL VERAS GUIMARAES');
INSERT INTO public.egresso_valido VALUES (848, 'rfbcj@hotmail.com', '201504940004', 'RAIMUNDO FERNANDO BENTES DAS CHAGAS JUNIOR');
INSERT INTO public.egresso_valido VALUES (849, 'r.lorenna@gmail.com', '201104940013', 'RAISSA LORENA SILVA DA SILVA');
INSERT INTO public.egresso_valido VALUES (850, 'ramiroserge@gmail.com', '201004940040', 'RAMIRO LUZ VERGOLINO ZAHLOUTH');
INSERT INTO public.egresso_valido VALUES (851, 'ramonestii@gmail.com', '201304940013', 'RAMON DA GAMA CORDEIRO');
INSERT INTO public.egresso_valido VALUES (852, 'ramonfalsoni@hotmail.com', '200704940011', 'RAMON FALSONI');
INSERT INTO public.egresso_valido VALUES (853, 'ramontcruz@gmail.com', '200604940009', 'RAMON TORRES CRUZ');
INSERT INTO public.egresso_valido VALUES (854, 'ranieri@ufpa.br', '200604940024', 'RANIERI BARROS TEIXEIRA');
INSERT INTO public.egresso_valido VALUES (855, NULL, '200504940033', 'RAPHAEL BRITO DE PAIVA');
INSERT INTO public.egresso_valido VALUES (856, NULL, '199904940003', 'REGIANE ANDRADE BRITO');
INSERT INTO public.egresso_valido VALUES (857, NULL, '199804940024', 'REGIANE LIMA DE SOUSA');
INSERT INTO public.egresso_valido VALUES (858, NULL, '199104940032', 'REGIANE YUMIKO DA SILVA KAWASAKI');
INSERT INTO public.egresso_valido VALUES (859, 'regicsf2010@gmail.com', '201004940002', 'REGINALDO CORDEIRO DOS SANTOS FILHO');
INSERT INTO public.egresso_valido VALUES (860, NULL, '199204940031', 'REGINALDO TERUYOSHI HAMAGUCHI');
INSERT INTO public.egresso_valido VALUES (861, NULL, '199204940029', 'REGINA NAOMI TANAKA');
INSERT INTO public.egresso_valido VALUES (862, 'reinaldoc@gmail.com', '200104940057', 'REINALDO GIL LIMA DE CARVALHO');
INSERT INTO public.egresso_valido VALUES (863, 'Renanf016@gmail.com', '201304940011', 'RENAN FILIP COSTA BALIEIRO');
INSERT INTO public.egresso_valido VALUES (864, 'renancunhafonseca@hotmail.com', '201704940034', 'RENAN FONSECA CUNHA');
INSERT INTO public.egresso_valido VALUES (865, 'renan.leviathan@gmail.com', '201504940029', 'RENAN LOBO DUARTE');
INSERT INTO public.egresso_valido VALUES (866, 'renan3mf@hotmail.com', '200604940010', 'RENAN SALES BARROS');
INSERT INTO public.egresso_valido VALUES (867, 'renannojosa@gmail.com', '201304940032', 'RENAN THIAGO DA SILVA ROSA');
INSERT INTO public.egresso_valido VALUES (868, NULL, '200304940002', 'RENATA PEREIRA BAENA');
INSERT INTO public.egresso_valido VALUES (869, NULL, '199704940006', 'RENATO FIGUEIRO MAIA');
INSERT INTO public.egresso_valido VALUES (870, 'Rjlmota@gmail.com', '201704940001', 'RENATO JOSE LIMA MOTA');
INSERT INTO public.egresso_valido VALUES (871, 'pennafort22@gmail.com', '200604940007', 'RENATO PENNAFORT ROCHA');
INSERT INTO public.egresso_valido VALUES (872, 'renato.renison@gmail.com', '201004940011', 'RENATO RENISON MOREIRA OLIVEIRA');
INSERT INTO public.egresso_valido VALUES (873, NULL, '199704940035', 'RENATO WILSON SOUZA DE OLIVEIRA');
INSERT INTO public.egresso_valido VALUES (874, NULL, '199304940034', 'RICARDO ANDRE CAVALCANTE DE SOUZA');
INSERT INTO public.egresso_valido VALUES (875, 'ricardo@vfatec.com.br', '201304940001', 'RICARDO BASTOS ARRAES');
INSERT INTO public.egresso_valido VALUES (876, NULL, '200004940015', 'RICARDO CARVALHO DE SOUZA');
INSERT INTO public.egresso_valido VALUES (877, NULL, '199904940011', 'RICARDO CESAR FREITAS DE SOUZA');
INSERT INTO public.egresso_valido VALUES (878, NULL, '199304940035', 'RICARDO DE FARIAS SANTOS');
INSERT INTO public.egresso_valido VALUES (879, NULL, '199804940020', 'RICARDO IUNES COSTA');
INSERT INTO public.egresso_valido VALUES (880, NULL, '199304940036', 'RICHARD DIAS DA COSTA');
INSERT INTO public.egresso_valido VALUES (881, NULL, '199404940031', 'RITA DE CASSIA DAVID DAS NEVES');
INSERT INTO public.egresso_valido VALUES (882, NULL, '199304940037', 'ROBERTA DE OLIVEIRA CAVALCANTE');
INSERT INTO public.egresso_valido VALUES (883, 'robertaba@gmail.com', '199404940032', 'ROBERTA MACHADO BRASIL DE LIMA ARAUJO');
INSERT INTO public.egresso_valido VALUES (884, NULL, '199104940076', 'ROBERTA VILHENA VIEIRA');
INSERT INTO public.egresso_valido VALUES (885, NULL, '199704940002', 'ROBERTO DE ARAUJO MOURA');
INSERT INTO public.egresso_valido VALUES (886, NULL, '200404940030', 'ROBERTO FRANKLIN MOREIRA CARDOSO');
INSERT INTO public.egresso_valido VALUES (887, NULL, '199104940102', 'ROBERTO NOGUEIRA LIMA');
INSERT INTO public.egresso_valido VALUES (888, 'roberto.pinheiro@hotmail.com.br', '200804940033', 'ROBERTO PINHEIRO DA FONSECA');
INSERT INTO public.egresso_valido VALUES (889, NULL, '200104940037', 'ROBERTSON DIOGO DE MORAES BANDEIRA');
INSERT INTO public.egresso_valido VALUES (890, 'robsonaguiar@ufpa.br', '200404940018', 'ROBSON DA SILVA AGUIAR');
INSERT INTO public.egresso_valido VALUES (891, 'rodolfo_fiel@yahoo.com.br', '200304940023', 'RODOLFO FIEL DE SOUSA');
INSERT INTO public.egresso_valido VALUES (892, NULL, '199604940029', 'RODOLFO MOACIR SEABRA JUNIOR');
INSERT INTO public.egresso_valido VALUES (893, 'rodbarbalho@gmail.com', '200604940044', 'RODRIGO ARAUJO BARBALHO');
INSERT INTO public.egresso_valido VALUES (894, NULL, '199504940026', 'RODRIGO CUNHA MENDES');
INSERT INTO public.egresso_valido VALUES (895, 'rodrigopara@gmail.com', '200904940003', 'RODRIGO DE BRITTO PONTES RODRIGUES PARA');
INSERT INTO public.egresso_valido VALUES (896, NULL, '199404940033', 'RODRIGO DE FREITAS VALE');
INSERT INTO public.egresso_valido VALUES (897, 'rodrigo99monteiro@gmail.com', '201404940012', 'RODRIGO HENRIQUE BARBOSA MONTEIRO');
INSERT INTO public.egresso_valido VALUES (898, NULL, '199904940014', 'RODRIGO PINTO CARDOSO');
INSERT INTO public.egresso_valido VALUES (899, NULL, '199104940077', 'RODRIGO QUITES REIS');
INSERT INTO public.egresso_valido VALUES (900, NULL, '199904940058', 'RODRIGO SILVA PINTO');
INSERT INTO public.egresso_valido VALUES (901, NULL, '199104940078', 'ROGERIO FIGUEIREDO DE BRITO');
INSERT INTO public.egresso_valido VALUES (902, 'albuquerque@ufpa.br', '200504940022', 'ROMULO PINTO DE ALBUQUERQUE');
INSERT INTO public.egresso_valido VALUES (903, 'ronaldsouza16@hotmail.com', '201104940029', 'RONALD ASSUNCAO SOUZA');
INSERT INTO public.egresso_valido VALUES (904, 'RONALDPPINHO@GMAIL.COM', '201704940035', 'RONALDD PATRIK SILVA PINHO');
INSERT INTO public.egresso_valido VALUES (905, NULL, '200504940047', 'RONALDO CUNHA GOMES');
INSERT INTO public.egresso_valido VALUES (906, 'ronaldsilva852@gmail.com', '200904940019', 'RONALD RIBEIRO SILVA');
INSERT INTO public.egresso_valido VALUES (907, NULL, '200104940036', 'ROSANA CERES EVANGELISTA KALIL');
INSERT INTO public.egresso_valido VALUES (908, NULL, '199104940079', 'ROSANA DE NAZARE MENEZES MATOS');
INSERT INTO public.egresso_valido VALUES (909, NULL, '199104940046', 'ROSARINA MARIA PINHEIRO RODRIGUES');
INSERT INTO public.egresso_valido VALUES (910, NULL, '199804940010', 'ROSSANA DA CUNHA SILVA');
INSERT INTO public.egresso_valido VALUES (911, 'profrubensfr@ig.com.br', '200504940045', 'RUBENS FERNANDES ROCHA');
INSERT INTO public.egresso_valido VALUES (912, NULL, '199704940026', 'RUBIA CRISTIANE BORGES CASTRO');
INSERT INTO public.egresso_valido VALUES (913, NULL, '199104940080', 'RUI DE ALMEIDA MACOLA');
INSERT INTO public.egresso_valido VALUES (914, NULL, '199204940033', 'SALOMAO FERNANDES DE FREITAS JUNIOR');
INSERT INTO public.egresso_valido VALUES (915, NULL, '199204940034', 'SAMIRA MARIA LUZ CARMO');
INSERT INTO public.egresso_valido VALUES (916, 'sfelixjr@gmail.com', '200504940007', 'SAMUEL FELIX DE SOUSA JUNIOR');
INSERT INTO public.egresso_valido VALUES (917, 'samcampos81@gmail.com', '200004940042', 'SAMUEL MARQUES CAMPOS');
INSERT INTO public.egresso_valido VALUES (918, NULL, '199204940035', 'SANDRO MARCELO ATI TADAIESKY');
INSERT INTO public.egresso_valido VALUES (919, 'sandyfaro0@gmail.com', '201604940027', 'SANDY ANDRADE FARO');
INSERT INTO public.egresso_valido VALUES (920, NULL, '200004940034', 'SANDY EVELON CUNHA DAS NEVES');
INSERT INTO public.egresso_valido VALUES (921, 'saul.berardo@gmail.com', '200404940005', 'SAUL CAMPOS BERARDO');
INSERT INTO public.egresso_valido VALUES (922, NULL, '200104940003', 'SAVANA CECILIA PARGA CARNEIRO');
INSERT INTO public.egresso_valido VALUES (923, NULL, '199604940021', 'SCHUBERT RIBEIRO DE CARVALHO');
INSERT INTO public.egresso_valido VALUES (924, NULL, '199204940036', 'SEBASTIAO ALESSANDRO LINHARES DOS SANTOS');
INSERT INTO public.egresso_valido VALUES (925, NULL, '199904940038', 'SEBASTIAO ANTONIO V DE FARIAS JUNIOR');
INSERT INTO public.egresso_valido VALUES (926, 'sababorges@gmail.com', '199904940004', 'SEBASTIAO BORGES FONSECA');
INSERT INTO public.egresso_valido VALUES (927, NULL, '199404940034', 'SEBASTIAO DE SOUSA MESQUITA');
INSERT INTO public.egresso_valido VALUES (928, NULL, '199104940081', 'SERGIO ANGELO CAMPOS ALVES');
INSERT INTO public.egresso_valido VALUES (929, NULL, '199204940038', 'SERGIO RICARDO LIMA DA SILVA');
INSERT INTO public.egresso_valido VALUES (930, NULL, '199104940047', 'SHIRLEY DOS SANTOS SALES BAIMA PINTO');
INSERT INTO public.egresso_valido VALUES (931, NULL, '200104940025', 'SIDNEY MASAHARU MATSUNAGA');
INSERT INTO public.egresso_valido VALUES (932, NULL, '199104940132', 'SILVANA ROSSY DE BRITO');
INSERT INTO public.egresso_valido VALUES (933, NULL, '200704940018', 'SILVIA CRISTINA NUNES DAS DORES');
INSERT INTO public.egresso_valido VALUES (934, NULL, '199104940133', 'SILVIA DAS DORES RISSINO');
INSERT INTO public.egresso_valido VALUES (935, NULL, '199504940033', 'SILVIO CARLOS AZEVEDO ANDRADE');
INSERT INTO public.egresso_valido VALUES (936, NULL, '199404940035', 'SIMEAO SANTOS DAS DORES');
INSERT INTO public.egresso_valido VALUES (937, NULL, '200104940002', 'SIMONE BACELLAR LOPES');
INSERT INTO public.egresso_valido VALUES (938, 'simonefonseca@yahoo.com.br', '200304940013', 'SIMONE FONSECA FERREIRA');
INSERT INTO public.egresso_valido VALUES (939, 'simone.nara@gmail.com', '200604940014', 'SIMONE NAYARA COSTA CARNEIRO');
INSERT INTO public.egresso_valido VALUES (940, 'suelenbbrabo@gmail.com', '200804940036', 'SUELEN BRAGA BRABO');
INSERT INTO public.egresso_valido VALUES (941, 'SUELLENPSR@UFPA.BR', '200404940021', 'SUELLEN PATRICIA SILVESTRE RIBEIRO ALBERNAZ');
INSERT INTO public.egresso_valido VALUES (942, 'tacio@ufpa.br', '200204940014', 'TACIO VINICIUS BERNARDES RIBEIRO');
INSERT INTO public.egresso_valido VALUES (943, 'taina.inaie@gmail.com', '201504940007', 'TAINA INAIE DOS SANTOS DA SILVA');
INSERT INTO public.egresso_valido VALUES (944, 'tales.miranda84@gmail.com', '200704940008', 'TALES CHENE DE MIRANDA');
INSERT INTO public.egresso_valido VALUES (945, NULL, '200704940004', 'TALITA VIEIRA RIBEIRO');
INSERT INTO public.egresso_valido VALUES (946, 'talvane.glauber@gmail.com', '201104940031', 'TALVANE GLAUBER LOPES DE LIMA');
INSERT INTO public.egresso_valido VALUES (947, NULL, '199104940035', 'TAYANA UCHOA CONTE');
INSERT INTO public.egresso_valido VALUES (948, 'teo@ufpa.br', '200804940002', 'TEOFILO AUGUSTO BORDALO DE SOUZA VIEIRA');
INSERT INTO public.egresso_valido VALUES (949, NULL, '199104940103', 'TEREZA CONCEICAO AKI BARROS KANZAKI');
INSERT INTO public.egresso_valido VALUES (950, 'thales_cross@hotmail.com', '201304940014', 'THALES SILVA DE SOUSA');
INSERT INTO public.egresso_valido VALUES (951, 'dhandarah1996@gmail.com', '201404940010', 'THAYS DHANDARAH RODRIGUES SA');
INSERT INTO public.egresso_valido VALUES (952, NULL, '200304940025', 'THIAGO FONSECA DE ANDRADE');
INSERT INTO public.egresso_valido VALUES (953, 'thiago.tjas@gmail.com', '200704940006', 'THIAGO JORGE ALMEIDA DOS SANTOS');
INSERT INTO public.egresso_valido VALUES (954, NULL, '200104940054', 'THIAGO RUBENI ALVES DA SILVA');
INSERT INTO public.egresso_valido VALUES (955, 'tsylasac@gmail.com', '201004940022', 'THIAGO SYLAS ANTUNES DA COSTA');
INSERT INTO public.egresso_valido VALUES (956, 'tiagodavi70@gmail.com', '201104940024', 'TIAGO DAVI OLIVEIRA DE ARAUJO');
INSERT INTO public.egresso_valido VALUES (957, 'netotuby@gmail.com', '201704940006', 'TUBY D OLIVEIRA NETO');
INSERT INTO public.egresso_valido VALUES (958, NULL, '200004940004', 'ULISSES MARTINS DIAS');
INSERT INTO public.egresso_valido VALUES (959, 'urielfcampos95@gmail.com', '201504940023', 'URIEL FERREIRA CAMPOS');
INSERT INTO public.egresso_valido VALUES (960, 'vagner.nogueira@gmail.com', '200404940013', 'VAGNER NOGUEIRA SILVA');
INSERT INTO public.egresso_valido VALUES (961, NULL, '199904940049', 'VALERIA FREITAS SOUSA');
INSERT INTO public.egresso_valido VALUES (962, 'valeria@ufpa.br', '199104940104', 'VALERIA GOMES DA CAMARA CORECHA BASTOS');
INSERT INTO public.egresso_valido VALUES (963, NULL, '199104940082', 'VANA DO CARMO CARVALHO PEREIRA');
INSERT INTO public.egresso_valido VALUES (964, NULL, '200004940019', 'VANDERLENE COVRE ROCHA');
INSERT INTO public.egresso_valido VALUES (965, NULL, '199104940083', 'VICTOR AMARANTE DE BARROS');
INSERT INTO public.egresso_valido VALUES (966, 'ccvem@yahoo.com.br', '200404940004', 'VICTOR ESPINDOLA MARTINS');
INSERT INTO public.egresso_valido VALUES (967, NULL, '200104940044', 'VICTOR LOURENCO GARCIA DA CUNHA');
INSERT INTO public.egresso_valido VALUES (968, 'victorlsn@gmail.com', '200904940006', 'VICTOR LUIZ SANTOS NEGRAO');
INSERT INTO public.egresso_valido VALUES (969, NULL, '199804940009', 'VINICIUS LIMA DA SILVA');
INSERT INTO public.egresso_valido VALUES (970, 'vitorlimac2@gmail.com', '200804940004', 'VITOR LIMA COELHO');
INSERT INTO public.egresso_valido VALUES (971, 'vitornovaes.cantao@gmail.com', '201704940018', 'VITOR NOVAES CANTAO');
INSERT INTO public.egresso_valido VALUES (972, 'vfeitosa86@hotmail.com', '200504940001', 'VITOR PINHEIRO FEITOSA');
INSERT INTO public.egresso_valido VALUES (973, NULL, '200104940018', 'VIVIANE SOARES GRIECO');
INSERT INTO public.egresso_valido VALUES (974, 'wagnerfelidre@gmail.com', '201704940043', 'WAGNER FELIDRE NEGRAO DA SILVA');
INSERT INTO public.egresso_valido VALUES (975, 'walissoncardosogomes@gmail.com', '201204940001', 'WALISSON CARDOSO GOMES');
INSERT INTO public.egresso_valido VALUES (976, NULL, '200504940005', 'WALLACE MICHEL PINTO LIRA');
INSERT INTO public.egresso_valido VALUES (977, 'wallacecovic@yahoo.com.br', '201404940028', 'WALLACE PACHECO PEREIRA');
INSERT INTO public.egresso_valido VALUES (978, 'walmir.psj@gmail.com', '200704940031', 'WALMIR PORTAL DOS SANTOS JUNIOR');
INSERT INTO public.egresso_valido VALUES (979, 'wnessms@hotmail.com', '200604940029', 'WANESSA MELO DA SILVA');
INSERT INTO public.egresso_valido VALUES (980, NULL, '199304940040', 'WANILSON MIRANDA DE FIGUEIREDO');
INSERT INTO public.egresso_valido VALUES (981, NULL, '199504940028', 'WANJA DANIELLE DA SILVA MOTA');
INSERT INTO public.egresso_valido VALUES (982, NULL, '199504940029', 'WASHINGTON NEVES DE ALMEIDA');
INSERT INTO public.egresso_valido VALUES (983, NULL, '199404940038', 'WEILA SHEYLA DE MELO BRITO');
INSERT INTO public.egresso_valido VALUES (984, 'fmwellson@yahoo.com.br', '200804940009', 'WELLSON SERGIO BITENCOURT DOS SANTOS');
INSERT INTO public.egresso_valido VALUES (985, 'wendelrenann@gmail.com', '201104940017', 'WENDEL RENAN MACEDO DOS SANTOS');
INSERT INTO public.egresso_valido VALUES (986, 'wescley.fontes@gmail.com', '199804940008', 'WESCLEY PIMENTEL FONTES');
INSERT INTO public.egresso_valido VALUES (987, 'wesleyhanani@yahoo.com.br', '200104940061', 'WESLEY HANANI PINTO DO CARMO');
INSERT INTO public.egresso_valido VALUES (988, 'wevertoncordeiro@gmail.com', '200204940016', 'WEVERTON LUIS DA COSTA CORDEIRO');
INSERT INTO public.egresso_valido VALUES (989, NULL, '199104940084', 'WILLIS DO SOCORRO A DE CAMPOS');
INSERT INTO public.egresso_valido VALUES (990, 'yann.fabricio@hotmail.com', '201704940026', 'YANN FABRICIO CARDOSO DE FIGUEIREDO');
INSERT INTO public.egresso_valido VALUES (991, 'paz.yasminl@gmail.com', '201304940005', 'YASMIN LUANA SALES DA PAZ');
INSERT INTO public.egresso_valido VALUES (992, 'castelo@ufpa.br', '200504940035', 'YOSSEF GABRIEL OLIVEIRA CASTELO');
INSERT INTO public.egresso_valido VALUES (993, 'yvanbrito96@gmail.com', '201304940016', 'YVAN PEREIRA DOS SANTOS BRITO');
INSERT INTO public.egresso_valido VALUES (994, 'rabelo.lincoln@gmail.com', NULL, 'Abraham Lincoln Rabelo De Sousa');
INSERT INTO public.egresso_valido VALUES (995, 'adailtulima@gmail.com', NULL, 'ADAILTON MAGALHAES LIMA');
INSERT INTO public.egresso_valido VALUES (996, 'adalbertocmelo@gmail.com', NULL, 'Adalberto Cavalcante de Melo');
INSERT INTO public.egresso_valido VALUES (997, 'adrianne.veras@outlook.com', NULL, 'Adrianne Veras de Almeida');
INSERT INTO public.egresso_valido VALUES (998, 'alencv@gmail.com', NULL, 'Alen Costa Vieira');
INSERT INTO public.egresso_valido VALUES (999, 'allandoug@gmail.com', NULL, 'Allan Douglas Bento da Costa');
INSERT INTO public.egresso_valido VALUES (1000, 'larissa.engcomp@gmail.com', NULL, 'Ana Larissa da Silva Dias');
INSERT INTO public.egresso_valido VALUES (1001, 'andersonsoares@ufra.edu.br', NULL, 'Anderson Gregório Marques Soares');
INSERT INTO public.egresso_valido VALUES (1002, 'anderson.gmarques@gmail.com', NULL, 'Anderson Gregório Marques Soares');
INSERT INTO public.egresso_valido VALUES (1003, 'anderson_detran@hotmail.com', NULL, 'Anderson Trindade Maia');
INSERT INTO public.egresso_valido VALUES (1004, 'andre.rammos7@gmail.com', NULL, 'André de Jesus Araújo Ramos');
INSERT INTO public.egresso_valido VALUES (1005, 'andre.riker@gmail.com', NULL, 'André Figueira Riker');
INSERT INTO public.egresso_valido VALUES (1006, 'ditoneto@gmail.com', NULL, 'Benedito de Souza Ribeiro Neto');
INSERT INTO public.egresso_valido VALUES (1007, 'bfranca@unicamp.br', NULL, 'Breno Bernard Nicolau de França');
INSERT INTO public.egresso_valido VALUES (1008, 'upbrunogc@gmail.com', NULL, 'Bruno Garcia da Costa');
INSERT INTO public.egresso_valido VALUES (1009, 'britodi@gmail.com', NULL, 'Bruno Pereira Brito');
INSERT INTO public.egresso_valido VALUES (1010, 'gustavo.cbcc@gmail.com', NULL, 'Carlos Gustavo Resque dos Santos');
INSERT INTO public.egresso_valido VALUES (1011, 'takeshiyasojima@gmail.com', NULL, 'Carlos Takeshi Kudo Yasojima');
INSERT INTO public.egresso_valido VALUES (1012, 'cassio.batista.13@gmail.com', NULL, 'Cassio Trindade Batista');
INSERT INTO public.egresso_valido VALUES (1013, 'avcesar@gmail.com', NULL, 'Cesar Siqueira de Oliveira');
INSERT INTO public.egresso_valido VALUES (1014, 'claudomir.junior@ifma.edu.br', NULL, 'Claudomir Cardoso de Carvalho Junior');
INSERT INTO public.egresso_valido VALUES (1015, 'dom.clay@yahoo.com.br', NULL, 'Clay Palmeira da Silva');
INSERT INTO public.egresso_valido VALUES (1016, 'cleytondim@ufpa.br', NULL, 'Cleyton Aparecido Dim');
INSERT INTO public.egresso_valido VALUES (1017, 'cynthya.telles@gmail.com', NULL, 'Cynthya Letícia Teles De Oliveira');
INSERT INTO public.egresso_valido VALUES (1018, 'daniel.leal.souza@gmail.com', NULL, 'Daniel Leal Souza');
INSERT INTO public.egresso_valido VALUES (1019, 'lenomeireles@gmail.com', NULL, 'Danileno Meireles do Rosario');
INSERT INTO public.egresso_valido VALUES (1020, 'diegoaires@gmail.com', NULL, 'Diego Bento Aires Teixeira');
INSERT INTO public.egresso_valido VALUES (1021, 'hortencio1983@gmail.com', NULL, 'Diego Hortêncio dos Santos');
INSERT INTO public.egresso_valido VALUES (1022, 'diegoabreuengcomp@gmail.com', NULL, 'Diego Oliveira Abreu');
INSERT INTO public.egresso_valido VALUES (1023, 'eddasjbertrand@gmail.com', NULL, 'Eddas Josue Bertrand Martinez');
INSERT INTO public.egresso_valido VALUES (1024, 'edianfranklin@gmail.com', NULL, 'Edian Franklin Franco De Los Santos');
INSERT INTO public.egresso_valido VALUES (1025, 'edinaldo.laroque@gmail.com', NULL, 'Edinaldo João Costa de La-roque');
INSERT INTO public.egresso_valido VALUES (1026, 'koitiyasojima@gmail.com', NULL, 'Edson Koiti Kudo Yasojima');
INSERT INTO public.egresso_valido VALUES (1027, 'eduardolima.ufpa@gmail.com', NULL, 'Eduardo Gabriel Lima da Silva');
INSERT INTO public.egresso_valido VALUES (1028, 'marquesraiol@gmail.com', NULL, 'Eduardo Paulo Marques Raiol');
INSERT INTO public.egresso_valido VALUES (1029, 'ejrueda95g@gmail.com', NULL, 'Edwin Jahir Rueda Rojas');
INSERT INTO public.egresso_valido VALUES (1030, 'elismclean@gmail.com', NULL, 'Elisiane Monteiro Soares');
INSERT INTO public.egresso_valido VALUES (1031, 'msoares.elziane@gmail.com', NULL, 'Elziane Monteiro Soares');
INSERT INTO public.egresso_valido VALUES (1032, 'emanuel.montero.e@gmail.com', NULL, 'Emanuel Montero Espaillat');
INSERT INTO public.egresso_valido VALUES (1033, 'erick.c.modesto@gmail.com', NULL, 'Erick Modesto Campos');
INSERT INTO public.egresso_valido VALUES (1034, 'ericsonsarmento+ppgcc@gmail.com', NULL, 'Ericson Sarmento Costa');
INSERT INTO public.egresso_valido VALUES (1035, 'estevaosantos265@gmail.com', NULL, 'Estêvão Damasceno Santos');
INSERT INTO public.egresso_valido VALUES (1036, 'fabiomm@ufmg.br', NULL, 'Fabio Malcher Miranda');
INSERT INTO public.egresso_valido VALUES (1037, 'fabioaraujo289@gmail.com', NULL, 'Fabio Rocha de Araujo');
INSERT INTO public.egresso_valido VALUES (1038, 'fabriciogarcia@ufpa.br', NULL, 'Fabricio wickey da silva garcia');
INSERT INTO public.egresso_valido VALUES (1039, 'fabriciowsgarcia@gmail.com', NULL, 'Fabricio Wickey da Silva Garcia');
INSERT INTO public.egresso_valido VALUES (1040, 'felipearaujo289@gmail.com', NULL, 'Felipe Rocha de Araújo');
INSERT INTO public.egresso_valido VALUES (1041, 'fernnf@gmail.com', NULL, 'Fernando Nazareno Nascimento Farias');
INSERT INTO public.egresso_valido VALUES (1042, 'gilsonrocha@gmail.com', NULL, 'Gilson Rocha Silva');
INSERT INTO public.egresso_valido VALUES (1043, 'hernan.laguado@gmail.com', NULL, 'Hernan Dario Carreño Laguado');
INSERT INTO public.egresso_valido VALUES (1044, 'hilton.castro@ifap.edu.br', NULL, 'Hilton Prado de Castro Junior');
INSERT INTO public.egresso_valido VALUES (1045, 'hugoblim@gmail.com', NULL, 'Hugo Brito Lima');
INSERT INTO public.egresso_valido VALUES (1046, 'iagolmedeiros@gmail.com', NULL, 'Iago Lins de Medeiros');
INSERT INTO public.egresso_valido VALUES (1047, 'igorpnatal@gmail.com', NULL, 'Igor da Penha Natal');
INSERT INTO public.egresso_valido VALUES (1048, 'IGGOR16@GMAIL.COM', NULL, 'Igor Ernesto Ferreira Costa');
INSERT INTO public.egresso_valido VALUES (1049, 'isadoramsantos@gmail.com', NULL, 'Isadora Mendes dos Santos');
INSERT INTO public.egresso_valido VALUES (1050, 'ivoabreu94@gmail.com', NULL, 'Ivo de Abreu Araújo');
INSERT INTO public.egresso_valido VALUES (1051, 'jadielly.oliveira@gmail.com', NULL, 'Jadielly Fernandes Oliveira Treccani');
INSERT INTO public.egresso_valido VALUES (1052, 'jwagner28@gmail.com', NULL, 'Jailton Wagner Rodrigues Tavares');
INSERT INTO public.egresso_valido VALUES (1053, 'jair.jr.j2@gmail.com', NULL, 'Jair da Silva Ferreira Junior');
INSERT INTO public.egresso_valido VALUES (1054, 'jeanarouche@gmail.com', NULL, 'Jean Carlos Arouche Freire');
INSERT INTO public.egresso_valido VALUES (1055, 'jeffersonmorais@gmail.com', NULL, 'Jefferson Magalhães de Morais');
INSERT INTO public.egresso_valido VALUES (1056, 'joahannes@gmail.com', NULL, 'Joahannes Bruno Dias da Costa');
INSERT INTO public.egresso_valido VALUES (1057, 'salvatti@gmail.com', NULL, 'João Júlio Salvatti Neto');
INSERT INTO public.egresso_valido VALUES (1058, 'jonathasp6@gmail.com', NULL, 'Jonathas Pinheiro Trindade');
INSERT INTO public.egresso_valido VALUES (1059, 'jose.sousa.filho@gmail.com', NULL, 'José de Sousa Ribeiro Filho');
INSERT INTO public.egresso_valido VALUES (1060, 'joseflaviojr@gmail.com', NULL, 'José Flávio de Souza Dias Júnior');
INSERT INTO public.egresso_valido VALUES (1061, 'furtado@unifap.br', NULL, 'Julio Cezar Costa Furtado');
INSERT INTO public.egresso_valido VALUES (1062, 'k_info_04@yahoo.com.br', NULL, 'Karla Suely Diniz da Costa');
INSERT INTO public.egresso_valido VALUES (1063, 'larissamonteiropimentel@gmail.com', NULL, 'Larissa Monteiro Pimentel');
INSERT INTO public.egresso_valido VALUES (1064, 'patricia.souza@ufra.edu.br', NULL, 'Lena Patrícia Souza Rodrigues');
INSERT INTO public.egresso_valido VALUES (1065, 'lennonsfurtado@gmail.com', NULL, 'Lennon Sales Furtado');
INSERT INTO public.egresso_valido VALUES (1066, 'hamadaleonardo@gmail.com', NULL, 'Leonardo Hirokazu de Souza Hamada');
INSERT INTO public.egresso_valido VALUES (1067, 'matakura@gmail.com', NULL, 'Leonardo Sarraff Nunes de Moraes');
INSERT INTO public.egresso_valido VALUES (1068, 'lucas.melo04@gmail.com', NULL, 'Lucas de Melo Silva');
INSERT INTO public.egresso_valido VALUES (1069, 'lucelia.matsumoto@serpro.gov.br', NULL, 'Lucelia Pereira Goncalves');
INSERT INTO public.egresso_valido VALUES (1070, 'lu.abdon.si@gmail.com', NULL, 'Luciana Abdon Almeida');
INSERT INTO public.egresso_valido VALUES (1071, 'duartelucianoribeiro@gmail.com', NULL, 'LUCIANO RIBEIRO DUARTE');
INSERT INTO public.egresso_valido VALUES (1072, 'cellemota@gmail.com', NULL, 'Marcelle Pereira Mota');
INSERT INTO public.egresso_valido VALUES (1073, 'marciapantoja13@gmail.com', NULL, 'Marcia Priscila Furtado Pantoja');
INSERT INTO public.egresso_valido VALUES (1074, 'goes.nascimento@gmail.com', NULL, 'Marcio Goes do Nascimento');
INSERT INTO public.egresso_valido VALUES (1075, 'mjmponte@gmail.com', NULL, 'Márcio José Moutinho da Ponte');
INSERT INTO public.egresso_valido VALUES (1076, 'ma.balieiro@gmail.com', NULL, 'Marco Antonio Balieiro Da Silva');
INSERT INTO public.egresso_valido VALUES (1077, 'marcos.seruffo@gmail.com', NULL, 'Marcos César da Rocha Seruffo');
INSERT INTO public.egresso_valido VALUES (1078, 'carvalhonazario@yahoo.com.br', NULL, 'Marcos Felipe Carvalho Nazario');
INSERT INTO public.egresso_valido VALUES (1079, 'mm.marisamoreno@gmail.com', NULL, 'Marisa Cristina Moreno Alves de Andrade');
INSERT INTO public.egresso_valido VALUES (1080, 'mauricio.ronny@gmail.com', NULL, 'Mauricio Ronny de Almeida Souza');
INSERT INTO public.egresso_valido VALUES (1081, 'maurolarrat@ufpa.br', NULL, 'Mauro Rodrigo Larrat Frota e Silva');
INSERT INTO public.egresso_valido VALUES (1082, 'mayfigueiredo@gmail.com', NULL, 'Mayara Costa Figueiredo');
INSERT INTO public.egresso_valido VALUES (1083, 'mireillepm@gmail.com', NULL, 'Mireille Pinheiro Moreira Balieiro');
INSERT INTO public.egresso_valido VALUES (1084, 'mulgsm@gmail.com', NULL, 'Müller Gabriel Da Silva Miranda');
INSERT INTO public.egresso_valido VALUES (1085, 'nagila.ufpa@gmail.com', NULL, 'Nágila Natália Torres Vale');
INSERT INTO public.egresso_valido VALUES (1086, 'engenilk@gmail.com', NULL, 'Nielsen Alves Gonçalves');
INSERT INTO public.egresso_valido VALUES (1087, 'olavo.nylander@gmail.com', NULL, 'Olavo Nylander Brito Neto');
INSERT INTO public.egresso_valido VALUES (1088, 'piagodinho@gmail.com', NULL, 'Paulo Igor Alves Godinho');
INSERT INTO public.egresso_valido VALUES (1089, 'paulo.cardoso12@gmail.com', NULL, 'Paulo Vitor Rodrigues Cardoso');
INSERT INTO public.egresso_valido VALUES (1090, 'pedroabg@gmail.com', NULL, 'Pedro Alberto Bento Gomes');
INSERT INTO public.egresso_valido VALUES (1091, 'pedro.cumino@gmail.com', NULL, 'Pedro Luiz Magalhães Cumino');
INSERT INTO public.egresso_valido VALUES (1092, 'pedro.montibeler@gmail.com', NULL, 'Pedro Montibeler Salvador');
INSERT INTO public.egresso_valido VALUES (1093, 'phelipefeio09@gmail.com', NULL, 'Phelipe Luiz Dias Feio');
INSERT INTO public.egresso_valido VALUES (1094, 'rafael.feito@gmail.com', NULL, 'Rafael Martins Feitosa');
INSERT INTO public.egresso_valido VALUES (1095, 'rafesteves@gmail.com', NULL, 'Rafael Pereira Esteves');
INSERT INTO public.egresso_valido VALUES (1096, 'rafaelstnoliveira@gmail.com', NULL, 'Rafael Santana Oliveira');
INSERT INTO public.egresso_valido VALUES (1097, 'reinald28@gmail.com', NULL, 'Reinaldo Junior Lopes Cardoso');
INSERT INTO public.egresso_valido VALUES (1098, 'renatadcascaes@gmail.com', NULL, 'Renata Kelly Dantas Cascaes');
INSERT INTO public.egresso_valido VALUES (1099, 'renpina@gmail.com', NULL, 'Renato de Pina Ferreira');
INSERT INTO public.egresso_valido VALUES (1100, 'renatohidaka@gmail.com', NULL, 'Renato Hidaka Torres');
INSERT INTO public.egresso_valido VALUES (1101, 'rennanmaia@gmail.com', NULL, 'Rennan Jose Maia da Silva');
INSERT INTO public.egresso_valido VALUES (1102, 'ricardorodrigomm@gmail.com', NULL, 'Ricardo Rodrigo Marinho Melo');
INSERT INTO public.egresso_valido VALUES (1103, 'roberto.yuri.franco@gmail.com', NULL, 'Roberto Yuri da Silva Franco');
INSERT INTO public.egresso_valido VALUES (1104, 'rodrigo.sad.lima@gmail.com', NULL, 'Rodrigo Santos do Amor Divino Lima');
INSERT INTO public.egresso_valido VALUES (1105, 'romulo.s.pinheiro@gmail.com', NULL, 'Romulo Silva Pinheiro');
INSERT INTO public.egresso_valido VALUES (1106, 'sandrodpm@gmail.com', NULL, 'Sandro de Paula Mendonça ');
INSERT INTO public.egresso_valido VALUES (1107, 'maru.merces18@gmail.com', NULL, 'Sara das Merces Silva');
INSERT INTO public.egresso_valido VALUES (1108, 'saulberardo@gmail.com', NULL, 'Saul Campos Berardo');
INSERT INTO public.egresso_valido VALUES (1109, 's.rodriguescn@gmail.com', NULL, 'sebastião rodrigues da costa neto');
INSERT INTO public.egresso_valido VALUES (1110, 'silverio@ufpa.br', NULL, 'Silvério Sirotheau Corrêa Neto');
INSERT INTO public.egresso_valido VALUES (1111, 'ssirotheau@gmail.com', NULL, 'Silvério Sirotheau Corrêa Neto');
INSERT INTO public.egresso_valido VALUES (1112, 'suelene.correa@ifpa.edu.br', NULL, 'Suelene de Jesus do Carmo Corrêa ');
INSERT INTO public.egresso_valido VALUES (1113, 'tcoqueiro@hotmail.com', NULL, 'Thiago Antônio Sidônio Coqueiro');
INSERT INTO public.egresso_valido VALUES (1114, 'vagner@ufpa.br', NULL, 'Vagner de Brito Nascimento');
INSERT INTO public.egresso_valido VALUES (1115, 'vitor@unifesspa.edu.br', NULL, 'Vitor de Souza Castro');
INSERT INTO public.egresso_valido VALUES (1116, 'walbertcm@gmail.com', NULL, 'Walbert Cunha Monteiro');
INSERT INTO public.egresso_valido VALUES (1117, 'wendymgaleno@gmail.com', NULL, 'Wendy Mendes Galeno');
INSERT INTO public.egresso_valido VALUES (1118, 'wilsonluiz.dsf@gmail.com', NULL, 'Wilson Luiz da Silva Farias');
INSERT INTO public.egresso_valido VALUES (1119, 'yurilimacavalcante@gmail.com', NULL, 'Yuri Lima Cavalcante');
INSERT INTO public.egresso_valido VALUES (1120, 'yuri.nassar@gmail.com', NULL, 'Yuri Santa Rosa Nassar dos Santos');


--
-- TOC entry 3678 (class 0 OID 16461)
-- Dependencies: 237
-- Data for Name: empresa; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.empresa VALUES (1, true, '2023-06-12 12:25:33.87202', NULL, 'ABEU - CENTRO UNIVERSITÁRIO (UNIABEU)', 1, NULL, 1, false);
INSERT INTO public.empresa VALUES (2, true, '2023-06-12 12:25:33.879994', NULL, 'ACADEMIA DE POLÍCIA MILITAR DE MINAS GERAIS (APM)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (3, true, '2023-06-12 12:25:33.887903', NULL, 'ACADEMIA JUDICIAL DO TRIBUNAL DE JUSTIÇA DE SANTA CATARINA (AJ)', 1, NULL, 3, false);
INSERT INTO public.empresa VALUES (4, true, '2023-06-12 12:25:33.895436', NULL, 'ACADEMIA MILITAR DAS AGULHAS NEGRAS (AMAN)', 1, NULL, 4, false);
INSERT INTO public.empresa VALUES (5, true, '2023-06-12 12:25:33.902987', NULL, 'ACADEMIA NACIONAL DE POLÍCIA - ANP (ANP)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (6, true, '2023-06-12 12:25:33.910526', NULL, 'AJES - FACULDADE DO VALE DO JURUENA (AJES)', 1, NULL, 6, false);
INSERT INTO public.empresa VALUES (7, true, '2023-06-12 12:25:33.918602', NULL, 'ALFA - FACULDADE DE TEÓFILO OTONI (ALFA - TO)', 1, NULL, 7, false);
INSERT INTO public.empresa VALUES (8, true, '2023-06-12 12:25:33.926002', NULL, 'BRAIN BUSINESS SCHOOL (BRAIN)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (9, true, '2023-06-12 12:25:33.938139', NULL, 'CEDDU - CENTRO DE ENSINO SUPERIOR (CEDDU)', 1, NULL, 9, false);
INSERT INTO public.empresa VALUES (10, true, '2023-06-12 12:25:33.946439', NULL, 'CENAC - CENTRO DE ENSINO NACIONAL', 1, NULL, 10, false);
INSERT INTO public.empresa VALUES (11, true, '2023-06-12 12:25:33.954659', NULL, 'CENTRO DE EDUCAÇÃO TÉCNICA DA UTRAMIG (UTRAMIG)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (12, true, '2023-06-12 12:25:33.962096', NULL, 'CENTRO DE EDUCAÇÃO TECNOLÓGICO DA FUNDAÇÃO INDAIATUBANA DE EDUCAÇÃO E CULTURA (FIEC)', 1, NULL, 11, false);
INSERT INTO public.empresa VALUES (13, true, '2023-06-12 12:25:33.969608', NULL, 'CENTRO DE ENSINO E PESQUISA DO PRÓ-CARDÍACO (PROCEP)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (14, true, '2023-06-12 12:25:33.977', NULL, 'CENTRO DE ENSINO SUPERIOR CESUL (CESUL)', 1, NULL, 13, false);
INSERT INTO public.empresa VALUES (15, true, '2023-06-12 12:25:33.98529', NULL, 'CENTRO DE ENSINO SUPERIOR DE ALTAMIRA', 1, NULL, 14, false);
INSERT INTO public.empresa VALUES (16, true, '2023-06-12 12:25:33.992611', NULL, 'CENTRO DE ENSINO SUPERIOR DE ARCOVERDE (CESA)', 1, NULL, 15, false);
INSERT INTO public.empresa VALUES (17, true, '2023-06-12 12:25:34.000063', NULL, 'CENTRO DE ENSINO SUPERIOR DE BACABEIRA (CESBA)', 1, NULL, 16, false);
INSERT INTO public.empresa VALUES (18, true, '2023-06-12 12:25:34.007431', NULL, 'CENTRO DE ENSINO SUPERIOR DE CATALÃO', 1, NULL, 17, false);
INSERT INTO public.empresa VALUES (19, true, '2023-06-12 12:25:34.01546', NULL, 'CENTRO DE ENSINO SUPERIOR DE CONSELHEIRO LAFAIETE (CES-CL)', 1, NULL, 18, false);
INSERT INTO public.empresa VALUES (20, true, '2023-06-12 12:25:34.022781', NULL, 'CENTRO DE ENSINO SUPERIOR DE DIVINÓPOLIS', 1, NULL, 19, false);
INSERT INTO public.empresa VALUES (21, true, '2023-06-12 12:25:34.030326', NULL, 'CENTRO DE ENSINO SUPERIOR DE ILHÉUS (CESUPI)', 1, NULL, 20, false);
INSERT INTO public.empresa VALUES (22, true, '2023-06-12 12:25:34.037697', NULL, 'CENTRO DE ENSINO SUPERIOR DE JATAÍ (CESUT)', 1, NULL, 21, false);
INSERT INTO public.empresa VALUES (23, true, '2023-06-12 12:25:34.046007', NULL, 'CENTRO DE ENSINO SUPERIOR DE LORENA', 1, NULL, 22, false);
INSERT INTO public.empresa VALUES (24, true, '2023-06-12 12:25:34.053483', NULL, 'CENTRO DE ENSINO SUPERIOR DE PALMAS (CESUP)', 1, NULL, 23, false);
INSERT INTO public.empresa VALUES (25, true, '2023-06-12 12:25:34.06085', NULL, 'CENTRO DE ENSINO SUPERIOR DE SERRA DOURADA', 1, NULL, 22, false);
INSERT INTO public.empresa VALUES (26, true, '2023-06-12 12:25:34.068143', NULL, 'CENTRO DE ENSINO SUPERIOR DE SETE LAGOAS', 1, NULL, 24, false);
INSERT INTO public.empresa VALUES (27, true, '2023-06-12 12:25:34.080879', NULL, 'CENTRO DE ENSINO SUPERIOR DE VITÓRIA (CESV)', 1, NULL, 25, false);
INSERT INTO public.empresa VALUES (28, true, '2023-06-12 12:25:34.088254', NULL, 'CENTRO DE ENSINO SUPERIOR DO AMAPÁ (CEAP)', 1, NULL, 26, false);
INSERT INTO public.empresa VALUES (29, true, '2023-06-12 12:25:34.095889', NULL, 'CENTRO DE ENSINO SUPERIOR DO VALE DO PARNAÍBA (CESVALE)', 1, NULL, 27, false);
INSERT INTO public.empresa VALUES (30, true, '2023-06-12 12:25:34.10327', NULL, 'CENTRO DE ENSINO SUPERIOR DO VALE SÃO FRANCISCO (CESVASF)', 1, NULL, 28, false);
INSERT INTO public.empresa VALUES (31, true, '2023-06-12 12:25:34.111845', NULL, 'CENTRO DE ENSINO SUPERIOR RIOGRANDENSE (CESURG)', 1, NULL, 29, false);
INSERT INTO public.empresa VALUES (32, true, '2023-06-12 12:25:34.119328', NULL, 'CENTRO DE ENSINO SUPERIOR RIOGRANDENSE GUAPORE (CESURG GUAPORE)', 1, NULL, 30, false);
INSERT INTO public.empresa VALUES (33, true, '2023-06-12 12:25:34.126768', NULL, 'CENTRO DE ENSINO SUPERIOR SOCIESC DE JARAGUÁ DO SUL', 1, NULL, 31, false);
INSERT INTO public.empresa VALUES (34, true, '2023-06-12 12:25:34.134278', NULL, 'CENTRO DE ENSINO UNIFICADO DO PIAUÍ (CEUPI)', 1, NULL, 27, false);
INSERT INTO public.empresa VALUES (35, true, '2023-06-12 12:25:34.142208', NULL, 'CENTRO DE ESTUDOS DE PESSOAL E FORTE DUQUE DE CAXIAS (CEP)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (36, true, '2023-06-12 12:25:34.149702', NULL, 'CENTRO DE ESTUDOS EM DIREITO E NEGÓCIOS', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (37, true, '2023-06-12 12:25:34.157223', NULL, 'CENTRO DE ESTUDOS SUPERIORES APRENDIZ (CESA)', 1, NULL, 32, false);
INSERT INTO public.empresa VALUES (38, true, '2023-06-12 12:25:34.164885', NULL, 'CENTRO DE ESTUDOS SUPERIORES DE JATAÍ', 1, NULL, 21, false);
INSERT INTO public.empresa VALUES (39, true, '2023-06-12 12:25:34.198579', NULL, 'CENTRO DE FORMAÇÃO, TREINAMENTO E APERFEIÇOAMENTO (CEFOR)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (40, true, '2023-06-12 12:25:34.206258', NULL, 'CENTRO DE INSTRUÇÃO DE AVIAÇÃO DO EXÉRCITO (CIAVEX)', 1, NULL, 33, false);
INSERT INTO public.empresa VALUES (41, true, '2023-06-12 12:25:34.21366', NULL, 'CENTRO DE INSTRUÇÃO DE GUERRA ELETRÔNICA (CIGE)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (42, true, '2023-06-12 12:25:34.225782', NULL, 'CENTRO DE MEDICINA ESPECIALIZADA, PESQUISA E ENSINO (CEMEPE)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (43, true, '2023-06-12 12:25:34.233472', NULL, 'CENTRO FEDERAL DE EDUCAÇÃO TECNOLÓGICA CELSO SUCKOW DA FONSECA (CEFET/RJ)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (44, true, '2023-06-12 12:25:34.240894', NULL, 'CENTRO FEDERAL DE EDUCAÇÃO TECNOLÓGICA DE MINAS GERAIS (CEFET/MG)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (45, true, '2023-06-12 12:25:34.248228', NULL, 'CENTRO REGIONAL UNIVERSITÁRIO DE ESPÍRITO SANTO DO PINHAL (UNIPINHAL)', 1, NULL, 34, false);
INSERT INTO public.empresa VALUES (46, true, '2023-06-12 12:25:34.255571', NULL, 'CENTRO SUPERIOR DE ENSINO E PESQUISA DE MACHADO (CESEP)', 1, NULL, 35, false);
INSERT INTO public.empresa VALUES (47, true, '2023-06-12 12:25:34.263613', NULL, 'CENTRO SUPERIOR DE ESTUDOS JURÍDICOS CARLOS DRUMMOND DE ANDRADE (CSEJCDA)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (48, true, '2023-06-12 12:25:34.27162', NULL, 'CENTRO TÉCNICO-EDUCACIONAL SUPERIOR DO OESTE PARANAENSE (CTESOP)', 1, NULL, 36, false);
INSERT INTO public.empresa VALUES (49, true, '2023-06-12 12:25:34.279302', NULL, 'CENTRO UNIVERSIÁRIO UNIFTC', 1, NULL, 37, false);
INSERT INTO public.empresa VALUES (50, true, '2023-06-12 12:25:34.286866', NULL, 'CENTRO UNIVERSITÁRIO ACADEMIA (UNIACADEMIA)', 1, NULL, 38, false);
INSERT INTO public.empresa VALUES (51, true, '2023-06-12 12:25:34.294709', NULL, 'CENTRO UNIVERSITÁRIO ADVENTISTA DE SÃO PAULO (UNASP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (52, true, '2023-06-12 12:25:34.302035', NULL, 'CENTRO UNIVERSITÁRIO AESO - BARROS MELO (UNIAESO)', 1, NULL, 39, false);
INSERT INTO public.empresa VALUES (53, true, '2023-06-12 12:25:34.309413', NULL, 'CENTRO UNIVERSITÁRIO AGES (UNIAGES)', 1, NULL, 40, false);
INSERT INTO public.empresa VALUES (54, true, '2023-06-12 12:25:34.316832', NULL, 'CENTRO UNIVERSITÁRIO ALFREDO NASSER (UNIFAN)', 1, NULL, 41, false);
INSERT INTO public.empresa VALUES (55, true, '2023-06-12 12:25:34.324551', NULL, 'CENTRO UNIVERSITÁRIO ÁLVARES PENTEADO (FECAP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (56, true, '2023-06-12 12:25:34.332118', NULL, 'CENTRO UNIVERSITÁRIO ALVES FARIA (UNIALFA)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (57, true, '2023-06-12 12:25:34.33961', NULL, 'CENTRO UNIVERSITÁRIO AMPARENSE (UNIFIA)', 1, NULL, 43, false);
INSERT INTO public.empresa VALUES (58, true, '2023-06-12 12:25:34.347442', NULL, 'CENTRO UNIVERSITÁRIO ANHANGÜERA (UNIFIAN)', 1, NULL, 44, false);
INSERT INTO public.empresa VALUES (59, true, '2023-06-12 12:25:34.359688', NULL, 'CENTRO UNIVERSITÁRIO ANHANGUERA DE FORTALEZA (UNIPITÁGORAS)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (60, true, '2023-06-12 12:25:34.367251', NULL, 'CENTRO UNIVERSITÁRIO ANHANGUERA DE MARABÁ', 1, NULL, 46, false);
INSERT INTO public.empresa VALUES (61, true, '2023-06-12 12:25:34.375073', NULL, 'CENTRO UNIVERSITÁRIO ANHANGUERA DE SÃO PAULO', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (62, true, '2023-06-12 12:25:34.383045', NULL, 'CENTRO UNIVERSITÁRIO ANHANGUERA PITÁGORAS AMPLI', 1, NULL, 47, false);
INSERT INTO public.empresa VALUES (63, true, '2023-06-12 12:25:34.390427', NULL, 'CENTRO UNIVERSITÁRIO ANHANGUERA PITÁGORAS UNOPAR DE CAMPO GRANDE', 1, NULL, 48, false);
INSERT INTO public.empresa VALUES (64, true, '2023-06-12 12:25:34.397881', NULL, 'CENTRO UNIVERSITÁRIO ANHANGUERA PITÁGORAS UNOPAR DE NITERÓI (UNIAN-RJ)', 1, NULL, 49, false);
INSERT INTO public.empresa VALUES (65, true, '2023-06-12 12:25:34.405334', NULL, 'CENTRO UNIVERSITÁRIO ANTÔNIO EUFRÁSIO DE TOLEDO DE PRESIDENTE PRUDENTE - TOLEDO PRUDENTE (TOLEDO PRUDENTE)', 1, NULL, 50, false);
INSERT INTO public.empresa VALUES (66, true, '2023-06-12 12:25:34.41347', NULL, 'CENTRO UNIVERSITÁRIO APARÍCIO CARVALHO', 1, NULL, 51, false);
INSERT INTO public.empresa VALUES (67, true, '2023-06-12 12:25:34.420925', NULL, 'CENTRO UNIVERSITÁRIO ARAGUAIA (UNIARAGUAIA)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (68, true, '2023-06-12 12:25:34.428451', NULL, 'CENTRO UNIVERSITÁRIO ARMANDO ALVARES PENTEADO (FA-FAAP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (487, true, '2023-06-12 12:25:37.758211', NULL, 'ESCOLA SUPERIOR DE CATALÃO', 1, NULL, 17, false);
INSERT INTO public.empresa VALUES (69, true, '2023-06-12 12:25:34.436015', NULL, 'CENTRO UNIVERSITÁRIO ARNALDO HORÁCIO FERREIRA', 1, NULL, 52, false);
INSERT INTO public.empresa VALUES (70, true, '2023-06-12 12:25:34.444157', NULL, 'CENTRO UNIVERSITÁRIO ARTHUR SÁ EARP NETO (UNIFASE)', 1, NULL, 53, false);
INSERT INTO public.empresa VALUES (71, true, '2023-06-12 12:25:34.451767', NULL, 'CENTRO UNIVERSITÁRIO ASSIS GURGACZ (FAG)', 1, NULL, 54, false);
INSERT INTO public.empresa VALUES (72, true, '2023-06-12 12:25:34.459246', NULL, 'CENTRO UNIVERSITÁRIO ASSUNÇÃO (UNIFAI)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (73, true, '2023-06-12 12:25:34.466559', NULL, 'CENTRO UNIVERSITÁRIO ATENAS (UNIATENAS)', 1, NULL, 55, false);
INSERT INTO public.empresa VALUES (74, true, '2023-06-12 12:25:34.47473', NULL, 'CENTRO UNIVERSITÁRIO ATENEU', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (75, true, '2023-06-12 12:25:34.487033', NULL, 'CENTRO UNIVERSITÁRIO AUGUSTO MOTTA (UNISUAM)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (76, true, '2023-06-12 12:25:34.494528', NULL, 'CENTRO UNIVERSITÁRIO AUTÔNOMO DO BRASIL (UNIBRASIL)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (77, true, '2023-06-12 12:25:34.502049', NULL, 'CENTRO UNIVERSITARIO AVANTIS (UNIAVAN)', 1, NULL, 57, false);
INSERT INTO public.empresa VALUES (78, true, '2023-06-12 12:25:34.510113', NULL, 'CENTRO UNIVERSITÁRIO BARÃO DE MAUÁ (CBM)', 1, NULL, 58, false);
INSERT INTO public.empresa VALUES (79, true, '2023-06-12 12:25:34.517602', NULL, 'CENTRO UNIVERSITÁRIO BARRIGA VERDE (UNIBAVE)', 1, NULL, 59, false);
INSERT INTO public.empresa VALUES (80, true, '2023-06-12 12:25:34.525256', NULL, 'CENTRO UNIVERSITÁRIO BELAS ARTES DE SÃO PAULO (FEBASP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (81, true, '2023-06-12 12:25:34.532898', NULL, 'CENTRO UNIVERSITÁRIO BRASILEIRO (UNIBRA)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (82, true, '2023-06-12 12:25:34.540905', NULL, 'CENTRO UNIVERSITÁRIO BRASÍLIA DO ESTADO DE GOIÁS (UNIBRASÍLIA)', 1, NULL, 61, false);
INSERT INTO public.empresa VALUES (83, true, '2023-06-12 12:25:34.549906', NULL, 'CENTRO UNIVERSITÁRIO BRAZ CUBAS', 1, NULL, 62, false);
INSERT INTO public.empresa VALUES (84, true, '2023-06-12 12:25:34.557543', NULL, 'CENTRO UNIVERSITÁRIO CAMBURY (UNICAMBURY)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (85, true, '2023-06-12 12:25:34.565152', NULL, 'CENTRO UNIVERSITÁRIO CAMPO LIMPO PAULISTA ( UNIFACCAMP)', 1, NULL, 63, false);
INSERT INTO public.empresa VALUES (86, true, '2023-06-12 12:25:34.573151', NULL, 'CENTRO UNIVERSITÁRIO CAMPO REAL', 1, NULL, 64, false);
INSERT INTO public.empresa VALUES (87, true, '2023-06-12 12:25:34.580575', NULL, 'CENTRO UNIVERSITÁRIO CAMPOS DE ANDRADE (UNIANDRADE)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (88, true, '2023-06-12 12:25:34.588032', NULL, 'CENTRO UNIVERSITÁRIO CARLOS DRUMMOND DE ANDRADE (UNIDRUMMOND)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (89, true, '2023-06-12 12:25:34.595242', NULL, 'CENTRO UNIVERSITÁRIO CASTELO BRANCO (UNICB)', 1, NULL, 65, false);
INSERT INTO public.empresa VALUES (90, true, '2023-06-12 12:25:34.603163', NULL, 'CENTRO UNIVERSITÁRIO CATHEDRAL', 1, NULL, 66, false);
INSERT INTO public.empresa VALUES (91, true, '2023-06-12 12:25:34.610455', NULL, 'CENTRO UNIVERSITÁRIO CATÓLICA DE QUIXADÁ (UNICATÓLICA)', 1, NULL, 67, false);
INSERT INTO public.empresa VALUES (92, true, '2023-06-12 12:25:34.617887', NULL, 'CENTRO UNIVERSITÁRIO - CATÓLICA DE SANTA CATARINA EM JARAGUÁ DO SUL (CATÓLICA EM JARAGUÁ )', 1, NULL, 31, false);
INSERT INTO public.empresa VALUES (93, true, '2023-06-12 12:25:34.630096', NULL, 'CENTRO UNIVERSITÁRIO - CATÓLICA DE SANTA CATARINA EM JOINVILLE (CATÓLICA EM JOINVILE)', 1, NULL, 68, false);
INSERT INTO public.empresa VALUES (94, true, '2023-06-12 12:25:34.638232', NULL, 'CENTRO UNIVERSITÁRIO CATÓLICA DO LESTE DE MINAS GERAIS (UNILESTE)', 1, NULL, 69, false);
INSERT INTO public.empresa VALUES (95, true, '2023-06-12 12:25:34.645604', NULL, 'CENTRO UNIVERSITÁRIO CATÓLICA DO TOCANTINS (UNICATÓLICA)', 1, NULL, 23, false);
INSERT INTO public.empresa VALUES (96, true, '2023-06-12 12:25:34.652953', NULL, 'CENTRO UNIVERSITÁRIO CATÓLICO SALESIANO AUXILIUM (UNISALESIANO)', 1, NULL, 70, false);
INSERT INTO public.empresa VALUES (97, true, '2023-06-12 12:25:34.660273', NULL, 'CENTRO UNIVERSITÁRIO CELSO LISBOA (UCL)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (98, true, '2023-06-12 12:25:34.668187', NULL, 'CENTRO UNIVERSITÁRIO CENECISTA DE OSÓRIO (UNICNEC)', 1, NULL, 71, false);
INSERT INTO public.empresa VALUES (99, true, '2023-06-12 12:25:34.67586', NULL, 'CENTRO UNIVERSITÁRIO CENTRAL PAULISTA (UNICEP)', 1, NULL, 72, false);
INSERT INTO public.empresa VALUES (100, true, '2023-06-12 12:25:34.683331', NULL, 'CENTRO UNIVERSITÁRIO CESMAC (CESMAC)', 1, NULL, 73, false);
INSERT INTO public.empresa VALUES (101, true, '2023-06-12 12:25:34.692538', NULL, 'CENTRO UNIVERSITÁRIO CESUCA', 1, NULL, 74, false);
INSERT INTO public.empresa VALUES (102, true, '2023-06-12 12:25:34.700455', NULL, 'CENTRO UNIVERSITÁRIO CEUNI - FAMETRO (FAMETRO)', 1, NULL, 75, false);
INSERT INTO public.empresa VALUES (103, true, '2023-06-12 12:25:34.708465', NULL, 'CENTRO UNIVERSITÁRIO CHRISTUS (UNICHRISTUS)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (104, true, '2023-06-12 12:25:34.715919', NULL, 'CENTRO UNIVERSITÁRIO CIDADE VERDE (UNICV)', 1, NULL, 76, false);
INSERT INTO public.empresa VALUES (105, true, '2023-06-12 12:25:34.723222', NULL, 'CENTRO UNIVERSITÁRIO CNEC DE BENTO GONÇALVES', 1, NULL, 77, false);
INSERT INTO public.empresa VALUES (106, true, '2023-06-12 12:25:34.731187', NULL, 'CENTRO UNIVERSITÁRIO CURITIBA (UNICURITIBA)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (107, true, '2023-06-12 12:25:34.742606', NULL, 'CENTRO UNIVERSITÁRIO DA AMAZÔNIA (UNAMA)', 1, NULL, 78, false);
INSERT INTO public.empresa VALUES (108, true, '2023-06-12 12:25:34.750308', NULL, 'CENTRO UNIVERSITÁRIO DA AMAZÔNIA (UNIESAMAZ)', 1, NULL, 79, false);
INSERT INTO public.empresa VALUES (109, true, '2023-06-12 12:25:34.75766', NULL, 'CENTRO UNIVERSITÁRIO DA FUNDAÇÃO EDUCACIONAL DE BARRETOS (UNIFEB)', 1, NULL, 80, false);
INSERT INTO public.empresa VALUES (110, true, '2023-06-12 12:25:34.765485', NULL, 'CENTRO UNIVERSITÁRIO DA FUNDAÇÃO EDUCACIONAL GUAXUPÉ (UNIFEG)', 1, NULL, 81, false);
INSERT INTO public.empresa VALUES (111, true, '2023-06-12 12:25:34.772756', NULL, 'CENTRO UNIVERSITÁRIO DA FUNDAÇÃO EDUCACIONAL INACIANA PE SABÓIA DE MEDEIROS (FEI)', 1, NULL, 82, false);
INSERT INTO public.empresa VALUES (112, true, '2023-06-12 12:25:34.780949', NULL, 'CENTRO UNIVERSITÁRIO DA FUNDAÇÃO HERMINIO OMETTO (FHO)', 1, NULL, 83, false);
INSERT INTO public.empresa VALUES (113, true, '2023-06-12 12:25:34.789218', NULL, 'CENTRO UNIVERSITÁRIO DA GRANDE DOURADOS (UNIGRAN)', 1, NULL, 84, false);
INSERT INTO public.empresa VALUES (114, true, '2023-06-12 12:25:34.797284', NULL, 'CENTRO UNIVERSITÁRIO DA GRANDE FORTALEZA (UNIGRANDE)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (115, true, '2023-06-12 12:25:34.804863', NULL, 'CENTRO UNIVERSITÁRIO DA INDÚSTRIA (UNINDUS)', 1, NULL, 85, false);
INSERT INTO public.empresa VALUES (116, true, '2023-06-12 12:25:34.812385', NULL, 'CENTRO UNIVERSITÁRIO DA REGIÃO DA CAMPANHA', 1, NULL, 86, false);
INSERT INTO public.empresa VALUES (117, true, '2023-06-12 12:25:34.819814', NULL, 'CENTRO UNIVERSITÁRIO DAS AMÉRICAS (CAM)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (118, true, '2023-06-12 12:25:34.827914', NULL, 'CENTRO UNIVERSITÁRIO DA SERRA GAÚCHA (FSG)', 1, NULL, 87, false);
INSERT INTO public.empresa VALUES (119, true, '2023-06-12 12:25:34.835385', NULL, 'CENTRO UNIVERSITÁRIO DAS FACULDADES ASSOCIADAS DE ENSINO - FAE (UNIFAE)', 1, NULL, 88, false);
INSERT INTO public.empresa VALUES (120, true, '2023-06-12 12:25:34.842739', NULL, 'CENTRO UNIVERSITÁRIO DAS FACULDADES INTEGRADAS DE OURINHOS (UNIFIO)', 1, NULL, 89, false);
INSERT INTO public.empresa VALUES (121, true, '2023-06-12 12:25:34.850277', NULL, 'CENTRO UNIVERSITÁRIO DAS FACULDADES METROPOLITANAS UNIDAS (FMU)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (122, true, '2023-06-12 12:25:34.858304', NULL, 'CENTRO UNIVERSITÁRIO DA VITÓRIA DE SANTO ANTÃO (UNIVISA)', 1, NULL, 90, false);
INSERT INTO public.empresa VALUES (123, true, '2023-06-12 12:25:34.865813', NULL, 'CENTRO UNIVERSITÁRIO DE ADAMANTINA (FAI)', 1, NULL, 91, false);
INSERT INTO public.empresa VALUES (124, true, '2023-06-12 12:25:34.873285', NULL, 'CENTRO UNIVERSITÁRIO DE ARARAS - (UNAR)', 1, NULL, 83, false);
INSERT INTO public.empresa VALUES (125, true, '2023-06-12 12:25:34.881098', NULL, 'CENTRO UNIVERSITÁRIO DE BARRA MANSA (UBM)', 1, NULL, 92, false);
INSERT INTO public.empresa VALUES (126, true, '2023-06-12 12:25:34.889143', NULL, 'CENTRO UNIVERSITÁRIO DE BAURU', 1, NULL, 93, false);
INSERT INTO public.empresa VALUES (127, true, '2023-06-12 12:25:34.901251', NULL, 'CENTRO UNIVERSITÁRIO DE BELO HORIZONTE (UNI-BH)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (128, true, '2023-06-12 12:25:34.908676', NULL, 'CENTRO UNIVERSITÁRIO DE BRASÍLIA (UNICEUB)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (129, true, '2023-06-12 12:25:34.916613', NULL, 'CENTRO UNIVERSITÁRIO DE BRUSQUE (UNIFEBE)', 1, NULL, 94, false);
INSERT INTO public.empresa VALUES (130, true, '2023-06-12 12:25:34.924732', NULL, 'CENTRO UNIVERSITÁRIO DE CARATINGA (UNEC)', 1, NULL, 95, false);
INSERT INTO public.empresa VALUES (131, true, '2023-06-12 12:25:34.932724', NULL, 'CENTRO UNIVERSITÁRIO DE CIÊNCIAS E EMPREENDEDORISMO (UNIFACEMP)', 1, NULL, 96, false);
INSERT INTO public.empresa VALUES (132, true, '2023-06-12 12:25:34.940365', NULL, 'CENTRO UNIVERSITÁRIO DE CIÊNCIAS E TECNOLOGIA DO MARANHÃO (UNIFACEMA)', 1, NULL, 97, false);
INSERT INTO public.empresa VALUES (133, true, '2023-06-12 12:25:34.952599', NULL, 'CENTRO UNIVERSITÁRIO DE DESENVOLVIMENTO DO CENTRO OESTE (UNIDESC)', 1, NULL, 98, false);
INSERT INTO public.empresa VALUES (134, true, '2023-06-12 12:25:34.960068', NULL, 'CENTRO UNIVERSITÁRIO DE ENSINO, CIÊNCIA E TECNOLOGIA DO PARANÁ (UNIENSINO)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (135, true, '2023-06-12 12:25:34.967726', NULL, 'CENTRO UNIVERSITÁRIO DE ENSINO SUPERIOR DO AMAZONAS (CIESA)', 1, NULL, 75, false);
INSERT INTO public.empresa VALUES (136, true, '2023-06-12 12:25:34.975327', NULL, 'CENTRO UNIVERSITÁRIO DE EXCELÊNCIA (UNEX)', 1, NULL, 99, false);
INSERT INTO public.empresa VALUES (137, true, '2023-06-12 12:25:34.983759', NULL, 'CENTRO UNIVERSITÁRIO DE EXCELÊNCIA ENIAC (ENIAC)', 1, NULL, 100, false);
INSERT INTO public.empresa VALUES (138, true, '2023-06-12 12:25:34.991693', NULL, 'CENTRO UNIVERSITÁRIO DE FORMIGA (UNIFORMG)', 1, NULL, 101, false);
INSERT INTO public.empresa VALUES (139, true, '2023-06-12 12:25:34.999274', NULL, 'CENTRO UNIVERSITÁRIO DE GOIÂNIA (UNICEUG)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (140, true, '2023-06-12 12:25:35.006828', NULL, 'CENTRO UNIVERSITÁRIO DE GOIÁS (UNIGOIÁS)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (141, true, '2023-06-12 12:25:35.014963', NULL, 'CENTRO UNIVERSITÁRIO DE GOIATUBA (UNICERRADO)', 1, NULL, 102, false);
INSERT INTO public.empresa VALUES (142, true, '2023-06-12 12:25:35.02814', NULL, 'CENTRO UNIVERSITÁRIO DE ITAJUBÁ (FEPI)', 1, NULL, 103, false);
INSERT INTO public.empresa VALUES (143, true, '2023-06-12 12:25:35.03565', NULL, 'CENTRO UNIVERSITÁRIO DE ITAPIRA UNIESI (UNIESI)', 1, NULL, 104, false);
INSERT INTO public.empresa VALUES (144, true, '2023-06-12 12:25:35.043697', NULL, 'CENTRO UNIVERSITÁRIO DE JAGUARIÚNA (UNIFAJ)', 1, NULL, 105, false);
INSERT INTO public.empresa VALUES (145, true, '2023-06-12 12:25:35.052201', NULL, 'CENTRO UNIVERSITÁRIO DE JALES (UNIJALES)', 1, NULL, 106, false);
INSERT INTO public.empresa VALUES (146, true, '2023-06-12 12:25:35.060757', NULL, 'CENTRO UNIVERSITÁRIO DE JOÃO PESSOA (UNIPÊ)', 1, NULL, 107, false);
INSERT INTO public.empresa VALUES (147, true, '2023-06-12 12:25:35.068171', NULL, 'CENTRO UNIVERSITÁRIO DE LAVRAS (UNILAVRAS)', 1, NULL, 108, false);
INSERT INTO public.empresa VALUES (148, true, '2023-06-12 12:25:35.080323', NULL, 'CENTRO UNIVERSITÁRIO DE LINS (UNILINS)', 1, NULL, 70, false);
INSERT INTO public.empresa VALUES (149, true, '2023-06-12 12:25:35.088175', NULL, 'CENTRO UNIVERSITÁRIO DE MINEIROS (UNIFIMES)', 1, NULL, 109, false);
INSERT INTO public.empresa VALUES (150, true, '2023-06-12 12:25:35.095726', NULL, 'CENTRO UNIVERSITÁRIO DE PATO BRANCO (UNIDEP)', 1, NULL, 110, false);
INSERT INTO public.empresa VALUES (151, true, '2023-06-12 12:25:35.103209', NULL, 'CENTRO UNIVERSITÁRIO DE PATOS (UNIFIP)', 1, NULL, 111, false);
INSERT INTO public.empresa VALUES (152, true, '2023-06-12 12:25:35.110679', NULL, 'CENTRO UNIVERSITÁRIO DE PATOS DE MINAS (UNIPAM)', 1, NULL, 112, false);
INSERT INTO public.empresa VALUES (153, true, '2023-06-12 12:25:35.118761', NULL, 'CENTRO UNIVERSITÁRIO DE PAULÍNIA (UNIFACP)', 1, NULL, 113, false);
INSERT INTO public.empresa VALUES (154, true, '2023-06-12 12:25:35.126202', NULL, 'CENTRO UNIVERSITÁRIO DE RIO PRETO (UNIRP)', 1, NULL, 114, false);
INSERT INTO public.empresa VALUES (155, true, '2023-06-12 12:25:35.133626', NULL, 'CENTRO UNIVERSITÁRIO DE RONDÔNIA (UNESC)', 1, NULL, 115, false);
INSERT INTO public.empresa VALUES (156, true, '2023-06-12 12:25:35.141447', NULL, 'CENTRO UNIVERSITÁRIO DE SALVADOR (UNICEUSA)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (157, true, '2023-06-12 12:25:35.152338', NULL, 'CENTRO UNIVERSITÁRIO DE SANTA FÉ DO SUL (UNIFUNEC)', 1, NULL, 117, false);
INSERT INTO public.empresa VALUES (158, true, '2023-06-12 12:25:35.159727', NULL, 'CENTRO UNIVERSITÁRIO DE SETE LAGOAS (UNIFEMM)', 1, NULL, 24, false);
INSERT INTO public.empresa VALUES (159, true, '2023-06-12 12:25:35.167393', NULL, 'CENTRO UNIVERSITÁRIO DE TALENTOS HUMANOS (UNIFACTHUS)', 1, NULL, 118, false);
INSERT INTO public.empresa VALUES (160, true, '2023-06-12 12:25:35.174846', NULL, 'CENTRO UNIVERSITÁRIO DE TECNOLOGIA CARLOS DRUMMOND DE ANDRADE', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (161, true, '2023-06-12 12:25:35.18292', NULL, 'CENTRO UNIVERSITÁRIO DE TECNOLOGIA DE CURITIBA (UNIFATEC)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (162, true, '2023-06-12 12:25:35.190338', NULL, 'CENTRO UNIVERSITÁRIO DE TECNOLOGIA E NEGÓCIOS CARLOS DRUMMOND DE ANDRADE (UNITEN CDA)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (163, true, '2023-06-12 12:25:35.198018', NULL, 'CENTRO UNIVERSITÁRIO DE UNIÃO DA VITÓRIA (UNIUV)', 1, NULL, 119, false);
INSERT INTO public.empresa VALUES (164, true, '2023-06-12 12:25:35.205506', NULL, 'CENTRO UNIVERSITÁRIO DE VALENÇA (UNIFAA)', 1, NULL, 120, false);
INSERT INTO public.empresa VALUES (165, true, '2023-06-12 12:25:35.213461', NULL, 'CENTRO UNIVERSITÁRIO DE VÁRZEA GRANDE (UNIVAG)', 1, NULL, 121, false);
INSERT INTO public.empresa VALUES (166, true, '2023-06-12 12:25:35.220814', NULL, 'CENTRO UNIVERSITÁRIO DE VIÇOSA (UNIVIÇOSA)', 1, NULL, 122, false);
INSERT INTO public.empresa VALUES (167, true, '2023-06-12 12:25:35.228231', NULL, 'CENTRO UNIVERSITÁRIO DE VOLTA REDONDA (UNIFOA)', 1, NULL, 123, false);
INSERT INTO public.empresa VALUES (168, true, '2023-06-12 12:25:35.235598', NULL, 'CENTRO UNIVERSITÁRIO DE VOTUPORANGA (UNIFEV)', 1, NULL, 10, false);
INSERT INTO public.empresa VALUES (169, true, '2023-06-12 12:25:35.243551', NULL, 'CENTRO UNIVERSITÁRIO DINÂMICA DAS CATARATAS (UDC)', 1, NULL, 124, false);
INSERT INTO public.empresa VALUES (170, true, '2023-06-12 12:25:35.251008', NULL, 'CENTRO UNIVERSITÁRIO DO CERRADO-PATROCÍNIO (UNICERP)', 1, NULL, 125, false);
INSERT INTO public.empresa VALUES (171, true, '2023-06-12 12:25:35.258297', NULL, 'CENTRO UNIVERSITÁRIO DOCTUM DE TEÓFILO OTONI (UNIDOCTUM)', 1, NULL, 7, false);
INSERT INTO public.empresa VALUES (172, true, '2023-06-12 12:25:35.265589', NULL, 'CENTRO UNIVERSITÁRIO DO DISTRITO FEDERAL (UDF)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (173, true, '2023-06-12 12:25:35.273433', NULL, 'CENTRO UNIVERSITÁRIO DO ESPÍRITO SANTO (UNESC)', 1, NULL, 65, false);
INSERT INTO public.empresa VALUES (174, true, '2023-06-12 12:25:35.285827', NULL, 'CENTRO UNIVERSITÁRIO DO ESTADO DO PARÁ (CESUPA)', 1, NULL, 79, false);
INSERT INTO public.empresa VALUES (175, true, '2023-06-12 12:25:35.293576', NULL, 'CENTRO UNIVERSITÁRIO DO INSTITUTO DE EDUCAÇÃO SUPERIOR DE BRASÍLIA - IESB (IESB)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (176, true, '2023-06-12 12:25:35.301491', NULL, 'CENTRO UNIVERSITÁRIO DO INSTITUTO MAUÁ DE TECNOLOGIA (CEUN-IMT)', 1, NULL, 126, false);
INSERT INTO public.empresa VALUES (177, true, '2023-06-12 12:25:35.309367', NULL, 'CENTRO UNIVERSITÁRIO DOM BOSCO DO RIO DE JANEIRO (UNIDOMBOSCO-RJ)', 1, NULL, 4, false);
INSERT INTO public.empresa VALUES (178, true, '2023-06-12 12:25:35.316855', NULL, 'CENTRO UNIVERSITÁRIO DOM PEDRO II (UNIDOMPEDRO)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (179, true, '2023-06-12 12:25:35.324747', NULL, 'CENTRO UNIVERSITÁRIO DON DOMÊNICO (UNIDON)', 1, NULL, 127, false);
INSERT INTO public.empresa VALUES (180, true, '2023-06-12 12:25:35.332396', NULL, 'CENTRO UNIVERSITÁRIO DO NORTE (UNINORTE)', 1, NULL, 75, false);
INSERT INTO public.empresa VALUES (181, true, '2023-06-12 12:25:35.340206', NULL, 'CENTRO UNIVERSITÁRIO DO NORTE DE MINAS (UNINORTE MINAS)', 1, NULL, 128, false);
INSERT INTO public.empresa VALUES (182, true, '2023-06-12 12:25:35.347672', NULL, 'CENTRO UNIVERSITÁRIO DO NORTE DE SÃO PAULO (UNORTE)', 1, NULL, 114, false);
INSERT INTO public.empresa VALUES (183, true, '2023-06-12 12:25:35.355116', NULL, 'CENTRO UNIVERSITÁRIO DO PARANÁ (UNIPA)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (184, true, '2023-06-12 12:25:35.362695', NULL, 'CENTRO UNIVERSITÁRIO DO PIAUÍ (UNIFAPI)', 1, NULL, 27, false);
INSERT INTO public.empresa VALUES (185, true, '2023-06-12 12:25:35.370613', NULL, 'CENTRO UNIVERSITÁRIO DO PLANALTO CENTRAL APPARECIDO DOS SANTOS (UNICEPLAC)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (186, true, '2023-06-12 12:25:35.37807', NULL, 'CENTRO UNIVERSITÁRIO DO PLANALTO DE ARAXÁ (UNIARAXÁ)', 1, NULL, 129, false);
INSERT INTO public.empresa VALUES (187, true, '2023-06-12 12:25:35.385395', NULL, 'CENTRO UNIVERSITARIO DO RECIFE (UNIPESU)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (188, true, '2023-06-12 12:25:35.392728', NULL, 'CENTRO UNIVERSITÁRIO DO RIO DE JANEIRO (UNIRJ)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (189, true, '2023-06-12 12:25:35.400716', NULL, 'CENTRO UNIVERSITÁRIO DO RIO GRANDE DO NORTE (UNI-RN)', 1, NULL, 130, false);
INSERT INTO public.empresa VALUES (190, true, '2023-06-12 12:25:35.408043', NULL, 'CENTRO UNIVERSITÁRIO DO RIO SÃO FRANCISCO UNIRIOS (UNIRIOS)', 1, NULL, 131, false);
INSERT INTO public.empresa VALUES (191, true, '2023-06-12 12:25:35.415474', NULL, 'CENTRO UNIVERSITÁRIO DOS GUARARAPES (UNIFG)', 1, NULL, 132, false);
INSERT INTO public.empresa VALUES (192, true, '2023-06-12 12:25:35.422842', NULL, 'CENTRO UNIVERSITÁRIO DO SUDESTE MINEIRO (UNICSUM)', 1, NULL, 38, false);
INSERT INTO public.empresa VALUES (193, true, '2023-06-12 12:25:35.430923', NULL, 'CENTRO UNIVERSITÁRIO DO SUL DE MINAS (UNIS-MG)', 1, NULL, 133, false);
INSERT INTO public.empresa VALUES (194, true, '2023-06-12 12:25:35.438478', NULL, 'CENTRO UNIVERSITÁRIO DO TRIÂNGULO (UNITRI)', 1, NULL, 134, false);
INSERT INTO public.empresa VALUES (195, true, '2023-06-12 12:25:35.446233', NULL, 'CENTRO UNIVERSITÁRIO DOUTOR LEÃO SAMPAIO (UNILEÃO)', 1, NULL, 135, false);
INSERT INTO public.empresa VALUES (196, true, '2023-06-12 12:25:35.45357', NULL, 'CENTRO UNIVERSITÁRIO DO VALE DO ARAGUAIA (UNIVAR)', 1, NULL, 66, false);
INSERT INTO public.empresa VALUES (197, true, '2023-06-12 12:25:35.46632', NULL, 'CENTRO UNIVERSITÁRIO DO VALE DO JAGUARIBE (UNIJAGUARIBE)', 1, NULL, 136, false);
INSERT INTO public.empresa VALUES (198, true, '2023-06-12 12:25:35.473666', NULL, 'CENTRO UNIVERSITÁRIO DO VALE DO RIBEIRA (UNIVR)', 1, NULL, 137, false);
INSERT INTO public.empresa VALUES (199, true, '2023-06-12 12:25:35.48114', NULL, 'CENTRO UNIVERSITÁRIO ESPÍRITO-SANTENSE/FAESA', 1, NULL, 25, false);
INSERT INTO public.empresa VALUES (200, true, '2023-06-12 12:25:35.488394', NULL, 'CENTRO UNIVERSITÁRIO ESTÁCIO DA AMAZÔNIA (ESTÁCIO AMAZÔNIA)', 1, NULL, 138, false);
INSERT INTO public.empresa VALUES (201, true, '2023-06-12 12:25:35.4964', NULL, 'CENTRO UNIVERSITÁRIO ESTÁCIO DA BAHIA (ESTÁCIO BAHIA)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (202, true, '2023-06-12 12:25:35.50376', NULL, 'CENTRO UNIVERSITÁRIO ESTÁCIO DE BELO HORIZONTE - ESTÁCIO BH (ESTÁCIO BH)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (203, true, '2023-06-12 12:25:35.511176', NULL, 'CENTRO UNIVERSITÁRIO ESTÁCIO DE BRASÍLIA - ESTÁCIO BRASÍLIA (ESTÁCIO BRASÍLIA)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (204, true, '2023-06-12 12:25:35.523366', NULL, 'CENTRO UNIVERSITÁRIO ESTÁCIO DE GOIÁS (ESTÁCIO GOIÁS)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (205, true, '2023-06-12 12:25:35.531304', NULL, 'CENTRO UNIVERSITÁRIO ESTÁCIO DE JI-PARANÁ (ESTÁCIO UNIJIPA)', 1, NULL, 139, false);
INSERT INTO public.empresa VALUES (206, true, '2023-06-12 12:25:35.538955', NULL, 'CENTRO UNIVERSITÁRIO ESTÁCIO DE RIBEIRÃO PRETO (ESTÁCIO RIBEIRÃO PRE)', 1, NULL, 58, false);
INSERT INTO public.empresa VALUES (207, true, '2023-06-12 12:25:35.546375', NULL, 'CENTRO UNIVERSITÁRIO ESTÁCIO DE SANTA CATARINA - ESTÁCIO SANTA CATARINA', 1, NULL, 140, false);
INSERT INTO public.empresa VALUES (208, true, '2023-06-12 12:25:35.554333', NULL, 'CENTRO UNIVERSITÁRIO ESTÁCIO DE SÃO LUÍS', 1, NULL, 141, false);
INSERT INTO public.empresa VALUES (209, true, '2023-06-12 12:25:35.562304', NULL, 'CENTRO UNIVERSITÁRIO ESTÁCIO DE SÃO PAULO (ESTÁCIO SÃO PAULO)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (210, true, '2023-06-12 12:25:35.569785', NULL, 'CENTRO UNIVERSITÁRIO ESTÁCIO DE SERGIPE', 1, NULL, 142, false);
INSERT INTO public.empresa VALUES (211, true, '2023-06-12 12:25:35.576978', NULL, 'CENTRO UNIVERSITÁRIO ESTÁCIO DO CEARÁ (ESTÁCIO CEARÁ)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (212, true, '2023-06-12 12:25:35.584449', NULL, 'CENTRO UNIVERSITÁRIO ESTÁCIO DO RECIFE', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (213, true, '2023-06-12 12:25:35.592324', NULL, 'CENTRO UNIVERSITÁRIO ESTÁCIO JUIZ DE FORA - ESTÁCIO JUIZ DE FORA', 1, NULL, 38, false);
INSERT INTO public.empresa VALUES (214, true, '2023-06-12 12:25:35.599991', NULL, 'CENTRO UNIVERSITÁRIO ESTÁCIO META DE RIO BRANCO ESTÁCIO (UNIMETA)', 1, NULL, 143, false);
INSERT INTO public.empresa VALUES (215, true, '2023-06-12 12:25:35.607389', NULL, 'CENTRO UNIVERSITÁRIO ETEP', 1, NULL, 144, false);
INSERT INTO public.empresa VALUES (216, true, '2023-06-12 12:25:35.618468', NULL, 'CENTRO UNIVERSITÁRIO EURÍPEDES DE MARÍLIA (UNIVEM)', 1, NULL, 145, false);
INSERT INTO public.empresa VALUES (217, true, '2023-06-12 12:25:35.626229', NULL, 'CENTRO UNIVERSITÁRIO EURO-AMERICANO (UNIEURO)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (218, true, '2023-06-12 12:25:35.633622', NULL, 'CENTRO UNIVERSITÁRIO FACENS (UNIFACENS)', 1, NULL, 146, false);
INSERT INTO public.empresa VALUES (219, true, '2023-06-12 12:25:35.641181', NULL, 'CENTRO UNIVERSITÁRIO FACEX (UNIFACEX)', 1, NULL, 130, false);
INSERT INTO public.empresa VALUES (220, true, '2023-06-12 12:25:35.65393', NULL, 'CENTRO UNIVERSITÁRIO FACID WYDEN (UNIFACID WYDEN)', 1, NULL, 27, false);
INSERT INTO public.empresa VALUES (221, true, '2023-06-12 12:25:35.661508', NULL, 'CENTRO UNIVERSITÁRIO FACISA (UNIFACISA)', 1, NULL, 147, false);
INSERT INTO public.empresa VALUES (222, true, '2023-06-12 12:25:35.668878', NULL, 'CENTRO UNIVERSITÁRIO FACOL (UNIFACOL)', 1, NULL, 90, false);
INSERT INTO public.empresa VALUES (223, true, '2023-06-12 12:25:35.676165', NULL, 'CENTRO UNIVERSITÁRIO FACUNICAMPS (FACUNICAMPS)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (224, true, '2023-06-12 12:25:35.68428', NULL, 'CENTRO UNIVERSITÁRIO FACVEST (UNIFACVEST)', 1, NULL, 148, false);
INSERT INTO public.empresa VALUES (225, true, '2023-06-12 12:25:35.691632', NULL, 'CENTRO UNIVERSITÁRIO FADERGS (FADERGS)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (226, true, '2023-06-12 12:25:35.699032', NULL, 'CENTRO UNIVERSITÁRIO FAEL (UNIFAEL)', 1, NULL, 150, false);
INSERT INTO public.empresa VALUES (227, true, '2023-06-12 12:25:35.706557', NULL, 'CENTRO UNIVERSITÁRIO FAEMA (UNIFAEMA)', 1, NULL, 151, false);
INSERT INTO public.empresa VALUES (228, true, '2023-06-12 12:25:35.714635', NULL, 'CENTRO UNIVERSITÁRIO FAESA', 1, NULL, 25, false);
INSERT INTO public.empresa VALUES (229, true, '2023-06-12 12:25:35.721987', NULL, 'CENTRO UNIVERSITÁRIO FAI', 1, NULL, 152, false);
INSERT INTO public.empresa VALUES (230, true, '2023-06-12 12:25:35.729378', NULL, 'CENTRO UNIVERSITÁRIO FAMEC (UNIFAMEC)', 1, NULL, 153, false);
INSERT INTO public.empresa VALUES (231, true, '2023-06-12 12:25:35.736878', NULL, 'CENTRO UNIVERSITÁRIO FAMETRO ( UNIFAMETRO)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (232, true, '2023-06-12 12:25:35.744757', NULL, 'CENTRO UNIVERSITÁRIO FAMINAS (UNIFAMINAS)', 1, NULL, 154, false);
INSERT INTO public.empresa VALUES (233, true, '2023-06-12 12:25:35.752348', NULL, 'CENTRO UNIVERSITÁRIO FANOR WYDEN (UNIFANOR WYDEN)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (234, true, '2023-06-12 12:25:35.759613', NULL, 'CENTRO UNIVERSITÁRIO FARIAS BRITO', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (235, true, '2023-06-12 12:25:35.766995', NULL, 'CENTRO UNIVERSITÁRIO FASIPE', 1, NULL, 155, false);
INSERT INTO public.empresa VALUES (236, true, '2023-06-12 12:25:35.775004', NULL, 'CENTRO UNIVERSITÁRIO FAVENI (UNIFAVENI)', 1, NULL, 100, false);
INSERT INTO public.empresa VALUES (237, true, '2023-06-12 12:25:35.782436', NULL, 'CENTRO UNIVERSITÁRIO FAVIP WYDEN (UNIFAVIP WYDEN)', 1, NULL, 156, false);
INSERT INTO public.empresa VALUES (238, true, '2023-06-12 12:25:35.789748', NULL, 'CENTRO UNIVERSITÁRIO FBV WYDEN (UNIFBV WYDEN)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (239, true, '2023-06-12 12:25:35.797255', NULL, 'CENTRO UNIVERSITÁRIO FG (UNIFG)', 1, NULL, 157, false);
INSERT INTO public.empresa VALUES (240, true, '2023-06-12 12:25:35.805446', NULL, 'CENTRO UNIVERSITÁRIO FIBRA (UNIFIBRA)', 1, NULL, 79, false);
INSERT INTO public.empresa VALUES (241, true, '2023-06-12 12:25:35.812988', NULL, 'CENTRO UNIVERSITÁRIO FIEO (UNIFIEO)', 1, NULL, 158, false);
INSERT INTO public.empresa VALUES (242, true, '2023-06-12 12:25:35.820232', NULL, 'CENTRO UNIVERSITÁRIO FILADÉLFIA (UNIFIL)', 1, NULL, 159, false);
INSERT INTO public.empresa VALUES (243, true, '2023-06-12 12:25:35.827605', NULL, 'CENTRO UNIVERSITÁRIO FIP-MOC (UNIFIPMOC)', 1, NULL, 128, false);
INSERT INTO public.empresa VALUES (244, true, '2023-06-12 12:25:35.840706', NULL, 'CENTRO UNIVERSITÁRIO FLUMINENSE (UNIFLU)', 1, NULL, 160, false);
INSERT INTO public.empresa VALUES (245, true, '2023-06-12 12:25:35.84845', NULL, 'CENTRO UNIVERSITÁRIO FMABC (FMABC)', 1, NULL, 47, false);
INSERT INTO public.empresa VALUES (246, true, '2023-06-12 12:25:35.856345', NULL, 'CENTRO UNIVERSITÁRIO FUNCESI (UNIFUNCESI)', 1, NULL, 161, false);
INSERT INTO public.empresa VALUES (247, true, '2023-06-12 12:25:35.863852', NULL, 'CENTRO UNIVERSITÁRIO FUNDAÇÃO DE ENSINO OCTÁVIO BASTOS - FEOB (UNIFEOB)', 1, NULL, 88, false);
INSERT INTO public.empresa VALUES (248, true, '2023-06-12 12:25:35.871859', NULL, 'CENTRO UNIVERSITÁRIO FUNDAÇÃO SANTO ANDRÉ (CUFSA)', 1, NULL, 47, false);
INSERT INTO public.empresa VALUES (249, true, '2023-06-12 12:25:35.879327', NULL, 'CENTRO UNIVERSITÁRIO FUNORTE (UNIFUNORTE)', 1, NULL, 128, false);
INSERT INTO public.empresa VALUES (250, true, '2023-06-12 12:25:35.886824', NULL, 'CENTRO UNIVERSITÁRIO FUNVIC (UNIFUNVIC)', 1, NULL, 162, false);
INSERT INTO public.empresa VALUES (251, true, '2023-06-12 12:25:35.894285', NULL, 'CENTRO UNIVERSITÁRIO GAMA E SOUZA', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (252, true, '2023-06-12 12:25:35.902145', NULL, 'CENTRO UNIVERSITÁRIO GERALDO DI BIASE (UGB)', 1, NULL, 123, false);
INSERT INTO public.empresa VALUES (253, true, '2023-06-12 12:25:35.909533', NULL, 'CENTRO UNIVERSITÁRIO GOVERNADOR OZANAM COELHO (UNIFAGOC)', 1, NULL, 163, false);
INSERT INTO public.empresa VALUES (254, true, '2023-06-12 12:25:35.916822', NULL, 'CENTRO UNIVERSITÁRIO GOYAZES (UNIGOYAZES)', 1, NULL, 164, false);
INSERT INTO public.empresa VALUES (255, true, '2023-06-12 12:25:35.924266', NULL, 'CENTRO UNIVERSITÁRIO GUAIRACÁ (UNIGUAIRACÁ)', 1, NULL, 64, false);
INSERT INTO public.empresa VALUES (256, true, '2023-06-12 12:25:35.932229', NULL, 'CENTRO UNIVERSITÁRIO IBMEC (IBMEC)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (257, true, '2023-06-12 12:25:35.939608', NULL, 'CENTRO UNIVERSITÁRIO IBMR', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (258, true, '2023-06-12 12:25:35.947', NULL, 'CENTRO UNIVERSITÁRIO ICESP (UNICESP)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (259, true, '2023-06-12 12:25:35.954587', NULL, 'CENTRO UNIVERSITÁRIO IDEAU (UNIDEAU)', 1, NULL, 165, false);
INSERT INTO public.empresa VALUES (260, true, '2023-06-12 12:25:35.962422', NULL, 'CENTRO UNIVERSITÁRIO IMEPAC - ARAGUARI', 1, NULL, 166, false);
INSERT INTO public.empresa VALUES (261, true, '2023-06-12 12:25:35.969746', NULL, 'CENTRO UNIVERSITÁRIO INGÁ (UNINGÁ)', 1, NULL, 76, false);
INSERT INTO public.empresa VALUES (262, true, '2023-06-12 12:25:35.977148', NULL, 'CENTRO UNIVERSITÁRIO INTA (UNINTA)', 1, NULL, 167, false);
INSERT INTO public.empresa VALUES (263, true, '2023-06-12 12:25:35.984608', NULL, 'CENTRO UNIVERSITÁRIO INTEGRADO DE CAMPO MOURÃO', 1, NULL, 168, false);
INSERT INTO public.empresa VALUES (264, true, '2023-06-12 12:25:35.992527', NULL, 'CENTRO UNIVERSITÁRIO INTERNACIONAL (UNINTER)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (265, true, '2023-06-12 12:25:36.000229', NULL, 'CENTRO UNIVERSITÁRIO INTERNACIONAL SIGNORELLI (UNISIGNORELLI)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (266, true, '2023-06-12 12:25:36.007524', NULL, 'CENTRO UNIVERSITÁRIO ÍTALO-BRASILEIRO (UNIÍTALO)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (267, true, '2023-06-12 12:25:36.014831', NULL, 'CENTRO UNIVERSITÁRIO ITOP (UNITOP)', 1, NULL, 23, false);
INSERT INTO public.empresa VALUES (268, true, '2023-06-12 12:25:36.027659', NULL, 'CENTRO UNIVERSITÁRIO JOAQUIM NABUCO DE RECIFE (UNINABUCO RECIFE)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (269, true, '2023-06-12 12:25:36.034981', NULL, 'CENTRO UNIVERSITÁRIO JORGE AMADO (UNIJORGE)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (270, true, '2023-06-12 12:25:36.042848', NULL, 'CENTRO UNIVERSITÁRIO LA SALLE (UNILASALLE - LUCAS)', 1, NULL, 169, false);
INSERT INTO public.empresa VALUES (271, true, '2023-06-12 12:25:36.050295', NULL, 'CENTRO UNIVERSITÁRIO LA SALLE DO RIO DE JANEIRO (UNILASALLE/RJ)', 1, NULL, 49, false);
INSERT INTO public.empresa VALUES (272, true, '2023-06-12 12:25:36.058228', NULL, 'CENTRO UNIVERSITÁRIO LEONARDO DA VINCI (UNIASSELVI)', 1, NULL, 170, false);
INSERT INTO public.empresa VALUES (273, true, '2023-06-12 12:25:36.065631', NULL, 'CENTRO UNIVERSITÁRIO LS (UNILS)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (274, true, '2023-06-12 12:25:36.072873', NULL, 'CENTRO UNIVERSITÁRIO LUSÍADA (UNILUS)', 1, NULL, 171, false);
INSERT INTO public.empresa VALUES (275, true, '2023-06-12 12:25:36.080432', NULL, 'CENTRO UNIVERSITÁRIO LUTERANO DE MANAUS (CEULM/ULBRA)', 1, NULL, 75, false);
INSERT INTO public.empresa VALUES (276, true, '2023-06-12 12:25:36.088224', NULL, 'CENTRO UNIVERSITÁRIO LUTERANO DE PALMAS (CEULP)', 1, NULL, 23, false);
INSERT INTO public.empresa VALUES (277, true, '2023-06-12 12:25:36.095803', NULL, 'CENTRO UNIVERSITÁRIO LUTERANO DE SANTARÉM (CEULS)', 1, NULL, 78, false);
INSERT INTO public.empresa VALUES (278, true, '2023-06-12 12:25:36.103809', NULL, 'CENTRO UNIVERSITÁRIO MARIA MILZA (UNIMAM)', 1, NULL, 172, false);
INSERT INTO public.empresa VALUES (279, true, '2023-06-12 12:25:36.111096', NULL, 'CENTRO UNIVERSITÁRIO MÁRIO PALMÉRIO (UNIFUCAMP)', 1, NULL, 173, false);
INSERT INTO public.empresa VALUES (280, true, '2023-06-12 12:25:36.119073', NULL, 'CENTRO UNIVERSITÁRIO MATER DEI', 1, NULL, 110, false);
INSERT INTO public.empresa VALUES (281, true, '2023-06-12 12:25:36.126455', NULL, 'CENTRO UNIVERSITÁRIO MAUÁ DE BRASÍLIA (UNIMAUÁ)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (282, true, '2023-06-12 12:25:36.133917', NULL, 'CENTRO UNIVERSITÁRIO MAURÍCIO DE NASSAU (UNINASSAU)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (283, true, '2023-06-12 12:25:36.141258', NULL, 'CENTRO UNIVERSITÁRIO MAURÍCIO DE NASSAU ALIANÇA (UNINASSAU ALIANÇA)', 1, NULL, 27, false);
INSERT INTO public.empresa VALUES (284, true, '2023-06-12 12:25:36.149266', NULL, 'CENTRO UNIVERSITÁRIO MAURICIO DE NASSAU DE ARACAJU', 1, NULL, 142, false);
INSERT INTO public.empresa VALUES (285, true, '2023-06-12 12:25:36.156654', NULL, 'CENTRO UNIVERSITÁRIO MAURÍCIO DE NASSAU DE BARREIRAS (UNINASSAU)', 1, NULL, 174, false);
INSERT INTO public.empresa VALUES (286, true, '2023-06-12 12:25:36.16873', NULL, 'CENTRO UNIVERSITÁRIO MAURÍCIO DE NASSAU DE BELÉM', 1, NULL, 79, false);
INSERT INTO public.empresa VALUES (287, true, '2023-06-12 12:25:36.176172', NULL, 'CENTRO UNIVERSITÁRIO MAURÍCIO DE NASSAU DE CACOAL (UNINASSAU)', 1, NULL, 115, false);
INSERT INTO public.empresa VALUES (288, true, '2023-06-12 12:25:36.184062', NULL, 'CENTRO UNIVERSITÁRIO MAURÍCIO DE NASSAU DE CAMPINA GRANDE (UNINASSAU CPV)', 1, NULL, 147, false);
INSERT INTO public.empresa VALUES (289, true, '2023-06-12 12:25:36.191581', NULL, 'CENTRO UNIVERSITÁRIO MAURÍCIO DE NASSAU DE CARUARU (UNINASSAU CARUARU)', 1, NULL, 156, false);
INSERT INTO public.empresa VALUES (290, true, '2023-06-12 12:25:36.198876', NULL, 'CENTRO UNIVERSITÁRIO MAURÍCIO DE NASSAU DE FORTALEZA (UNINASSAU FORTALEZA)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (291, true, '2023-06-12 12:25:36.206501', NULL, 'CENTRO UNIVERSITÁRIO MAURÍCIO DE NASSAU DE JOÃO PESSOA', 1, NULL, 107, false);
INSERT INTO public.empresa VALUES (292, true, '2023-06-12 12:25:36.214566', NULL, 'CENTRO UNIVERSITÁRIO MAURÍCIO DE NASSAU DE JUAZEIRO DO NORTE (UNINASSAU)', 1, NULL, 135, false);
INSERT INTO public.empresa VALUES (293, true, '2023-06-12 12:25:36.221943', NULL, 'CENTRO UNIVERSITÁRIO MAURÍCIO DE NASSAU DE MACEIÓ (UNINASSAUMACEI?)', 1, NULL, 73, false);
INSERT INTO public.empresa VALUES (294, true, '2023-06-12 12:25:36.229387', NULL, 'CENTRO UNIVERSITÁRIO MAURÍCIO DE NASSAU DE NATAL (UNINASSAU)', 1, NULL, 130, false);
INSERT INTO public.empresa VALUES (295, true, '2023-06-12 12:25:36.236708', NULL, 'CENTRO UNIVERSITÁRIO MAURÍCIO DE NASSAU DE SALVADOR (UNINASSAU SALVADOR)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (296, true, '2023-06-12 12:25:36.244615', NULL, 'CENTRO UNIVERSITÁRIO MAURÍCIO DE NASSAU DE SÃO LUÍS (UNINASSAU)', 1, NULL, 141, false);
INSERT INTO public.empresa VALUES (297, true, '2023-06-12 12:25:36.252353', NULL, 'CENTRO UNIVERSITÁRIO MAURÍCIO DE NASSAU DE TERESINA', 1, NULL, 27, false);
INSERT INTO public.empresa VALUES (298, true, '2023-06-12 12:25:36.259897', NULL, 'CENTRO UNIVERSITÁRIO MAURÍCIO DE NASSAU DO RIO DE JANEIRO (UNINASSAU)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (299, true, '2023-06-12 12:25:36.267246', NULL, 'CENTRO UNIVERSITÁRIO MAURÍCIO DE NASSAU PAULISTA (UNINASSAU PAULISTA)', 1, NULL, 175, false);
INSERT INTO public.empresa VALUES (300, true, '2023-06-12 12:25:36.275124', NULL, 'CENTRO UNIVERSITÁRIO MAURÍCIO DE UNINASSAU DE PARNAÍBA (UNINASSAU PARNAÍBA)', 1, NULL, 176, false);
INSERT INTO public.empresa VALUES (301, true, '2023-06-12 12:25:36.282452', NULL, 'CENTRO UNIVERSITÁRIO MAX PLANCK (UNIMAX)', 1, NULL, 11, false);
INSERT INTO public.empresa VALUES (302, true, '2023-06-12 12:25:36.289741', NULL, 'CENTRO UNIVERSITÁRIO METODISTA (IPA)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (303, true, '2023-06-12 12:25:36.297239', NULL, 'CENTRO UNIVERSITÁRIO METODISTA IZABELA HENDRIX (CEUNIH)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (304, true, '2023-06-12 12:25:36.309805', NULL, 'CENTRO UNIVERSITÁRIO METROCAMP WYDEN (UNIMETROCAMP WYDEN)', 1, NULL, 177, false);
INSERT INTO public.empresa VALUES (305, true, '2023-06-12 12:25:36.317136', NULL, 'CENTRO UNIVERSITÁRIO METROPOLITANO DA AMAZÔNIA (UNIFAMAZ)', 1, NULL, 79, false);
INSERT INTO public.empresa VALUES (306, true, '2023-06-12 12:25:36.32454', NULL, 'CENTRO UNIVERSITÁRIO METROPOLITANO DE MARINGÁ (UNIFAMMA)', 1, NULL, 76, false);
INSERT INTO public.empresa VALUES (307, true, '2023-06-12 12:25:36.3323', NULL, 'CENTRO UNIVERSITÁRIO METROPOLITANO DE SÃO PAULO (UNIMESP)', 1, NULL, 100, false);
INSERT INTO public.empresa VALUES (308, true, '2023-06-12 12:25:36.339575', NULL, 'CENTRO UNIVERSITÁRIO MÓDULO (MÓDULO)', 1, NULL, 178, false);
INSERT INTO public.empresa VALUES (309, true, '2023-06-12 12:25:36.347185', NULL, 'CENTRO UNIVERSITÁRIO MOURA LACERDA (CUML)', 1, NULL, 58, false);
INSERT INTO public.empresa VALUES (310, true, '2023-06-12 12:25:36.355189', NULL, 'CENTRO UNIVERSITÁRIO MULTIVIX VITÓRIA', 1, NULL, 25, false);
INSERT INTO public.empresa VALUES (311, true, '2023-06-12 12:25:36.363167', NULL, 'CENTRO UNIVERSITÁRIO MUNICIPAL DE FRANCA (UNI-FACEF)', 1, NULL, 179, false);
INSERT INTO public.empresa VALUES (312, true, '2023-06-12 12:25:36.370587', NULL, 'CENTRO UNIVERSITÁRIO MUNICIPAL DE SÃO JOSÉ (USJ)', 1, NULL, 140, false);
INSERT INTO public.empresa VALUES (313, true, '2023-06-12 12:25:36.377957', NULL, 'CENTRO UNIVERSITÁRIO NATALENSE (UNICEUNA)', 1, NULL, 130, false);
INSERT INTO public.empresa VALUES (314, true, '2023-06-12 12:25:36.385415', NULL, 'CENTRO UNIVERSITÁRIO NEWTON PAIVA (NEWTON PAIVA)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (315, true, '2023-06-12 12:25:36.393275', NULL, 'CENTRO UNIVERSITÁRIO NOBRE DE FEIRA DE SANTANA', 1, NULL, 99, false);
INSERT INTO public.empresa VALUES (316, true, '2023-06-12 12:25:36.400633', NULL, 'CENTRO UNIVERSITÁRIO NOSSA SENHORA APARECIDA (UNIFANAP)', 1, NULL, 41, false);
INSERT INTO public.empresa VALUES (317, true, '2023-06-12 12:25:36.407957', NULL, 'CENTRO UNIVERSITÁRIO NOSSA SENHORA DO PATROCÍNIO (CEUNSP)', 1, NULL, 180, false);
INSERT INTO public.empresa VALUES (318, true, '2023-06-12 12:25:36.415301', NULL, 'CENTRO UNIVERSITÁRIO OPET (UNIOPET)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (319, true, '2023-06-12 12:25:36.423053', NULL, 'CENTRO UNIVERSITÁRIO PADRE ALBINO', 1, NULL, 181, false);
INSERT INTO public.empresa VALUES (320, true, '2023-06-12 12:25:36.435126', NULL, 'CENTRO UNIVERSITÁRIO PADRE ANCHIETA (UNIANCHIETA)', 1, NULL, 182, false);
INSERT INTO public.empresa VALUES (321, true, '2023-06-12 12:25:36.442504', NULL, 'CENTRO UNIVERSITÁRIO PARAÍSO', 1, NULL, 135, false);
INSERT INTO public.empresa VALUES (322, true, '2023-06-12 12:25:36.449818', NULL, 'CENTRO UNIVERSITÁRIO PARA O DESENVOLVIMENTO DO ALTO VALE DO ITAJAÍ (UNIDAVI)', 1, NULL, 183, false);
INSERT INTO public.empresa VALUES (323, true, '2023-06-12 12:25:36.457919', NULL, 'CENTRO UNIVERSITÁRIO PAULISTANA (UNIPAULISTANA)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (324, true, '2023-06-12 12:25:36.465338', NULL, 'CENTRO UNIVERSITÁRIO PIAGET (UNIPIAGET)', 1, NULL, 184, false);
INSERT INTO public.empresa VALUES (325, true, '2023-06-12 12:25:36.472704', NULL, 'CENTRO UNIVERSITÁRIO PLANALTO DO DISTRITO FEDERAL - UNIPLAN (UNIPLAN)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (326, true, '2023-06-12 12:25:36.480152', NULL, 'CENTRO UNIVERSITÁRIO PRESIDENTE ANTÔNIO CARLOS (UNIPAC)', 1, NULL, 32, false);
INSERT INTO public.empresa VALUES (327, true, '2023-06-12 12:25:36.488255', NULL, 'CENTRO UNIVERSITÁRIO PRESIDENTE TANCREDO DE ALMEIDA NEVES (UNIPTAN)', 1, NULL, 185, false);
INSERT INTO public.empresa VALUES (328, true, '2023-06-12 12:25:36.496028', NULL, 'CENTRO UNIVERSITÁRIO PROCESSUS (UNIPROCESSUS)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (329, true, '2023-06-12 12:25:36.503944', NULL, 'CENTRO UNIVERSITARIO PROJEÇÃO (UNIPROJEÇÃO)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (330, true, '2023-06-12 12:25:36.511545', NULL, 'CENTRO UNIVERSITÁRIO REDENTOR (FACREDENTOR)', 1, NULL, 186, false);
INSERT INTO public.empresa VALUES (331, true, '2023-06-12 12:25:36.519466', NULL, 'CENTRO UNIVERSITÁRIO RITTER DOS REIS (UNIRITTER)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (332, true, '2023-06-12 12:25:36.52685', NULL, 'CENTRO UNIVERSITÁRIO RUY BARBOSA WYDEN (UNIRUY WYDEN)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (333, true, '2023-06-12 12:25:36.534184', NULL, 'CENTRO UNIVERSITÁRIO SAGRADO CORAÇÃO (UNISAGRADO)', 1, NULL, 93, false);
INSERT INTO public.empresa VALUES (334, true, '2023-06-12 12:25:36.541555', NULL, 'CENTRO UNIVERSITÁRIO SALESIANO (UNISALES)', 1, NULL, 25, false);
INSERT INTO public.empresa VALUES (335, true, '2023-06-12 12:25:36.549524', NULL, 'CENTRO UNIVERSITÁRIO SALESIANO DE SÃO PAULO (UNISAL)', 1, NULL, 187, false);
INSERT INTO public.empresa VALUES (336, true, '2023-06-12 12:25:36.556753', NULL, 'CENTRO UNIVERSITÁRIO SANTA AMÉLIA (SECAL)', 1, NULL, 188, false);
INSERT INTO public.empresa VALUES (337, true, '2023-06-12 12:25:36.568795', NULL, 'CENTRO UNIVERSITÁRIO SANTA CECÍLIA (UNICEA)', 1, NULL, 162, false);
INSERT INTO public.empresa VALUES (338, true, '2023-06-12 12:25:36.576163', NULL, 'CENTRO UNIVERSITÁRIO SANTA CRUZ DE CURITIBA (UNI SANTA CRUZ)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (339, true, '2023-06-12 12:25:36.584', NULL, 'CENTRO UNIVERSITÁRIO SANTA MARIA (UNIFSM)', 1, NULL, 189, false);
INSERT INTO public.empresa VALUES (340, true, '2023-06-12 12:25:36.591318', NULL, 'CENTRO UNIVERSITÁRIO SANTA MARIA DA GLÓRIA (UNISMG)', 1, NULL, 76, false);
INSERT INTO public.empresa VALUES (341, true, '2023-06-12 12:25:36.599008', NULL, 'CENTRO UNIVERSITÁRIO SANT''ANNA (UNISANT''ANNA)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (342, true, '2023-06-12 12:25:36.60665', NULL, 'CENTRO UNIVERSITÁRIO SANTA RITA (UNIFASAR)', 1, NULL, 18, false);
INSERT INTO public.empresa VALUES (343, true, '2023-06-12 12:25:36.614676', NULL, 'CENTRO UNIVERSITÁRIO SANTO AGOSTINHO (UNIFSA)', 1, NULL, 27, false);
INSERT INTO public.empresa VALUES (344, true, '2023-06-12 12:25:36.622107', NULL, 'CENTRO UNIVERSITÁRIO SÃO CAMILO (SAO CAMILO)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (345, true, '2023-06-12 12:25:36.629618', NULL, 'CENTRO UNIVERSITÁRIO SÃO CAMILO - ESPÍRITO SANTO (SÃO CAMILO-ES)', 1, NULL, 190, false);
INSERT INTO public.empresa VALUES (346, true, '2023-06-12 12:25:36.637257', NULL, 'CENTRO UNIVERSITÁRIO SÃO JOSÉ (UNISJ)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (347, true, '2023-06-12 12:25:36.64539', NULL, 'CENTRO UNIVERSITÁRIO SÃO JOSÉ DE ITAPERUNA', 1, NULL, 186, false);
INSERT INTO public.empresa VALUES (348, true, '2023-06-12 12:25:36.653497', NULL, 'CENTRO UNIVERSITÁRIO SÃO JUDAS TADEU (CSJT)', 1, NULL, 171, false);
INSERT INTO public.empresa VALUES (349, true, '2023-06-12 12:25:36.660968', NULL, 'CENTRO UNIVERSITÁRIO SÃO LUCAS JI-PARANÁ (UNISL)', 1, NULL, 139, false);
INSERT INTO public.empresa VALUES (350, true, '2023-06-12 12:25:36.66846', NULL, 'CENTRO UNIVERSITÁRIO SÃO LUCAS PORTO VELHO (SÃO LUCAS PVH)', 1, NULL, 51, false);
INSERT INTO public.empresa VALUES (351, true, '2023-06-12 12:25:36.676753', NULL, 'CENTRO UNIVERSITÁRIO SÃO MIGUEL (UNISÃOMIGUEL)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (352, true, '2023-06-12 12:25:36.688114', NULL, 'CENTRO UNIVERSITÁRIO SÃO ROQUE (UNISÃO ROQUE)', 1, NULL, 191, false);
INSERT INTO public.empresa VALUES (353, true, '2023-06-12 12:25:36.695577', NULL, 'CENTRO UNIVERSITÁRIO SATC (UNISATC)', 1, NULL, 192, false);
INSERT INTO public.empresa VALUES (354, true, '2023-06-12 12:25:36.703046', NULL, 'CENTRO UNIVERSITÁRIO SENAC (RS)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (355, true, '2023-06-12 12:25:36.710939', NULL, 'CENTRO UNIVERSITÁRIO SENAC (SENACSP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (356, true, '2023-06-12 12:25:36.71825', NULL, 'CENTRO UNIVERSITÁRIO SENAI BLUMENAU', 1, NULL, 193, false);
INSERT INTO public.empresa VALUES (357, true, '2023-06-12 12:25:36.725509', NULL, 'CENTRO UNIVERSITÁRIO SENAI CIMATEC (SENAI CIMATEC)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (358, true, '2023-06-12 12:25:36.732853', NULL, 'CENTRO UNIVERSITÁRIO SERRA DOS ÓRGÃOS (UNIFESO)', 1, NULL, 194, false);
INSERT INTO public.empresa VALUES (359, true, '2023-06-12 12:25:36.740732', NULL, 'CENTRO UNIVERSITÁRIO SETE DE SETEMBRO (UNI7)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (360, true, '2023-06-12 12:25:36.748205', NULL, 'CENTRO UNIVERSITÁRIO SOCIAL DA BAHIA (UNISBA)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (361, true, '2023-06-12 12:25:36.756033', NULL, 'CENTRO UNIVERSITÁRIO SOCIESC', 1, NULL, 68, false);
INSERT INTO public.empresa VALUES (362, true, '2023-06-12 12:25:36.763746', NULL, 'CENTRO UNIVERSITÁRIO SOCIESC DE BLUMENAU', 1, NULL, 193, false);
INSERT INTO public.empresa VALUES (363, true, '2023-06-12 12:25:36.771765', NULL, 'CENTRO UNIVERSITÁRIO SUDOESTE PAULISTA (UNIFSP)', 1, NULL, 195, false);
INSERT INTO public.empresa VALUES (364, true, '2023-06-12 12:25:36.77917', NULL, 'CENTRO UNIVERSITÁRIO SUL-AMERICANA (UNIFASAM)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (365, true, '2023-06-12 12:25:36.786736', NULL, 'CENTRO UNIVERSITÁRIO SUMARÉ', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (366, true, '2023-06-12 12:25:36.793972', NULL, 'CENTRO UNIVERSITÁRIO TABOSA DE ALMEIDA (ASCES-UNITA)', 1, NULL, 156, false);
INSERT INTO public.empresa VALUES (367, true, '2023-06-12 12:25:36.802179', NULL, 'CENTRO UNIVERSITÁRIO TERESA D''ÁVILA (FATEA)', 1, NULL, 22, false);
INSERT INTO public.empresa VALUES (368, true, '2023-06-12 12:25:36.809559', NULL, 'CENTRO UNIVERSITÁRIO TIRADENTES (UNIT)', 1, NULL, 73, false);
INSERT INTO public.empresa VALUES (369, true, '2023-06-12 12:25:36.821677', NULL, 'CENTRO UNIVERSITÁRIO TIRADENTES DE PERNAMBUCO (UNIT PE)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (370, true, '2023-06-12 12:25:36.829722', NULL, 'CENTRO UNIVERSITÁRIO TOCANTINENSE PRESIDENTE ANTÔNIO CARLOS (UNITPAC)', 1, NULL, 196, false);
INSERT INTO public.empresa VALUES (371, true, '2023-06-12 12:25:36.837207', NULL, 'CENTRO UNIVERSITÁRIO TOLEDO WYDEN (UNITOLEDO WYDEN)', 1, NULL, 197, false);
INSERT INTO public.empresa VALUES (372, true, '2023-06-12 12:25:36.844579', NULL, 'CENTRO UNIVERSITÁRIO UFBRA (UFBRA)', 1, NULL, 144, false);
INSERT INTO public.empresa VALUES (373, true, '2023-06-12 12:25:36.852108', NULL, 'CENTRO UNIVERSITÁRIO UNA (UNA)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (374, true, '2023-06-12 12:25:36.860323', NULL, 'CENTRO UNIVERSITÁRIO UNA DE BETIM', 1, NULL, 198, false);
INSERT INTO public.empresa VALUES (375, true, '2023-06-12 12:25:36.867803', NULL, 'CENTRO UNIVERSITÁRIO UNA DE BOM DESPACHO (UNA)', 1, NULL, 199, false);
INSERT INTO public.empresa VALUES (376, true, '2023-06-12 12:25:36.875162', NULL, 'CENTRO UNIVERSITÁRIO UNA DE CONTAGEM', 1, NULL, 200, false);
INSERT INTO public.empresa VALUES (377, true, '2023-06-12 12:25:36.882529', NULL, 'CENTRO UNIVERSITÁRIO UNA DE UBERLÂNDIA', 1, NULL, 134, false);
INSERT INTO public.empresa VALUES (378, true, '2023-06-12 12:25:36.890452', NULL, 'CENTRO UNIVERSITÁRIO UNIÃO DAS AMÉRICAS DESCOMPLICA (UNIAMÉRICA )', 1, NULL, 124, false);
INSERT INTO public.empresa VALUES (379, true, '2023-06-12 12:25:36.897861', NULL, 'CENTRO UNIVERSITÁRIO UNIASSELVI DE BLUMENAU', 1, NULL, 193, false);
INSERT INTO public.empresa VALUES (380, true, '2023-06-12 12:25:36.905631', NULL, 'CENTRO UNIVERSITÁRIO UNIASSELVI DE BRUSQUE', 1, NULL, 94, false);
INSERT INTO public.empresa VALUES (381, true, '2023-06-12 12:25:36.913137', NULL, 'CENTRO UNIVERSITÁRIO UNIASSELVI DE GUARAMIRIM', 1, NULL, 201, false);
INSERT INTO public.empresa VALUES (382, true, '2023-06-12 12:25:36.920999', NULL, 'CENTRO UNIVERSITÁRIO UNI-BAN (UNI-BAN)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (383, true, '2023-06-12 12:25:36.932706', NULL, 'CENTRO UNIVERSITÁRIO UNIBRAS DO SUDOESTE GOIANO (UNIBRAS)', 1, NULL, 202, false);
INSERT INTO public.empresa VALUES (384, true, '2023-06-12 12:25:36.940172', NULL, 'CENTRO UNIVERSITÁRIO UNIBTA', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (385, true, '2023-06-12 12:25:36.947838', NULL, 'CENTRO UNIVERSITÁRIO UNIC', 1, NULL, 203, false);
INSERT INTO public.empresa VALUES (386, true, '2023-06-12 12:25:36.955917', NULL, 'CENTRO UNIVERSITÁRIO UNICARIOCA (UNICARIOCA)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (387, true, '2023-06-12 12:25:36.963377', NULL, 'CENTRO UNIVERSITÁRIO UNICURITIBA (UNICURITIBA)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (388, true, '2023-06-12 12:25:36.971181', NULL, 'CENTRO UNIVERSITÁRIO UNIDADE DE ENSINO SUPERIOR DOM BOSCO (UNDB)', 1, NULL, 141, false);
INSERT INTO public.empresa VALUES (389, true, '2023-06-12 12:25:36.97867', NULL, 'CENTRO UNIVERSITÁRIO UNIDOM - BOSCO (UNIDOM - BOSCO)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (390, true, '2023-06-12 12:25:36.986544', NULL, 'CENTRO UNIVERSITÁRIO - UNIESP (UNIESP)', 1, NULL, 204, false);
INSERT INTO public.empresa VALUES (391, true, '2023-06-12 12:25:36.993926', NULL, 'CENTRO UNIVERSITÁRIO UNIFAAT (UNIFAAT)', 1, NULL, 205, false);
INSERT INTO public.empresa VALUES (392, true, '2023-06-12 12:25:37.001339', NULL, 'CENTRO UNIVERSITÁRIO UNIFACEAR', 1, NULL, 206, false);
INSERT INTO public.empresa VALUES (393, true, '2023-06-12 12:25:37.008938', NULL, 'CENTRO UNIVERSITÁRIO UNIFACIG', 1, NULL, 207, false);
INSERT INTO public.empresa VALUES (394, true, '2023-06-12 12:25:37.017024', NULL, 'CENTRO UNIVERSITÁRIO UNIFAFIBE (FAFIBE)', 1, NULL, 208, false);
INSERT INTO public.empresa VALUES (395, true, '2023-06-12 12:25:37.024428', NULL, 'CENTRO UNIVERSITÁRIO UNIFAS', 1, NULL, 209, false);
INSERT INTO public.empresa VALUES (396, true, '2023-06-12 12:25:37.031831', NULL, 'CENTRO UNIVERSITÁRIO UNIFATEB', 1, NULL, 210, false);
INSERT INTO public.empresa VALUES (397, true, '2023-06-12 12:25:37.044304', NULL, 'CENTRO UNIVERSITÁRIO UNIFATECIE (UNIFATECIE)', 1, NULL, 211, false);
INSERT INTO public.empresa VALUES (398, true, '2023-06-12 12:25:37.052056', NULL, 'CENTRO UNIVERSITÁRIO UNIFECAF', 1, NULL, 212, false);
INSERT INTO public.empresa VALUES (399, true, '2023-06-12 12:25:37.059801', NULL, 'CENTRO UNIVERSITÁRIO UNIFTC', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (400, true, '2023-06-12 12:25:37.067342', NULL, 'CENTRO UNIVERSITÁRIO UNIFTC SALVADOR', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (401, true, '2023-06-12 12:25:37.074756', NULL, 'CENTRO UNIVERSITÁRIO UNIFTEC', 1, NULL, 87, false);
INSERT INTO public.empresa VALUES (402, true, '2023-06-12 12:25:37.082673', NULL, 'CENTRO UNIVERSITÁRIO UNIFTEC BENTO GONÇALVES', 1, NULL, 77, false);
INSERT INTO public.empresa VALUES (403, true, '2023-06-12 12:25:37.090013', NULL, 'CENTRO UNIVERSITÁRIO UNIGRAN CAPITAL', 1, NULL, 48, false);
INSERT INTO public.empresa VALUES (404, true, '2023-06-12 12:25:37.097572', NULL, 'CENTRO UNIVERSITÁRIO UNIHORIZONTES', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (405, true, '2023-06-12 12:25:37.104858', NULL, 'CENTRO UNIVERSITÁRIO UNINORTE', 1, NULL, 143, false);
INSERT INTO public.empresa VALUES (406, true, '2023-06-12 12:25:37.112835', NULL, 'CENTRO UNIVERSITÁRIO UNINOVAFAPI (UNINOVAFAPI)', 1, NULL, 27, false);
INSERT INTO public.empresa VALUES (407, true, '2023-06-12 12:25:37.120292', NULL, 'CENTRO UNIVERSITÁRIO UNINOVO (UNINOVO)', 1, NULL, 39, false);
INSERT INTO public.empresa VALUES (408, true, '2023-06-12 12:25:37.127673', NULL, 'CENTRO UNIVERSITÁRIO UNIRB (UNIRB)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (409, true, '2023-06-12 12:25:37.135061', NULL, 'CENTRO UNIVERSITÁRIO UNIRB - ALAGOINHAS', 1, NULL, 213, false);
INSERT INTO public.empresa VALUES (410, true, '2023-06-12 12:25:37.142803', NULL, 'CENTRO UNIVERSITÁRIO UNISAN (UNISAN)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (411, true, '2023-06-12 12:25:37.150124', NULL, 'CENTRO UNIVERSITÁRIO UNISEP (CEUUN)', 1, NULL, 214, false);
INSERT INTO public.empresa VALUES (412, true, '2023-06-12 12:25:37.157929', NULL, 'CENTRO UNIVERSITÁRIO UNIVEL', 1, NULL, 54, false);
INSERT INTO public.empresa VALUES (413, true, '2023-06-12 12:25:37.170068', NULL, 'CENTRO UNIVERSITARIO UNIVERSO BELO HORIZONTE', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (414, true, '2023-06-12 12:25:37.177892', NULL, 'CENTRO UNIVERSITÁRIO UNIVERSO GOIÂNIA', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (415, true, '2023-06-12 12:25:37.185366', NULL, 'CENTRO UNIVERSITÁRIO UNIVERSO JUIZ DE FORA', 1, NULL, 38, false);
INSERT INTO public.empresa VALUES (416, true, '2023-06-12 12:25:37.192954', NULL, 'CENTRO UNIVERSITÁRIO UNIVERSO RECIFE', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (417, true, '2023-06-12 12:25:37.20048', NULL, 'CENTRO UNIVERSITÁRIO UNIVERSO SALVADOR', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (418, true, '2023-06-12 12:25:37.208611', NULL, 'CENTRO UNIVERSITÁRIO UNIVINTE', 1, NULL, 215, false);
INSERT INTO public.empresa VALUES (419, true, '2023-06-12 12:25:37.216026', NULL, 'CENTRO UNIVERSITÁRIO U:VERSE', 1, NULL, 143, false);
INSERT INTO public.empresa VALUES (420, true, '2023-06-12 12:25:37.22356', NULL, 'CENTRO UNIVERSITÁRIO VALE DO CRICARÉ (UNIVC)', 1, NULL, 216, false);
INSERT INTO public.empresa VALUES (421, true, '2023-06-12 12:25:37.231074', NULL, 'CENTRO UNIVERSITÁRIO VALE DO RIO VERDE', 1, NULL, 217, false);
INSERT INTO public.empresa VALUES (422, true, '2023-06-12 12:25:37.239065', NULL, 'CENTRO UNIVERSITÁRIO VALE DO SALGADO', 1, NULL, 218, false);
INSERT INTO public.empresa VALUES (423, true, '2023-06-12 12:25:37.246573', NULL, 'CENTRO UNIVERSITÁRIO VÉRTICE (UNIVÉRTIX)', 1, NULL, 219, false);
INSERT INTO public.empresa VALUES (424, true, '2023-06-12 12:25:37.253935', NULL, 'CESREI FACULDADE', 1, NULL, 147, false);
INSERT INTO public.empresa VALUES (425, true, '2023-06-12 12:25:37.261596', NULL, 'CHRISTUS FACULDADE DO PIAUÍ (CHRISFAPI)', 1, NULL, 220, false);
INSERT INTO public.empresa VALUES (426, true, '2023-06-12 12:25:37.269555', NULL, 'CISNE - FACULDADE DE QUIXADÁ (CFQ)', 1, NULL, 67, false);
INSERT INTO public.empresa VALUES (427, true, '2023-06-12 12:25:37.277017', NULL, 'CISNE - FACULDADE TECNOLÓGICA DE QUIXADÁ (CFTQ)', 1, NULL, 67, false);
INSERT INTO public.empresa VALUES (428, true, '2023-06-12 12:25:37.28509', NULL, 'CLARETIANO - CENTRO UNIVERSITÁRIO (CLARETIANOBT)', 1, NULL, 221, false);
INSERT INTO public.empresa VALUES (429, true, '2023-06-12 12:25:37.292625', NULL, 'CLARETIANO - CENTRO UNIVERSITÁRIO', 1, NULL, 222, false);
INSERT INTO public.empresa VALUES (430, true, '2023-06-12 12:25:37.305378', NULL, 'CLARETIANO - FACULDADE DE BOA VISTA (CLARETIANOBV)', 1, NULL, 138, false);
INSERT INTO public.empresa VALUES (431, true, '2023-06-12 12:25:37.313192', NULL, 'COLÉGIO PEDRO II (CP II)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (432, true, '2023-06-12 12:25:37.320786', NULL, 'COMPLEXO DE ENSINO SUPERIOR DE PALMAS (CESUP)', 1, NULL, 23, false);
INSERT INTO public.empresa VALUES (433, true, '2023-06-12 12:25:37.328919', NULL, 'CONSERVATÓRIO BRASILEIRO DE MÚSICA - CENTRO UNIVERSITÁRIO BRASILEIRO DE EDUCAÇÃO (CBM-UNICBE)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (434, true, '2023-06-12 12:25:37.336316', NULL, 'DIRETORIA DE FORMAÇÃO E DESENVOLVIMENTO PROFISSIONAL (FUNDAJ)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (435, true, '2023-06-12 12:25:37.343813', NULL, 'EJ - FACULDADE DE TECNOLOGIA EM AVIAÇÃO CIVIL (EJ)', 1, NULL, 223, false);
INSERT INTO public.empresa VALUES (436, true, '2023-06-12 12:25:37.351263', NULL, 'ENSINO SUPERIOR ALBERT SABIN JK (ESAS JK)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (437, true, '2023-06-12 12:25:37.359134', NULL, 'EPGE ESCOLA BRASILEIRA DE ECONOMIA E FINANÇAS (FGV EPGE)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (438, true, '2023-06-12 12:25:37.366493', NULL, 'ESCOLA BAHIANA DE MEDICINA E SAÚDE PÚBLICA (EBMSP)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (439, true, '2023-06-12 12:25:37.37464', NULL, 'ESCOLA BRASILEIRA DE ADMINISTRAÇÃO PÚBLICA E DE EMPRESAS (EBAPE)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (440, true, '2023-06-12 12:25:37.381963', NULL, 'ESCOLA BRASILEIRA DE MEDICINA CHINESA (EBRAMEC)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (441, true, '2023-06-12 12:25:37.389859', NULL, 'ESCOLA DA ADVOCACIA-GERAL DA UNIÃO (EAGU)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (442, true, '2023-06-12 12:25:37.397479', NULL, 'ESCOLA DA CIDADE - FACULDADE DE ARQUITETURA E URBANISMO (ESCOLA DA CIDADE)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (443, true, '2023-06-12 12:25:37.404998', NULL, 'ESCOLA DE ADMINISTRAÇÃO DE EMPRESAS DE SÃO PAULO - FGV EAESP (FGV-EAESP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (444, true, '2023-06-12 12:25:37.412971', NULL, 'ESCOLA DE ADMINISTRAÇÃO E NEGÓCIOS (ESAD)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (445, true, '2023-06-12 12:25:37.421618', NULL, 'ESCOLA DE ADMINISTRAÇÃO FAZENDÁRIA (ESAF)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (446, true, '2023-06-12 12:25:37.429903', NULL, 'ESCOLA DE APERFEIÇOAMENTO DE OFICIAIS (ESAO)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (447, true, '2023-06-12 12:25:37.437263', NULL, 'ESCOLA DE ARTILHARIA DE COSTA E ANTIAÉREA (ESCOSAAE)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (448, true, '2023-06-12 12:25:37.444547', NULL, 'ESCOLA DE CIÊNCIAS SOCIAIS FGV CPDOC (FGV CPDOC)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (449, true, '2023-06-12 12:25:37.452263', NULL, 'ESCOLA DE COMANDO E ESTADO-MAIOR DO EXÉRCITO (ECEME)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (450, true, '2023-06-12 12:25:37.459571', NULL, 'ESCOLA DE COMUNICAÇÃO, MÍDIA E INFORMAÇÃO DA FUNDAÇÃO GETULIO VARGAS (FGV ECMI)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (451, true, '2023-06-12 12:25:37.466932', NULL, 'ESCOLA DE COMUNICAÇÕES (ESCOM)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (452, true, '2023-06-12 12:25:37.474176', NULL, 'ESCOLA DE CONTAS E CAPACITAÇÃO PROFESSOR PEDRO ALEIXO', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (453, true, '2023-06-12 12:25:37.486895', NULL, 'ESCOLA DE DIREITO DE SÃO PAULO - FGV DIREITO SP (FGV DIREITO SP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (454, true, '2023-06-12 12:25:37.49431', NULL, 'ESCOLA DE DIREITO DO RIO DE JANEIRO (DIREITO RIO)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (455, true, '2023-06-12 12:25:37.501602', NULL, 'ESCOLA DE DIREITO FUCAPE (FUCAPE DIREITO)', 1, NULL, 25, false);
INSERT INTO public.empresa VALUES (456, true, '2023-06-12 12:25:37.508885', NULL, 'ESCOLA DE ECONOMIA DE SÃO PAULO (EESP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (457, true, '2023-06-12 12:25:37.51723', NULL, 'ESCOLA DE EDUCAÇÃO FÍSICA DO EXÉRCITO (ESEFEX)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (458, true, '2023-06-12 12:25:37.524479', NULL, 'ESCOLA DE EDUCAÇÃO PERMANENTE (EEP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (459, true, '2023-06-12 12:25:37.531964', NULL, 'ESCOLA DE ENFERMAGEM DA FUNDAÇÃO TÉCNICO EDUCACIONAL SOUZA MARQUES (EEFTESM)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (460, true, '2023-06-12 12:25:37.539428', NULL, 'ESCOLA DE ENGENHARIA DE PIRACICABA (EEP/FUMEP)', 1, NULL, 224, false);
INSERT INTO public.empresa VALUES (461, true, '2023-06-12 12:25:37.547304', NULL, 'ESCOLA DE ENGENHARIA KENNEDY (EEK)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (462, true, '2023-06-12 12:25:37.554616', NULL, 'ESCOLA DE ENSINO SUPERIOR DA FIPE (FIPEEES)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (463, true, '2023-06-12 12:25:37.562534', NULL, 'ESCOLA DE ENSINO SUPERIOR DO AGRESTE PARAIBANO (EESAP)', 1, NULL, 225, false);
INSERT INTO public.empresa VALUES (464, true, '2023-06-12 12:25:37.570059', NULL, 'ESCOLA DE EQUITAÇÃO DO EXÉRCITO (ESEQEX)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (465, true, '2023-06-12 12:25:37.577973', NULL, 'ESCOLA DE GOVERNO PROFESSOR PAULO NEVES DE CARVALHO (EG)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (466, true, '2023-06-12 12:25:37.585417', NULL, 'ESCOLA DE INSTRUÇÃO ESPECIALIZADA (ESIE)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (467, true, '2023-06-12 12:25:37.5928', NULL, 'ESCOLA DE INTELIGÊNCIA - ESINT/ABIN (ESINT/ABIN)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (468, true, '2023-06-12 12:25:37.600185', NULL, 'ESCOLA DE INTELIGÊNCIA MILITAR DO EXÉRCITO (ESIMEX)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (469, true, '2023-06-12 12:25:37.60818', NULL, 'ESCOLA DE MATEMÁTICA APLICADA (EMAP-FGV)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (470, true, '2023-06-12 12:25:37.615674', NULL, 'ESCOLA DE MEDICINA SOUZA MARQUES DA FUNDAÇÃO TÉCNICO-EDUCACIONAL SOUZA MARQUES (EMSM)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (471, true, '2023-06-12 12:25:37.623207', NULL, 'ESCOLA DE POLÍTICAS PÚBLICAS E GOVERNO DA FUNDAÇÃO GETULIO VARGAS (FGV EPPG)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (472, true, '2023-06-12 12:25:37.630688', NULL, 'ESCOLA DE SARGENTOS DAS ARMAS (ESA)', 1, NULL, 217, false);
INSERT INTO public.empresa VALUES (473, true, '2023-06-12 12:25:37.638708', NULL, 'ESCOLA DE SARGENTOS DE LOGÍSTICA (ESSLOG)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (474, true, '2023-06-12 12:25:37.649863', NULL, 'ESCOLA DE SOCIOLOGIA E POLÍTICA DE SÃO PAULO (ESP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (475, true, '2023-06-12 12:25:37.662882', NULL, 'ESCOLA DIEESE DE CIÊNCIAS DO TRABALHO (DIEESE)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (476, true, '2023-06-12 12:25:37.670843', NULL, 'ESCOLA MUNICIPAL DE GESTÃO DO LEGISLATIVO (EMUGLE)', 1, NULL, 160, false);
INSERT INTO public.empresa VALUES (477, true, '2023-06-12 12:25:37.678687', NULL, 'ESCOLA NACIONAL DE ADMINISTRAÇÃO PÚBLICA (ENAP)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (478, true, '2023-06-12 12:25:37.690707', NULL, 'ESCOLA NACIONAL DE CIÊNCIAS ESTATÍSTICAS (ENCE)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (479, true, '2023-06-12 12:25:37.698027', NULL, 'ESCOLA SAÚDE PÚBLICA - ESPMT (ESPMT)', 1, NULL, 203, false);
INSERT INTO public.empresa VALUES (480, true, '2023-06-12 12:25:37.705425', NULL, 'ESCOLA SUPERIOR ABERTA DO BRASIL (ESAB)', 1, NULL, 226, false);
INSERT INTO public.empresa VALUES (481, true, '2023-06-12 12:25:37.713356', NULL, 'ESCOLA SUPERIOR ASSOCIADA DE GOIÂNIA (ESUP)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (482, true, '2023-06-12 12:25:37.720895', NULL, 'ESCOLA SUPERIOR BATISTA DO AMAZONAS (ESBAM)', 1, NULL, 75, false);
INSERT INTO public.empresa VALUES (483, true, '2023-06-12 12:25:37.728181', NULL, 'ESCOLA SUPERIOR DA AMAZÔNIA DE ABAETETUBA (ESAMAZ)', 1, NULL, 227, false);
INSERT INTO public.empresa VALUES (484, true, '2023-06-12 12:25:37.735655', NULL, 'ESCOLA SUPERIOR DE AGRONOMIA DE PARAGUAÇU PAULISTA (ESAPP)', 1, NULL, 228, false);
INSERT INTO public.empresa VALUES (485, true, '2023-06-12 12:25:37.7434', NULL, 'ESCOLA SUPERIOR DE ARTES CÉLIA HELENA', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (486, true, '2023-06-12 12:25:37.75101', NULL, 'ESCOLA SUPERIOR DE AVIAÇÃO CIVIL (ESAC)', 1, NULL, 147, false);
INSERT INTO public.empresa VALUES (488, true, '2023-06-12 12:25:37.765485', NULL, 'ESCOLA SUPERIOR DE CIÊNCIAS DA SANTA CASA DE MISERICÓRDIA DE VITÓRIA (EMESCAM)', 1, NULL, 25, false);
INSERT INTO public.empresa VALUES (489, true, '2023-06-12 12:25:37.773548', NULL, 'ESCOLA SUPERIOR DE CIÊNCIAS DA SAÚDE (ESCS)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (490, true, '2023-06-12 12:25:37.780837', NULL, 'ESCOLA SUPERIOR DE CRICIÚMA - ESUCRI (ESUCRI)', 1, NULL, 192, false);
INSERT INTO public.empresa VALUES (491, true, '2023-06-12 12:25:37.788084', NULL, 'ESCOLA SUPERIOR DE CRUZEIRO "PREFEITO HAMILTON VIEIRA MENDES" (ESEFIC)', 1, NULL, 229, false);
INSERT INTO public.empresa VALUES (492, true, '2023-06-12 12:25:37.795463', NULL, 'ESCOLA SUPERIOR DE EDUCAÇÃO (ESJUS)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (493, true, '2023-06-12 12:25:37.803414', NULL, 'ESCOLA SUPERIOR DE EDUCAÇÃO CORPORATIVA (ESEC)', 1, NULL, 140, false);
INSERT INTO public.empresa VALUES (494, true, '2023-06-12 12:25:37.810733', NULL, 'ESCOLA SUPERIOR DE EDUCAÇÃO E NEGÓCIOS (ESN)', 1, NULL, 145, false);
INSERT INTO public.empresa VALUES (495, true, '2023-06-12 12:25:37.818478', NULL, 'ESCOLA SUPERIOR DE EDUCAÇÃO FÍSICA DE JUNDIAÍ (ESEFJ)', 1, NULL, 182, false);
INSERT INTO public.empresa VALUES (496, true, '2023-06-12 12:25:37.825761', NULL, 'ESCOLA SUPERIOR DE ENGENHARIA E GESTÃO DE SÃO PAULO - ESEG (ESEG)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (497, true, '2023-06-12 12:25:37.833595', NULL, 'ESCOLA SUPERIOR DE ENSINO HELENA ANTIPOFF (ESEHA)', 1, NULL, 49, false);
INSERT INTO public.empresa VALUES (498, true, '2023-06-12 12:25:37.840966', NULL, 'ESCOLA SUPERIOR DE GESTÃO (ESGE)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (499, true, '2023-06-12 12:25:37.84839', NULL, 'ESCOLA SUPERIOR DE GESTÃO COMERCIAL E MARKETING (ESIC)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (500, true, '2023-06-12 12:25:37.855868', NULL, 'ESCOLA SUPERIOR DE ITABIRA', 1, NULL, 161, false);
INSERT INTO public.empresa VALUES (501, true, '2023-06-12 12:25:37.863622', NULL, 'ESCOLA SUPERIOR DE MARKETING (ESM)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (502, true, '2023-06-12 12:25:37.87584', NULL, 'ESCOLA SUPERIOR DE POUSO ALEGRE', 1, NULL, 230, false);
INSERT INTO public.empresa VALUES (503, true, '2023-06-12 12:25:37.883241', NULL, 'ESCOLA SUPERIOR DE PROPAGANDA E MARKETING (ESPM)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (504, true, '2023-06-12 12:25:37.890453', NULL, 'ESCOLA SUPERIOR DE PROPAGANDA E MARKETING DE PORTO ALEGRE (ESPM - POA)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (505, true, '2023-06-12 12:25:37.898365', NULL, 'ESCOLA SUPERIOR DE PROPAGANDA E MARKETING DO RIO DE JANEIRO (ESPM)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (506, true, '2023-06-12 12:25:37.905681', NULL, 'ESCOLA SUPERIOR DE SAÚDE DE ARCOVERDE (ESSA)', 1, NULL, 15, false);
INSERT INTO public.empresa VALUES (507, true, '2023-06-12 12:25:37.913169', NULL, 'ESCOLA SUPERIOR DE TECNOLOGIA & GESTÃO DE SANTA CATARINA (EST&G)', 1, NULL, 3, false);
INSERT INTO public.empresa VALUES (508, true, '2023-06-12 12:25:37.939038', NULL, 'ESCOLA SUPERIOR DE TEOLOGIA E ESPIRITUALIDADE FRANCISCANA (ESTEF)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (509, true, '2023-06-12 12:25:37.947057', NULL, 'ESCOLA SUPERIOR DO AR (EAR)', 1, NULL, 100, false);
INSERT INTO public.empresa VALUES (510, true, '2023-06-12 12:25:37.954286', NULL, 'ESCOLA SUPERIOR DOM HELDER CÂMARA (ESDHC)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (511, true, '2023-06-12 12:25:37.961742', NULL, 'ESCOLA SUPERIOR DO MINISTÉRIO PÚBLICO (ESCOLAMP)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (512, true, '2023-06-12 12:25:37.969007', NULL, 'ESCOLA SUPERIOR DO MINISTÉRIO PÚBLICO DA UNIÃO (ESMPU)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (513, true, '2023-06-12 12:25:37.976832', NULL, 'ESCOLA SUPERIOR DO SUL DE SANTA CATARINA', 1, NULL, 192, false);
INSERT INTO public.empresa VALUES (514, true, '2023-06-12 12:25:37.984095', NULL, 'ESCOLA SUPERIOR EM MEIO AMBIENTE (ESMA)', 1, NULL, 231, false);
INSERT INTO public.empresa VALUES (515, true, '2023-06-12 12:25:37.991373', NULL, 'ESCOLA SUPERIOR MADRE CELESTE (ESMAC)', 1, NULL, 232, false);
INSERT INTO public.empresa VALUES (516, true, '2023-06-12 12:25:37.998619', NULL, 'ESCOLA SUPERIOR NACIONAL DE SEGUROS (ESNS)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (517, true, '2023-06-12 12:25:38.00657', NULL, 'ESCOLA SUPERIOR NACIONAL DE SEGUROS DE SÃO PAULO (ESNS-SP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (518, true, '2023-06-12 12:25:38.013957', NULL, 'ESCOLA SUPERIOR SÃO FRANCISCO DE ASSIS (ESFA)', 1, NULL, 233, false);
INSERT INTO public.empresa VALUES (519, true, '2023-06-12 12:25:38.02132', NULL, 'ESCOLA SUPERIOR SÃO JUDAS DE GUARULHOS', 1, NULL, 100, false);
INSERT INTO public.empresa VALUES (520, true, '2023-06-12 12:25:38.028689', NULL, 'ESCOLA SUPERIOR SÃO JUDAS DE SÃO BERNARDO DO CAMPO', 1, NULL, 82, false);
INSERT INTO public.empresa VALUES (521, true, '2023-06-12 12:25:38.036752', NULL, 'ESCOLA SUPERIOR UNA DE CONSELHEIRO LAFAIETE', 1, NULL, 18, false);
INSERT INTO public.empresa VALUES (522, true, '2023-06-12 12:25:38.043954', NULL, 'ESCOLA SUPERIOR UNA DE ITUMBIARA', 1, NULL, 234, false);
INSERT INTO public.empresa VALUES (523, true, '2023-06-12 12:25:38.051357', NULL, 'ESTÁCIO FATERN - FACULDADE ESTÁCIO DO RIO GRANDE DO NORTE (ESTÁCIO FATERN)', 1, NULL, 130, false);
INSERT INTO public.empresa VALUES (524, true, '2023-06-12 12:25:38.058679', NULL, 'FACITEN - FACULDADE DE CIÊNCIAS E TECNOLOGIAS DE NATAL (FACITEN)', 1, NULL, 130, false);
INSERT INTO public.empresa VALUES (525, true, '2023-06-12 12:25:38.066554', NULL, 'FACUDADE IEDUCARE - FIED (FIED)', 1, NULL, 235, false);
INSERT INTO public.empresa VALUES (526, true, '2023-06-12 12:25:38.07891', NULL, 'FACUDADE UNINEVES', 1, NULL, 107, false);
INSERT INTO public.empresa VALUES (527, true, '2023-06-12 12:25:38.086466', NULL, 'FACULDADE 05 DE JULHO (F5)', 1, NULL, 167, false);
INSERT INTO public.empresa VALUES (528, true, '2023-06-12 12:25:38.094292', NULL, 'FACULDADE 2001', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (529, true, '2023-06-12 12:25:38.101656', NULL, 'FACULDADE 28 DE AGOSTO DE ENSINO E PESQUISA (28 DE AGOSTO)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (530, true, '2023-06-12 12:25:38.109037', NULL, 'FACULDADE ABC DE GOIÂNIA (FABC)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (531, true, '2023-06-12 12:25:38.11639', NULL, 'FACULDADE ABERTA DO TOCANTINS (FAT)', 1, NULL, 236, false);
INSERT INTO public.empresa VALUES (532, true, '2023-06-12 12:25:38.124173', NULL, 'FACULDADE ABRANGE ABC (FABRANGE)', 1, NULL, 82, false);
INSERT INTO public.empresa VALUES (533, true, '2023-06-12 12:25:38.13152', NULL, 'FACULDADE ADELINA MOURA - FAADEMA (FAADEMA)', 1, NULL, 237, false);
INSERT INTO public.empresa VALUES (534, true, '2023-06-12 12:25:38.139057', NULL, 'FACULDADE ADELMAR ROSADO (FAR)', 1, NULL, 27, false);
INSERT INTO public.empresa VALUES (535, true, '2023-06-12 12:25:38.146527', NULL, 'FACULDADE ADJETIVO CETEP (ADJETIVO-CETEP)', 1, NULL, 238, false);
INSERT INTO public.empresa VALUES (536, true, '2023-06-12 12:25:38.15444', NULL, 'FACULDADE ADVENTISTA DA AMAZÔNIA (FAAMA)', 1, NULL, 239, false);
INSERT INTO public.empresa VALUES (537, true, '2023-06-12 12:25:38.161874', NULL, 'FACULDADE ADVENTISTA DA BAHIA (FADBA)', 1, NULL, 240, false);
INSERT INTO public.empresa VALUES (538, true, '2023-06-12 12:25:38.169266', NULL, 'FACULDADE ADVENTISTA DO PARANÁ (FAP)', 1, NULL, 241, false);
INSERT INTO public.empresa VALUES (539, true, '2023-06-12 12:25:38.176617', NULL, 'FACULDADE AFONSO MAFRENSE (FAM)', 1, NULL, 242, false);
INSERT INTO public.empresa VALUES (540, true, '2023-06-12 12:25:38.184821', NULL, 'FACULDADE ÁGAPE DE SÃO FÉLIX', 1, NULL, 243, false);
INSERT INTO public.empresa VALUES (541, true, '2023-06-12 12:25:38.192113', NULL, 'FACULDADE AGES DE JACOBINA (FACULDADE AGES)', 1, NULL, 244, false);
INSERT INTO public.empresa VALUES (542, true, '2023-06-12 12:25:38.199379', NULL, 'FACULDADE AGES DE MEDICINA (FACULDADE AGES)', 1, NULL, 244, false);
INSERT INTO public.empresa VALUES (543, true, '2023-06-12 12:25:38.206714', NULL, 'FACULDADE AGES DE MEDICINA DE IRECÊ (FACULDADE AGES)', 1, NULL, 245, false);
INSERT INTO public.empresa VALUES (544, true, '2023-06-12 12:25:38.219404', NULL, 'FACULDADE AGES DE SENHOR DO BONFIM (FACULDADE AGES)', 1, NULL, 246, false);
INSERT INTO public.empresa VALUES (545, true, '2023-06-12 12:25:38.226807', NULL, 'FACULDADE AGES DE TUCANO (FACULDADE AGES)', 1, NULL, 247, false);
INSERT INTO public.empresa VALUES (546, true, '2023-06-12 12:25:38.23411', NULL, 'FACULDADE ÁGORA - ADMINISTRAÇÃO, EDUCAÇÃO E CULTURA (FAAEC)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (547, true, '2023-06-12 12:25:38.241412', NULL, 'FACULDADE ÁGORA - FAG (FAG)', 1, NULL, 248, false);
INSERT INTO public.empresa VALUES (548, true, '2023-06-12 12:25:38.249243', NULL, 'FACULDADE AIEC (AIEC / FAAB)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (549, true, '2023-06-12 12:25:38.256611', NULL, 'FACULDADE AJES (AJES)', 1, NULL, 6, false);
INSERT INTO public.empresa VALUES (550, true, '2023-06-12 12:25:38.263914', NULL, 'FACULDADE ALAGOANA DE ADMINISTRAÇÃO (FAA)', 1, NULL, 73, false);
INSERT INTO public.empresa VALUES (551, true, '2023-06-12 12:25:38.271173', NULL, 'FACULDADE ALBERT EINSTEIN (FALBE)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (552, true, '2023-06-12 12:25:38.279142', NULL, 'FACULDADE ALDETE MARIA ALVES (FAMA)', 1, NULL, 249, false);
INSERT INTO public.empresa VALUES (553, true, '2023-06-12 12:25:38.286862', NULL, 'FACULDADE ALFA AMÉRICA', 1, NULL, 250, false);
INSERT INTO public.empresa VALUES (554, true, '2023-06-12 12:25:38.294337', NULL, 'FACULDADE ALFA DE TEÓFILO OTONI (ALFA)', 1, NULL, 7, false);
INSERT INTO public.empresa VALUES (555, true, '2023-06-12 12:25:38.301598', NULL, 'FACULDADE ALFA UMUARAMA (ALFA)', 1, NULL, 251, false);
INSERT INTO public.empresa VALUES (556, true, '2023-06-12 12:25:38.309436', NULL, 'FACULDADE ALFAUNIPAC DE ALMENARA', 1, NULL, 252, false);
INSERT INTO public.empresa VALUES (557, true, '2023-06-12 12:25:38.316739', NULL, 'FACULDADE ALFAUNIPAC DE ARAÇUAÍ', 1, NULL, 253, false);
INSERT INTO public.empresa VALUES (558, true, '2023-06-12 12:25:38.32884', NULL, 'FACULDADE ALFAUNIPAC DE CAPELINHA', 1, NULL, 254, false);
INSERT INTO public.empresa VALUES (559, true, '2023-06-12 12:25:38.336516', NULL, 'FACULDADE ALFAUNIPAC DE GUANHÃES', 1, NULL, 255, false);
INSERT INTO public.empresa VALUES (560, true, '2023-06-12 12:25:38.34461', NULL, 'FACULDADE ALFREDO NASSER DE CASA NOVA (FAN)', 1, NULL, 256, false);
INSERT INTO public.empresa VALUES (561, true, '2023-06-12 12:25:38.352035', NULL, 'FACULDADE ALFREDO NASSER DE PONTALINA', 1, NULL, 257, false);
INSERT INTO public.empresa VALUES (562, true, '2023-06-12 12:25:38.359398', NULL, 'FACULDADE ALFREDO NASSER DE REMANSO', 1, NULL, 258, false);
INSERT INTO public.empresa VALUES (563, true, '2023-06-12 12:25:38.366731', NULL, 'FACULDADE ALIANÇA DE ITABERAI', 1, NULL, 259, false);
INSERT INTO public.empresa VALUES (564, true, '2023-06-12 12:25:38.374642', NULL, 'FACULDADE ALIANÇA DO MARANHÃO (FAMAR)', 1, NULL, 141, false);
INSERT INTO public.empresa VALUES (565, true, '2023-06-12 12:25:38.382151', NULL, 'FACULDADE ALIANÇA EDUCACIONAL DO ESTADO DE SÃO PAULO', 1, NULL, 260, false);
INSERT INTO public.empresa VALUES (566, true, '2023-06-12 12:25:38.410024', NULL, 'FACULDADE ALIS DE ITABIRITO', 1, NULL, 261, false);
INSERT INTO public.empresa VALUES (567, true, '2023-06-12 12:25:38.417423', NULL, 'FACULDADE ALMEIDA RODRIGUES (FAR)', 1, NULL, 202, false);
INSERT INTO public.empresa VALUES (568, true, '2023-06-12 12:25:38.425293', NULL, 'FACULDADE ALPHA (ALPHA)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (569, true, '2023-06-12 12:25:38.43268', NULL, 'FACULDADE ALPHAVILLE (FAVI)', 1, NULL, 158, false);
INSERT INTO public.empresa VALUES (570, true, '2023-06-12 12:25:38.440027', NULL, 'FACULDADE ALURA.TECH (ALURA.TECH)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (571, true, '2023-06-12 12:25:38.447303', NULL, 'FACULDADE ÁLVARES DE AZEVEDO (FAATESP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (572, true, '2023-06-12 12:25:38.455614', NULL, 'FACULDADE ALVES LIMA (FAAL)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (573, true, '2023-06-12 12:25:38.466479', NULL, 'FACULDADE AMADEUS (FAMA)', 1, NULL, 142, false);
INSERT INTO public.empresa VALUES (574, true, '2023-06-12 12:25:38.473966', NULL, 'FACULDADE AMAZONAS', 1, NULL, 262, false);
INSERT INTO public.empresa VALUES (575, true, '2023-06-12 12:25:38.481853', NULL, 'FACULDADE AMÉRICA (AMÉRICA)', 1, NULL, 190, false);
INSERT INTO public.empresa VALUES (576, true, '2023-06-12 12:25:38.489909', NULL, 'FACULDADE AMERICAS INTERNATIONAL COLLEGE (FAMG)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (577, true, '2023-06-12 12:25:38.497361', NULL, 'FACULDADE ANA CAROLINA PUGA (FAPUGA)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (578, true, '2023-06-12 12:25:38.504952', NULL, 'FACULDADE ANASPS (FANASPS)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (579, true, '2023-06-12 12:25:38.512317', NULL, 'FACULDADE ANCHIETA DO RECIFE (FAR)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (580, true, '2023-06-12 12:25:38.520175', NULL, 'FACULDADE ANCLIVEPA (ANCLIVEPA)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (581, true, '2023-06-12 12:25:38.527516', NULL, 'FACULDADE ANCLIVEPA BRASÍLIA', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (582, true, '2023-06-12 12:25:38.534978', NULL, 'FACULDADE ANCLIVEPA DE GESTÃO E HUMANOLOGIA (FAGH)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (583, true, '2023-06-12 12:25:38.542315', NULL, 'FACULDADE ANCLIVEPA DE NATAL', 1, NULL, 130, false);
INSERT INTO public.empresa VALUES (584, true, '2023-06-12 12:25:38.550096', NULL, 'FACULDADE ANCLIVEPA SÃO PAULO (ANCLIVEPA SP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (585, true, '2023-06-12 12:25:38.557808', NULL, 'FACULDADE ANDREOTTI DE MARINGÁ (FAM)', 1, NULL, 76, false);
INSERT INTO public.empresa VALUES (586, true, '2023-06-12 12:25:38.565256', NULL, 'FACULDADE ANGEL VIANNA (FAV)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (587, true, '2023-06-12 12:25:38.572548', NULL, 'FACULDADE ANHANGUERA DE ALAGOINHAS (FPA)', 1, NULL, 213, false);
INSERT INTO public.empresa VALUES (588, true, '2023-06-12 12:25:38.58059', NULL, 'FACULDADE ANHANGUERA DE ALVORADA', 1, NULL, 263, false);
INSERT INTO public.empresa VALUES (589, true, '2023-06-12 12:25:38.587771', NULL, 'FACULDADE ANHANGUERA DE ANÁPOLIS', 1, NULL, 264, false);
INSERT INTO public.empresa VALUES (590, true, '2023-06-12 12:25:38.599687', NULL, 'FACULDADE ANHANGÜERA DE BAURU', 1, NULL, 93, false);
INSERT INTO public.empresa VALUES (591, true, '2023-06-12 12:25:38.608059', NULL, 'FACULDADE ANHANGUERA DE BELO HORIZONTE', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (592, true, '2023-06-12 12:25:38.61551', NULL, 'FACULDADE ANHANGUERA DE BETIM', 1, NULL, 198, false);
INSERT INTO public.empresa VALUES (593, true, '2023-06-12 12:25:38.643418', NULL, 'FACULDADE ANHANGUERA DE BRASÍLIA (ANHANGUERA DF)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (594, true, '2023-06-12 12:25:38.650803', NULL, 'FACULDADE ANHANGUERA DE CACHOEIRO DE ITAPEMIRIM', 1, NULL, 190, false);
INSERT INTO public.empresa VALUES (595, true, '2023-06-12 12:25:38.658603', NULL, 'FACULDADE ANHANGUERA DE CAMAÇARI', 1, NULL, 153, false);
INSERT INTO public.empresa VALUES (596, true, '2023-06-12 12:25:38.666282', NULL, 'FACULDADE ANHANGÜERA DE CAMPINAS', 1, NULL, 177, false);
INSERT INTO public.empresa VALUES (597, true, '2023-06-12 12:25:38.674027', NULL, 'FACULDADE ANHANGUERA DE CARUARU', 1, NULL, 156, false);
INSERT INTO public.empresa VALUES (598, true, '2023-06-12 12:25:38.681489', NULL, 'FACULDADE ANHANGUERA DE CASCAVEL', 1, NULL, 54, false);
INSERT INTO public.empresa VALUES (599, true, '2023-06-12 12:25:38.689269', NULL, 'FACULDADE ANHANGUERA DE CATANDUVA (FAC)', 1, NULL, 181, false);
INSERT INTO public.empresa VALUES (600, true, '2023-06-12 12:25:38.696757', NULL, 'FACULDADE ANHANGUERA DE CAXIAS DO SUL', 1, NULL, 87, false);
INSERT INTO public.empresa VALUES (601, true, '2023-06-12 12:25:38.704153', NULL, 'FACULDADE ANHANGUERA DE CIÊNCIAS JURÍDICAS, GERENCIAIS E EDUCAÇÃO DE SINOP', 1, NULL, 155, false);
INSERT INTO public.empresa VALUES (602, true, '2023-06-12 12:25:38.711663', NULL, 'FACULDADE ANHANGUERA DE CIÊNCIAS SOCIAIS APLICADAS DE SINOP (FACISAS)', 1, NULL, 155, false);
INSERT INTO public.empresa VALUES (603, true, '2023-06-12 12:25:38.719395', NULL, 'FACULDADE ANHANGUERA DE CONTAGEM', 1, NULL, 200, false);
INSERT INTO public.empresa VALUES (604, true, '2023-06-12 12:25:38.726798', NULL, 'FACULDADE ANHANGUERA DE DIVINÓPOLIS', 1, NULL, 19, false);
INSERT INTO public.empresa VALUES (605, true, '2023-06-12 12:25:38.734171', NULL, 'FACULDADE ANHANGÜERA DE DOURADOS', 1, NULL, 84, false);
INSERT INTO public.empresa VALUES (606, true, '2023-06-12 12:25:38.741592', NULL, 'FACULDADE ANHANGUERA DE FEIRA DE SANTANA', 1, NULL, 99, false);
INSERT INTO public.empresa VALUES (607, true, '2023-06-12 12:25:38.774509', NULL, 'FACULDADE ANHANGUERA DE GOIÂNIA', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (608, true, '2023-06-12 12:25:38.78177', NULL, 'FACULDADE ANHANGUERA DE GOVERNADOR VALADARES', 1, NULL, 265, false);
INSERT INTO public.empresa VALUES (609, true, '2023-06-12 12:25:38.793747', NULL, 'FACULDADE ANHANGUERA DE GUARAPARI', 1, NULL, 266, false);
INSERT INTO public.empresa VALUES (610, true, '2023-06-12 12:25:38.801328', NULL, 'FACULDADE ANHANGUERA DE GUARULHOS', 1, NULL, 100, false);
INSERT INTO public.empresa VALUES (611, true, '2023-06-12 12:25:38.808966', NULL, 'FACULDADE ANHANGUERA DE IMPERATRIZ', 1, NULL, 267, false);
INSERT INTO public.empresa VALUES (612, true, '2023-06-12 12:25:38.816389', NULL, 'FACULDADE ANHANGUERA DE INDAIATUBA', 1, NULL, 11, false);
INSERT INTO public.empresa VALUES (613, true, '2023-06-12 12:25:38.823784', NULL, 'FACULDADE ANHANGUERA DE IPATINGA', 1, NULL, 268, false);
INSERT INTO public.empresa VALUES (614, true, '2023-06-12 12:25:38.831323', NULL, 'FACULDADE ANHANGUERA DE ITABUNA', 1, NULL, 269, false);
INSERT INTO public.empresa VALUES (615, true, '2023-06-12 12:25:38.839152', NULL, 'FACULDADE ANHANGUERA DE ITAPECERICA DA SERRA', 1, NULL, 270, false);
INSERT INTO public.empresa VALUES (616, true, '2023-06-12 12:25:38.846958', NULL, 'FACULDADE ANHANGUERA DE ITAPETININGA', 1, NULL, 271, false);
INSERT INTO public.empresa VALUES (617, true, '2023-06-12 12:25:38.854485', NULL, 'FACULDADE ANHANGUERA DE ITAPEVA (FAI)', 1, NULL, 272, false);
INSERT INTO public.empresa VALUES (618, true, '2023-06-12 12:25:38.861859', NULL, 'FACULDADE ANHANGUERA DE JACAREÍ', 1, NULL, 273, false);
INSERT INTO public.empresa VALUES (619, true, '2023-06-12 12:25:38.869446', NULL, 'FACULDADE ANHANGUERA DE JAÚ (FAJ)', 1, NULL, 274, false);
INSERT INTO public.empresa VALUES (620, true, '2023-06-12 12:25:38.876822', NULL, 'FACULDADE ANHANGUERA DE JEQUIÉ (FPJ)', 1, NULL, 275, false);
INSERT INTO public.empresa VALUES (621, true, '2023-06-12 12:25:38.884303', NULL, 'FACULDADE ANHANGUERA DE JOINVILLE', 1, NULL, 68, false);
INSERT INTO public.empresa VALUES (622, true, '2023-06-12 12:25:38.891681', NULL, 'FACULDADE ANHANGUERA DE JUAZEIRO DO NORTE', 1, NULL, 135, false);
INSERT INTO public.empresa VALUES (623, true, '2023-06-12 12:25:38.899496', NULL, 'FACULDADE ANHANGUERA DE JUNDIAÍ', 1, NULL, 182, false);
INSERT INTO public.empresa VALUES (624, true, '2023-06-12 12:25:38.90684', NULL, 'FACULDADE ANHANGUERA DE LIMEIRA', 1, NULL, 276, false);
INSERT INTO public.empresa VALUES (625, true, '2023-06-12 12:25:38.914491', NULL, 'FACULDADE ANHANGUERA DE LINHARES', 1, NULL, 277, false);
INSERT INTO public.empresa VALUES (626, true, '2023-06-12 12:25:38.921688', NULL, 'FACULDADE ANHANGUERA DE MACAPÁ', 1, NULL, 26, false);
INSERT INTO public.empresa VALUES (627, true, '2023-06-12 12:25:38.933447', NULL, 'FACULDADE ANHANGUERA DE MACEIÓ', 1, NULL, 73, false);
INSERT INTO public.empresa VALUES (628, true, '2023-06-12 12:25:38.940794', NULL, 'FACULDADE ANHANGUERA DE MARABÁ', 1, NULL, 46, false);
INSERT INTO public.empresa VALUES (629, true, '2023-06-12 12:25:38.94877', NULL, 'FACULDADE ANHANGUERA DE MATÃO', 1, NULL, 278, false);
INSERT INTO public.empresa VALUES (630, true, '2023-06-12 12:25:38.956085', NULL, 'FACULDADE ANHANGUERA DE MOGI GUAÇU (FAMG)', 1, NULL, 279, false);
INSERT INTO public.empresa VALUES (631, true, '2023-06-12 12:25:38.96428', NULL, 'FACULDADE ANHANGUERA DE OSASCO', 1, NULL, 158, false);
INSERT INTO public.empresa VALUES (632, true, '2023-06-12 12:25:38.971597', NULL, 'FACULDADE ANHANGUERA DE PALMAS', 1, NULL, 23, false);
INSERT INTO public.empresa VALUES (633, true, '2023-06-12 12:25:38.979098', NULL, 'FACULDADE ANHANGUERA DE PARAGOMINAS (FPP)', 1, NULL, 280, false);
INSERT INTO public.empresa VALUES (634, true, '2023-06-12 12:25:38.986573', NULL, 'FACULDADE ANHANGUERA DE PARAUAPEBAS', 1, NULL, 281, false);
INSERT INTO public.empresa VALUES (635, true, '2023-06-12 12:25:38.994499', NULL, 'FACULDADE ANHANGUERA DE PASSO FUNDO', 1, NULL, 282, false);
INSERT INTO public.empresa VALUES (636, true, '2023-06-12 12:25:39.00172', NULL, 'FACULDADE ANHANGUERA DE PELOTAS', 1, NULL, 283, false);
INSERT INTO public.empresa VALUES (637, true, '2023-06-12 12:25:39.008967', NULL, 'FACULDADE ANHANGUERA DE PINDAMONHANGABA', 1, NULL, 162, false);
INSERT INTO public.empresa VALUES (638, true, '2023-06-12 12:25:39.016173', NULL, 'FACULDADE ANHANGÜERA DE PIRACICABA', 1, NULL, 224, false);
INSERT INTO public.empresa VALUES (639, true, '2023-06-12 12:25:39.023924', NULL, 'FACULDADE ANHANGUERA DE POÇOS DE CALDAS', 1, NULL, 284, false);
INSERT INTO public.empresa VALUES (640, true, '2023-06-12 12:25:39.031483', NULL, 'FACULDADE ANHANGUERA DE PONTA GROSSA', 1, NULL, 188, false);
INSERT INTO public.empresa VALUES (641, true, '2023-06-12 12:25:39.038985', NULL, 'FACULDADE ANHANGUERA DE PORTO ALEGRE', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (642, true, '2023-06-12 12:25:39.046979', NULL, 'FACULDADE ANHANGUERA DE PRIMAVERA DO LESTE (FIPL)', 1, NULL, 285, false);
INSERT INTO public.empresa VALUES (643, true, '2023-06-12 12:25:39.054906', NULL, 'FACULDADE ANHANGUERA DE RIBEIRÃO DAS NEVES', 1, NULL, 286, false);
INSERT INTO public.empresa VALUES (644, true, '2023-06-12 12:25:39.062381', NULL, 'FACULDADE ANHANGÜERA DE RIBEIRÃO PRETO', 1, NULL, 58, false);
INSERT INTO public.empresa VALUES (645, true, '2023-06-12 12:25:39.069726', NULL, 'FACULDADE ANHANGUERA DE RIO BRANCO', 1, NULL, 143, false);
INSERT INTO public.empresa VALUES (646, true, '2023-06-12 12:25:39.08209', NULL, 'FACULDADE ANHANGUERA DE RIO CLARO', 1, NULL, 222, false);
INSERT INTO public.empresa VALUES (647, true, '2023-06-12 12:25:39.089942', NULL, 'FACULDADE ANHANGUERA DE RONDONÓPOLIS (FAR)', 1, NULL, 287, false);
INSERT INTO public.empresa VALUES (648, true, '2023-06-12 12:25:39.097852', NULL, 'FACULDADE ANHANGUERA DE SANTA BÁRBARA', 1, NULL, 288, false);
INSERT INTO public.empresa VALUES (649, true, '2023-06-12 12:25:39.105234', NULL, 'FACULDADE ANHANGUERA DE SANTO ANTÔNIO DE JESUS', 1, NULL, 96, false);
INSERT INTO public.empresa VALUES (650, true, '2023-06-12 12:25:39.11257', NULL, 'FACULDADE ANHANGUERA DE SÃO BERNARDO', 1, NULL, 82, false);
INSERT INTO public.empresa VALUES (651, true, '2023-06-12 12:25:39.120387', NULL, 'FACULDADE ANHANGUERA DE SÃO JOÃO DE MERITI', 1, NULL, 289, false);
INSERT INTO public.empresa VALUES (652, true, '2023-06-12 12:25:39.127692', NULL, 'FACULDADE ANHANGÜERA DE SÃO JOSÉ', 1, NULL, 144, false);
INSERT INTO public.empresa VALUES (653, true, '2023-06-12 12:25:39.135235', NULL, 'FACULDADE ANHANGUERA DE SÃO JOSÉ DO RIO PRETO (FASJRP)', 1, NULL, 114, false);
INSERT INTO public.empresa VALUES (654, true, '2023-06-12 12:25:39.142919', NULL, 'FACULDADE ANHANGUERA DE SÃO JOSÉ-SC (FASJ-SC)', 1, NULL, 140, false);
INSERT INTO public.empresa VALUES (655, true, '2023-06-12 12:25:39.150778', NULL, 'FACULDADE ANHANGUERA DE SÃO LUIZ', 1, NULL, 141, false);
INSERT INTO public.empresa VALUES (656, true, '2023-06-12 12:25:39.158219', NULL, 'FACULDADE ANHANGUERA DE SERRA (FPS)', 1, NULL, 290, false);
INSERT INTO public.empresa VALUES (657, true, '2023-06-12 12:25:39.165619', NULL, 'FACULDADE ANHANGUERA DE SERTÃOZINHO (FASERT)', 1, NULL, 291, false);
INSERT INTO public.empresa VALUES (658, true, '2023-06-12 12:25:39.17674', NULL, 'FACULDADE ANHANGUERA DE SOBRAL', 1, NULL, 167, false);
INSERT INTO public.empresa VALUES (659, true, '2023-06-12 12:25:39.184847', NULL, 'FACULDADE ANHANGÜERA DE SOROCABA (FSO)', 1, NULL, 146, false);
INSERT INTO public.empresa VALUES (660, true, '2023-06-12 12:25:39.192457', NULL, 'FACULDADE ANHANGUERA DE SORRISO', 1, NULL, 292, false);
INSERT INTO public.empresa VALUES (661, true, '2023-06-12 12:25:39.204486', NULL, 'FACULDADE ANHANGUERA DE SUMARÉ (FACSUMARÉ)', 1, NULL, 293, false);
INSERT INTO public.empresa VALUES (662, true, '2023-06-12 12:25:39.212499', NULL, 'FACULDADE ANHANGUERA DE TABOÃO DA SERRA (FATS)', 1, NULL, 212, false);
INSERT INTO public.empresa VALUES (663, true, '2023-06-12 12:25:39.219919', NULL, 'FACULDADE ANHANGUERA DE TANGARÁ DA SERRA (FITS)', 1, NULL, 294, false);
INSERT INTO public.empresa VALUES (664, true, '2023-06-12 12:25:39.227237', NULL, 'FACULDADE ANHANGUERA DE TAUBATÉ', 1, NULL, 33, false);
INSERT INTO public.empresa VALUES (665, true, '2023-06-12 12:25:39.234674', NULL, 'FACULDADE ANHANGUERA DE TECNOLOGIA DE BELO HORIZONTE', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (666, true, '2023-06-12 12:25:39.242529', NULL, 'FACULDADE ANHANGUERA DE TECNOLOGIA DE JUNDIAÍ', 1, NULL, 182, false);
INSERT INTO public.empresa VALUES (667, true, '2023-06-12 12:25:39.250322', NULL, 'FACULDADE ANHANGUERA DE TEIXEIRA DE FREITAS', 1, NULL, 295, false);
INSERT INTO public.empresa VALUES (668, true, '2023-06-12 12:25:39.257722', NULL, 'FACULDADE ANHANGUERA DE UBERLÂNDIA', 1, NULL, 134, false);
INSERT INTO public.empresa VALUES (669, true, '2023-06-12 12:25:39.268783', NULL, 'FACULDADE ANHANGUERA DE VALINHOS', 1, NULL, 296, false);
INSERT INTO public.empresa VALUES (670, true, '2023-06-12 12:25:39.276684', NULL, 'FACULDADE ANHANGUERA DE VALPARAÍSO', 1, NULL, 297, false);
INSERT INTO public.empresa VALUES (671, true, '2023-06-12 12:25:39.283986', NULL, 'FACULDADE ANHANGUERA DE VITÓRIA DA CONQUISTA', 1, NULL, 37, false);
INSERT INTO public.empresa VALUES (672, true, '2023-06-12 12:25:39.291304', NULL, 'FACULDADE ANHANGUERA DO AMAZONAS', 1, NULL, 75, false);
INSERT INTO public.empresa VALUES (673, true, '2023-06-12 12:25:39.298618', NULL, 'FACULDADE ANHANGUERA DO CEARÁ', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (674, true, '2023-06-12 12:25:39.306442', NULL, 'FACULDADE ANHANGUERA DO MARANHÃO', 1, NULL, 141, false);
INSERT INTO public.empresa VALUES (675, true, '2023-06-12 12:25:39.313937', NULL, 'FACULDADE ANHANGUERA DO RIO GRANDE', 1, NULL, 298, false);
INSERT INTO public.empresa VALUES (676, true, '2023-06-12 12:25:39.321387', NULL, 'FACULDADE ANHANGUERA FRANCA (FAF)', 1, NULL, 179, false);
INSERT INTO public.empresa VALUES (677, true, '2023-06-12 12:25:39.328874', NULL, 'FACULDADE ANHANGUERA ITABIRA', 1, NULL, 161, false);
INSERT INTO public.empresa VALUES (678, true, '2023-06-12 12:25:39.336744', NULL, 'FACULDADE ANHANGUERA JARAGUÁ DO SUL', 1, NULL, 31, false);
INSERT INTO public.empresa VALUES (679, true, '2023-06-12 12:25:39.344085', NULL, 'FACULDADE ANHANGUERA PITÁGORAS DE JUNDIAÍ', 1, NULL, 182, false);
INSERT INTO public.empresa VALUES (680, true, '2023-06-12 12:25:39.351589', NULL, 'FACULDADE ANHANGUERA PITÁGORAS VOTORANTIM (-)', 1, NULL, 299, false);
INSERT INTO public.empresa VALUES (681, true, '2023-06-12 12:25:39.358838', NULL, 'FACULDADE ANHANGUERA UNIDADE GUARAPARI', 1, NULL, 266, false);
INSERT INTO public.empresa VALUES (682, true, '2023-06-12 12:25:39.371973', NULL, 'FACULDADE ANHANGUERA UNIDADE PARAGOMINAS', 1, NULL, 280, false);
INSERT INTO public.empresa VALUES (683, true, '2023-06-12 12:25:39.379519', NULL, 'FACULDADE ANHANGUERA UNIDADE PARAUAPEBAS', 1, NULL, 281, false);
INSERT INTO public.empresa VALUES (684, true, '2023-06-12 12:25:39.386951', NULL, 'FACULDADE ANHANGUERA UNIME DE SALVADOR', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (685, true, '2023-06-12 12:25:39.394848', NULL, 'FACULDADE ANÍSIO TEIXEIRA DE FEIRA DE SANTANA (FAT)', 1, NULL, 99, false);
INSERT INTO public.empresa VALUES (686, true, '2023-06-12 12:25:39.403095', NULL, 'FACULDADE ANTÔNIO MENEGHETTI (AMF)', 1, NULL, 300, false);
INSERT INTO public.empresa VALUES (687, true, '2023-06-12 12:25:39.410992', NULL, 'FACULDADE APOGEU (APOGEU)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (688, true, '2023-06-12 12:25:39.418366', NULL, 'FACULDADE ÁREA1 WYDEN (ÁREA1 WYDEN)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (689, true, '2023-06-12 12:25:39.425665', NULL, 'FACULDADE ARIANO SUASSUNA - UNIVAS', 1, NULL, 262, false);
INSERT INTO public.empresa VALUES (690, true, '2023-06-12 12:25:39.433516', NULL, 'FACULDADE ARI DE SÁ (FAS)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (691, true, '2023-06-12 12:25:39.440864', NULL, 'FACULDADE ARNALDO JANSSEN (FAJANSSEN)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (692, true, '2023-06-12 12:25:39.448415', NULL, 'FACULDADE ARQUIDIOCESANA DE CURVELO (FAC)', 1, NULL, 301, false);
INSERT INTO public.empresa VALUES (693, true, '2023-06-12 12:25:39.455719', NULL, 'FACULDADE ARQUIDIOCESANA DE PIRAPORA (FAP)', 1, NULL, 302, false);
INSERT INTO public.empresa VALUES (694, true, '2023-06-12 12:25:39.463612', NULL, 'FACULDADE ASA DE BRUMADINHO (IECEMB - FAB)', 1, NULL, 303, false);
INSERT INTO public.empresa VALUES (695, true, '2023-06-12 12:25:39.471044', NULL, 'FACULDADE ASSEMBLEIANA DO BRASIL', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (696, true, '2023-06-12 12:25:39.478481', NULL, 'FACULDADE ASSIS GURGACZ (FAG TOLEDO)', 1, NULL, 304, false);
INSERT INTO public.empresa VALUES (697, true, '2023-06-12 12:25:39.485849', NULL, 'FACULDADE ASSOCIADA BRASIL (FAB)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (698, true, '2023-06-12 12:25:39.49911', NULL, 'FACULDADE ASSOCIADA BRASIL - EAD', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (699, true, '2023-06-12 12:25:39.507528', NULL, 'FACULDADE ASTORGA (FAAST)', 1, NULL, 305, false);
INSERT INTO public.empresa VALUES (700, true, '2023-06-12 12:25:39.514974', NULL, 'FACULDADE ATAME (ATAME)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (701, true, '2023-06-12 12:25:39.522373', NULL, 'FACULDADE ATENAS CENTRO DE MATO GROSSO', 1, NULL, 292, false);
INSERT INTO public.empresa VALUES (702, true, '2023-06-12 12:25:39.530682', NULL, 'FACULDADE ATENAS CENTRO DE MINAS', 1, NULL, 24, false);
INSERT INTO public.empresa VALUES (703, true, '2023-06-12 12:25:39.538114', NULL, 'FACULDADE ATENAS DO SUL BAIANO', 1, NULL, 306, false);
INSERT INTO public.empresa VALUES (704, true, '2023-06-12 12:25:39.545601', NULL, 'FACULDADE ATENAS PASSOS', 1, NULL, 307, false);
INSERT INTO public.empresa VALUES (705, true, '2023-06-12 12:25:39.553083', NULL, 'FACULDADE ATENAS PORTO SEGURO', 1, NULL, 308, false);
INSERT INTO public.empresa VALUES (706, true, '2023-06-12 12:25:39.561123', NULL, 'FACULDADE ATENAS SETE LAGOAS', 1, NULL, 24, false);
INSERT INTO public.empresa VALUES (707, true, '2023-06-12 12:25:39.568709', NULL, 'FACULDADE ATENAS SORRISO', 1, NULL, 292, false);
INSERT INTO public.empresa VALUES (708, true, '2023-06-12 12:25:39.576114', NULL, 'FACULDADE ATENAS SUL DE MINAS', 1, NULL, 307, false);
INSERT INTO public.empresa VALUES (709, true, '2023-06-12 12:25:39.583516', NULL, 'FACULDADE ATENAS VALENÇA', 1, NULL, 306, false);
INSERT INTO public.empresa VALUES (710, true, '2023-06-12 12:25:39.591525', NULL, 'FACULDADE ATITUDE DE EDUCAÇÃO CONTINUADA (FAEC)', 1, NULL, 309, false);
INSERT INTO public.empresa VALUES (711, true, '2023-06-12 12:25:39.599082', NULL, 'FACULDADE ATTICUS', 1, NULL, 124, false);
INSERT INTO public.empresa VALUES (712, true, '2023-06-12 12:25:39.611609', NULL, 'FACULDADE ATUALIZA (ATUALIZA)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (713, true, '2023-06-12 12:25:39.61904', NULL, 'FACULDADE AUDEN EDUCACIONAL (FAED)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (714, true, '2023-06-12 12:25:39.62696', NULL, 'FACULDADE AUTÔNOMA DE DIREITO (FADISP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (715, true, '2023-06-12 12:25:39.634176', NULL, 'FACULDADE AUTÔNOMA DO BRASIL - MACEIÓ (FBR MACEIÓ)', 1, NULL, 73, false);
INSERT INTO public.empresa VALUES (716, true, '2023-06-12 12:25:39.642098', NULL, 'FACULDADE BAHIANA DE ENGENHARIA E CIÊNCIAS SOCIAIS APLICADAS (FBE)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (717, true, '2023-06-12 12:25:39.649905', NULL, 'FACULDADE BAIANA DE DIREITO E GESTÃO', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (718, true, '2023-06-12 12:25:39.6583', NULL, 'FACULDADE BAIANA DO SENHOR DO BONFIM (FABASB)', 1, NULL, 246, false);
INSERT INTO public.empresa VALUES (719, true, '2023-06-12 12:25:39.665575', NULL, 'FACULDADE BARÃO DE JEQUIRIÇA (FBJ DIGITAL)', 1, NULL, 306, false);
INSERT INTO public.empresa VALUES (720, true, '2023-06-12 12:25:39.672944', NULL, 'FACULDADE BARDDAL DE ARTES APLICADAS', 1, NULL, 3, false);
INSERT INTO public.empresa VALUES (721, true, '2023-06-12 12:25:39.680505', NULL, 'FACULDADE BARRETOS (FB)', 1, NULL, 80, false);
INSERT INTO public.empresa VALUES (722, true, '2023-06-12 12:25:39.688611', NULL, 'FACULDADE BARROS MELO RECIFE (UNIAESO)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (723, true, '2023-06-12 12:25:39.696082', NULL, 'FACULDADE BATISTA BRASILEIRA (FBB)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (724, true, '2023-06-12 12:25:39.703486', NULL, 'FACULDADE BATISTA DE MINAS GERAIS (FBMG)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (725, true, '2023-06-12 12:25:39.710933', NULL, 'FACULDADE BATISTA DO CARIRI (FBC)', 1, NULL, 310, false);
INSERT INTO public.empresa VALUES (726, true, '2023-06-12 12:25:39.719215', NULL, 'FACULDADE BATISTA DO ESTADO DO RIO DE JANEIRO - FABERJ (FABERJ )', 1, NULL, 160, false);
INSERT INTO public.empresa VALUES (727, true, '2023-06-12 12:25:39.726632', NULL, 'FACULDADE BATISTA DO RIO DE JANEIRO (FABAT)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (728, true, '2023-06-12 12:25:39.739125', NULL, 'FACULDADE BATISTA PIONEIRA', 1, NULL, 311, false);
INSERT INTO public.empresa VALUES (729, true, '2023-06-12 12:25:39.747661', NULL, 'FACULDADE BELA VISTA (FBV)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (730, true, '2023-06-12 12:25:39.754971', NULL, 'FACULDADE BEM TE VI LTDA (FAC-BTV)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (731, true, '2023-06-12 12:25:39.762954', NULL, 'FACULDADE BERTIOGA (FABE)', 1, NULL, 312, false);
INSERT INTO public.empresa VALUES (732, true, '2023-06-12 12:25:39.770695', NULL, 'FACULDADE BEZERRA DE ARAÚJO (FABA)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (733, true, '2023-06-12 12:25:39.778659', NULL, 'FACULDADE BILAC DE SÃO JOSÉ DOS CAMPOS (BILAC)', 1, NULL, 144, false);
INSERT INTO public.empresa VALUES (734, true, '2023-06-12 12:25:39.786125', NULL, 'FACULDADE BIOPARK', 1, NULL, 304, false);
INSERT INTO public.empresa VALUES (735, true, '2023-06-12 12:25:39.793622', NULL, 'FACULDADE BIOPARK II (BIOPARK II)', 1, NULL, 304, false);
INSERT INTO public.empresa VALUES (736, true, '2023-06-12 12:25:39.801072', NULL, 'FACULDADE BIRIGUI (FABI)', 1, NULL, 313, false);
INSERT INTO public.empresa VALUES (737, true, '2023-06-12 12:25:39.809988', NULL, 'FACULDADE BOA ESPERANÇA (FABECA)', 1, NULL, 314, false);
INSERT INTO public.empresa VALUES (738, true, '2023-06-12 12:25:39.817578', NULL, 'FACULDADE BOAS NOVAS DE CIÊNCIAS TEOLÓGICAS, SOCIAIS E BIOTECNOLÓGICAS (FBNCTSB)', 1, NULL, 75, false);
INSERT INTO public.empresa VALUES (739, true, '2023-06-12 12:25:39.825161', NULL, 'FACULDADE BOOKPLAY', 1, NULL, 10, false);
INSERT INTO public.empresa VALUES (740, true, '2023-06-12 12:25:39.832773', NULL, 'FACULDADE BORGES DE MENDONÇA (FBM)', 1, NULL, 3, false);
INSERT INTO public.empresa VALUES (741, true, '2023-06-12 12:25:39.840885', NULL, 'FACULDADE BRASILEIRA CRISTÃ (FBC)', 1, NULL, 290, false);
INSERT INTO public.empresa VALUES (742, true, '2023-06-12 12:25:39.848452', NULL, 'FACULDADE BRASILEIRA DE CACHOEIRO', 1, NULL, 190, false);
INSERT INTO public.empresa VALUES (743, true, '2023-06-12 12:25:39.856185', NULL, 'FACULDADE BRASILEIRA DE EDUCAÇÃO E CULTURA (FABEC BRASIL)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (744, true, '2023-06-12 12:25:39.863999', NULL, 'FACULDADE BRASILEIRA DE ENSINO, PESQUISA E EXTENSÃO (FABEX)', 1, NULL, 107, false);
INSERT INTO public.empresa VALUES (745, true, '2023-06-12 12:25:39.877127', NULL, 'FACULDADE BRASILEIRA DE ESTUDOS AVANÇADOS (FABEA)', 1, NULL, 141, false);
INSERT INTO public.empresa VALUES (746, true, '2023-06-12 12:25:39.889821', NULL, 'FACULDADE BRASILEIRA DE INOVAÇÃO (FABIN)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (747, true, '2023-06-12 12:25:39.897455', NULL, 'FACULDADE BRASILEIRA DE NEGÓCIOS INOVADORES (FABRANI)', 1, NULL, 315, false);
INSERT INTO public.empresa VALUES (748, true, '2023-06-12 12:25:39.904965', NULL, 'FACULDADE BRASILEIRA DE TECNOLOGIA (FBT)', 1, NULL, 99, false);
INSERT INTO public.empresa VALUES (749, true, '2023-06-12 12:25:39.913081', NULL, 'FACULDADE BRASILEIRA DE TRIBUTAÇÃO (FBT)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (750, true, '2023-06-12 12:25:39.92083', NULL, 'FACULDADE BRASILEIRA DIGITAL (FABRADI)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (751, true, '2023-06-12 12:25:39.928275', NULL, 'FACULDADE BRASILEIRA DO RECÔNCAVO (FBBR)', 1, NULL, 172, false);
INSERT INTO public.empresa VALUES (752, true, '2023-06-12 12:25:39.935766', NULL, 'FACULDADE BRASIL EMPREENDER (FABEMP)', 1, NULL, 134, false);
INSERT INTO public.empresa VALUES (753, true, '2023-06-12 12:25:39.947526', NULL, 'FACULDADE BRASÍLIA (FBR)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (754, true, '2023-06-12 12:25:39.955049', NULL, 'FACULDADE BRASIL NORTE (FABRAN)', 1, NULL, 26, false);
INSERT INTO public.empresa VALUES (755, true, '2023-06-12 12:25:39.962558', NULL, 'FACULDADE BRAVIUM (BRAVIUM)', 1, NULL, 297, false);
INSERT INTO public.empresa VALUES (756, true, '2023-06-12 12:25:39.970025', NULL, 'FACULDADE BSSP', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (757, true, '2023-06-12 12:25:39.977971', NULL, 'FACULDADE CALAFIORI (CALAFIORI)', 1, NULL, 316, false);
INSERT INTO public.empresa VALUES (758, true, '2023-06-12 12:25:39.985359', NULL, 'FACULDADE CAL DE ARTES CÊNICAS (FACULDADE CAL)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (759, true, '2023-06-12 12:25:39.997653', NULL, 'FACULDADE CAMAQÜENSE DE CIÊNCIAS CONTÁBEIS E ADMINISTRATIVAS (FACCCA)', 1, NULL, 317, false);
INSERT INTO public.empresa VALUES (760, true, '2023-06-12 12:25:40.005286', NULL, 'FACULDADE CAMPOS BELOS (UNICAMPO)', 1, NULL, 318, false);
INSERT INTO public.empresa VALUES (761, true, '2023-06-12 12:25:40.01321', NULL, 'FACULDADE CAMPOS ELÍSEOS (FCE)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (762, true, '2023-06-12 12:25:40.020693', NULL, 'FACULDADE CANADENSES NO BRASIL', 1, NULL, 65, false);
INSERT INTO public.empresa VALUES (763, true, '2023-06-12 12:25:40.028599', NULL, 'FACULDADE CANÇÃO NOVA (FCN)', 1, NULL, 319, false);
INSERT INTO public.empresa VALUES (764, true, '2023-06-12 12:25:40.036082', NULL, 'FACULDADE CÂNDIDO RONDON (FCR)', 1, NULL, 203, false);
INSERT INTO public.empresa VALUES (765, true, '2023-06-12 12:25:40.044152', NULL, 'FACULDADE CAPACITAR', 1, NULL, 86, false);
INSERT INTO public.empresa VALUES (766, true, '2023-06-12 12:25:40.051461', NULL, 'FACULDADE CASA BRANCA (FACAB)', 1, NULL, 320, false);
INSERT INTO public.empresa VALUES (767, true, '2023-06-12 12:25:40.058812', NULL, 'FACULDADE CASA DO ESTUDANTE (FACE)', 1, NULL, 321, false);
INSERT INTO public.empresa VALUES (768, true, '2023-06-12 12:25:40.066144', NULL, 'FACULDADE CÁSPER LÍBERO (FCL)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (769, true, '2023-06-12 12:25:40.074184', NULL, 'FACULDADE CASTRO ALVES (FCA)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (770, true, '2023-06-12 12:25:40.081803', NULL, 'FACULDADE CATHEDRAL (FACES)', 1, NULL, 138, false);
INSERT INTO public.empresa VALUES (771, true, '2023-06-12 12:25:40.089458', NULL, 'FACULDADE CATÓLICA CAVANIS DO SUDOESTE DO PARÁ (FCCSPA)', 1, NULL, 322, false);
INSERT INTO public.empresa VALUES (772, true, '2023-06-12 12:25:40.097014', NULL, 'FACULDADE CATÓLICA DA PARAÍBA', 1, NULL, 189, false);
INSERT INTO public.empresa VALUES (773, true, '2023-06-12 12:25:40.104956', NULL, 'FACULDADE CATÓLICA DE ABAETETUBA (FCAB)', 1, NULL, 227, false);
INSERT INTO public.empresa VALUES (774, true, '2023-06-12 12:25:40.117889', NULL, 'FACULDADE CATÓLICA DE ANÁPOLIS (CATÓLICA DE ANÁPOLIS)', 1, NULL, 264, false);
INSERT INTO public.empresa VALUES (775, true, '2023-06-12 12:25:40.125456', NULL, 'FACULDADE CATÓLICA DE BELÉM (FACBEL)', 1, NULL, 232, false);
INSERT INTO public.empresa VALUES (776, true, '2023-06-12 12:25:40.133208', NULL, 'FACULDADE CATÓLICA DE FEIRA DE SANTANA', 1, NULL, 99, false);
INSERT INTO public.empresa VALUES (777, true, '2023-06-12 12:25:40.14123', NULL, 'FACULDADE CATÓLICA DE FORTALEZA (FCF)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (778, true, '2023-06-12 12:25:40.148802', NULL, 'FACULDADE CATÓLICA DE MATO GROSSO (FACC-MT)', 1, NULL, 121, false);
INSERT INTO public.empresa VALUES (779, true, '2023-06-12 12:25:40.156214', NULL, 'FACULDADE CATÓLICA DE POUSO ALEGRE (FACAPA)', 1, NULL, 230, false);
INSERT INTO public.empresa VALUES (780, true, '2023-06-12 12:25:40.16367', NULL, 'FACULDADE CATÓLICA DE RONDONIA (FCR)', 1, NULL, 51, false);
INSERT INTO public.empresa VALUES (781, true, '2023-06-12 12:25:40.171392', NULL, 'FACULDADE CATÓLICA DE SANTA CATARINA (FACASC)', 1, NULL, 3, false);
INSERT INTO public.empresa VALUES (782, true, '2023-06-12 12:25:40.178982', NULL, 'FACULDADE CATÓLICA DE SÃO JOSÉ DOS CAMPOS (CATÓLICA-SJC)', 1, NULL, 144, false);
INSERT INTO public.empresa VALUES (783, true, '2023-06-12 12:25:40.186468', NULL, 'FACULDADE CATÓLICA DE VÁRZEA GRANDE (FACC-VG)', 1, NULL, 121, false);
INSERT INTO public.empresa VALUES (784, true, '2023-06-12 12:25:40.193747', NULL, 'FACULDADE CATÓLICA DOM ORIONE (FACDO)', 1, NULL, 196, false);
INSERT INTO public.empresa VALUES (785, true, '2023-06-12 12:25:40.201595', NULL, 'FACULDADE CATÓLICA DO RIO GRANDE DO NORTE', 1, NULL, 323, false);
INSERT INTO public.empresa VALUES (786, true, '2023-06-12 12:25:40.208954', NULL, 'FACULDADE CATÓLICA IMACULADA CONCEIÇÃO DO RECIFE (CATÓLICA)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (787, true, '2023-06-12 12:25:40.216333', NULL, 'FACULDADE CATÓLICA PAULISTA (FACAP)', 1, NULL, 145, false);
INSERT INTO public.empresa VALUES (788, true, '2023-06-12 12:25:40.229863', NULL, 'FACULDADE CATÓLICA RAINHA DA PAZ DE ARAPUTANGA (FCARP)', 1, NULL, 324, false);
INSERT INTO public.empresa VALUES (789, true, '2023-06-12 12:25:40.237426', NULL, 'FACULDADE CATÓLICA SALESIANA DE MACAÉ (FCSMA)', 1, NULL, 325, false);
INSERT INTO public.empresa VALUES (790, true, '2023-06-12 12:25:40.244974', NULL, 'FACULDADE CATÓLICA SANTA TERESINHA (FCST)', 1, NULL, 326, false);
INSERT INTO public.empresa VALUES (791, true, '2023-06-12 12:25:40.252248', NULL, 'FACULDADE CATUAÍ (ICES)', 1, NULL, 327, false);
INSERT INTO public.empresa VALUES (792, true, '2023-06-12 12:25:40.260457', NULL, 'FACULDADE CCI (FAC CCI)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (793, true, '2023-06-12 12:25:40.268336', NULL, 'FACULDADE CDL', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (794, true, '2023-06-12 12:25:40.2757', NULL, 'FACULDADE CEAFI', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (795, true, '2023-06-12 12:25:40.283519', NULL, 'FACULDADE CEAM (CEAM)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (796, true, '2023-06-12 12:25:40.29126', NULL, 'FACULDADE CEARENSE (FAC)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (797, true, '2023-06-12 12:25:40.298635', NULL, 'FACULDADE CECAPE', 1, NULL, 135, false);
INSERT INTO public.empresa VALUES (798, true, '2023-06-12 12:25:40.306339', NULL, 'FACULDADE CEDIN (CEDIN)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (799, true, '2023-06-12 12:25:40.313891', NULL, 'FACULDADE CENBRAP (CENBRAP)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (800, true, '2023-06-12 12:25:40.321785', NULL, 'FACULDADE CENECISTA DE CAPIVARI (FACECAP)', 1, NULL, 328, false);
INSERT INTO public.empresa VALUES (801, true, '2023-06-12 12:25:40.329345', NULL, 'FACULDADE CENECISTA DE RIO BONITO (FACERB)', 1, NULL, 329, false);
INSERT INTO public.empresa VALUES (802, true, '2023-06-12 12:25:40.3419', NULL, 'FACULDADE CENECISTA DE SETE LAGOAS (FCSL)', 1, NULL, 24, false);
INSERT INTO public.empresa VALUES (803, true, '2023-06-12 12:25:40.349407', NULL, 'FACULDADE CENSUPEG', 1, NULL, 68, false);
INSERT INTO public.empresa VALUES (804, true, '2023-06-12 12:25:40.357337', NULL, 'FACULDADE CENTRAL DE CRISTALINA (FACEC)', 1, NULL, 330, false);
INSERT INTO public.empresa VALUES (805, true, '2023-06-12 12:25:40.364737', NULL, 'FACULDADE CENTRAL DO RECIFE CENTRO (FACENTRAL REC)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (806, true, '2023-06-12 12:25:40.372018', NULL, 'FACULDADE CENTRO MATO-GROSSENSE', 1, NULL, 292, false);
INSERT INTO public.empresa VALUES (807, true, '2023-06-12 12:25:40.379531', NULL, 'FACULDADE CENTRO OESTE CATANDUVAS (FACOC)', 1, NULL, 331, false);
INSERT INTO public.empresa VALUES (808, true, '2023-06-12 12:25:40.387591', NULL, 'FACULDADE CENTRO PAULISTANO', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (809, true, '2023-06-12 12:25:40.39507', NULL, 'FACULDADE CENTRO SÃO PAULO (FACESP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (810, true, '2023-06-12 12:25:40.402366', NULL, 'FACULDADE CENTRO SUL', 1, NULL, 332, false);
INSERT INTO public.empresa VALUES (811, true, '2023-06-12 12:25:40.409835', NULL, 'FACULDADE CEPEP', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (812, true, '2023-06-12 12:25:40.417662', NULL, 'FACULDADE CERES (FACERES)', 1, NULL, 114, false);
INSERT INTO public.empresa VALUES (813, true, '2023-06-12 12:25:40.424941', NULL, 'FACULDADE CERRADO (FACE)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (814, true, '2023-06-12 12:25:40.432519', NULL, 'FACULDADE CERS (CERS)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (815, true, '2023-06-12 12:25:40.43968', NULL, 'FACULDADE CESAR (FCE)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (816, true, '2023-06-12 12:25:40.452423', NULL, 'FACULDADE CESGRANRIO (FACESGRANRIO)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (817, true, '2023-06-12 12:25:40.459663', NULL, 'FACULDADE CESMAC DO AGRESTE (CESMAC AGRESTE)', 1, NULL, 333, false);
INSERT INTO public.empresa VALUES (818, true, '2023-06-12 12:25:40.46692', NULL, 'FACULDADE CESMAC DO SERTÃO (CESMAC SERTÃO)', 1, NULL, 334, false);
INSERT INTO public.empresa VALUES (819, true, '2023-06-12 12:25:40.474332', NULL, 'FACULDADE CESMA DE MARACANAÚ (FACESMA)', 1, NULL, 335, false);
INSERT INTO public.empresa VALUES (820, true, '2023-06-12 12:25:40.482419', NULL, 'FACULDADE CESPU EUROPA BRASIL (FACCE)', 1, NULL, 132, false);
INSERT INTO public.empresa VALUES (821, true, '2023-06-12 12:25:40.489668', NULL, 'FACULDADE CESUMAR DE CAMPO GRANDE (FACCESUMAR)', 1, NULL, 48, false);
INSERT INTO public.empresa VALUES (822, true, '2023-06-12 12:25:40.497215', NULL, 'FACULDADE CESUMAR DE GUARAPUAVA (FAC-CESUMAR)', 1, NULL, 64, false);
INSERT INTO public.empresa VALUES (823, true, '2023-06-12 12:25:40.504729', NULL, 'FACULDADE CESUMAR DE LONDRINA (FAC-CESUMAR)', 1, NULL, 159, false);
INSERT INTO public.empresa VALUES (824, true, '2023-06-12 12:25:40.512656', NULL, 'FACULDADE CESUMAR DE PONTA GROSSA (FAC-CESUMAR)', 1, NULL, 188, false);
INSERT INTO public.empresa VALUES (825, true, '2023-06-12 12:25:40.520188', NULL, 'FACULDADE CESURG MARAU', 1, NULL, 336, false);
INSERT INTO public.empresa VALUES (826, true, '2023-06-12 12:25:40.527596', NULL, 'FACULDADE CESUSC', 1, NULL, 3, false);
INSERT INTO public.empresa VALUES (827, true, '2023-06-12 12:25:40.535634', NULL, 'FACULDADE CETRUS SANAR (CETRUS)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (828, true, '2023-06-12 12:25:40.544303', NULL, 'FACULDADE CGESP GOIANIA (FAC CGESP)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (829, true, '2023-06-12 12:25:40.552374', NULL, 'FACULDADE CHRISTUS (CHRISTUS EUSÉBIO)', 1, NULL, 337, false);
INSERT INTO public.empresa VALUES (830, true, '2023-06-12 12:25:40.564623', NULL, 'FACULDADE CIDADE DE APARECIDA DE GOIÂNIA (FACCIDADE)', 1, NULL, 41, false);
INSERT INTO public.empresa VALUES (831, true, '2023-06-12 12:25:40.571834', NULL, 'FACULDADE CIDADE DE COROMANDEL (FCC)', 1, NULL, 338, false);
INSERT INTO public.empresa VALUES (832, true, '2023-06-12 12:25:40.579768', NULL, 'FACULDADE CIDADE DE JOÃO PINHEIRO (FCJP)', 1, NULL, 339, false);
INSERT INTO public.empresa VALUES (833, true, '2023-06-12 12:25:40.58707', NULL, 'FACULDADE CIDADE DE PATOS DE MINAS (FPM)', 1, NULL, 112, false);
INSERT INTO public.empresa VALUES (834, true, '2023-06-12 12:25:40.59444', NULL, 'FACULDADE CIDADE LUZ (FACILUZ)', 1, NULL, 340, false);
INSERT INTO public.empresa VALUES (835, true, '2023-06-12 12:25:40.602418', NULL, 'FACULDADE CIDADE TEOLÓGICA PENTECOSTAL (FCTP)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (836, true, '2023-06-12 12:25:40.610275', NULL, 'FACULDADE CIÊNCIAS DA VIDA (FCV)', 1, NULL, 24, false);
INSERT INTO public.empresa VALUES (837, true, '2023-06-12 12:25:40.61798', NULL, 'FACULDADE CLARETIANA DE BRASILIA (FCB)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (838, true, '2023-06-12 12:25:40.62529', NULL, 'FACULDADE CLARETIANA DE TEOLOGIA', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (839, true, '2023-06-12 12:25:40.632701', NULL, 'FACULDADE CLEBER LEITE (FCL)', 1, NULL, 47, false);
INSERT INTO public.empresa VALUES (840, true, '2023-06-12 12:25:40.640921', NULL, 'FACULDADE CLEBER LEITE - EAD (FCL - EAD)', 1, NULL, 47, false);
INSERT INTO public.empresa VALUES (841, true, '2023-06-12 12:25:40.648282', NULL, 'FACULDADE CMB (CMB)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (842, true, '2023-06-12 12:25:40.655494', NULL, 'FACULDADE CNEC ALBERTO TORRES', 1, NULL, 341, false);
INSERT INTO public.empresa VALUES (843, true, '2023-06-12 12:25:40.66298', NULL, 'FACULDADE CNEC CAMPO LARGO', 1, NULL, 342, false);
INSERT INTO public.empresa VALUES (844, true, '2023-06-12 12:25:40.670748', NULL, 'FACULDADE CNEC CAPITÃO LEMOS CUNHA', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (845, true, '2023-06-12 12:25:40.677986', NULL, 'FACULDADE CNEC DE EDUCAÇÃO DE UBERABA (FACEUB)', 1, NULL, 118, false);
INSERT INTO public.empresa VALUES (846, true, '2023-06-12 12:25:40.685516', NULL, 'FACULDADE CNEC FARROUPILHA', 1, NULL, 343, false);
INSERT INTO public.empresa VALUES (847, true, '2023-06-12 12:25:40.692882', NULL, 'FACULDADE CNEC GRAVATAÍ', 1, NULL, 344, false);
INSERT INTO public.empresa VALUES (848, true, '2023-06-12 12:25:40.700573', NULL, 'FACULDADE CNEC ITAJAÍ', 1, NULL, 345, false);
INSERT INTO public.empresa VALUES (849, true, '2023-06-12 12:25:40.707914', NULL, 'FACULDADE CNEC JOINVILLE', 1, NULL, 68, false);
INSERT INTO public.empresa VALUES (850, true, '2023-06-12 12:25:40.715305', NULL, 'FACULDADE CNEC NOVA PETRÓPOLIS', 1, NULL, 346, false);
INSERT INTO public.empresa VALUES (851, true, '2023-06-12 12:25:40.722677', NULL, 'FACULDADE CNEC RIO DAS OSTRAS', 1, NULL, 347, false);
INSERT INTO public.empresa VALUES (852, true, '2023-06-12 12:25:40.730698', NULL, 'FACULDADE CNEC SANTO ÂNGELO', 1, NULL, 348, false);
INSERT INTO public.empresa VALUES (853, true, '2023-06-12 12:25:40.74288', NULL, 'FACULDADE CNEC UNAÍ', 1, NULL, 349, false);
INSERT INTO public.empresa VALUES (854, true, '2023-06-12 12:25:40.750213', NULL, 'FACULDADE CNEC VARGINHA', 1, NULL, 133, false);
INSERT INTO public.empresa VALUES (855, true, '2023-06-12 12:25:40.758049', NULL, 'FACULDADE COELHO NETO (FACNET)', 1, NULL, 267, false);
INSERT INTO public.empresa VALUES (856, true, '2023-06-12 12:25:40.765443', NULL, 'FACULDADE COGNITIVO (COGNITIVO)', 1, NULL, 3, false);
INSERT INTO public.empresa VALUES (857, true, '2023-06-12 12:25:40.772686', NULL, 'FACULDADE CONCEITO EDUCACIONAL (FACCON)', 1, NULL, 15, false);
INSERT INTO public.empresa VALUES (858, true, '2023-06-12 12:25:40.780113', NULL, 'FACULDADE CONCÓRDIA (FACC)', 1, NULL, 350, false);
INSERT INTO public.empresa VALUES (859, true, '2023-06-12 12:25:40.788485', NULL, 'FACULDADE CONECTADA FACONNECT (FACONNECT)', 1, NULL, 351, false);
INSERT INTO public.empresa VALUES (860, true, '2023-06-12 12:25:40.795731', NULL, 'FACULDADE CONEXÃO (CONEXÃO)', 1, NULL, 352, false);
INSERT INTO public.empresa VALUES (861, true, '2023-06-12 12:25:40.803036', NULL, 'FACULDADE CONHECIMENTO & CIÊNCIA (FCC)', 1, NULL, 79, false);
INSERT INTO public.empresa VALUES (862, true, '2023-06-12 12:25:40.810497', NULL, 'FACULDADE COSMOPOLITA', 1, NULL, 79, false);
INSERT INTO public.empresa VALUES (863, true, '2023-06-12 12:25:40.818321', NULL, 'FACULDADE COTEMIG (COTEMIG)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (864, true, '2023-06-12 12:25:40.825585', NULL, 'FACULDADE CRISTÃ DA CIDADE (FCC)', 1, NULL, 144, false);
INSERT INTO public.empresa VALUES (865, true, '2023-06-12 12:25:40.832835', NULL, 'FACULDADE CRISTÃ DE CURITIBA (FCC)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (866, true, '2023-06-12 12:25:40.840121', NULL, 'FACULDADE CRISTO REI (FACCREI)', 1, NULL, 353, false);
INSERT INTO public.empresa VALUES (867, true, '2023-06-12 12:25:40.848062', NULL, 'FACULDADE CTA (CTA)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (868, true, '2023-06-12 12:25:40.855369', NULL, 'FACULDADE CUIABÁ (FAUC)', 1, NULL, 203, false);
INSERT INTO public.empresa VALUES (869, true, '2023-06-12 12:25:40.862715', NULL, 'FACULDADE CULTURA INGLESA (FCI)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (870, true, '2023-06-12 12:25:40.870187', NULL, 'FACULDADE CURITIBANA (FAC)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (871, true, '2023-06-12 12:25:40.878219', NULL, 'FACULDADE DA ALTA PAULISTA (FAP)', 1, NULL, 354, false);
INSERT INTO public.empresa VALUES (872, true, '2023-06-12 12:25:40.885999', NULL, 'FACULDADE DA AMAZÔNIA (FAMA)', 1, NULL, 355, false);
INSERT INTO public.empresa VALUES (873, true, '2023-06-12 12:25:40.893525', NULL, 'FACULDADE DA AMAZÔNIA (FAAM)', 1, NULL, 232, false);
INSERT INTO public.empresa VALUES (874, true, '2023-06-12 12:25:40.903618', NULL, 'FACULDADE DA AMAZÔNIA DE PORTO VELHO', 1, NULL, 51, false);
INSERT INTO public.empresa VALUES (875, true, '2023-06-12 12:25:40.911568', NULL, 'FACULDADE DA AMAZÔNIA LEGAL (FAMA)', 1, NULL, 356, false);
INSERT INTO public.empresa VALUES (876, true, '2023-06-12 12:25:40.923765', NULL, 'FACULDADE DA ASSOCIAÇÃO BRASILIENSE DE EDUCAÇÃO (FABE)', 1, NULL, 336, false);
INSERT INTO public.empresa VALUES (877, true, '2023-06-12 12:25:40.931243', NULL, 'FACULDADE DA ASSOCIAÇÃO MÉDICA PAULISTA (APM)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (878, true, '2023-06-12 12:25:40.939656', NULL, 'FACULDADE DA CIDADE DE MACEIÓ (FACIMA)', 1, NULL, 73, false);
INSERT INTO public.empresa VALUES (879, true, '2023-06-12 12:25:40.947705', NULL, 'FACULDADE DA CONSTRUÇÃO E DO TRABALHO (FACT)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (880, true, '2023-06-12 12:25:40.955057', NULL, 'FACULDADE DA ESCADA (FAESC)', 1, NULL, 357, false);
INSERT INTO public.empresa VALUES (881, true, '2023-06-12 12:25:40.962554', NULL, 'FACULDADE DA FRATERNIDADE DE VALENÇA (FFV)', 1, NULL, 306, false);
INSERT INTO public.empresa VALUES (882, true, '2023-06-12 12:25:40.969936', NULL, 'FACULDADE DA FUNDAÇÃO EDUCACIONAL ARAÇATUBA (FAC-FEA)', 1, NULL, 197, false);
INSERT INTO public.empresa VALUES (883, true, '2023-06-12 12:25:40.977815', NULL, 'FACULDADE DAMA', 1, NULL, 358, false);
INSERT INTO public.empresa VALUES (884, true, '2023-06-12 12:25:40.985116', NULL, 'FACULDADE DAMAS DA INSTRUÇÃO CRISTÃ (FADIC)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (885, true, '2023-06-12 12:25:40.99242', NULL, 'FACULDADE DAMÁSIO (DAMASIO)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (886, true, '2023-06-12 12:25:40.999704', NULL, 'FACULDADE DAMÁSIO EDUCACIONAL (FDE)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (887, true, '2023-06-12 12:25:41.008083', NULL, 'FACULDADE DA POLÍCIA MILITAR (FPM)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (888, true, '2023-06-12 12:25:41.015912', NULL, 'FACULDADE DA POLÍCIA MILITAR DE SANTA CATARINA (FAPOM)', 1, NULL, 3, false);
INSERT INTO public.empresa VALUES (889, true, '2023-06-12 12:25:41.024431', NULL, 'FACULDADE DA REGIÃO DOS LAGOS (FERLAGOS)', 1, NULL, 359, false);
INSERT INTO public.empresa VALUES (890, true, '2023-06-12 12:25:41.03197', NULL, 'FACULDADE DA REGIÃO SERRANA (FARESE)', 1, NULL, 360, false);
INSERT INTO public.empresa VALUES (891, true, '2023-06-12 12:25:41.041599', NULL, 'FACULDADE DA REGIÃO SISALEIRA (FARESI)', 1, NULL, 361, false);
INSERT INTO public.empresa VALUES (892, true, '2023-06-12 12:25:41.049244', NULL, 'FACULDADE DAS ATIVIDADES EMPRESARIAIS DE TERESINA (FAETE)', 1, NULL, 27, false);
INSERT INTO public.empresa VALUES (893, true, '2023-06-12 12:25:41.056916', NULL, 'FACULDADE DA SAÚDE E ECOLOGIA HUMANA (FASEH)', 1, NULL, 362, false);
INSERT INTO public.empresa VALUES (894, true, '2023-06-12 12:25:41.064468', NULL, 'FACULDADE DA SERRA GAÚCHA DE BENTO GONÇALVES', 1, NULL, 77, false);
INSERT INTO public.empresa VALUES (895, true, '2023-06-12 12:25:41.072318', NULL, 'FACULDADE DA SEUNE (SEUNE)', 1, NULL, 73, false);
INSERT INTO public.empresa VALUES (896, true, '2023-06-12 12:25:41.084205', NULL, 'FACULDADE DE ADMINISTRAÇÃO CIÊNCIAS ECON E CONTÁBEIS DE GUARATINGUETÁ (FACEAG)', 1, NULL, 363, false);
INSERT INTO public.empresa VALUES (897, true, '2023-06-12 12:25:41.091912', NULL, 'FACULDADE DE ADMINISTRAÇÃO, COMÉRCIO E EMPREENDEDORISMO (FACEM)', 1, NULL, 364, false);
INSERT INTO public.empresa VALUES (898, true, '2023-06-12 12:25:41.099465', NULL, 'FACULDADE DE ADMINISTRAÇÃO DE CAMPO BELO (FACAMP)', 1, NULL, 365, false);
INSERT INTO public.empresa VALUES (899, true, '2023-06-12 12:25:41.108209', NULL, 'FACULDADE DE ADMINISTRAÇÃO DE CATAGUASES (UNIPACAT)', 1, NULL, 366, false);
INSERT INTO public.empresa VALUES (900, true, '2023-06-12 12:25:41.115627', NULL, 'FACULDADE DE ADMINISTRAÇÃO DE CHAPADÃO DO SUL (FACHASUL)', 1, NULL, 367, false);
INSERT INTO public.empresa VALUES (901, true, '2023-06-12 12:25:41.123041', NULL, 'FACULDADE DE ADMINISTRAÇÃO DE FÁTIMA DO SUL (FAFS)', 1, NULL, 368, false);
INSERT INTO public.empresa VALUES (902, true, '2023-06-12 12:25:41.130585', NULL, 'FACULDADE DE ADMINISTRAÇÃO DE ITABIRITO (FAI)', 1, NULL, 261, false);
INSERT INTO public.empresa VALUES (903, true, '2023-06-12 12:25:41.138657', NULL, 'FACULDADE DE ADMINISTRAÇÃO DE MARIANA (FAMA)', 1, NULL, 238, false);
INSERT INTO public.empresa VALUES (904, true, '2023-06-12 12:25:41.146486', NULL, 'FACULDADE DE ADMINISTRAÇÃO DE NOVA ANDRADINA - FANOVA (FANOVA)', 1, NULL, 369, false);
INSERT INTO public.empresa VALUES (905, true, '2023-06-12 12:25:41.154311', NULL, 'FACULDADE DE ADMINISTRAÇÃO DE SANTA CRUZ DO RIO PARDO (FASC)', 1, NULL, 370, false);
INSERT INTO public.empresa VALUES (906, true, '2023-06-12 12:25:41.161882', NULL, 'FACULDADE DE ADMINISTRAÇÃO E ARTES DE LIMEIRA (FAAL)', 1, NULL, 276, false);
INSERT INTO public.empresa VALUES (907, true, '2023-06-12 12:25:41.169969', NULL, 'FACULDADE DE ADMINISTRAÇÃO E NEGÓCIOS (FAN)', 1, NULL, 73, false);
INSERT INTO public.empresa VALUES (908, true, '2023-06-12 12:25:41.177459', NULL, 'FACULDADE DE ADMINISTRAÇÃO E NEGÓCIOS DE SERGIPE (FANESE)', 1, NULL, 142, false);
INSERT INTO public.empresa VALUES (909, true, '2023-06-12 12:25:41.184832', NULL, 'FACULDADE DE AGRONEGÓCIOS DE HOLAMBRA (FAAGROH)', 1, NULL, 371, false);
INSERT INTO public.empresa VALUES (910, true, '2023-06-12 12:25:41.192493', NULL, 'FACULDADE DE AGRONOMIA UNA DE CONSELHEIRO LAFAIETE', 1, NULL, 18, false);
INSERT INTO public.empresa VALUES (911, true, '2023-06-12 12:25:41.200445', NULL, 'FACULDADE DE AGRONOMIA UNA DE ITUMBIARA', 1, NULL, 234, false);
INSERT INTO public.empresa VALUES (912, true, '2023-06-12 12:25:41.212781', NULL, 'FACULDADE DE AGUDOS (FAAG)', 1, NULL, 372, false);
INSERT INTO public.empresa VALUES (913, true, '2023-06-12 12:25:41.220061', NULL, 'FACULDADE DE ALTA FLORESTA (FAF)', 1, NULL, 373, false);
INSERT INTO public.empresa VALUES (914, true, '2023-06-12 12:25:41.227425', NULL, 'FACULDADE DE AMAMBAI (FIAMA)', 1, NULL, 374, false);
INSERT INTO public.empresa VALUES (915, true, '2023-06-12 12:25:41.235286', NULL, 'FACULDADE DE AMERICANA (FAM)', 1, NULL, 187, false);
INSERT INTO public.empresa VALUES (916, true, '2023-06-12 12:25:41.242701', NULL, 'FACULDADE DE AMPÉRE (FAMPER)', 1, NULL, 375, false);
INSERT INTO public.empresa VALUES (917, true, '2023-06-12 12:25:41.250075', NULL, 'FACULDADE DE ANICUNS (FA)', 1, NULL, 376, false);
INSERT INTO public.empresa VALUES (918, true, '2023-06-12 12:25:41.25743', NULL, 'FACULDADE DE APUCARANA (FAP)', 1, NULL, 377, false);
INSERT INTO public.empresa VALUES (919, true, '2023-06-12 12:25:41.265237', NULL, 'FACULDADE DE ARACAJU (FACAR)', 1, NULL, 142, false);
INSERT INTO public.empresa VALUES (920, true, '2023-06-12 12:25:41.272439', NULL, 'FACULDADE DE ARARAQUARA (FARA)', 1, NULL, 378, false);
INSERT INTO public.empresa VALUES (921, true, '2023-06-12 12:25:41.279781', NULL, 'FACULDADE DE ARTES DULCINA DE MORAES (FADM)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (922, true, '2023-06-12 12:25:41.28731', NULL, 'FACULDADE DE ASSIS (FASS)', 1, NULL, 379, false);
INSERT INTO public.empresa VALUES (923, true, '2023-06-12 12:25:41.295681', NULL, 'FACULDADE DE BALSAS (UNIBALSAS)', 1, NULL, 380, false);
INSERT INTO public.empresa VALUES (924, true, '2023-06-12 12:25:41.303179', NULL, 'FACULDADE DE BARUERI (FCGB)', 1, NULL, 381, false);
INSERT INTO public.empresa VALUES (925, true, '2023-06-12 12:25:41.310435', NULL, 'FACULDADE DE BELÉM (FABEL)', 1, NULL, 79, false);
INSERT INTO public.empresa VALUES (926, true, '2023-06-12 12:25:41.322177', NULL, 'FACULDADE DE BELO HORIZONTE (FDR)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (927, true, '2023-06-12 12:25:41.330261', NULL, 'FACULDADE DE BOITUVA (FIB)', 1, NULL, 382, false);
INSERT INTO public.empresa VALUES (928, true, '2023-06-12 12:25:41.337745', NULL, 'FACULDADE DE BOTUCATU (FDB)', 1, NULL, 383, false);
INSERT INTO public.empresa VALUES (929, true, '2023-06-12 12:25:41.348914', NULL, 'FACULDADE DE BRAGANÇA (FABRA)', 1, NULL, 384, false);
INSERT INTO public.empresa VALUES (930, true, '2023-06-12 12:25:41.356408', NULL, 'FACULDADE DE CAFELÂNDIA (FAC)', 1, NULL, 385, false);
INSERT INTO public.empresa VALUES (931, true, '2023-06-12 12:25:41.364385', NULL, 'FACULDADE DE CAIEIRAS', 1, NULL, 386, false);
INSERT INTO public.empresa VALUES (932, true, '2023-06-12 12:25:41.371779', NULL, 'FACULDADE DE CALDAS NOVAS (UNICALDAS)', 1, NULL, 387, false);
INSERT INTO public.empresa VALUES (933, true, '2023-06-12 12:25:41.37908', NULL, 'FACULDADE DE CAMPINA GRANDE (FAC-CG)', 1, NULL, 147, false);
INSERT INTO public.empresa VALUES (934, true, '2023-06-12 12:25:41.386478', NULL, 'FACULDADE DE CAMPINA GRANDE DO SUL (FACSUL)', 1, NULL, 388, false);
INSERT INTO public.empresa VALUES (935, true, '2023-06-12 12:25:41.394553', NULL, 'FACULDADE DE CARIACICA (FAC DE CARIACICA)', 1, NULL, 389, false);
INSERT INTO public.empresa VALUES (936, true, '2023-06-12 12:25:41.40225', NULL, 'FACULDADE DE CASTELO - MULTIVIX CASTELO (MULTIVIX CASTELO)', 1, NULL, 390, false);
INSERT INTO public.empresa VALUES (937, true, '2023-06-12 12:25:41.414651', NULL, 'FACULDADE DE CIÊNCIA E EDUCAÇÃO DO CAPARAÓ (FACEC)', 1, NULL, 391, false);
INSERT INTO public.empresa VALUES (938, true, '2023-06-12 12:25:41.422597', NULL, 'FACULDADE DE CIÊNCIA E TECNOLOGIA DE MONTES CLAROS (FACIT)', 1, NULL, 128, false);
INSERT INTO public.empresa VALUES (939, true, '2023-06-12 12:25:41.430007', NULL, 'FACULDADE DE CIÊNCIAS AGRÁRIAS DE ANDRADINA (FCAA)', 1, NULL, 392, false);
INSERT INTO public.empresa VALUES (940, true, '2023-06-12 12:25:41.437374', NULL, 'FACULDADE DE CIÊNCIAS AGRÁRIAS DE ARARIPINA (FACIAGRA)', 1, NULL, 393, false);
INSERT INTO public.empresa VALUES (941, true, '2023-06-12 12:25:41.444778', NULL, 'FACULDADE DE CIÊNCIAS APLICADAS DE LIMOEIRO (FACAL)', 1, NULL, 394, false);
INSERT INTO public.empresa VALUES (942, true, '2023-06-12 12:25:41.452934', NULL, 'FACULDADE DE CIÊNCIAS APLICADAS DE LIMOEIRO', 1, NULL, 395, false);
INSERT INTO public.empresa VALUES (943, true, '2023-06-12 12:25:41.460367', NULL, 'FACULDADE DE CIÊNCIAS APLICADAS PIAUIENSE (FACAPI)', 1, NULL, 396, false);
INSERT INTO public.empresa VALUES (944, true, '2023-06-12 12:25:41.467686', NULL, 'FACULDADE DE CIÊNCIAS BIOMÉDICAS DO ESPÍRITO SANTO (PIO XII - BIO)', 1, NULL, 389, false);
INSERT INTO public.empresa VALUES (945, true, '2023-06-12 12:25:41.474883', NULL, 'FACULDADE DE CIÊNCIAS CONTÁBEIS (FACIC)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (946, true, '2023-06-12 12:25:41.482782', NULL, 'FACULDADE DE CIÊNCIAS CONTÁBEIS DE NOVA ANDRADINA - FACINAN (FACINAN)', 1, NULL, 369, false);
INSERT INTO public.empresa VALUES (947, true, '2023-06-12 12:25:41.490181', NULL, 'FACULDADE DE CIÊNCIAS CONTÁBEIS E ADMINISTRATIVAS DE CACHOEIRO DO ITAPEMIRIM (FACCACI)', 1, NULL, 190, false);
INSERT INTO public.empresa VALUES (948, true, '2023-06-12 12:25:41.497683', NULL, 'FACULDADE DE CIÊNCIAS CONTÁBEIS E DE ADMINISTRAÇÃO DE EMPRESAS (FCCAE)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (949, true, '2023-06-12 12:25:41.505315', NULL, 'FACULDADE DE CIÊNCIAS DA AMAZÔNIA (FCA)', 1, NULL, 26, false);
INSERT INTO public.empresa VALUES (950, true, '2023-06-12 12:25:41.513391', NULL, 'FACULDADE DE CIÊNCIAS DA BAHIA - FACIBA (FACIBA)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (951, true, '2023-06-12 12:25:41.520847', NULL, 'FACULDADE DE CIÊNCIAS DA FUNDAÇÃO INSTITUTO TECNOLÓGICO DE OSASCO (FAC-FITO)', 1, NULL, 158, false);
INSERT INTO public.empresa VALUES (952, true, '2023-06-12 12:25:41.528193', NULL, 'FACULDADE DE CIÊNCIAS DA SAÚDE (FACS)', 1, NULL, 142, false);
INSERT INTO public.empresa VALUES (953, true, '2023-06-12 12:25:41.535652', NULL, 'FACULDADE DE CIÊNCIAS DA SAÚDE ARCHIMEDES THEODORO (FAC - SAUDE ARTHE)', 1, NULL, 397, false);
INSERT INTO public.empresa VALUES (954, true, '2023-06-12 12:25:41.544882', NULL, 'FACULDADE DE CIÊNCIAS DA SAÚDE DE BARRETOS DR. PAULO PRATA (FACISB)', 1, NULL, 80, false);
INSERT INTO public.empresa VALUES (955, true, '2023-06-12 12:25:41.552867', NULL, 'FACULDADE DE CIÊNCIAS DA SAÚDE DE SÃO PAULO (FACIS)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (956, true, '2023-06-12 12:25:41.560379', NULL, 'FACULDADE DE CIÊNCIAS DA SAÚDE DE SERRA TALHADA (FACISST)', 1, NULL, 398, false);
INSERT INTO public.empresa VALUES (957, true, '2023-06-12 12:25:41.572308', NULL, 'FACULDADE DE CIÊNCIAS DA SAÚDE DE UNAÍ (FACISA)', 1, NULL, 349, false);
INSERT INTO public.empresa VALUES (958, true, '2023-06-12 12:25:41.580675', NULL, 'FACULDADE DE CIÊNCIAS DA SAÚDE DO GRUPO HOSPITALAR CONCEIÇÃO (FACS - GHC)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (959, true, '2023-06-12 12:25:41.588278', NULL, 'FACULDADE DE CIÊNCIAS DA SAÚDE IGESP', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (960, true, '2023-06-12 12:25:41.595645', NULL, 'FACULDADE DE CIÊNCIAS DA SAÚDE MOINHOS DE VENTO (FACSMV)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (961, true, '2023-06-12 12:25:41.603169', NULL, 'FACULDADE DE CIÊNCIAS DA SAÚDE PITÁGORAS DE CODÓ', 1, NULL, 399, false);
INSERT INTO public.empresa VALUES (962, true, '2023-06-12 12:25:41.611103', NULL, 'FACULDADE DE CIÊNCIAS DA SAÚDE SÍRIO-LIBANÊS (SÍRIO-LIBANÊS)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (963, true, '2023-06-12 12:25:41.618551', NULL, 'FACULDADE DE CIÊNCIAS DE GOIANA (FCG)', 1, NULL, 400, false);
INSERT INTO public.empresa VALUES (964, true, '2023-06-12 12:25:41.626143', NULL, 'FACULDADE DE CIÊNCIAS DE TIMBAÚBA (FACET)', 1, NULL, 401, false);
INSERT INTO public.empresa VALUES (965, true, '2023-06-12 12:25:41.63359', NULL, 'FACULDADE DE CIÊNCIAS DO TOCANTINS (FACIT)', 1, NULL, 196, false);
INSERT INTO public.empresa VALUES (966, true, '2023-06-12 12:25:41.641577', NULL, 'FACULDADE DE CIÊNCIAS, EDUCAÇÃO E TEOLOGIA DO NORTE DO BRASIL (FACETEN)', 1, NULL, 138, false);
INSERT INTO public.empresa VALUES (967, true, '2023-06-12 12:25:41.648951', NULL, 'FACULDADE DE CIÊNCIAS, EDUCAÇÃO, SAÚDE, PESQUISA E GESTÃO (FSF)', 1, NULL, 402, false);
INSERT INTO public.empresa VALUES (968, true, '2023-06-12 12:25:41.657806', NULL, 'FACULDADE DE CIÊNCIAS EDUCACIONAIS DE CAPIM GROSSO (FCG)', 1, NULL, 403, false);
INSERT INTO public.empresa VALUES (969, true, '2023-06-12 12:25:41.665331', NULL, 'FACULDADE DE CIÊNCIAS EDUCACIONAIS DO RIO GRANDE DO NORTE (FACERN)', 1, NULL, 130, false);
INSERT INTO public.empresa VALUES (970, true, '2023-06-12 12:25:41.674396', NULL, 'FACULDADE DE CIÊNCIAS EDUCACIONAIS E EMPRESARIAIS DE NATAL (FACEN)', 1, NULL, 130, false);
INSERT INTO public.empresa VALUES (971, true, '2023-06-12 12:25:41.681851', NULL, 'FACULDADE DE CIÊNCIAS EDUCACIONAIS E TECNOLOGIAS INTEGRADAS (FACETI)', 1, NULL, 25, false);
INSERT INTO public.empresa VALUES (972, true, '2023-06-12 12:25:41.694156', NULL, 'FACULDADE DE CIÊNCIAS E EDUCAÇÃO DO ESPÍRITO SANTO (UNIVES)', 1, NULL, 25, false);
INSERT INTO public.empresa VALUES (973, true, '2023-06-12 12:25:41.701726', NULL, 'FACULDADE DE CIÊNCIAS E EDUCAÇÃO EM SAÚDE (FACCESA)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (974, true, '2023-06-12 12:25:41.709868', NULL, 'FACULDADE DE CIÊNCIAS E EDUCAÇÃO SENA AIRES (FACESA)', 1, NULL, 297, false);
INSERT INTO public.empresa VALUES (975, true, '2023-06-12 12:25:41.717187', NULL, 'FACULDADE DE CIÊNCIAS E LETRAS DE BRAGANÇA PAULISTA (FESB)', 1, NULL, 404, false);
INSERT INTO public.empresa VALUES (976, true, '2023-06-12 12:25:41.724624', NULL, 'FACULDADE DE CIÊNCIAS E SAÚDE EDUFOR (EDUFOR)', 1, NULL, 141, false);
INSERT INTO public.empresa VALUES (977, true, '2023-06-12 12:25:41.732044', NULL, 'FACULDADE DE CIÊNCIAS E TECNOLOGIA DA BAHIA (FACITE)', 1, NULL, 405, false);
INSERT INTO public.empresa VALUES (978, true, '2023-06-12 12:25:41.739781', NULL, 'FACULDADE DE CIÊNCIAS E TECNOLOGIA DE BIRIGUI (FATEB)', 1, NULL, 313, false);
INSERT INTO public.empresa VALUES (979, true, '2023-06-12 12:25:41.747153', NULL, 'FACULDADE DE CIÊNCIAS E TECNOLOGIA DE CHAPECÓ (FACITEC)', 1, NULL, 406, false);
INSERT INTO public.empresa VALUES (980, true, '2023-06-12 12:25:41.754676', NULL, 'FACULDADE DE CIÊNCIAS E TECNOLOGIA DE JANAÚBA (FACITEC)', 1, NULL, 407, false);
INSERT INTO public.empresa VALUES (981, true, '2023-06-12 12:25:41.762524', NULL, 'FACULDADE DE CIÊNCIAS E TECNOLOGIA DE TERESINA (FACET)', 1, NULL, 27, false);
INSERT INTO public.empresa VALUES (982, true, '2023-06-12 12:25:41.775218', NULL, 'FACULDADE DE CIÊNCIAS E TECNOLOGIA DE UNAÍ - FACTU (FACTU)', 1, NULL, 349, false);
INSERT INTO public.empresa VALUES (983, true, '2023-06-12 12:25:41.782494', NULL, 'FACULDADE DE CIÊNCIAS E TECNOLOGIA PASCHOAL DANTAS', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (984, true, '2023-06-12 12:25:41.789891', NULL, 'FACULDADE DE CIÊNCIAS E TECNOLOGIA PROFESSOR DIRSON MACIEL DE BARROS (FADIMAB)', 1, NULL, 400, false);
INSERT INTO public.empresa VALUES (985, true, '2023-06-12 12:25:41.797491', NULL, 'FACULDADE DE CIÊNCIAS E TECNOLOGIAS DE CAMPOS GERAIS (FACICA)', 1, NULL, 408, false);
INSERT INTO public.empresa VALUES (986, true, '2023-06-12 12:25:41.805459', NULL, 'FACULDADE DE CIÊNCIAS GERENCIAIS ALVES FORTES (FACE - ALFOR)', 1, NULL, 397, false);
INSERT INTO public.empresa VALUES (987, true, '2023-06-12 12:25:41.81342', NULL, 'FACULDADE DE CIÊNCIAS GERENCIAIS DE SÃO GOTARDO (CESG)', 1, NULL, 409, false);
INSERT INTO public.empresa VALUES (988, true, '2023-06-12 12:25:41.820968', NULL, 'FACULDADE DE CIÊNCIAS HUMANAS (IMENSU)', 1, NULL, 410, false);
INSERT INTO public.empresa VALUES (989, true, '2023-06-12 12:25:41.828288', NULL, 'FACULDADE DE CIÊNCIAS HUMANAS DE CURVELO (FACIC)', 1, NULL, 301, false);
INSERT INTO public.empresa VALUES (990, true, '2023-06-12 12:25:41.836505', NULL, 'FACULDADE DE CIÊNCIAS HUMANAS DE FORTALEZA (FCHFOR)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (991, true, '2023-06-12 12:25:41.844014', NULL, 'FACULDADE DE CIÊNCIAS HUMANAS DE OLINDA (FACHO)', 1, NULL, 39, false);
INSERT INTO public.empresa VALUES (992, true, '2023-06-12 12:25:41.851438', NULL, 'FACULDADE DE CIÊNCIAS HUMANAS DE PERNAMBUCO (FCHPE)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (993, true, '2023-06-12 12:25:41.859161', NULL, 'FACULDADE DE CIÊNCIAS HUMANAS DO ESTADO DE SÃO PAULO (FACIC)', 1, NULL, 229, false);
INSERT INTO public.empresa VALUES (994, true, '2023-06-12 12:25:41.867093', NULL, 'FACULDADE DE CIÊNCIAS HUMANAS DO SERTÃO CENTRAL (FACHUSC)', 1, NULL, 411, false);
INSERT INTO public.empresa VALUES (995, true, '2023-06-12 12:25:41.874746', NULL, 'FACULDADE DE CIÊNCIAS HUMANAS E EXATAS DO SERTÃO DO SÃO FRANCISCO (FACESF)', 1, NULL, 28, false);
INSERT INTO public.empresa VALUES (996, true, '2023-06-12 12:25:41.882274', NULL, 'FACULDADE DE CIÊNCIAS HUMANAS E SOCIAIS APLICADAS DO CABO DE SANTO AGOSTINHO (FACHUCA)', 1, NULL, 412, false);
INSERT INTO public.empresa VALUES (997, true, '2023-06-12 12:25:41.889611', NULL, 'FACULDADE DE CIÊNCIAS HUMANAS E SOCIAIS DE ARARIPINA - FACISA (FACISA)', 1, NULL, 393, false);
INSERT INTO public.empresa VALUES (998, true, '2023-06-12 12:25:41.897655', NULL, 'FACULDADE DE CIÊNCIAS HUMANAS E SOCIAIS DE IGARASSU (FACIG)', 1, NULL, 413, false);
INSERT INTO public.empresa VALUES (999, true, '2023-06-12 12:25:41.90509', NULL, 'FACULDADE DE CIENCIAS HUMANAS E SOCIAIS DE SERRA TALHADA (FACHUSST)', 1, NULL, 398, false);
INSERT INTO public.empresa VALUES (1000, true, '2023-06-12 12:25:41.912471', NULL, 'FACULDADE DE CIÊNCIAS HUMANAS E SOCIAIS DO XINGU E AMAZÔNIA (FACX)', 1, NULL, 14, false);
INSERT INTO public.empresa VALUES (1001, true, '2023-06-12 12:25:41.920104', NULL, 'FACULDADE DE CIÊNCIAS HUMANAS ESUDA (FCHE)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (1002, true, '2023-06-12 12:25:41.928224', NULL, 'FACULDADE DE CIÊNCIAS HUMANAS,EXATAS E DA SAÚDE DO PIAUÍ (FAHESP)', 1, NULL, 176, false);
INSERT INTO public.empresa VALUES (1003, true, '2023-06-12 12:25:41.935715', NULL, 'FACULDADE DE CIÊNCIAS JURÍDICAS ANHANGUERA DE ARAPIRACA', 1, NULL, 333, false);
INSERT INTO public.empresa VALUES (1004, true, '2023-06-12 12:25:41.943568', NULL, 'FACULDADE DE CIÊNCIAS JURÍDICAS DE ALTAMIRA', 1, NULL, 14, false);
INSERT INTO public.empresa VALUES (1005, true, '2023-06-12 12:25:41.95611', NULL, 'FACULDADE DE CIÊNCIAS JURÍDICAS DE ASSIS', 1, NULL, 379, false);
INSERT INTO public.empresa VALUES (1006, true, '2023-06-12 12:25:41.964625', NULL, 'FACULDADE DE CIÊNCIAS JURÍDICAS DE BELO JARDIM', 1, NULL, 395, false);
INSERT INTO public.empresa VALUES (1007, true, '2023-06-12 12:25:41.972015', NULL, 'FACULDADE DE CIÊNCIAS JURÍDICAS DE BOM JESUS DA LAPA', 1, NULL, 414, false);
INSERT INTO public.empresa VALUES (1008, true, '2023-06-12 12:25:41.979351', NULL, 'FACULDADE DE CIÊNCIAS JURÍDICAS DE CAMPINA GRANDE', 1, NULL, 147, false);
INSERT INTO public.empresa VALUES (1009, true, '2023-06-12 12:25:41.986699', NULL, 'FACULDADE DE CIÊNCIAS JURÍDICAS DE CRUZ DAS ALMAS', 1, NULL, 172, false);
INSERT INTO public.empresa VALUES (1010, true, '2023-06-12 12:25:41.99461', NULL, 'FACULDADE DE CIÊNCIAS JURÍDICAS DE ERECHIM', 1, NULL, 415, false);
INSERT INTO public.empresa VALUES (1011, true, '2023-06-12 12:25:42.002009', NULL, 'FACULDADE DE CIÊNCIAS JURÍDICAS DE ITUMBIARA', 1, NULL, 234, false);
INSERT INTO public.empresa VALUES (1012, true, '2023-06-12 12:25:42.00938', NULL, 'FACULDADE DE CIÊNCIAS JURÍDICAS DE JABOATÃO DOS GUARARAPES', 1, NULL, 132, false);
INSERT INTO public.empresa VALUES (1013, true, '2023-06-12 12:25:42.016681', NULL, 'FACULDADE DE CIÊNCIAS JURÍDICAS DE JACOBINA', 1, NULL, 244, false);
INSERT INTO public.empresa VALUES (1014, true, '2023-06-12 12:25:42.024516', NULL, 'FACULDADE DE CIÊNCIAS JURÍDICAS DE LUZIÂNIA', 1, NULL, 98, false);
INSERT INTO public.empresa VALUES (1015, true, '2023-06-12 12:25:42.031969', NULL, 'FACULDADE DE CIÊNCIAS JURÍDICAS DE PARAÍSO DO TOCANTINS (FCJP)', 1, NULL, 416, false);
INSERT INTO public.empresa VALUES (1016, true, '2023-06-12 12:25:42.039255', NULL, 'FACULDADE DE CIÊNCIAS JURÍDICAS DE SANTA MARIA (UNISM)', 1, NULL, 417, false);
INSERT INTO public.empresa VALUES (1017, true, '2023-06-12 12:25:42.046676', NULL, 'FACULDADE DE CIÊNCIAS JURÍDICAS DE TUCURUÍ', 1, NULL, 418, false);
INSERT INTO public.empresa VALUES (1018, true, '2023-06-12 12:25:42.054491', NULL, 'FACULDADE DE CIÊNCIAS MÉDICAS CEMEPE (CEMEPE)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (1019, true, '2023-06-12 12:25:42.061647', NULL, 'FACULDADE DE CIÊNCIAS MÉDICAS DA PARAÍBA (FCM-PB)', 1, NULL, 107, false);
INSERT INTO public.empresa VALUES (1020, true, '2023-06-12 12:25:42.069155', NULL, 'FACULDADE DE CIÊNCIAS MÉDICAS DA SANTA CASA SÃO PAULO (FCMSCSP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1021, true, '2023-06-12 12:25:42.076456', NULL, 'FACULDADE DE CIÊNCIAS MÉDICAS DE MARICÁ (FACMAR)', 1, NULL, 419, false);
INSERT INTO public.empresa VALUES (1022, true, '2023-06-12 12:25:42.0844', NULL, 'FACULDADE DE CIÊNCIAS MÉDICAS DE MINAS GERAIS (FCMMG)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (1023, true, '2023-06-12 12:25:42.091618', NULL, 'FACULDADE DE CIÊNCIAS MÉDICAS DE SÃO JOSÉ DOS CAMPOS', 1, NULL, 144, false);
INSERT INTO public.empresa VALUES (1024, true, '2023-06-12 12:25:42.098962', NULL, 'FACULDADE DE CIÊNCIAS MÉDICAS DE TRÊS RIOS (FCM/TR)', 1, NULL, 420, false);
INSERT INTO public.empresa VALUES (1025, true, '2023-06-12 12:25:42.106547', NULL, 'FACULDADE DE CIÊNCIAS MÉDICAS DO PARÁ (FACIMPA)', 1, NULL, 46, false);
INSERT INTO public.empresa VALUES (1026, true, '2023-06-12 12:25:42.114531', NULL, 'FACULDADE DE CIÊNCIAS MÉDICAS E DA SAÚDE DE JUIZ DE FORA (FCMS/JF)', 1, NULL, 38, false);
INSERT INTO public.empresa VALUES (1027, true, '2023-06-12 12:25:42.121906', NULL, 'FACULDADE DE CIÊNCIAS MÉDICAS E JURÍDICA (FACMED)', 1, NULL, 421, false);
INSERT INTO public.empresa VALUES (1028, true, '2023-06-12 12:25:42.134088', NULL, 'FACULDADE DE CIÊNCIAS ODONTOLÓGICAS (FCO)', 1, NULL, 128, false);
INSERT INTO public.empresa VALUES (1029, true, '2023-06-12 12:25:42.141845', NULL, 'FACULDADE DE CIÊNCIAS SOCIAIS APLICADAS (FACISA)', 1, NULL, 423, false);
INSERT INTO public.empresa VALUES (1030, true, '2023-06-12 12:25:42.149466', NULL, 'FACULDADE DE CIÊNCIAS SOCIAIS APLICADAS DE BELO HORIZONTE (FACISABH)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (1031, true, '2023-06-12 12:25:42.156741', NULL, 'FACULDADE DE CIÊNCIAS SOCIAIS APLICADAS DE EXTREMA (FAEX)', 1, NULL, 424, false);
INSERT INTO public.empresa VALUES (1032, true, '2023-06-12 12:25:42.16412', NULL, 'FACULDADE DE CIÊNCIAS SOCIAIS APLICADAS DE MARABÁ (FACIMAB)', 1, NULL, 46, false);
INSERT INTO public.empresa VALUES (1033, true, '2023-06-12 12:25:42.171965', NULL, 'FACULDADE DE CIÊNCIAS SOCIAIS APLICADAS DE MINAS GERAIS (FACISAMG)', 1, NULL, 425, false);
INSERT INTO public.empresa VALUES (1034, true, '2023-06-12 12:25:42.17937', NULL, 'FACULDADE DE CIÊNCIAS SOCIAIS APLICADAS DO SUL DE MINAS - FACESM (FACESM)', 1, NULL, 103, false);
INSERT INTO public.empresa VALUES (1035, true, '2023-06-12 12:25:42.187331', NULL, 'FACULDADE DE CIÊNCIAS SOCIAIS APLICADAS DO VALE DO SÃO LOURENÇO (EDUVALE)', 1, NULL, 426, false);
INSERT INTO public.empresa VALUES (1036, true, '2023-06-12 12:25:42.194665', NULL, 'FACULDADE DE CIÊNCIAS SOCIAIS APLICADAS E DE TECNOLOGIAS DE AGUA BOA (FACESA)', 1, NULL, 427, false);
INSERT INTO public.empresa VALUES (1037, true, '2023-06-12 12:25:42.20251', NULL, 'FACULDADE DE CIÊNCIAS SOCIAIS DOS PALMARES (FACIP)', 1, NULL, 428, false);
INSERT INTO public.empresa VALUES (1038, true, '2023-06-12 12:25:42.210321', NULL, 'FACULDADE DE CIÊNCIAS SOCIAIS E AGRÁRIAS DE ITAPEVA (FAIT)', 1, NULL, 272, false);
INSERT INTO public.empresa VALUES (1039, true, '2023-06-12 12:25:42.217728', NULL, 'FACULDADE DE CIÊNCIAS TECNOLÓGICAS DE FORTALEZA (FCTFOR)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (1040, true, '2023-06-12 12:25:42.225106', NULL, 'FACULDADE DECISION DE NEGÓCIOS', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (1041, true, '2023-06-12 12:25:42.232916', NULL, 'FACULDADE DE COLIDER (FACIDER)', 1, NULL, 356, false);
INSERT INTO public.empresa VALUES (1042, true, '2023-06-12 12:25:42.240367', NULL, 'FACULDADE DE COLINAS DO TOCANTINS', 1, NULL, 429, false);
INSERT INTO public.empresa VALUES (1043, true, '2023-06-12 12:25:42.247758', NULL, 'FACULDADE DE COMUNICAÇÃO ANHANGUERA UNIDADE GUARAPARI', 1, NULL, 266, false);
INSERT INTO public.empresa VALUES (1044, true, '2023-06-12 12:25:42.255012', NULL, 'FACULDADE DE COMUNICAÇÃO E DESIGN "OSWALDO CRUZ"', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1045, true, '2023-06-12 12:25:42.262807', NULL, 'FACULDADE DE DESENVOLVIMENTO DO NORTE (FADENORTE)', 1, NULL, 430, false);
INSERT INTO public.empresa VALUES (1046, true, '2023-06-12 12:25:42.270256', NULL, 'FACULDADE DE DESENVOLVIMENTO SUSTENTÁVEL DE CRUZEIRO DO SUL (IEVAL)', 1, NULL, 431, false);
INSERT INTO public.empresa VALUES (1047, true, '2023-06-12 12:25:42.277589', NULL, 'FACULDADE DE DIREITO 8 DE JULHO', 1, NULL, 142, false);
INSERT INTO public.empresa VALUES (1048, true, '2023-06-12 12:25:42.285319', NULL, 'FACULDADE DE DIREITO ANHANGUERA UNIDADE GUARAPARI', 1, NULL, 266, false);
INSERT INTO public.empresa VALUES (1049, true, '2023-06-12 12:25:42.293099', NULL, 'FACULDADE DE DIREITO ATAME (ATAME)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (1050, true, '2023-06-12 12:25:42.300225', NULL, 'FACULDADE DE DIREITO AVANTIS DE ITAPEMA (AVANTIS ITAPEMA)', 1, NULL, 432, false);
INSERT INTO public.empresa VALUES (1051, true, '2023-06-12 12:25:42.307789', NULL, 'FACULDADE DE DIREITO, CIÊNCIAS E TECNOLOGIA SANTA MARIA MADA (FADICT)', 1, NULL, 73, false);
INSERT INTO public.empresa VALUES (1052, true, '2023-06-12 12:25:42.315278', NULL, 'FACULDADE DE DIREITO DA FUNDAÇÃO ESCOLA SUPERIOR DO MINISTÉRIO PÚBLICO', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (1053, true, '2023-06-12 12:25:42.32298', NULL, 'FACULDADE DE DIREITO DE ALTA FLORESTA', 1, NULL, 373, false);
INSERT INTO public.empresa VALUES (1054, true, '2023-06-12 12:25:42.335116', NULL, 'FACULDADE DE DIREITO DE CACHOEIRO DO ITAPEMIRIM (FDCI)', 1, NULL, 190, false);
INSERT INTO public.empresa VALUES (1055, true, '2023-06-12 12:25:42.342414', NULL, 'FACULDADE DE DIREITO DE CONSELHEIRO LAFAIETE (FDCL)', 1, NULL, 18, false);
INSERT INTO public.empresa VALUES (1056, true, '2023-06-12 12:25:42.349667', NULL, 'FACULDADE DE DIREITO DE CONTAGEM (FDCON)', 1, NULL, 200, false);
INSERT INTO public.empresa VALUES (1057, true, '2023-06-12 12:25:42.357821', NULL, 'FACULDADE DE DIREITO DE FRANCA (FDF)', 1, NULL, 179, false);
INSERT INTO public.empresa VALUES (1058, true, '2023-06-12 12:25:42.365282', NULL, 'FACULDADE DE DIREITO DE IPATINGA (FADIPA)', 1, NULL, 268, false);
INSERT INTO public.empresa VALUES (1059, true, '2023-06-12 12:25:42.372495', NULL, 'FACULDADE DE DIREITO DE ITÚ (FADITU)', 1, NULL, 180, false);
INSERT INTO public.empresa VALUES (1060, true, '2023-06-12 12:25:42.379957', NULL, 'FACULDADE DE DIREITO DE SANTA MARIA (FADISMA)', 1, NULL, 417, false);
INSERT INTO public.empresa VALUES (1061, true, '2023-06-12 12:25:42.387773', NULL, 'FACULDADE DE DIREITO DE SÃO BERNARDO DO CAMPO (FDSBC)', 1, NULL, 82, false);
INSERT INTO public.empresa VALUES (1062, true, '2023-06-12 12:25:42.394969', NULL, 'FACULDADE DE DIREITO DE SOROCABA (FADI)', 1, NULL, 146, false);
INSERT INTO public.empresa VALUES (1063, true, '2023-06-12 12:25:42.402399', NULL, 'FACULDADE DE DIREITO DE URUGUAIANA - ANHANGUERA', 1, NULL, 433, false);
INSERT INTO public.empresa VALUES (1064, true, '2023-06-12 12:25:42.409601', NULL, 'FACULDADE DE DIREITO DE VARGINHA - FADIVA (FADIVA)', 1, NULL, 133, false);
INSERT INTO public.empresa VALUES (1065, true, '2023-06-12 12:25:42.417377', NULL, 'FACULDADE DE DIREITO DE VITÓRIA (FDV)', 1, NULL, 25, false);
INSERT INTO public.empresa VALUES (1066, true, '2023-06-12 12:25:42.425275', NULL, 'FACULDADE DE DIREITO DO SUL DE MINAS (FDSM)', 1, NULL, 230, false);
INSERT INTO public.empresa VALUES (1067, true, '2023-06-12 12:25:42.432696', NULL, 'FACULDADE DE DIREITO DO VALE DO RIO DOCE (FADIVALE)', 1, NULL, 265, false);
INSERT INTO public.empresa VALUES (1068, true, '2023-06-12 12:25:42.440695', NULL, 'FACULDADE DE DIREITO E CIÊNCIAS SOCIAIS DO LESTE DE MINAS - FADILESTE (FADILESTE)', 1, NULL, 434, false);
INSERT INTO public.empresa VALUES (1069, true, '2023-06-12 12:25:42.448738', NULL, 'FACULDADE DE DIREITO SERRA DOURADA', 1, NULL, 14, false);
INSERT INTO public.empresa VALUES (1070, true, '2023-06-12 12:25:42.456637', NULL, 'FACULDADE DE DIREITO TECH DE SÃO PAULO (FADITECH)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1071, true, '2023-06-12 12:25:42.46406', NULL, 'FACULDADE DE DRACENA', 1, NULL, 435, false);
INSERT INTO public.empresa VALUES (1072, true, '2023-06-12 12:25:42.471476', NULL, 'FACULDADE DE DUQUE DE CAXIAS (FDC)', 1, NULL, 436, false);
INSERT INTO public.empresa VALUES (1073, true, '2023-06-12 12:25:42.479597', NULL, 'FACULDADE DE ECONOMIA E PROCESSAMENTO DE DADOS DE FOZ DO IGUAÇU (FEPI)', 1, NULL, 124, false);
INSERT INTO public.empresa VALUES (1074, true, '2023-06-12 12:25:42.487021', NULL, 'FACULDADE DE EDUCAÇÃO ACRIANA EUCLIDES DA CUNHA (INEC)', 1, NULL, 143, false);
INSERT INTO public.empresa VALUES (1075, true, '2023-06-12 12:25:42.494483', NULL, 'FACULDADE DE EDUCAÇÃO CIÊNCIAS E ARTES DOM BOSCO DE MONTE APRAZÍVEL (FAECA DOM BOSCO)', 1, NULL, 437, false);
INSERT INTO public.empresa VALUES (1076, true, '2023-06-12 12:25:42.50171', NULL, 'FACULDADE DE EDUCAÇÃO CIÊNCIAS E LETRAS DE PARAÍSO (FECIPAR)', 1, NULL, 416, false);
INSERT INTO public.empresa VALUES (1077, true, '2023-06-12 12:25:42.509478', NULL, 'FACULDADE DE EDUCAÇÃO DA IBIAPABA (FAEDI)', 1, NULL, 438, false);
INSERT INTO public.empresa VALUES (1078, true, '2023-06-12 12:25:42.516955', NULL, 'FACULDADE DE EDUCAÇÃO DE COSTA RICA (FECRA)', 1, NULL, 439, false);
INSERT INTO public.empresa VALUES (1079, true, '2023-06-12 12:25:42.524419', NULL, 'FACULDADE DE EDUCAÇÃO DE GUARATINGUETÁ (FACEG)', 1, NULL, 363, false);
INSERT INTO public.empresa VALUES (1080, true, '2023-06-12 12:25:42.536604', NULL, 'FACULDADE DE EDUCAÇÃO DE ITABORAÍ (FEITA)', 1, NULL, 341, false);
INSERT INTO public.empresa VALUES (1081, true, '2023-06-12 12:25:42.544551', NULL, 'FACULDADE DE EDUCAÇÃO DE JARU (UNICENTRO)', 1, NULL, 440, false);
INSERT INTO public.empresa VALUES (1082, true, '2023-06-12 12:25:42.551867', NULL, 'FACULDADE DE EDUCAÇÃO DE NOVA ANDRADINA (FENA)', 1, NULL, 369, false);
INSERT INTO public.empresa VALUES (1083, true, '2023-06-12 12:25:42.55944', NULL, 'FACULDADE DE EDUCAÇÃO DE PATOS DE MINAS (FAEP)', 1, NULL, 112, false);
INSERT INTO public.empresa VALUES (1084, true, '2023-06-12 12:25:42.566673', NULL, 'FACULDADE DE EDUCAÇÃO DE PORTO VELHO (UNIRON)', 1, NULL, 51, false);
INSERT INTO public.empresa VALUES (1085, true, '2023-06-12 12:25:42.574619', NULL, 'FACULDADE DE EDUCAÇÃO DE SANTA CATARINA (FAESC)', 1, NULL, 3, false);
INSERT INTO public.empresa VALUES (1086, true, '2023-06-12 12:25:42.582145', NULL, 'FACULDADE DE EDUCAÇÃO DE SÃO MATEUS', 1, NULL, 441, false);
INSERT INTO public.empresa VALUES (1087, true, '2023-06-12 12:25:42.589371', NULL, 'FACULDADE DE EDUCAÇÃO DE TANGARÁ DA SERRA', 1, NULL, 294, false);
INSERT INTO public.empresa VALUES (1088, true, '2023-06-12 12:25:42.596837', NULL, 'FACULDADE DE EDUCAÇÃO DO PIAUÍ (FAEPI)', 1, NULL, 27, false);
INSERT INTO public.empresa VALUES (1089, true, '2023-06-12 12:25:42.60492', NULL, 'FACULDADE DE EDUCAÇÃO E CULTURA DE JI-PARANÁ (FAJIPA)', 1, NULL, 139, false);
INSERT INTO public.empresa VALUES (1090, true, '2023-06-12 12:25:42.612421', NULL, 'FACULDADE DE EDUCAÇÃO E ESTUDOS SOCIAIS DE UBERLÂNDIA (FEESU)', 1, NULL, 134, false);
INSERT INTO public.empresa VALUES (1091, true, '2023-06-12 12:25:42.619769', NULL, 'FACULDADE DE EDUCAÇÃO ELIÂ (FACEEL)', 1, NULL, 442, false);
INSERT INTO public.empresa VALUES (1092, true, '2023-06-12 12:25:42.627158', NULL, 'FACULDADE DE EDUCAÇÃO EM CIÊNCIAS DA SAÚDE (FECS)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1093, true, '2023-06-12 12:25:42.635037', NULL, 'FACULDADE DE EDUCAÇÃO E TECNOLOGIA DA AMAZÔNIA (FAM)', 1, NULL, 227, false);
INSERT INTO public.empresa VALUES (1094, true, '2023-06-12 12:25:42.642489', NULL, 'FACULDADE DE EDUCAÇÃO E TECNOLOGIA DO ESPÍRITO SANTO (FETES)', 1, NULL, 290, false);
INSERT INTO public.empresa VALUES (1095, true, '2023-06-12 12:25:42.649657', NULL, 'FACULDADE DE EDUCACAO E TECNOLOGIA DO PARA (FAETE)', 1, NULL, 227, false);
INSERT INTO public.empresa VALUES (1096, true, '2023-06-12 12:25:42.656844', NULL, 'FACULDADE DE EDUCAÇÃO E TECNOLOGIA IRACEMA (FAETI)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1097, true, '2023-06-12 12:25:42.665542', NULL, 'FACULDADE DE EDUCAÇÃO FÍSICA DA ASSOCIAÇÃO CRISTÃ DE MOÇOS DE SOROCABA (FEFISO)', 1, NULL, 146, false);
INSERT INTO public.empresa VALUES (1098, true, '2023-06-12 12:25:42.67416', NULL, 'FACULDADE DE EDUCAÇÃO FÍSICA DE FOZ DO IGUAÇU', 1, NULL, 124, false);
INSERT INTO public.empresa VALUES (1099, true, '2023-06-12 12:25:42.705921', NULL, 'FACULDADE DE EDUCAÇÃO MEMORIAL ADELAIDE FRANCO (FEMAF)', 1, NULL, 443, false);
INSERT INTO public.empresa VALUES (1100, true, '2023-06-12 12:25:42.713302', NULL, 'FACULDADE DE EDUCAÇÃO PAULISTANA (FAEP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1101, true, '2023-06-12 12:25:42.721337', NULL, 'FACULDADE DE EDUCAÇÃO SANTA TEREZINHA (FEST)', 1, NULL, 267, false);
INSERT INTO public.empresa VALUES (1102, true, '2023-06-12 12:25:42.729337', NULL, 'FACULDADE DE EDUCAÇÃO SÃO FRANCISCO (FAESF)', 1, NULL, 443, false);
INSERT INTO public.empresa VALUES (1103, true, '2023-06-12 12:25:42.73694', NULL, 'FACULDADE DE EDUCAÇÃO SÃO LUÍS (FESL)', 1, NULL, 315, false);
INSERT INTO public.empresa VALUES (1104, true, '2023-06-12 12:25:42.744359', NULL, 'FACULDADE DE EDUCAÇÃO SOCIAL DA BAHIA (FAESB)', 1, NULL, 306, false);
INSERT INTO public.empresa VALUES (1105, true, '2023-06-12 12:25:42.757263', NULL, 'FACULDADE DE EDUCAÇÃO SUL DO PIAUÍ', 1, NULL, 444, false);
INSERT INTO public.empresa VALUES (1106, true, '2023-06-12 12:25:42.764895', NULL, 'FACULDADE DE EDUCAÇÃO SUPERIOR DE CATALÃO', 1, NULL, 17, false);
INSERT INTO public.empresa VALUES (1107, true, '2023-06-12 12:25:42.772275', NULL, 'FACULDADE DE EDUCAÇÃO SUPERIOR DE CHAPECÓ (FACESC)', 1, NULL, 406, false);
INSERT INTO public.empresa VALUES (1108, true, '2023-06-12 12:25:42.779909', NULL, 'FACULDADE DE EDUCAÇÃO SUPERIOR DE DIVINÓPOLIS', 1, NULL, 19, false);
INSERT INTO public.empresa VALUES (1109, true, '2023-06-12 12:25:42.787782', NULL, 'FACULDADE DE EDUCAÇÃO SUPERIOR DE PARAGOMINAS (FACESP)', 1, NULL, 280, false);
INSERT INTO public.empresa VALUES (1110, true, '2023-06-12 12:25:42.795298', NULL, 'FACULDADE DE EDUCAÇÃO SUPERIOR DE PERNAMBUCO (FAESPE)', 1, NULL, 445, false);
INSERT INTO public.empresa VALUES (1111, true, '2023-06-12 12:25:42.802886', NULL, 'FACULDADE DE EDUCAÇÃO SUPERIOR DE PERNAMBUCO (FACESP)', 1, NULL, 445, false);
INSERT INTO public.empresa VALUES (1112, true, '2023-06-12 12:25:42.810399', NULL, 'FACULDADE DE EDUCAÇÃO SUPERIOR DE POUSO ALEGRE', 1, NULL, 230, false);
INSERT INTO public.empresa VALUES (1113, true, '2023-06-12 12:25:42.822576', NULL, 'FACULDADE DE EDUCAÇÃO SUPERIOR DE SETE LAGOAS', 1, NULL, 24, false);
INSERT INTO public.empresa VALUES (1114, true, '2023-06-12 12:25:42.830581', NULL, 'FACULDADE DE EDUCAÇÃO SUPERIOR DE TANGARÁ DA SERRA (FAEST)', 1, NULL, 294, false);
INSERT INTO public.empresa VALUES (1115, true, '2023-06-12 12:25:42.838237', NULL, 'FACULDADE DE EDUCAÇÃO SUPERIOR DO PARANÁ (FESPPR)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (1116, true, '2023-06-12 12:25:42.845744', NULL, 'FACULDADE DE EDUCAÇÃO SUPERIOR IESLA (IESLA)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (1117, true, '2023-06-12 12:25:42.853761', NULL, 'FACULDADE DE EDUCAÇÃO TECNOLÓGICA BARRA MANSA (FAETERJ B.MANSA)', 1, NULL, 92, false);
INSERT INTO public.empresa VALUES (1118, true, '2023-06-12 12:25:42.861151', NULL, 'FACULDADE DE EDUCAÇÃO TECNOLÓGICA DO ESTADO DO RIO DE JANEIRO (FAETERJ CAXIAS)', 1, NULL, 436, false);
INSERT INTO public.empresa VALUES (1119, true, '2023-06-12 12:25:42.868744', NULL, 'FACULDADE DE EDUCAÇÃO TECNOLÓGICA DO ESTADO DO RIO DE JANEIRO (FAETERJ PARACAMBI)', 1, NULL, 446, false);
INSERT INTO public.empresa VALUES (1120, true, '2023-06-12 12:25:42.876148', NULL, 'FACULDADE DE EDUCAÇÃO TECNOLÓGICA DO ESTADO DO RIO DE JANEIRO - FAETERJ (FAETERJ PETRÓPOLIS)', 1, NULL, 53, false);
INSERT INTO public.empresa VALUES (1121, true, '2023-06-12 12:25:42.884479', NULL, 'FACULDADE DE EDUCAÇÃO TECNOLÓGICA DO ESTADO DO RIO DE JANEIRO - FAETERJ (FAETERJ S ANT. PÁDUA)', 1, NULL, 447, false);
INSERT INTO public.empresa VALUES (1122, true, '2023-06-12 12:25:42.891835', NULL, 'FACULDADE DE EDUCAÇÃO TECNOLÓGICA DO ESTADO DO RIO DE JANEIRO - FAETERJ (FAETERJ ITAPERUNA)', 1, NULL, 186, false);
INSERT INTO public.empresa VALUES (1123, true, '2023-06-12 12:25:42.899246', NULL, 'FACULDADE DE EDUCAÇÃO TECNOLÓGICA DO ESTADO DO RIO DE JANEIRO - FAETERJ (FAETERJ BJ ITABAPOAN)', 1, NULL, 448, false);
INSERT INTO public.empresa VALUES (1124, true, '2023-06-12 12:25:42.906642', NULL, 'FACULDADE DE EDUCAÇÃO TECNOLÓGICA DO ESTADO DO RIO DE JANEIRO - FAETERJ (FAETERJ TRÊS RIOS)', 1, NULL, 420, false);
INSERT INTO public.empresa VALUES (1125, true, '2023-06-12 12:25:42.914522', NULL, 'FACULDADE DE EDUCAÇÃO TECNOLÓGICA DO ESTADO DO RIO DE JANEIRO FERNANDO MOTA (FAETERJ-RIO)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (1126, true, '2023-06-12 12:25:42.921852', NULL, 'FACULDADE DE EDUCAÇÃO VALE DO PAJEÚ (FVP)', 1, NULL, 449, false);
INSERT INTO public.empresa VALUES (1127, true, '2023-06-12 12:25:42.933707', NULL, 'FACULDADE DE ELESBÃO VELOSO (FAEVE)', 1, NULL, 450, false);
INSERT INTO public.empresa VALUES (1128, true, '2023-06-12 12:25:42.941532', NULL, 'FACULDADE DE EMPREENDEDORISMO E CIÊNCIAS HUMANAS (FACULDADE FAECH)', 1, NULL, 134, false);
INSERT INTO public.empresa VALUES (1129, true, '2023-06-12 12:25:42.948852', NULL, 'FACULDADE DE ENFERMAGEM NOVA ESPERANÇA (FACENE)', 1, NULL, 107, false);
INSERT INTO public.empresa VALUES (1130, true, '2023-06-12 12:25:42.95627', NULL, 'FACULDADE DE ENFERMAGEM NOVA ESPERANÇA DE MOSSORÓ - FACENE/RN (FACENE/RN)', 1, NULL, 323, false);
INSERT INTO public.empresa VALUES (1131, true, '2023-06-12 12:25:42.963661', NULL, 'FACULDADE DE ENFERMAGEM SÃO VICENTE DE PAULA (FESVIP)', 1, NULL, 107, false);
INSERT INTO public.empresa VALUES (1132, true, '2023-06-12 12:25:42.971564', NULL, 'FACULDADE DE ENGENHARIA DE MINAS GERAIS - FEAMIG (FEAMIG)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (1133, true, '2023-06-12 12:25:42.978957', NULL, 'FACULDADE DE ENGENHARIA DE RESENDE (FER)', 1, NULL, 4, false);
INSERT INTO public.empresa VALUES (1134, true, '2023-06-12 12:25:42.986993', NULL, 'FACULDADE DE ENGENHARIA E ADMINISTRAÇÃO PAULISTA (FEAP)', 1, NULL, 195, false);
INSERT INTO public.empresa VALUES (1135, true, '2023-06-12 12:25:42.994326', NULL, 'FACULDADE DE ENGENHARIA E AGRIMENSURA DE SÃO PAULO (FEASP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1136, true, '2023-06-12 12:25:43.002083', NULL, 'FACULDADE DE ENGENHARIA SOUZA MARQUES (FESM)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (1137, true, '2023-06-12 12:25:43.00973', NULL, 'FACULDADE DE ENSINO DE MINAS GERAIS (FACEMG)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (1138, true, '2023-06-12 12:25:43.017018', NULL, 'FACULDADE DE ENSINO DE PESQUISA DO COOPERATIVISMO (FEPCOOP)', 1, NULL, 203, false);
INSERT INTO public.empresa VALUES (1139, true, '2023-06-12 12:25:43.024837', NULL, 'FACULDADE DE ENSINO E CULTURA DO CEARÁ (FAECE)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (1140, true, '2023-06-12 12:25:43.032785', NULL, 'FACULDADE DE ENSINO JURÍDICO DE VITÓRIA (FEJ)', 1, NULL, 25, false);
INSERT INTO public.empresa VALUES (1141, true, '2023-06-12 12:25:43.040031', NULL, 'FACULDADE DE ENSINO PASCHOAL DANTAS (FEPD)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1142, true, '2023-06-12 12:25:43.047479', NULL, 'FACULDADE DE ENSINO PORTAL (FEP)', 1, NULL, 451, false);
INSERT INTO public.empresa VALUES (1143, true, '2023-06-12 12:25:43.054904', NULL, 'FACULDADE DE ENSINO REGIONAL ALTERNATIVA (FERA)', 1, NULL, 333, false);
INSERT INTO public.empresa VALUES (1144, true, '2023-06-12 12:25:43.062683', NULL, 'FACULDADE DE ENSINO SUPERIOR (FAES)', 1, NULL, 134, false);
INSERT INTO public.empresa VALUES (1145, true, '2023-06-12 12:25:43.070256', NULL, 'FACULDADE DE ENSINO SUPERIOR BRASILEIRA - FACULDADE FEBRAS (FEBRAS)', 1, NULL, 226, false);
INSERT INTO public.empresa VALUES (1146, true, '2023-06-12 12:25:43.077538', NULL, 'FACULDADE DE ENSINO SUPERIOR DA AMAZÔNIA (FESAM)', 1, NULL, 26, false);
INSERT INTO public.empresa VALUES (1147, true, '2023-06-12 12:25:43.085044', NULL, 'FACULDADE DE ENSINO SUPERIOR DA AMAZÔNIA REUNIDA (FESAR)', 1, NULL, 452, false);
INSERT INTO public.empresa VALUES (1148, true, '2023-06-12 12:25:43.092814', NULL, 'FACULDADE DE ENSINO SUPERIOR DA CIDADE DE FEIRA DE SANTANA (FAESF/UNEF)', 1, NULL, 99, false);
INSERT INTO public.empresa VALUES (1149, true, '2023-06-12 12:25:43.100311', NULL, 'FACULDADE DE ENSINO SUPERIOR DA PARAÍBA (FESP)', 1, NULL, 107, false);
INSERT INTO public.empresa VALUES (1150, true, '2023-06-12 12:25:43.107651', NULL, 'FACULDADE DE ENSINO SUPERIOR DE FLORIANO (FAESF)', 1, NULL, 453, false);
INSERT INTO public.empresa VALUES (1151, true, '2023-06-12 12:25:43.11499', NULL, 'FACULDADE DE ENSINO SUPERIOR DE LINHARES (FACELI)', 1, NULL, 277, false);
INSERT INTO public.empresa VALUES (1152, true, '2023-06-12 12:25:43.122976', NULL, 'FACULDADE DE ENSINO SUPERIOR DE MARECHAL CÂNDIDO RONDON (ISEPE RONDON)', 1, NULL, 454, false);
INSERT INTO public.empresa VALUES (1153, true, '2023-06-12 12:25:43.135413', NULL, 'FACULDADE DE ENSINO SUPERIOR DE PARNAÍBA (FAESPA)', 1, NULL, 176, false);
INSERT INTO public.empresa VALUES (1154, true, '2023-06-12 12:25:43.142752', NULL, 'FACULDADE DE ENSINO SUPERIOR DO CENTRO DO PARANÁ (UCP)', 1, NULL, 455, false);
INSERT INTO public.empresa VALUES (1155, true, '2023-06-12 12:25:43.150107', NULL, 'FACULDADE DE ENSINO SUPERIOR DO INTERIOR PAULISTA (FAIP)', 1, NULL, 145, false);
INSERT INTO public.empresa VALUES (1156, true, '2023-06-12 12:25:43.158118', NULL, 'FACULDADE DE ENSINO SUPERIOR DO LAGO (FAESLA)', 1, NULL, 456, false);
INSERT INTO public.empresa VALUES (1157, true, '2023-06-12 12:25:43.165471', NULL, 'FACULDADE DE ENSINO SUPERIOR DOM BOSCO (FACDOMBOSCO)', 1, NULL, 353, false);
INSERT INTO public.empresa VALUES (1158, true, '2023-06-12 12:25:43.172661', NULL, 'FACULDADE DE ENSINO SUPERIOR DO PIAUÍ (FAESPI)', 1, NULL, 27, false);
INSERT INTO public.empresa VALUES (1159, true, '2023-06-12 12:25:43.180697', NULL, 'FACULDADE DE ENSINO SUPERIOR E FORMAÇÃO INTEGRAL (FAEF)', 1, NULL, 457, false);
INSERT INTO public.empresa VALUES (1160, true, '2023-06-12 12:25:43.188678', NULL, 'FACULDADE DE ENSINO SUPERIOR PASCHOAL DANTAS', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1161, true, '2023-06-12 12:25:43.196186', NULL, 'FACULDADE DE ENSINO SUPERIOR PELEGRINO CIPRIANI (FASPEC)', 1, NULL, 203, false);
INSERT INTO public.empresa VALUES (1162, true, '2023-06-12 12:25:43.203528', NULL, 'FACULDADE DE ENSINO SUPERIOR REFFERENCIAL (FAREFF)', 1, NULL, 48, false);
INSERT INTO public.empresa VALUES (1163, true, '2023-06-12 12:25:43.210971', NULL, 'FACULDADE DE ENSINO SUPERIOR SANTA BARBARA (FAESB)', 1, NULL, 458, false);
INSERT INTO public.empresa VALUES (1164, true, '2023-06-12 12:25:43.218925', NULL, 'FACULDADE DE ESTUDOS AVANÇADOS DO PARÁ (FEAPA)', 1, NULL, 79, false);
INSERT INTO public.empresa VALUES (1165, true, '2023-06-12 12:25:43.226963', NULL, 'FACULDADE DE ESTUDOS SOCIAIS APLICADOS DE VIANA (FESAV)', 1, NULL, 459, false);
INSERT INTO public.empresa VALUES (1166, true, '2023-06-12 12:25:43.234221', NULL, 'FACULDADE DE ESTUDOS SOCIAIS DO ESPÍRITO SANTO (PIO XII)', 1, NULL, 389, false);
INSERT INTO public.empresa VALUES (1167, true, '2023-06-12 12:25:43.241456', NULL, 'FACULDADE DE FILOSOFIA CIÊNCIAS E LETRAS DE ALEGRE (FAFIA)', 1, NULL, 460, false);
INSERT INTO public.empresa VALUES (1168, true, '2023-06-12 12:25:43.249417', NULL, 'FACULDADE DE FILOSOFIA, CIÊNCIAS E LETRAS DE BOA ESPERANÇA (FAFIBE)', 1, NULL, 314, false);
INSERT INTO public.empresa VALUES (1169, true, '2023-06-12 12:25:43.256715', NULL, 'FACULDADE DE FILOSOFIA, CIÊNCIAS E LETRAS DE IBITINGA (FAIBI)', 1, NULL, 461, false);
INSERT INTO public.empresa VALUES (1170, true, '2023-06-12 12:25:43.264275', NULL, 'FACULDADE DE FILOSOFIA CIÊNCIAS E LETRAS DE ITUVERAVA (FFCL)', 1, NULL, 462, false);
INSERT INTO public.empresa VALUES (1171, true, '2023-06-12 12:25:43.272177', NULL, 'FACULDADE DE FILOSOFIA CIÊNCIAS E LETRAS DE MACAÉ (FAFIMA)', 1, NULL, 325, false);
INSERT INTO public.empresa VALUES (1172, true, '2023-06-12 12:25:43.280138', NULL, 'FACULDADE DE FILOSOFIA CIÊNCIAS E LETRAS DE PENÁPOLIS (FAFIPE)', 1, NULL, 463, false);
INSERT INTO public.empresa VALUES (1173, true, '2023-06-12 12:25:43.287483', NULL, 'FACULDADE DE FILOSOFIA CIÊNCIAS E LETRAS DE SÃO JOSÉ DO RIO PARDO (FFCL)', 1, NULL, 464, false);
INSERT INTO public.empresa VALUES (1174, true, '2023-06-12 12:25:43.295207', NULL, 'FACULDADE DE FILOSOFIA, CIÊNCIAS E LETRAS DO ALTO SÃO FRANCISCO (FASF)', 1, NULL, 465, false);
INSERT INTO public.empresa VALUES (1175, true, '2023-06-12 12:25:43.307674', NULL, 'FACULDADE DE FILOSOFIA CIÊNCIAS E LETRAS DOM BOSCO (FFCLDB)', 1, NULL, 4, false);
INSERT INTO public.empresa VALUES (1176, true, '2023-06-12 12:25:43.340657', NULL, 'FACULDADE DE FILOSOFIA CIÊNCIAS E LETRAS SOUZA MARQUES (FFCLSM)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (1177, true, '2023-06-12 12:25:43.348738', NULL, 'FACULDADE DE FILOSOFIA E TEOLOGIA PAULO VI (FFTP)', 1, NULL, 62, false);
INSERT INTO public.empresa VALUES (1178, true, '2023-06-12 12:25:43.356146', NULL, 'FACULDADE DE FORMAÇÃO DE PROFESSORES DA MATA SUL (FAMASUL)', 1, NULL, 428, false);
INSERT INTO public.empresa VALUES (1179, true, '2023-06-12 12:25:43.363917', NULL, 'FACULDADE DE FORMAÇÃO DE PROFESSORES DE ARARIPINA (FAFOPA)', 1, NULL, 393, false);
INSERT INTO public.empresa VALUES (1180, true, '2023-06-12 12:25:43.371908', NULL, 'FACULDADE DE FORMAÇÃO DE PROFESSORES DE SERRA TALHADA (FAFOPST)', 1, NULL, 398, false);
INSERT INTO public.empresa VALUES (1181, true, '2023-06-12 12:25:43.379514', NULL, 'FACULDADE DE FORTALEZA (FAFOR)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (1182, true, '2023-06-12 12:25:43.386882', NULL, 'FACULDADE DE FRUTAL (FAF)', 1, NULL, 466, false);
INSERT INTO public.empresa VALUES (1183, true, '2023-06-12 12:25:43.394157', NULL, 'FACULDADE DE GESTÃO, EDUCAÇÃO E DE SAÚDE (FGS)', 1, NULL, 203, false);
INSERT INTO public.empresa VALUES (1184, true, '2023-06-12 12:25:43.402289', NULL, 'FACULDADE DE GESTÃO E INOVAÇÃO (FGI)', 1, NULL, 21, false);
INSERT INTO public.empresa VALUES (1185, true, '2023-06-12 12:25:43.409508', NULL, 'FACULDADE DE GESTAO E NEGOCIOS DE CACHOEIRINHA (FGN CACHOEIRINH)', 1, NULL, 74, false);
INSERT INTO public.empresa VALUES (1186, true, '2023-06-12 12:25:43.416908', NULL, 'FACULDADE DE GESTAO E NEGOCIOS DE SALVADOR (FGN)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (1187, true, '2023-06-12 12:25:43.424357', NULL, 'FACULDADE DE GESTAO E NEGOCIOS DE TERESINA (FGN TERESINA)', 1, NULL, 27, false);
INSERT INTO public.empresa VALUES (1188, true, '2023-06-12 12:25:43.431885', NULL, 'FACULDADE DE GOIANA (FAG)', 1, NULL, 400, false);
INSERT INTO public.empresa VALUES (1189, true, '2023-06-12 12:25:43.439374', NULL, 'FACULDADE DE GOVERNANÇA, ENGENHARIA E EDUCAÇÃO DE SÃO PAULO (FGE-SP)', 1, NULL, 195, false);
INSERT INTO public.empresa VALUES (1190, true, '2023-06-12 12:25:43.446707', NULL, 'FACULDADE DE GUARANTÃ DO NORTE ( UNIFAMA)', 1, NULL, 467, false);
INSERT INTO public.empresa VALUES (1191, true, '2023-06-12 12:25:43.454061', NULL, 'FACULDADE DE GUARULHOS (FAG)', 1, NULL, 100, false);
INSERT INTO public.empresa VALUES (1192, true, '2023-06-12 12:25:43.461892', NULL, 'FACULDADE DEHONIANA (DEHONIANA)', 1, NULL, 33, false);
INSERT INTO public.empresa VALUES (1193, true, '2023-06-12 12:25:43.469477', NULL, 'FACULDADE DE HORTOLÂNDIA (FACH)', 1, NULL, 468, false);
INSERT INTO public.empresa VALUES (1194, true, '2023-06-12 12:25:43.476847', NULL, 'FACULDADE DE IBAITI (FEATI)', 1, NULL, 469, false);
INSERT INTO public.empresa VALUES (1195, true, '2023-06-12 12:25:43.484108', NULL, 'FACULDADE DE ILHA SOLTEIRA (FAISA)', 1, NULL, 340, false);
INSERT INTO public.empresa VALUES (1196, true, '2023-06-12 12:25:43.491703', NULL, 'FACULDADE DE IMPERATRIZ WYDEN (FACIMP WYDEN)', 1, NULL, 267, false);
INSERT INTO public.empresa VALUES (1197, true, '2023-06-12 12:25:43.504372', NULL, 'FACULDADE DE INDIARA (FAIND)', 1, NULL, 470, false);
INSERT INTO public.empresa VALUES (1198, true, '2023-06-12 12:25:43.511998', NULL, 'FACULDADE DE INFORMÁTICA DE OURO PRETO DO OESTE (FIOURO)', 1, NULL, 471, false);
INSERT INTO public.empresa VALUES (1199, true, '2023-06-12 12:25:43.51942', NULL, 'FACULDADE DE INHUMAS - FAC-MAIS (FACMAIS)', 1, NULL, 472, false);
INSERT INTO public.empresa VALUES (1200, true, '2023-06-12 12:25:43.527216', NULL, 'FACULDADE DE INTEGRAÇÃO DO ENSINO SUPERIOR DO CONE SUL (FISUL)', 1, NULL, 473, false);
INSERT INTO public.empresa VALUES (1201, true, '2023-06-12 12:25:43.534809', NULL, 'FACULDADE DE INTEGRAÇÃO DO SERTÃO (FIS)', 1, NULL, 398, false);
INSERT INTO public.empresa VALUES (1202, true, '2023-06-12 12:25:43.542213', NULL, 'FACULDADE DE IPORÁ (FAI)', 1, NULL, 474, false);
INSERT INTO public.empresa VALUES (1203, true, '2023-06-12 12:25:43.549883', NULL, 'FACULDADE DE ITAITUBA (FAI)', 1, NULL, 475, false);
INSERT INTO public.empresa VALUES (1204, true, '2023-06-12 12:25:43.557761', NULL, 'FACULDADE DE ITÁPOLIS - FACITA (FACITA)', 1, NULL, 223, false);
INSERT INTO public.empresa VALUES (1205, true, '2023-06-12 12:25:43.567142', NULL, 'FACULDADE DE JABOTICABAL (FAJAB)', 1, NULL, 315, false);
INSERT INTO public.empresa VALUES (1206, true, '2023-06-12 12:25:43.574574', NULL, 'FACULDADE DE JACAREÍ', 1, NULL, 273, false);
INSERT INTO public.empresa VALUES (1207, true, '2023-06-12 12:25:43.581959', NULL, 'FACULDADE DE JANDAIA DO SUL (FAFIJAN)', 1, NULL, 476, false);
INSERT INTO public.empresa VALUES (1208, true, '2023-06-12 12:25:43.590289', NULL, 'FACULDADE DE JUSSARA (FAJ)', 1, NULL, 477, false);
INSERT INTO public.empresa VALUES (1209, true, '2023-06-12 12:25:43.597857', NULL, 'FACULDADE DELMIRO GOUVEIA (FDG)', 1, NULL, 73, false);
INSERT INTO public.empresa VALUES (1210, true, '2023-06-12 12:25:43.60528', NULL, 'FACULDADE DELTA (FACULDADE DELTA)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (1211, true, '2023-06-12 12:25:43.612727', NULL, 'FACULDADE DE LUCAS DO RIO VERDE (UNIFAMA)', 1, NULL, 169, false);
INSERT INTO public.empresa VALUES (1212, true, '2023-06-12 12:25:43.620533', NULL, 'FACULDADE DE MARÍLIA (FAMAR)', 1, NULL, 145, false);
INSERT INTO public.empresa VALUES (1213, true, '2023-06-12 12:25:43.632735', NULL, 'FACULDADE DE MARTINÓPOLIS (FAMA)', 1, NULL, 478, false);
INSERT INTO public.empresa VALUES (1214, true, '2023-06-12 12:25:43.640059', NULL, 'FACULDADE DE MATO GROSSO (FAMAT)', 1, NULL, 203, false);
INSERT INTO public.empresa VALUES (1215, true, '2023-06-12 12:25:43.648084', NULL, 'FACULDADE DE MATUPÁ ( UNIFAMA)', 1, NULL, 479, false);
INSERT INTO public.empresa VALUES (1216, true, '2023-06-12 12:25:43.6559', NULL, 'FACULDADE DE MAUÁ - FAMA (FAMA)', 1, NULL, 480, false);
INSERT INTO public.empresa VALUES (1217, true, '2023-06-12 12:25:43.663392', NULL, 'FACULDADE DE MEDIAÇÃO ÍVIA CORNELI (FAMIC)', 1, NULL, 481, false);
INSERT INTO public.empresa VALUES (1218, true, '2023-06-12 12:25:43.671052', NULL, 'FACULDADE DE MEDICINA (ITPAC)', 1, NULL, 196, false);
INSERT INTO public.empresa VALUES (1219, true, '2023-06-12 12:25:43.679224', NULL, 'FACULDADE DE MEDICINA DE AÇAILÂNDIA', 1, NULL, 482, false);
INSERT INTO public.empresa VALUES (1220, true, '2023-06-12 12:25:43.686673', NULL, 'FACULDADE DE MEDICINA DE BARBACENA (FAME)', 1, NULL, 32, false);
INSERT INTO public.empresa VALUES (1221, true, '2023-06-12 12:25:43.694006', NULL, 'FACULDADE DE MEDICINA DE CAMPOS (FMC)', 1, NULL, 160, false);
INSERT INTO public.empresa VALUES (1222, true, '2023-06-12 12:25:43.701482', NULL, 'FACULDADE DE MEDICINA DE GARANHUNS (SUB JUDICE)', 1, NULL, 483, false);
INSERT INTO public.empresa VALUES (1223, true, '2023-06-12 12:25:43.709408', NULL, 'FACULDADE DE MEDICINA DE ITAJUBÁ (FMIT)', 1, NULL, 103, false);
INSERT INTO public.empresa VALUES (1224, true, '2023-06-12 12:25:43.716886', NULL, 'FACULDADE DE MEDICINA DE JI-PARANÁ', 1, NULL, 139, false);
INSERT INTO public.empresa VALUES (1225, true, '2023-06-12 12:25:43.724123', NULL, 'FACULDADE DE MEDICINA DE JUNDIAÍ (FMJ)', 1, NULL, 182, false);
INSERT INTO public.empresa VALUES (1226, true, '2023-06-12 12:25:43.731395', NULL, 'FACULDADE DE MEDICINA DE MARÍLIA (FAMEMA)', 1, NULL, 145, false);
INSERT INTO public.empresa VALUES (1227, true, '2023-06-12 12:25:43.739078', NULL, 'FACULDADE DE MEDICINA DE OLINDA (FMO)', 1, NULL, 39, false);
INSERT INTO public.empresa VALUES (1228, true, '2023-06-12 12:25:43.746438', NULL, 'FACULDADE DE MEDICINA DE PETRÓPOLIS (FMP)', 1, NULL, 53, false);
INSERT INTO public.empresa VALUES (1229, true, '2023-06-12 12:25:43.754159', NULL, 'FACULDADE DE MEDICINA DE SÃO JOSÉ DO RIO PRETO (FAMERP)', 1, NULL, 114, false);
INSERT INTO public.empresa VALUES (1230, true, '2023-06-12 12:25:43.761832', NULL, 'FACULDADE DE MEDICINA DO SERTÃO (FMS)', 1, NULL, 15, false);
INSERT INTO public.empresa VALUES (1231, true, '2023-06-12 12:25:43.770033', NULL, 'FACULDADE DE MEDICINA ESTÁCIO DE CASTANHAL (ESTÁCIO FMEC)', 1, NULL, 484, false);
INSERT INTO public.empresa VALUES (1232, true, '2023-06-12 12:25:43.777579', NULL, 'FACULDADE DE MEDICINA ESTÁCIO DE JUAZEIRO DO NORTE (ESTÁCIO FMJ)', 1, NULL, 135, false);
INSERT INTO public.empresa VALUES (1233, true, '2023-06-12 12:25:43.78479', NULL, 'FACULDADE DE MEDICINA NOVA ESPERANÇA (FAMENE)', 1, NULL, 107, false);
INSERT INTO public.empresa VALUES (1234, true, '2023-06-12 12:25:43.791988', NULL, 'FACULDADE DE MIGUEL PEREIRA (FAMIPE)', 1, NULL, 485, false);
INSERT INTO public.empresa VALUES (1235, true, '2023-06-12 12:25:43.800136', NULL, 'FACULDADE DE MINAS BH (FAMINAS-BH)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (1236, true, '2023-06-12 12:25:43.807487', NULL, 'FACULDADE DE MIRASSOL', 1, NULL, 486, false);
INSERT INTO public.empresa VALUES (1237, true, '2023-06-12 12:25:43.815562', NULL, 'FACULDADE DE MÚSICA CARLOS GOMES (FMCG)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1238, true, '2023-06-12 12:25:43.822798', NULL, 'FACULDADE DE MÚSICA DO ESPÍRITO SANTO MAURÍCIO DE OLIVEIRA (FAMES)', 1, NULL, 25, false);
INSERT INTO public.empresa VALUES (1239, true, '2023-06-12 12:25:43.830598', NULL, 'FACULDADE DE MÚSICA SOUZA LIMA (FMSL)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1240, true, '2023-06-12 12:25:43.838057', NULL, 'FACULDADE DE NOVA MUTUM (UNIFAMA)', 1, NULL, 487, false);
INSERT INTO public.empresa VALUES (1241, true, '2023-06-12 12:25:43.845328', NULL, 'FACULDADE DE NOVA MUTUM', 1, NULL, 487, false);
INSERT INTO public.empresa VALUES (1242, true, '2023-06-12 12:25:43.857683', NULL, 'FACULDADE DE NOVA SERRANA (FANS)', 1, NULL, 488, false);
INSERT INTO public.empresa VALUES (1243, true, '2023-06-12 12:25:43.865494', NULL, 'FACULDADE DE ODONTOLOGIA DA APCD (FAOA)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1244, true, '2023-06-12 12:25:43.872771', NULL, 'FACULDADE DE ODONTOLOGIA DE MANAUS (FOM)', 1, NULL, 75, false);
INSERT INTO public.empresa VALUES (1245, true, '2023-06-12 12:25:43.880351', NULL, 'FACULDADE DE ODONTOLOGIA DO RECIFE (FOR)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (1246, true, '2023-06-12 12:25:43.887718', NULL, 'FACULDADE DE OLÍMPIA', 1, NULL, 489, false);
INSERT INTO public.empresa VALUES (1247, true, '2023-06-12 12:25:43.895668', NULL, 'FACULDADE DE OSASCO (FCO)', 1, NULL, 158, false);
INSERT INTO public.empresa VALUES (1248, true, '2023-06-12 12:25:43.903502', NULL, 'FACULDADE DE PALMAS (FAPAL)', 1, NULL, 23, false);
INSERT INTO public.empresa VALUES (1249, true, '2023-06-12 12:25:43.910816', NULL, 'FACULDADE DE PALMEIRAS DE GOIÁS - FACMAIS (FACMAIS)', 1, NULL, 490, false);
INSERT INTO public.empresa VALUES (1250, true, '2023-06-12 12:25:43.918009', NULL, 'FACULDADE DE PARÁ DE MINAS (FAPAM)', 1, NULL, 491, false);
INSERT INTO public.empresa VALUES (1251, true, '2023-06-12 12:25:43.925747', NULL, 'FACULDADE DE PEDAGOGIA (ANAEC)', 1, NULL, 369, false);
INSERT INTO public.empresa VALUES (1252, true, '2023-06-12 12:25:43.933013', NULL, 'FACULDADE DE PENÁPOLIS', 1, NULL, 463, false);
INSERT INTO public.empresa VALUES (1253, true, '2023-06-12 12:25:43.940297', NULL, 'FACULDADE DE PENEDO (FAC-PENEDO)', 1, NULL, 492, false);
INSERT INTO public.empresa VALUES (1254, true, '2023-06-12 12:25:43.947703', NULL, 'FACULDADE DE PETROLINA (FACAPE)', 1, NULL, 445, false);
INSERT INTO public.empresa VALUES (1255, true, '2023-06-12 12:25:43.95549', NULL, 'FACULDADE DE PINHAIS (FAPI)', 1, NULL, 493, false);
INSERT INTO public.empresa VALUES (1256, true, '2023-06-12 12:25:43.962809', NULL, 'FACULDADE DE PIRACANJUBA (FAP)', 1, NULL, 494, false);
INSERT INTO public.empresa VALUES (1257, true, '2023-06-12 12:25:43.970156', NULL, 'FACULDADE DE PONTA PORÃ (FAP)', 1, NULL, 495, false);
INSERT INTO public.empresa VALUES (1258, true, '2023-06-12 12:25:43.977385', NULL, 'FACULDADE DE PORTO FELIZ', 1, NULL, 496, false);
INSERT INTO public.empresa VALUES (1259, true, '2023-06-12 12:25:43.985295', NULL, 'FACULDADE DE PRESIDENTE EPITÁCIO - FAPE (FAPE)', 1, NULL, 497, false);
INSERT INTO public.empresa VALUES (1260, true, '2023-06-12 12:25:43.992606', NULL, 'FACULDADE DE PRESIDENTE PRUDENTE (FAPEPE)', 1, NULL, 50, false);
INSERT INTO public.empresa VALUES (1261, true, '2023-06-12 12:25:44.00048', NULL, 'FACULDADE DE PRESIDENTE VENCESLAU (FAPREV)', 1, NULL, 498, false);
INSERT INTO public.empresa VALUES (1262, true, '2023-06-12 12:25:44.007923', NULL, 'FACULDADE DE PRIMAVERA (CESPRI)', 1, NULL, 499, false);
INSERT INTO public.empresa VALUES (1263, true, '2023-06-12 12:25:44.015988', NULL, 'FACULDADE DE QUIXERAMOBIM (UNIQ)', 1, NULL, 500, false);
INSERT INTO public.empresa VALUES (1264, true, '2023-06-12 12:25:44.023304', NULL, 'FACULDADE DE RANCHARIA', 1, NULL, 501, false);
INSERT INTO public.empresa VALUES (1265, true, '2023-06-12 12:25:44.031', NULL, 'FACULDADE DE RIBEIRÃO PIRES', 1, NULL, 502, false);
INSERT INTO public.empresa VALUES (1266, true, '2023-06-12 12:25:44.03834', NULL, 'FACULDADE DE RIBEIRÃO PRETO (AFARP)', 1, NULL, 58, false);
INSERT INTO public.empresa VALUES (1267, true, '2023-06-12 12:25:44.046603', NULL, 'FACULDADE DE RIO CLARO (CBTA)', 1, NULL, 222, false);
INSERT INTO public.empresa VALUES (1268, true, '2023-06-12 12:25:44.054032', NULL, 'FACULDADE DE ROLIM DE MOURA (FAROL)', 1, NULL, 503, false);
INSERT INTO public.empresa VALUES (1269, true, '2023-06-12 12:25:44.066442', NULL, 'FACULDADE DE RONDÔNIA (FARO)', 1, NULL, 51, false);
INSERT INTO public.empresa VALUES (1270, true, '2023-06-12 12:25:44.073813', NULL, 'FACULDADE DE ROSEIRA (FARO)', 1, NULL, 504, false);
INSERT INTO public.empresa VALUES (1271, true, '2023-06-12 12:25:44.081873', NULL, 'FACULDADE DE SABARÁ (SOECS)', 1, NULL, 505, false);
INSERT INTO public.empresa VALUES (1272, true, '2023-06-12 12:25:44.089263', NULL, 'FACULDADE DE SANTA BÁRBARA D''OESTE (FAP)', 1, NULL, 288, false);
INSERT INTO public.empresa VALUES (1273, true, '2023-06-12 12:25:44.096844', NULL, 'FACULDADE DE SANTA CATARINA (FASC)', 1, NULL, 140, false);
INSERT INTO public.empresa VALUES (1274, true, '2023-06-12 12:25:44.104287', NULL, 'FACULDADE DE SANTA CRUZ DA BAHIA (FSC)', 1, NULL, 506, false);
INSERT INTO public.empresa VALUES (1275, true, '2023-06-12 12:25:44.112375', NULL, 'FACULDADE DE SANTA INÊS (FSI)', 1, NULL, 507, false);
INSERT INTO public.empresa VALUES (1276, true, '2023-06-12 12:25:44.119827', NULL, 'FACULDADE DE SANTA LUZIA (FACSAL)', 1, NULL, 508, false);
INSERT INTO public.empresa VALUES (1277, true, '2023-06-12 12:25:44.127369', NULL, 'FACULDADE DE SANTANA DE PARNAÍBA (FASP)', 1, NULL, 509, false);
INSERT INTO public.empresa VALUES (1278, true, '2023-06-12 12:25:44.134627', NULL, 'FACULDADE DE SANTO ANDRÉ', 1, NULL, 47, false);
INSERT INTO public.empresa VALUES (1279, true, '2023-06-12 12:25:44.142441', NULL, 'FACULDADE DE SANTO ÂNGELO (FASA)', 1, NULL, 348, false);
INSERT INTO public.empresa VALUES (1280, true, '2023-06-12 12:25:44.150299', NULL, 'FACULDADE DE SANTO ANTONIO DA PLATINA', 1, NULL, 510, false);
INSERT INTO public.empresa VALUES (1281, true, '2023-06-12 12:25:44.15768', NULL, 'FACULDADE DE SÃO BENTO (FSB)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1282, true, '2023-06-12 12:25:44.164923', NULL, 'FACULDADE DE SÃO BERNARDO DO CAMPO (FAPAN)', 1, NULL, 82, false);
INSERT INTO public.empresa VALUES (1283, true, '2023-06-12 12:25:44.172931', NULL, 'FACULDADE DE SÃO BERNARDO DO CAMPO - FASB (FASB I)', 1, NULL, 82, false);
INSERT INTO public.empresa VALUES (1284, true, '2023-06-12 12:25:44.180426', NULL, 'FACULDADE DE SÃO CAETANO DO SUL', 1, NULL, 126, false);
INSERT INTO public.empresa VALUES (1285, true, '2023-06-12 12:25:44.187755', NULL, 'FACULDADE DE SÃO CARLOS (FASC)', 1, NULL, 72, false);
INSERT INTO public.empresa VALUES (1286, true, '2023-06-12 12:25:44.195033', NULL, 'FACULDADE DE SÃO LOURENÇO (FASAMA)', 1, NULL, 511, false);
INSERT INTO public.empresa VALUES (1287, true, '2023-06-12 12:25:44.202927', NULL, 'FACULDADE DE SÃO MARCOS (FACSM)', 1, NULL, 512, false);
INSERT INTO public.empresa VALUES (1288, true, '2023-06-12 12:25:44.210591', NULL, 'FACULDADE DE SÃO PAULO (FASP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1289, true, '2023-06-12 12:25:44.218019', NULL, 'FACULDADE DE SÃO ROQUE (FASAR)', 1, NULL, 191, false);
INSERT INTO public.empresa VALUES (1290, true, '2023-06-12 12:25:44.225395', NULL, 'FACULDADE DE SÃO VICENTE (FSV)', 1, NULL, 513, false);
INSERT INTO public.empresa VALUES (1291, true, '2023-06-12 12:25:44.233426', NULL, 'FACULDADE DE SAÚDE, CIÊNCIAS E TECNOLOGIA - FACESB (FACESB)', 1, NULL, 514, false);
INSERT INTO public.empresa VALUES (1292, true, '2023-06-12 12:25:44.240679', NULL, 'FACULDADE DE SAÚDE DO SERTÃO DE PERNAMBUCO (FASPE)', 1, NULL, 515, false);
INSERT INTO public.empresa VALUES (1293, true, '2023-06-12 12:25:44.24836', NULL, 'FACULDADE DE SAÚDE E HUMANIDADES IBITURUNA (FASI)', 1, NULL, 128, false);
INSERT INTO public.empresa VALUES (1294, true, '2023-06-12 12:25:44.25571', NULL, 'FACULDADE DE SAÚDE SANTO AGOSTINHO DE VITÓRIA DA CONQUISTA (FASA)', 1, NULL, 37, false);
INSERT INTO public.empresa VALUES (1295, true, '2023-06-12 12:25:44.263765', NULL, 'FACULDADE DESCOMPLICA', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (1296, true, '2023-06-12 12:25:44.271227', NULL, 'FACULDADE DE SERTÃOZINHO', 1, NULL, 291, false);
INSERT INTO public.empresa VALUES (1297, true, '2023-06-12 12:25:44.284099', NULL, 'FACULDADE DE SOBRAL (FASOL)', 1, NULL, 167, false);
INSERT INTO public.empresa VALUES (1298, true, '2023-06-12 12:25:44.291474', NULL, 'FACULDADE DE SOROCABA', 1, NULL, 146, false);
INSERT INTO public.empresa VALUES (1299, true, '2023-06-12 12:25:44.299655', NULL, 'FACULDADE DE SUZANO (UNISUZ)', 1, NULL, 184, false);
INSERT INTO public.empresa VALUES (1300, true, '2023-06-12 12:25:44.306866', NULL, 'FACULDADE DE TAPEJARA (FAT)', 1, NULL, 516, false);
INSERT INTO public.empresa VALUES (1301, true, '2023-06-12 12:25:44.314406', NULL, 'FACULDADE DE TAQUARITINGA (FTGA)', 1, NULL, 517, false);
INSERT INTO public.empresa VALUES (1302, true, '2023-06-12 12:25:44.321936', NULL, 'FACULDADE DE TECNOLOGIA AEROTD (AEROTD)', 1, NULL, 3, false);
INSERT INTO public.empresa VALUES (1303, true, '2023-06-12 12:25:44.330135', NULL, 'FACULDADE DE TECNOLOGIA ALCIDES MAYA (AMTEC)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (1304, true, '2023-06-12 12:25:44.337318', NULL, 'FACULDADE DE TECNOLOGIA ALPHA CHANNEL (FATAC)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1305, true, '2023-06-12 12:25:44.344545', NULL, 'FACULDADE DE TECNOLOGIA ALTO MÉDIO SÃO FRANCISCO (FAC FUNAM)', 1, NULL, 302, false);
INSERT INTO public.empresa VALUES (1306, true, '2023-06-12 12:25:44.351898', NULL, 'FACULDADE DE TECNOLOGIA ASSESSORITEC', 1, NULL, 68, false);
INSERT INTO public.empresa VALUES (1307, true, '2023-06-12 12:25:44.359761', NULL, 'FACULDADE DE TECNOLOGIA AVANÇADA', 1, NULL, 264, false);
INSERT INTO public.empresa VALUES (1308, true, '2023-06-12 12:25:44.367175', NULL, 'FACULDADE DE TECNOLOGIA BANDEIRANTES (BANDTEC)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1309, true, '2023-06-12 12:25:44.374478', NULL, 'FACULDADE DE TECNOLOGIA CACHOEIRO DE ITAPEMIRIM (FACI)', 1, NULL, 190, false);
INSERT INTO public.empresa VALUES (1310, true, '2023-06-12 12:25:44.381931', NULL, 'FACULDADE DE TECNOLOGIA CENTEC - CARIRI (CENTEC)', 1, NULL, 135, false);
INSERT INTO public.empresa VALUES (1311, true, '2023-06-12 12:25:44.389795', NULL, 'FACULDADE DE TECNOLOGIA CENTEC - SERTÃO CENTRAL (FTC SERTÃO CENTRAL)', 1, NULL, 500, false);
INSERT INTO public.empresa VALUES (1312, true, '2023-06-12 12:25:44.397655', NULL, 'FACULDADE DE TECNOLOGIA CNA (FATECNA)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (1313, true, '2023-06-12 12:25:44.404879', NULL, 'FACULDADE DE TECNOLOGIA COESP (FCOESP)', 1, NULL, 107, false);
INSERT INTO public.empresa VALUES (1314, true, '2023-06-12 12:25:44.412115', NULL, 'FACULDADE DE TECNOLOGIA DA AMAZÔNIA (FATEC)', 1, NULL, 75, false);
INSERT INTO public.empresa VALUES (1315, true, '2023-06-12 12:25:44.419989', NULL, 'FACULDADE DE TECNOLOGIA DA PARAÍBA (FATECPB)', 1, NULL, 204, false);
INSERT INTO public.empresa VALUES (1316, true, '2023-06-12 12:25:44.427105', NULL, 'FACULDADE DE TECNOLOGIA DE ADAMANTINA', 1, NULL, 91, false);
INSERT INTO public.empresa VALUES (1317, true, '2023-06-12 12:25:44.43446', NULL, 'FACULDADE DE TECNOLOGIA DE AMERICANA "MINISTRO RALPH BIASI" (FATEC-AM)', 1, NULL, 187, false);
INSERT INTO public.empresa VALUES (1318, true, '2023-06-12 12:25:44.44167', NULL, 'FACULDADE DE TECNOLOGIA DE ARAÇATUBA (FATEC ARAÇATUBA)', 1, NULL, 197, false);
INSERT INTO public.empresa VALUES (1319, true, '2023-06-12 12:25:44.449628', NULL, 'FACULDADE DE TECNOLOGIA DE ARARAQUARA (FATEC ARQ)', 1, NULL, 378, false);
INSERT INTO public.empresa VALUES (1320, true, '2023-06-12 12:25:44.456991', NULL, 'FACULDADE DE TECNOLOGIA DE ARARAS', 1, NULL, 83, false);
INSERT INTO public.empresa VALUES (1321, true, '2023-06-12 12:25:44.464346', NULL, 'FACULDADE DE TECNOLOGIA DE ASSIS (FATEC ASSIS)', 1, NULL, 379, false);
INSERT INTO public.empresa VALUES (1322, true, '2023-06-12 12:25:44.477475', NULL, 'FACULDADE DE TECNOLOGIA DE BARUERI (FATEC BARUERI)', 1, NULL, 381, false);
INSERT INTO public.empresa VALUES (1323, true, '2023-06-12 12:25:44.484712', NULL, 'FACULDADE DE TECNOLOGIA DE BAURU (FATEC)', 1, NULL, 93, false);
INSERT INTO public.empresa VALUES (1324, true, '2023-06-12 12:25:44.491953', NULL, 'FACULDADE DE TECNOLOGIA DE BOTUCATU (FATEC BT)', 1, NULL, 383, false);
INSERT INTO public.empresa VALUES (1325, true, '2023-06-12 12:25:44.499626', NULL, 'FACULDADE DE TECNOLOGIA DE BRAGANÇA PAULISTA', 1, NULL, 404, false);
INSERT INTO public.empresa VALUES (1326, true, '2023-06-12 12:25:44.507734', NULL, 'FACULDADE DE TECNOLOGIA DE CAMPINAS (FATEC CAMPINAS)', 1, NULL, 177, false);
INSERT INTO public.empresa VALUES (1327, true, '2023-06-12 12:25:44.515469', NULL, 'FACULDADE DE TECNOLOGIA DE CAPÃO BONITO (FATEC-CB)', 1, NULL, 518, false);
INSERT INTO public.empresa VALUES (1328, true, '2023-06-12 12:25:44.522876', NULL, 'FACULDADE DE TECNOLOGIA DE CARAPICUIBA (FATEC)', 1, NULL, 519, false);
INSERT INTO public.empresa VALUES (1329, true, '2023-06-12 12:25:44.530373', NULL, 'FACULDADE DE TECNOLOGIA DE CATANDUVA (FATEC CATANDUVA)', 1, NULL, 181, false);
INSERT INTO public.empresa VALUES (1330, true, '2023-06-12 12:25:44.538161', NULL, 'FACULDADE DE TECNOLOGIA DE COTIA (FATEC COTIA)', 1, NULL, 520, false);
INSERT INTO public.empresa VALUES (1331, true, '2023-06-12 12:25:44.545889', NULL, 'FACULDADE DE TECNOLOGIA DE CRUZEIRO DO OESTE (FACO)', 1, NULL, 521, false);
INSERT INTO public.empresa VALUES (1332, true, '2023-06-12 12:25:44.553421', NULL, 'FACULDADE DE TECNOLOGIA DE DIADEMA LUIGI PAPAIZ (FATEC DIADEMA)', 1, NULL, 522, false);
INSERT INTO public.empresa VALUES (1333, true, '2023-06-12 12:25:44.561012', NULL, 'FACULDADE DE TECNOLOGIA DE FERRAZ DE VASCONCELOS', 1, NULL, 523, false);
INSERT INTO public.empresa VALUES (1334, true, '2023-06-12 12:25:44.569326', NULL, 'FACULDADE DE TECNOLOGIA DE FRANCO DA ROCHA', 1, NULL, 524, false);
INSERT INTO public.empresa VALUES (1335, true, '2023-06-12 12:25:44.576879', NULL, 'FACULDADE DE TECNOLOGIA DE GARÇA (FATECGA)', 1, NULL, 457, false);
INSERT INTO public.empresa VALUES (1336, true, '2023-06-12 12:25:44.584274', NULL, 'FACULDADE DE TECNOLOGIA DE GUARATINGUETÁ (FATEC GT)', 1, NULL, 363, false);
INSERT INTO public.empresa VALUES (1337, true, '2023-06-12 12:25:44.59156', NULL, 'FACULDADE DE TECNOLOGIA DE GUARULHOS (FATEC GR)', 1, NULL, 100, false);
INSERT INTO public.empresa VALUES (1338, true, '2023-06-12 12:25:44.599532', NULL, 'FACULDADE DE TECNOLOGIA DE HORIZONTE (FATHOR)', 1, NULL, 525, false);
INSERT INTO public.empresa VALUES (1339, true, '2023-06-12 12:25:44.606856', NULL, 'FACULDADE DE TECNOLOGIA DE INDAIATUBA (FATEC-ID)', 1, NULL, 11, false);
INSERT INTO public.empresa VALUES (1340, true, '2023-06-12 12:25:44.61443', NULL, 'FACULDADE DE TECNOLOGIA DE ITAPETININGA - PROF.ANTÔNIO BELIZANDRO BARBOSA REZENDE (FATEC - ITAPETININGA)', 1, NULL, 271, false);
INSERT INTO public.empresa VALUES (1341, true, '2023-06-12 12:25:44.622027', NULL, 'FACULDADE DE TECNOLOGIA DE ITAPIRA (FATEC ITAPIRA)', 1, NULL, 104, false);
INSERT INTO public.empresa VALUES (1342, true, '2023-06-12 12:25:44.634458', NULL, 'FACULDADE DE TECNOLOGIA DE ITAQUAQUECETUBA (FATEC ITAQUA)', 1, NULL, 526, false);
INSERT INTO public.empresa VALUES (1343, true, '2023-06-12 12:25:44.641764', NULL, 'FACULDADE DE TECNOLOGIA DE ITAQUERA (FATEC ITAQUERA)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1344, true, '2023-06-12 12:25:44.649745', NULL, 'FACULDADE DE TECNOLOGIA DE ITATIBA (FATEC ITATIBA)', 1, NULL, 527, false);
INSERT INTO public.empresa VALUES (1345, true, '2023-06-12 12:25:44.657058', NULL, 'FACULDADE DE TECNOLOGIA DE JACAREÍ (FATEC JACAREÍ)', 1, NULL, 273, false);
INSERT INTO public.empresa VALUES (1346, true, '2023-06-12 12:25:44.665059', NULL, 'FACULDADE DE TECNOLOGIA DE JAHU (FATEC-JAHU)', 1, NULL, 274, false);
INSERT INTO public.empresa VALUES (1347, true, '2023-06-12 12:25:44.672583', NULL, 'FACULDADE DE TECNOLOGIA DE JALES (FATEC JALES)', 1, NULL, 106, false);
INSERT INTO public.empresa VALUES (1348, true, '2023-06-12 12:25:44.680075', NULL, 'FACULDADE DE TECNOLOGIA DE JUNDIAÍ (FATEC/JD)', 1, NULL, 182, false);
INSERT INTO public.empresa VALUES (1349, true, '2023-06-12 12:25:44.687519', NULL, 'FACULDADE DE TECNOLOGIA DE MATÃO', 1, NULL, 278, false);
INSERT INTO public.empresa VALUES (1350, true, '2023-06-12 12:25:44.695531', NULL, 'FACULDADE DE TECNOLOGIA DE MAUÁ (FATEC MAUÁ)', 1, NULL, 480, false);
INSERT INTO public.empresa VALUES (1351, true, '2023-06-12 12:25:44.702917', NULL, 'FACULDADE DE TECNOLOGIA DE MOCOCA (FATEC)', 1, NULL, 528, false);
INSERT INTO public.empresa VALUES (1352, true, '2023-06-12 12:25:44.710355', NULL, 'FACULDADE DE TECNOLOGIA DE MOGI DAS CRUZES (FATEC-MC)', 1, NULL, 62, false);
INSERT INTO public.empresa VALUES (1353, true, '2023-06-12 12:25:44.717807', NULL, 'FACULDADE DE TECNOLOGIA DE OSASCO - PREFEITO HIRANT SANAZAR (FATEC OSASCO)', 1, NULL, 158, false);
INSERT INTO public.empresa VALUES (1354, true, '2023-06-12 12:25:44.725583', NULL, 'FACULDADE DE TECNOLOGIA DE OURINHOS (FATEC)', 1, NULL, 89, false);
INSERT INTO public.empresa VALUES (1355, true, '2023-06-12 12:25:44.732846', NULL, 'FACULDADE DE TECNOLOGIA DE PINDAMONHANGABA (FATEC PI)', 1, NULL, 162, false);
INSERT INTO public.empresa VALUES (1356, true, '2023-06-12 12:25:44.740341', NULL, 'FACULDADE DE TECNOLOGIA DE PIRACICABA (FATEC PIRACICABA)', 1, NULL, 224, false);
INSERT INTO public.empresa VALUES (1357, true, '2023-06-12 12:25:44.748101', NULL, 'FACULDADE DE TECNOLOGIA DE PIRACICABA (FATEP)', 1, NULL, 224, false);
INSERT INTO public.empresa VALUES (1358, true, '2023-06-12 12:25:44.755974', NULL, 'FACULDADE DE TECNOLOGIA DE POMPEIA - SHUNJI NISHIMURA (FATEC POMPEIA)', 1, NULL, 529, false);
INSERT INTO public.empresa VALUES (1359, true, '2023-06-12 12:25:44.768142', NULL, 'FACULDADE DE TECNOLOGIA DE PONTA PORÃ (FATEP)', 1, NULL, 495, false);
INSERT INTO public.empresa VALUES (1360, true, '2023-06-12 12:25:44.775581', NULL, 'FACULDADE DE TECNOLOGIA DE PRAIA GRANDE (FATECPG)', 1, NULL, 250, false);
INSERT INTO public.empresa VALUES (1361, true, '2023-06-12 12:25:44.782983', NULL, 'FACULDADE DE TECNOLOGIA DE PRESIDENTE PRUDENTE (FATEC)', 1, NULL, 50, false);
INSERT INTO public.empresa VALUES (1362, true, '2023-06-12 12:25:44.790865', NULL, 'FACULDADE DE TECNOLOGIA DE SANTANA DE PARNAÍBA (FATEC-SPB)', 1, NULL, 509, false);
INSERT INTO public.empresa VALUES (1363, true, '2023-06-12 12:25:44.798681', NULL, 'FACULDADE DE TECNOLOGIA DE SÃO BERNARDO DO CAMPO (FATEC-SB)', 1, NULL, 82, false);
INSERT INTO public.empresa VALUES (1364, true, '2023-06-12 12:25:44.806357', NULL, 'FACULDADE DE TECNOLOGIA DE SÃO CAETANO DO SUL (FATEC SCS)', 1, NULL, 126, false);
INSERT INTO public.empresa VALUES (1365, true, '2023-06-12 12:25:44.814188', NULL, 'FACULDADE DE TECNOLOGIA DE SÃO CARLOS (FATEC SÃO CARLO)', 1, NULL, 72, false);
INSERT INTO public.empresa VALUES (1366, true, '2023-06-12 12:25:44.822264', NULL, 'FACULDADE DE TECNOLOGIA DE SÃO JOSÉ DO RIO PRETO (FATECRP)', 1, NULL, 114, false);
INSERT INTO public.empresa VALUES (1367, true, '2023-06-12 12:25:44.829639', NULL, 'FACULDADE DE TECNOLOGIA DE SÃO JOSÉ DOS CAMPOS - JESSEN VIDAL (FATECSJCAMPOS)', 1, NULL, 144, false);
INSERT INTO public.empresa VALUES (1368, true, '2023-06-12 12:25:44.838239', NULL, 'FACULDADE DE TECNOLOGIA DE SÃO PAULO (FATEC-SP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1369, true, '2023-06-12 12:25:44.846675', NULL, 'FACULDADE DE TECNOLOGIA DE SÃO ROQUE (FATEC-SR)', 1, NULL, 191, false);
INSERT INTO public.empresa VALUES (1370, true, '2023-06-12 12:25:44.8546', NULL, 'FACULDADE DE TECNOLOGIA DE SÃO SEBASTIÃO (FATEC SS)', 1, NULL, 530, false);
INSERT INTO public.empresa VALUES (1371, true, '2023-06-12 12:25:44.862045', NULL, 'FACULDADE DE TECNOLOGIA DE SÃO VICENTE (FATEF)', 1, NULL, 513, false);
INSERT INTO public.empresa VALUES (1372, true, '2023-06-12 12:25:44.874785', NULL, 'FACULDADE DE TECNOLOGIA DE SERTÃOZINHO (FATEC SERTÃOZINHO)', 1, NULL, 291, false);
INSERT INTO public.empresa VALUES (1373, true, '2023-06-12 12:25:44.882291', NULL, 'FACULDADE DE TECNOLOGIA DE SINOP (FASTECH)', 1, NULL, 155, false);
INSERT INTO public.empresa VALUES (1374, true, '2023-06-12 12:25:44.890303', NULL, 'FACULDADE DE TECNOLOGIA DE SOROCABA (FATEC SO)', 1, NULL, 146, false);
INSERT INTO public.empresa VALUES (1375, true, '2023-06-12 12:25:44.897586', NULL, 'FACULDADE DE TECNOLOGIA DE SUMARÉ (FATEC DE SUMARÉ)', 1, NULL, 293, false);
INSERT INTO public.empresa VALUES (1376, true, '2023-06-12 12:25:44.90546', NULL, 'FACULDADE DE TECNOLOGIA DE TAQUARITINGA (FATEC/TQ)', 1, NULL, 517, false);
INSERT INTO public.empresa VALUES (1377, true, '2023-06-12 12:25:44.9134', NULL, 'FACULDADE DE TECNOLOGIA DE TATUÍ - PROF. WILSON ROBERTO RIBEIRO DE CAMARGO (FATEC TATUÍ)', 1, NULL, 458, false);
INSERT INTO public.empresa VALUES (1378, true, '2023-06-12 12:25:44.921433', NULL, 'FACULDADE DE TECNOLOGIA DE TAUBATÉ (FATEC TAUBATÉ)', 1, NULL, 33, false);
INSERT INTO public.empresa VALUES (1379, true, '2023-06-12 12:25:44.928925', NULL, 'FACULDADE DE TECNOLOGIA DE TERESINA (FACULDADE CET)', 1, NULL, 27, false);
INSERT INTO public.empresa VALUES (1380, true, '2023-06-12 12:25:44.936169', NULL, 'FACULDADE DE TECNOLOGIA DO AMAPÁ (META)', 1, NULL, 26, false);
INSERT INTO public.empresa VALUES (1381, true, '2023-06-12 12:25:44.943793', NULL, 'FACULDADE DE TECNOLOGIA DO BRASIL (FAT BRASIL)', 1, NULL, 531, false);
INSERT INTO public.empresa VALUES (1382, true, '2023-06-12 12:25:44.951653', NULL, 'FACULDADE DE TECNOLOGIA DO COOPERATIVISMO', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (1383, true, '2023-06-12 12:25:44.958987', NULL, 'FACULDADE DE TECNOLOGIA DO IPIRANGA (FATECIPI)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1384, true, '2023-06-12 12:25:44.966335', NULL, 'FACULDADE DE TECNOLOGIA DOM AMAURY CASTANHO (FATEC ITU)', 1, NULL, 180, false);
INSERT INTO public.empresa VALUES (1385, true, '2023-06-12 12:25:44.974532', NULL, 'FACULDADE DE TECNOLOGIA DO NORDESTE (FATENE)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (1386, true, '2023-06-12 12:25:44.982494', NULL, 'FACULDADE DE TECNOLOGIA DO PIAUÍ (FATEPI)', 1, NULL, 27, false);
INSERT INTO public.empresa VALUES (1387, true, '2023-06-12 12:25:44.989858', NULL, 'FACULDADE DE TECNOLOGIA DO TATUAPÉ (FATEC-TT)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1388, true, '2023-06-12 12:25:44.997281', NULL, 'FACULDADE DE TECNOLOGIA DO VALE DO IVAÍ (FATEC-IVAI)', 1, NULL, 532, false);
INSERT INTO public.empresa VALUES (1389, true, '2023-06-12 12:25:45.004948', NULL, 'FACULDADE DE TECNOLOGIA DR. THOMAZ NOVELINO (FATEC FRANCA)', 1, NULL, 179, false);
INSERT INTO public.empresa VALUES (1390, true, '2023-06-12 12:25:45.01767', NULL, 'FACULDADE DE TECNOLOGIA E ADMINISTRAÇÃO EDUFOR (EDUFOR)', 1, NULL, 141, false);
INSERT INTO public.empresa VALUES (1391, true, '2023-06-12 12:25:45.025064', NULL, 'FACULDADE DE TECNOLOGIA E CIÊNCIAS (FTC JUAZEIRO)', 1, NULL, 533, false);
INSERT INTO public.empresa VALUES (1392, true, '2023-06-12 12:25:45.032488', NULL, 'FACULDADE DE TECNOLOGIA E CIÊNCIAS DA BAHIA (FATEC/BA)', 1, NULL, 213, false);
INSERT INTO public.empresa VALUES (1393, true, '2023-06-12 12:25:45.040427', NULL, 'FACULDADE DE TECNOLOGIA E CIÊNCIAS DE CAMPINA GRANDE (FTC CAMP GRANDE)', 1, NULL, 147, false);
INSERT INTO public.empresa VALUES (1394, true, '2023-06-12 12:25:45.047937', NULL, 'FACULDADE DE TECNOLOGIA E CIÊNCIAS DE ITABUNA (FTC)', 1, NULL, 269, false);
INSERT INTO public.empresa VALUES (1395, true, '2023-06-12 12:25:45.055717', NULL, 'FACULDADE DE TECNOLOGIA E CIÊNCIAS DE JEQUIÉ (FTC)', 1, NULL, 275, false);
INSERT INTO public.empresa VALUES (1396, true, '2023-06-12 12:25:45.06323', NULL, 'FACULDADE DE TECNOLOGIA E CIÊNCIAS DE TERESINA (FTC TERESINA)', 1, NULL, 27, false);
INSERT INTO public.empresa VALUES (1397, true, '2023-06-12 12:25:45.071137', NULL, 'FACULDADE DE TECNOLOGIA E CIÊNCIAS DO ALTO PARANAÍBA (FATAP)', 1, NULL, 125, false);
INSERT INTO public.empresa VALUES (1398, true, '2023-06-12 12:25:45.07859', NULL, 'FACULDADE DE TECNOLOGIA E CIÊNCIAS - FTC CAMAÇARI (FTC CAMAÇARI)', 1, NULL, 153, false);
INSERT INTO public.empresa VALUES (1399, true, '2023-06-12 12:25:45.086434', NULL, 'FACULDADE DE TECNOLOGIA E CIÊNCIAS - FTC CARUARU (FTC - CARUARU)', 1, NULL, 156, false);
INSERT INTO public.empresa VALUES (1400, true, '2023-06-12 12:25:45.093926', NULL, 'FACULDADE DE TECNOLOGIA E CIÊNCIAS - FTC CAUCAIA (FTC CAUCAIA)', 1, NULL, 534, false);
INSERT INTO public.empresa VALUES (1401, true, '2023-06-12 12:25:45.102065', NULL, 'FACULDADE DE TECNOLOGIA E CIÊNCIAS - FTC ITAPIPOCA (FTC ITAPIPOCA)', 1, NULL, 535, false);
INSERT INTO public.empresa VALUES (1402, true, '2023-06-12 12:25:45.109521', NULL, 'FACULDADE DE TECNOLOGIA E CIÊNCIAS - FTC JUAZEIRO DO NORTE (FTC JUAZEIRO CE)', 1, NULL, 135, false);
INSERT INTO public.empresa VALUES (1403, true, '2023-06-12 12:25:45.121371', NULL, 'FACULDADE DE TECNOLOGIA E CIÊNCIAS - FTC N. SRA. DO SOCORRO (FTC N S SOCORRO)', 1, NULL, 536, false);
INSERT INTO public.empresa VALUES (1404, true, '2023-06-12 12:25:45.128854', NULL, 'FACULDADE DE TECNOLOGIA E CIÊNCIAS - FTC PARNAMIRIM (FTC PARNAMIRIM)', 1, NULL, 537, false);
INSERT INTO public.empresa VALUES (1405, true, '2023-06-12 12:25:45.136882', NULL, 'FACULDADE DE TECNOLOGIA E CIÊNCIAS - FTC PETROLINA (FTC PETROLINA)', 1, NULL, 445, false);
INSERT INTO public.empresa VALUES (1406, true, '2023-06-12 12:25:45.14435', NULL, 'FACULDADE DE TECNOLOGIA E CIÊNCIAS - FTC TEIXEIRA DE FREITAS (FTC)', 1, NULL, 295, false);
INSERT INTO public.empresa VALUES (1407, true, '2023-06-12 12:25:45.151818', NULL, 'FACULDADE DE TECNOLOGIA E DESENVOLVIMENTO DE COMPETÊNCIAS (FDC)', 1, NULL, 79, false);
INSERT INTO public.empresa VALUES (1408, true, '2023-06-12 12:25:45.159966', NULL, 'FACULDADE DE TECNOLOGIA, EDUCAÇÃO SUPERIOR E PROFISSIONAL (FATESP)', 1, NULL, 27, false);
INSERT INTO public.empresa VALUES (1409, true, '2023-06-12 12:25:45.168107', NULL, 'FACULDADE DE TECNOLOGIA E EDUCAÇÃO DE GOIÁS (FATEG)', 1, NULL, 538, false);
INSERT INTO public.empresa VALUES (1410, true, '2023-06-12 12:25:45.175548', NULL, 'FACULDADE DE TECNOLOGIA E EDUCAÇÃO SUPERIOR E PROFISSIONALIZ (FATESP)', 1, NULL, 539, false);
INSERT INTO public.empresa VALUES (1411, true, '2023-06-12 12:25:45.182985', NULL, 'FACULDADE DE TECNOLOGIA EGÍDIO JOSÉ DA SILVA (FATEGIDIO)', 1, NULL, 7, false);
INSERT INTO public.empresa VALUES (1412, true, '2023-06-12 12:25:45.191114', NULL, 'FACULDADE DE TECNOLOGIA E INOVAÇÃO SENAC DF', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (1413, true, '2023-06-12 12:25:45.199201', NULL, 'FACULDADE DE TECNOLOGIA EM HOTELARIA, GASTRONOMIA E TURISMO DE SÃO PAULO (HOTEC)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1414, true, '2023-06-12 12:25:45.206781', NULL, 'FACULDADE DE TECNOLOGIA EM SAÚDE (FATESA)', 1, NULL, 58, false);
INSERT INTO public.empresa VALUES (1415, true, '2023-06-12 12:25:45.214408', NULL, 'FACULDADE DE TECNOLOGIA EM SAÚDE CIEPH (FACTES)', 1, NULL, 3, false);
INSERT INTO public.empresa VALUES (1416, true, '2023-06-12 12:25:45.221966', NULL, 'FACULDADE DE TECNOLOGIA EM SAÚDE - IAHCS (FATESA)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (1417, true, '2023-06-12 12:25:45.235609', NULL, 'FACULDADE DE TECNOLOGIA E NEGÓCIOS DE CATALÃO (FATENC)', 1, NULL, 17, false);
INSERT INTO public.empresa VALUES (1418, true, '2023-06-12 12:25:45.243646', NULL, 'FACULDADE DE TECNOLOGIA ESTÁCIO DE CURITIBA (FATEC ESTÁC CURITIBA)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (1419, true, '2023-06-12 12:25:45.251863', NULL, 'FACULDADE DE TECNOLOGIA ESTUDANTE RAFAEL ALMEIDA CAMARINHA - MARILIA (FATEC MARILIA)', 1, NULL, 145, false);
INSERT INTO public.empresa VALUES (1420, true, '2023-06-12 12:25:45.259543', NULL, 'FACULDADE DE TECNOLOGIA FAESA (CET-FAESA)', 1, NULL, 25, false);
INSERT INTO public.empresa VALUES (1421, true, '2023-06-12 12:25:45.267841', NULL, 'FACULDADE DE TECNOLOGIA - FATEC DE RIBEIRÃO PRETO', 1, NULL, 58, false);
INSERT INTO public.empresa VALUES (1422, true, '2023-06-12 12:25:45.275386', NULL, 'FACULDADE DE TECNOLOGIA FRANCISCO MORATO (FFRAMO)', 1, NULL, 540, false);
INSERT INTO public.empresa VALUES (1423, true, '2023-06-12 12:25:45.282903', NULL, 'FACULDADE DE TECNOLOGIA FTEC (FTEC NOVO HAMBURGO)', 1, NULL, 541, false);
INSERT INTO public.empresa VALUES (1424, true, '2023-06-12 12:25:45.29032', NULL, 'FACULDADE DE TECNOLOGIA FTEC DE PORTO ALEGRE (FTEC PORTO ALEGRE)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (1425, true, '2023-06-12 12:25:45.298294', NULL, 'FACULDADE DE TECNOLOGIA FUTURO (FATEC FUTURO)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (1426, true, '2023-06-12 12:25:45.305833', NULL, 'FACULDADE DE TECNOLOGIA GAP (GAP)', 1, NULL, 264, false);
INSERT INTO public.empresa VALUES (1427, true, '2023-06-12 12:25:45.331374', NULL, 'FACULDADE DE TECNOLOGIA IBRATE (FAITEC)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (1428, true, '2023-06-12 12:25:45.338867', NULL, 'FACULDADE DE TECNOLOGIA ÍCONE (FACTI)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (1429, true, '2023-06-12 12:25:45.34687', NULL, 'FACULDADE DE TECNOLOGIA INFORMÁTICA (FATI)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (1430, true, '2023-06-12 12:25:45.354762', NULL, 'FACULDADE DE TECNOLOGIA IPANEMA', 1, NULL, 146, false);
INSERT INTO public.empresa VALUES (1431, true, '2023-06-12 12:25:45.366623', NULL, 'FACULDADE DE TECNOLOGIA IPEP DE CAMPINAS (FATEC CAMPINAS)', 1, NULL, 177, false);
INSERT INTO public.empresa VALUES (1432, true, '2023-06-12 12:25:45.373852', NULL, 'FACULDADE DE TECNOLOGIA IPPEO (IPPEO)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (1433, true, '2023-06-12 12:25:45.381779', NULL, 'FACULDADE DE TECNOLOGIA IPUC (FATIPUC)', 1, NULL, 542, false);
INSERT INTO public.empresa VALUES (1434, true, '2023-06-12 12:25:45.389257', NULL, 'FACULDADE DE TECNOLOGIA JARDIM (FATEJ)', 1, NULL, 47, false);
INSERT INTO public.empresa VALUES (1435, true, '2023-06-12 12:25:45.396721', NULL, 'FACULDADE DE TECNOLOGIA JORGE CARAM SABBAG (FATEC BEBEDOURO)', 1, NULL, 208, false);
INSERT INTO public.empresa VALUES (1436, true, '2023-06-12 12:25:45.404121', NULL, 'FACULDADE DE TECNOLOGIA LA SALLE - ESTRELA (FACSALLE)', 1, NULL, 543, false);
INSERT INTO public.empresa VALUES (1437, true, '2023-06-12 12:25:45.412025', NULL, 'FACULDADE DE TECNOLOGIA NILO DE STÉFANI - JABOTICABAL (FATEC JBL)', 1, NULL, 315, false);
INSERT INTO public.empresa VALUES (1438, true, '2023-06-12 12:25:45.419441', NULL, 'FACULDADE DE TECNOLOGIA NOVA PALHOÇA (FATENP)', 1, NULL, 544, false);
INSERT INTO public.empresa VALUES (1439, true, '2023-06-12 12:25:45.426944', NULL, 'FACULDADE DE TECNOLOGIA OSWALDO CRUZ (FATEC OSWALDO CRUZ)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1440, true, '2023-06-12 12:25:45.434408', NULL, 'FACULDADE DE TECNOLOGIA PAULISTA', 1, NULL, 545, false);
INSERT INTO public.empresa VALUES (1441, true, '2023-06-12 12:25:45.442242', NULL, 'FACULDADE DE TECNOLOGIA PENTÁGONO (FATEP)', 1, NULL, 47, false);
INSERT INTO public.empresa VALUES (1442, true, '2023-06-12 12:25:45.452922', NULL, 'FACULDADE DE TECNOLOGIA PORTO DAS MONÇÕES (FAMO)', 1, NULL, 496, false);
INSERT INTO public.empresa VALUES (1443, true, '2023-06-12 12:25:45.460629', NULL, 'FACULDADE DE TECNOLOGIA PORTO SUL (FAPS)', 1, NULL, 250, false);
INSERT INTO public.empresa VALUES (1444, true, '2023-06-12 12:25:45.468266', NULL, 'FACULDADE DE TECNOLOGIA PROFESSOR ANTÔNIO SEABRA (FATEC LINS)', 1, NULL, 70, false);
INSERT INTO public.empresa VALUES (1445, true, '2023-06-12 12:25:45.476032', NULL, 'FACULDADE DE TECNOLOGIA RUBENS LARA (FATEC-BS)', 1, NULL, 171, false);
INSERT INTO public.empresa VALUES (1446, true, '2023-06-12 12:25:45.488015', NULL, 'FACULDADE DE TECNOLOGIA SAINT PAUL', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1447, true, '2023-06-12 12:25:45.495685', NULL, 'FACULDADE DE TECNOLOGIA SANTO ANDRÉ (FATEC-SA)', 1, NULL, 47, false);
INSERT INTO public.empresa VALUES (1448, true, '2023-06-12 12:25:45.503696', NULL, 'FACULDADE DE TECNOLOGIA SEBRAE (FATEC SEBRAE)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1449, true, '2023-06-12 12:25:45.511287', NULL, 'FACULDADE DE TECNOLOGIA SENAC AMAZONAS', 1, NULL, 75, false);
INSERT INTO public.empresa VALUES (1450, true, '2023-06-12 12:25:45.518551', NULL, 'FACULDADE DE TECNOLOGIA SENAC CASCAVEL', 1, NULL, 54, false);
INSERT INTO public.empresa VALUES (1451, true, '2023-06-12 12:25:45.526703', NULL, 'FACULDADE DE TECNOLOGIA SENAC CURITIBA', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (1452, true, '2023-06-12 12:25:45.534533', NULL, 'FACULDADE DE TECNOLOGIA SENAC CURITIBA PORTÃO', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (1453, true, '2023-06-12 12:25:45.541946', NULL, 'FACULDADE DE TECNOLOGIA SENAC MARINGÁ', 1, NULL, 76, false);
INSERT INTO public.empresa VALUES (1454, true, '2023-06-12 12:25:45.549322', NULL, 'FACULDADE DE TECNOLOGIA SENAC MINAS - UNIDADE BARBACENA', 1, NULL, 32, false);
INSERT INTO public.empresa VALUES (1455, true, '2023-06-12 12:25:45.556537', NULL, 'FACULDADE DE TECNOLOGIA SENAC MINAS - UNIDADE BELO HORIZONTE (FTS)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (1456, true, '2023-06-12 12:25:45.564453', NULL, 'FACULDADE DE TECNOLOGIA SENAC PELOTAS (FATEC SENAC PELOTAS)', 1, NULL, 283, false);
INSERT INTO public.empresa VALUES (1457, true, '2023-06-12 12:25:45.571789', NULL, 'FACULDADE DE TECNOLOGIA SENAC PONTA GROSSA', 1, NULL, 188, false);
INSERT INTO public.empresa VALUES (1458, true, '2023-06-12 12:25:45.579169', NULL, 'FACULDADE DE TECNOLOGIA SENAC RIO (FATEC)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (1459, true, '2023-06-12 12:25:45.586536', NULL, 'FACULDADE DE TECNOLOGIA SENAI ANTÔNIO ADOLPHO LOBBE', 1, NULL, 72, false);
INSERT INTO public.empresa VALUES (1460, true, '2023-06-12 12:25:45.595773', NULL, 'FACULDADE DE TECNOLOGIA SENAI CAMPO GRANDE', 1, NULL, 48, false);
INSERT INTO public.empresa VALUES (1461, true, '2023-06-12 12:25:45.625804', NULL, 'FACULDADE DE TECNOLOGIA SENAI CHAPECÓ (SENAI)', 1, NULL, 406, false);
INSERT INTO public.empresa VALUES (1462, true, '2023-06-12 12:25:45.633486', NULL, 'FACULDADE DE TECNOLOGIA SENAI CIC', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (1463, true, '2023-06-12 12:25:45.640806', NULL, 'FACULDADE DE TECNOLOGIA SENAI CURITIBA', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (1464, true, '2023-06-12 12:25:45.648637', NULL, 'FACULDADE DE TECNOLOGIA SENAI DE DESENVOLVIMENTO GERENCIAL (FATESG)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (1465, true, '2023-06-12 12:25:45.656148', NULL, 'FACULDADE DE TECNOLOGIA SENAI DOURADOS (FATEC DOURADOS)', 1, NULL, 84, false);
INSERT INTO public.empresa VALUES (1466, true, '2023-06-12 12:25:45.663683', NULL, 'FACULDADE DE TECNOLOGIA SENAI FELIX GUISARD', 1, NULL, 33, false);
INSERT INTO public.empresa VALUES (1467, true, '2023-06-12 12:25:45.671205', NULL, 'FACULDADE DE TECNOLOGIA SENAI FLORIANÓPOLIS (SENAI -SC - CTAI)', 1, NULL, 3, false);
INSERT INTO public.empresa VALUES (1468, true, '2023-06-12 12:25:45.679319', NULL, 'FACULDADE DE TECNOLOGIA SENAI GASPAR RICARDO JUNIOR', 1, NULL, 146, false);
INSERT INTO public.empresa VALUES (1469, true, '2023-06-12 12:25:45.686794', NULL, 'FACULDADE DE TECNOLOGIA SENAI ÍTALO BOLOGNA (FATECIB)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (1470, true, '2023-06-12 12:25:45.694096', NULL, 'FACULDADE DE TECNOLOGIA SENAI JARAGUÁ DO SUL (FATEC)', 1, NULL, 31, false);
INSERT INTO public.empresa VALUES (1471, true, '2023-06-12 12:25:45.7016', NULL, 'FACULDADE DE TECNOLOGIA SENAI JOINVILLE (SENAI DE JOINVILLE)', 1, NULL, 68, false);
INSERT INTO public.empresa VALUES (1472, true, '2023-06-12 12:25:45.709749', NULL, 'FACULDADE DE TECNOLOGIA SENAI LONDRINA', 1, NULL, 159, false);
INSERT INTO public.empresa VALUES (1473, true, '2023-06-12 12:25:45.717225', NULL, 'FACULDADE DE TECNOLOGIA SENAI MARIO AMATO (SENAI)', 1, NULL, 82, false);
INSERT INTO public.empresa VALUES (1474, true, '2023-06-12 12:25:45.728758', NULL, 'FACULDADE DE TECNOLOGIA SENAI MATO GROSSO (FATEC SENAI MT)', 1, NULL, 203, false);
INSERT INTO public.empresa VALUES (1475, true, '2023-06-12 12:25:45.736695', NULL, 'FACULDADE DE TECNOLOGIA SENAI NADIR DIAS DE FIGUEIREDO', 1, NULL, 158, false);
INSERT INTO public.empresa VALUES (1476, true, '2023-06-12 12:25:45.744855', NULL, 'FACULDADE DE TECNOLOGIA SENAI PERNAMBUCO', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (1477, true, '2023-06-12 12:25:45.752448', NULL, 'FACULDADE DE TECNOLOGIA SENAI PORTO ALEGRE (FATEC SENAI)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (1478, true, '2023-06-12 12:25:45.761543', NULL, 'FACULDADE DE TECNOLOGIA SENAI ROBERTO MANGE', 1, NULL, 177, false);
INSERT INTO public.empresa VALUES (1479, true, '2023-06-12 12:25:45.768959', NULL, 'FACULDADE DE TECNOLOGIA SENAI ROBERTO MANGE (FATEC SENAI RM)', 1, NULL, 264, false);
INSERT INTO public.empresa VALUES (1480, true, '2023-06-12 12:25:45.776884', NULL, 'FACULDADE DE TECNOLOGIA TUPY DE SÃO BENTO DO SUL (FTT-SBS)', 1, NULL, 546, false);
INSERT INTO public.empresa VALUES (1481, true, '2023-06-12 12:25:45.784951', NULL, 'FACULDADE DE TECNOLOGIA ZONA LESTE (FATEC-ZL)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1482, true, '2023-06-12 12:25:45.792355', NULL, 'FACULDADE DE TECONOLOGIA DA ZONA SUL (FATEC ZONASUL)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1483, true, '2023-06-12 12:25:45.799726', NULL, 'FACULDADE DE TEODORO SAMPAIO (FTS)', 1, NULL, 547, false);
INSERT INTO public.empresa VALUES (1484, true, '2023-06-12 12:25:45.807678', NULL, 'FACULDADE DE TEOLOGIA DA ARQUIDIOCESE DE BRASÍLIA (FATEO)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (1485, true, '2023-06-12 12:25:45.815146', NULL, 'FACULDADE DE TEOLOGIA DE SÃO PAULO DA IGREJA PRESBITERIANA INDEPENDENTE DO BRASIL', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1486, true, '2023-06-12 12:25:45.822481', NULL, 'FACULDADE DE TEOLOGIA E CIÊNCIAS HUMANAS (FATECH)', 1, NULL, 26, false);
INSERT INTO public.empresa VALUES (1487, true, '2023-06-12 12:25:45.830296', NULL, 'FACULDADE DE TEOLOGIA E CIÊNCIAS HUMANAS (ITEPAFACULDADES)', 1, NULL, 282, false);
INSERT INTO public.empresa VALUES (1488, true, '2023-06-12 12:25:45.8427', NULL, 'FACULDADE DE TEOLOGIA EVANGÉLICA EM CURITIBA - FATEV (FATEV)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (1489, true, '2023-06-12 12:25:45.850212', NULL, 'FACULDADE DE TEOLOGIA, FILOSOFIA E CIÊNCIAS HUMANAS GAMALIEL (FATEFIG)', 1, NULL, 418, false);
INSERT INTO public.empresa VALUES (1490, true, '2023-06-12 12:25:45.857712', NULL, 'FACULDADE DE TEOLOGIA FORTALEZA - FATEFOR (FATEFOR)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (1491, true, '2023-06-12 12:25:45.86524', NULL, 'FACULDADE DE TEOLOGIA INTEGRADA (FATIN)', 1, NULL, 413, false);
INSERT INTO public.empresa VALUES (1492, true, '2023-06-12 12:25:45.873181', NULL, 'FACULDADE DE TIETÊ', 1, NULL, 548, false);
INSERT INTO public.empresa VALUES (1493, true, '2023-06-12 12:25:45.880501', NULL, 'FACULDADE DE TUPÃ', 1, NULL, 354, false);
INSERT INTO public.empresa VALUES (1494, true, '2023-06-12 12:25:45.888113', NULL, 'FACULDADE DE VIÇOSA (FDV)', 1, NULL, 122, false);
INSERT INTO public.empresa VALUES (1495, true, '2023-06-12 12:25:45.895474', NULL, 'FACULDADE DE VITÓRIA', 1, NULL, 25, false);
INSERT INTO public.empresa VALUES (1496, true, '2023-06-12 12:25:45.903374', NULL, 'FACULDADE DIADEMA (FAD)', 1, NULL, 522, false);
INSERT INTO public.empresa VALUES (1497, true, '2023-06-12 12:25:45.910614', NULL, 'FACULDADE DINÂMICA (FACDIN)', 1, NULL, 549, false);
INSERT INTO public.empresa VALUES (1498, true, '2023-06-12 12:25:45.917909', NULL, 'FACULDADE DINÂMICA DO VALE DO PIRANGA (FADIP)', 1, NULL, 550, false);
INSERT INTO public.empresa VALUES (1499, true, '2023-06-12 12:25:45.925194', NULL, 'FACULDADE DIOCESANA SÃO JOSÉ (FADISI)', 1, NULL, 143, false);
INSERT INTO public.empresa VALUES (1500, true, '2023-06-12 12:25:45.933446', NULL, 'FACULDADE DO AMAZONAS (IAES)', 1, NULL, 75, false);
INSERT INTO public.empresa VALUES (1501, true, '2023-06-12 12:25:45.940875', NULL, 'FACULDADE DO AMAZONAS DE ENSINO, PESQUISA E INOVAÇÃO (FAMEPI)', 1, NULL, 75, false);
INSERT INTO public.empresa VALUES (1502, true, '2023-06-12 12:25:45.952786', NULL, 'FACULDADE DO BAIXO PARNAÍBA (FAP)', 1, NULL, 551, false);
INSERT INTO public.empresa VALUES (1503, true, '2023-06-12 12:25:45.960671', NULL, 'FACULDADE DO BELO JARDIM (FBJ)', 1, NULL, 395, false);
INSERT INTO public.empresa VALUES (1504, true, '2023-06-12 12:25:45.967944', NULL, 'FACULDADE DO CARIRI PARAIBANO (UNICIR)', 1, NULL, 552, false);
INSERT INTO public.empresa VALUES (1505, true, '2023-06-12 12:25:45.975144', NULL, 'FACULDADE DO CEFI (FACEFI)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (1506, true, '2023-06-12 12:25:45.982534', NULL, 'FACULDADE DO CENTRO EDUCACIONAL MINEIRO - FACEM (FACEM-BH)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (1507, true, '2023-06-12 12:25:45.990577', NULL, 'FACULDADE DO CENTRO EDUCACIONAL SANTA ISABEL (FACESI)', 1, NULL, 553, false);
INSERT INTO public.empresa VALUES (1508, true, '2023-06-12 12:25:45.997951', NULL, 'FACULDADE DO CENTRO LESTE (UCL)', 1, NULL, 290, false);
INSERT INTO public.empresa VALUES (1509, true, '2023-06-12 12:25:46.005267', NULL, 'FACULDADE DO CENTRO MARANHENSE (FCMA)', 1, NULL, 554, false);
INSERT INTO public.empresa VALUES (1510, true, '2023-06-12 12:25:46.012895', NULL, 'FACULDADE DO CENTRO OESTE PAULISTA (FACOP)', 1, NULL, 555, false);
INSERT INTO public.empresa VALUES (1511, true, '2023-06-12 12:25:46.020783', NULL, 'FACULDADE DOCKTOR (FADOCKTOR)', 1, NULL, 154, false);
INSERT INTO public.empresa VALUES (1512, true, '2023-06-12 12:25:46.028109', NULL, 'FACULDADE DO CLUBE NÁUTICO MOGIANO (FCNM)', 1, NULL, 62, false);
INSERT INTO public.empresa VALUES (1513, true, '2023-06-12 12:25:46.035978', NULL, 'FACULDADE DO COMÉRCIO DE SÃO PAULO (FAC-SP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1514, true, '2023-06-12 12:25:46.043288', NULL, 'FACULDADE DO COMPLEXO EDUCACIONAL SANTO ANDRÉ (FACESA)', 1, NULL, 556, false);
INSERT INTO public.empresa VALUES (1515, true, '2023-06-12 12:25:46.05563', NULL, 'FACULDADE DOCTUM DA ZONA NORTE DE JUIZ DE FORA (DOCTUM)', 1, NULL, 38, false);
INSERT INTO public.empresa VALUES (1516, true, '2023-06-12 12:25:46.063022', NULL, 'FACULDADE DOCTUM DE ALMENARA (DOCTUM)', 1, NULL, 252, false);
INSERT INTO public.empresa VALUES (1517, true, '2023-06-12 12:25:46.070454', NULL, 'FACULDADE DOCTUM DE CARANGOLA (DOCTUM)', 1, NULL, 557, false);
INSERT INTO public.empresa VALUES (1518, true, '2023-06-12 12:25:46.077898', NULL, 'FACULDADE DOCTUM DE JOÃO MONLEVADE (DOCTUM)', 1, NULL, 558, false);
INSERT INTO public.empresa VALUES (1519, true, '2023-06-12 12:25:46.085863', NULL, 'FACULDADE DOCTUM DE JUIZ DE FORA (DOCTUM)', 1, NULL, 38, false);
INSERT INTO public.empresa VALUES (1520, true, '2023-06-12 12:25:46.093424', NULL, 'FACULDADE DOCTUM DE MANHUAÇU - DOCTUM (FCM)', 1, NULL, 207, false);
INSERT INTO public.empresa VALUES (1521, true, '2023-06-12 12:25:46.100682', NULL, 'FACULDADE DOCTUM DE SERRA (DOCTUM)', 1, NULL, 290, false);
INSERT INTO public.empresa VALUES (1522, true, '2023-06-12 12:25:46.107929', NULL, 'FACULDADE DOCTUM DE SETE LAGOAS (DOCTUM)', 1, NULL, 24, false);
INSERT INTO public.empresa VALUES (1523, true, '2023-06-12 12:25:46.115824', NULL, 'FACULDADE DOCTUM DE VILA VELHA (DOCTUM)', 1, NULL, 226, false);
INSERT INTO public.empresa VALUES (1524, true, '2023-06-12 12:25:46.123071', NULL, 'FACULDADE DOCTUM DE VITÓRIA (DOCTUM)', 1, NULL, 25, false);
INSERT INTO public.empresa VALUES (1525, true, '2023-06-12 12:25:46.130532', NULL, 'FACULDADE DO EDUCADOR (FEDUC)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1526, true, '2023-06-12 12:25:46.138184', NULL, 'FACULDADE DO ESTADO DE SÃO PAULO (ESP)', 1, NULL, 197, false);
INSERT INTO public.empresa VALUES (1527, true, '2023-06-12 12:25:46.145986', NULL, 'FACULDADE DO ESTADO DO MARANHÃO (FACEM)', 1, NULL, 141, false);
INSERT INTO public.empresa VALUES (1528, true, '2023-06-12 12:25:46.158016', NULL, 'FACULDADE DO ESTADO DO RIO DE JANEIRO (FAERJ)', 1, NULL, 160, false);
INSERT INTO public.empresa VALUES (1529, true, '2023-06-12 12:25:46.165428', NULL, 'FACULDADE DO FUTURO (FAF)', 1, NULL, 207, false);
INSERT INTO public.empresa VALUES (1530, true, '2023-06-12 12:25:46.172648', NULL, 'FACULDADE DO GUARUJÁ (FAGU)', 1, NULL, 127, false);
INSERT INTO public.empresa VALUES (1531, true, '2023-06-12 12:25:46.180959', NULL, 'FACULDADE DO INSTITUTO BRASIL (FIBRA)', 1, NULL, 264, false);
INSERT INTO public.empresa VALUES (1532, true, '2023-06-12 12:25:46.188571', NULL, 'FACULDADE DO INSTITUTO NACIONAL DE PÓS-GRADUAÇÃO DE SÃO JOSÉ DOS CAMPOS (FACULDADE INPG - SJC)', 1, NULL, 144, false);
INSERT INTO public.empresa VALUES (1533, true, '2023-06-12 12:25:46.196039', NULL, 'FACULDADE DO INSTITUTO PANAMERICANO (FACIPAN)', 1, NULL, 203, false);
INSERT INTO public.empresa VALUES (1534, true, '2023-06-12 12:25:46.203431', NULL, 'FACULDADE DOIS DE JULHO (F2J)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (1535, true, '2023-06-12 12:25:46.211294', NULL, 'FACULDADE DO LITORAL PARANAENSE (FLP)', 1, NULL, 559, false);
INSERT INTO public.empresa VALUES (1536, true, '2023-06-12 12:25:46.218695', NULL, 'FACULDADE DO LITORAL SUL PAULISTA (FALS)', 1, NULL, 250, false);
INSERT INTO public.empresa VALUES (1537, true, '2023-06-12 12:25:46.225943', NULL, 'FACULDADE DO MACIÇO DO BATURITÉ (FMB)', 1, NULL, 560, false);
INSERT INTO public.empresa VALUES (1538, true, '2023-06-12 12:25:46.233287', NULL, 'FACULDADE DOM ADELIO TOMASIN (FADAT)', 1, NULL, 67, false);
INSERT INTO public.empresa VALUES (1539, true, '2023-06-12 12:25:46.241163', NULL, 'FACULDADE DOM ALBERTO (FDA)', 1, NULL, 561, false);
INSERT INTO public.empresa VALUES (1540, true, '2023-06-12 12:25:46.253381', NULL, 'FACULDADE DO MARANHÃO (FACAM-MA)', 1, NULL, 141, false);
INSERT INTO public.empresa VALUES (1541, true, '2023-06-12 12:25:46.260763', NULL, 'FACULDADE DOM BOSCO (DOM BOSCO)', 1, NULL, 54, false);
INSERT INTO public.empresa VALUES (1542, true, '2023-06-12 12:25:46.268123', NULL, 'FACULDADE DOM BOSCO DE CAPITÃO LEÔNIDAS MARQUES', 1, NULL, 562, false);
INSERT INTO public.empresa VALUES (1543, true, '2023-06-12 12:25:46.275989', NULL, 'FACULDADE DOM BOSCO DE GOIOERÊ (DOM BOSCO GOIOERÊ)', 1, NULL, 563, false);
INSERT INTO public.empresa VALUES (1544, true, '2023-06-12 12:25:46.283334', NULL, 'FACULDADE DOM BOSCO DE MARINGA (DOM BOSCO)', 1, NULL, 76, false);
INSERT INTO public.empresa VALUES (1545, true, '2023-06-12 12:25:46.29119', NULL, 'FACULDADE DOM BOSCO DE PORTO ALEGRE (FDB)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (1546, true, '2023-06-12 12:25:46.298478', NULL, 'FACULDADE DOM BOSCO DE UBIRATÃ (DOM BOSCO UBIRATÃ)', 1, NULL, 564, false);
INSERT INTO public.empresa VALUES (1547, true, '2023-06-12 12:25:46.306271', NULL, 'FACULDADE DOM BOSCO PARANÁ (DOM BOSCO PARANÁ)', 1, NULL, 159, false);
INSERT INTO public.empresa VALUES (1548, true, '2023-06-12 12:25:46.313745', NULL, 'FACULDADE DOMINIUS (FAD)', 1, NULL, 157, false);
INSERT INTO public.empresa VALUES (1549, true, '2023-06-12 12:25:46.321048', NULL, 'FACULDADE DOM LUCIANO MENDES (FDLM)', 1, NULL, 238, false);
INSERT INTO public.empresa VALUES (1550, true, '2023-06-12 12:25:46.328569', NULL, 'FACULDADE DOM LUIS DE ORLEANS E BRAGANÇA (FDL)', 1, NULL, 565, false);
INSERT INTO public.empresa VALUES (1551, true, '2023-06-12 12:25:46.336392', NULL, 'FACULDADE DOM PEDRO II DE SERGIPE (DP II SERGIPE)', 1, NULL, 566, false);
INSERT INTO public.empresa VALUES (1552, true, '2023-06-12 12:25:46.343798', NULL, 'FACULDADE DOM PEDRO II DE TECNOLOGIA (FDP II TEC)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (1553, true, '2023-06-12 12:25:46.351191', NULL, 'FACULDADE DOM RICARDO (FDR)', 1, NULL, 100, false);
INSERT INTO public.empresa VALUES (1554, true, '2023-06-12 12:25:46.362683', NULL, 'FACULDADE DOMUS SAPIENS (FDS)', 1, NULL, 533, false);
INSERT INTO public.empresa VALUES (1555, true, '2023-06-12 12:25:46.369997', NULL, 'FACULDADE DO NORDESTE DA BAHIA (FANEB)', 1, NULL, 567, false);
INSERT INTO public.empresa VALUES (1556, true, '2023-06-12 12:25:46.377357', NULL, 'FACULDADE DO NOROESTE DE MINAS (FINOM)', 1, NULL, 55, false);
INSERT INTO public.empresa VALUES (1557, true, '2023-06-12 12:25:46.384744', NULL, 'FACULDADE DO NORTE DE MATO GROSSO (AJES)', 1, NULL, 467, false);
INSERT INTO public.empresa VALUES (1558, true, '2023-06-12 12:25:46.392897', NULL, 'FACULDADE DO NORTE NOVO DE APUCARANA (FACNOPAR)', 1, NULL, 377, false);
INSERT INTO public.empresa VALUES (1559, true, '2023-06-12 12:25:46.400287', NULL, 'FACULDADE DO OESTE POTIGUAR (FAOP)', 1, NULL, 568, false);
INSERT INTO public.empresa VALUES (1560, true, '2023-06-12 12:25:46.407609', NULL, 'FACULDADE DO PLANALTO CENTRAL (FAPLAC)', 1, NULL, 539, false);
INSERT INTO public.empresa VALUES (1561, true, '2023-06-12 12:25:46.415093', NULL, 'FACULDADE DO RECIFE (FAREC)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (1562, true, '2023-06-12 12:25:46.422876', NULL, 'FACULDADE DO RIO DE JANEIRO', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (1563, true, '2023-06-12 12:25:46.430281', NULL, 'FACULDADE DOS CARAJÁS', 1, NULL, 46, false);
INSERT INTO public.empresa VALUES (1564, true, '2023-06-12 12:25:46.437818', NULL, 'FACULDADE DOS CERRADOS PIAUIENSES (FCP)', 1, NULL, 569, false);
INSERT INTO public.empresa VALUES (1565, true, '2023-06-12 12:25:46.44512', NULL, 'FACULDADE DO SERIDÓ (FAS)', 1, NULL, 570, false);
INSERT INTO public.empresa VALUES (1566, true, '2023-06-12 12:25:46.453021', NULL, 'FACULDADE DO SERTÃO BAIANO (FASBE)', 1, NULL, 571, false);
INSERT INTO public.empresa VALUES (1567, true, '2023-06-12 12:25:46.460397', NULL, 'FACULDADE DO SERTÃO CENTRAL (FASEC)', 1, NULL, 572, false);
INSERT INTO public.empresa VALUES (1568, true, '2023-06-12 12:25:46.471233', NULL, 'FACULDADE DO SERTÃO CENTRAL EAD (FASEC EAD)', 1, NULL, 572, false);
INSERT INTO public.empresa VALUES (1569, true, '2023-06-12 12:25:46.478606', NULL, 'FACULDADE DO SERTÃO DO ARARIPE (FASA)', 1, NULL, 573, false);
INSERT INTO public.empresa VALUES (1570, true, '2023-06-12 12:25:46.486536', NULL, 'FACULDADE DO SERTÃO DO PAJEÚ (FASP)', 1, NULL, 574, false);
INSERT INTO public.empresa VALUES (1571, true, '2023-06-12 12:25:46.493933', NULL, 'FACULDADE DO SERTÃO DO SÃO FRANCISCO (FASF)', 1, NULL, 575, false);
INSERT INTO public.empresa VALUES (1572, true, '2023-06-12 12:25:46.501275', NULL, 'FACULDADE DOS GÊNIOS (FAGENIUS)', 1, NULL, 268, false);
INSERT INTO public.empresa VALUES (1573, true, '2023-06-12 12:25:46.50868', NULL, 'FACULDADE DOS PALMARES (FAP)', 1, NULL, 428, false);
INSERT INTO public.empresa VALUES (1574, true, '2023-06-12 12:25:46.516696', NULL, 'FACULDADE DO SUDESTE GOIANO (FASUG)', 1, NULL, 576, false);
INSERT INTO public.empresa VALUES (1575, true, '2023-06-12 12:25:46.52402', NULL, 'FACULDADE DO SUL DA BAHIA (FASB)', 1, NULL, 295, false);
INSERT INTO public.empresa VALUES (1576, true, '2023-06-12 12:25:46.531579', NULL, 'FACULDADE DO TAPAJÓS (FAT)', 1, NULL, 475, false);
INSERT INTO public.empresa VALUES (1577, true, '2023-06-12 12:25:46.539577', NULL, 'FACULDADE DO TRABALHO (FATRA)', 1, NULL, 134, false);
INSERT INTO public.empresa VALUES (1578, true, '2023-06-12 12:25:46.547774', NULL, 'FACULDADE DOURADO (FD)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1579, true, '2023-06-12 12:25:46.555032', NULL, 'FACULDADE DOUTOR FRANCISCO MAEDA (FAFRAM)', 1, NULL, 462, false);
INSERT INTO public.empresa VALUES (1580, true, '2023-06-12 12:25:46.566939', NULL, 'FACULDADE DO VALE (FAV)', 1, NULL, 452, false);
INSERT INTO public.empresa VALUES (1581, true, '2023-06-12 12:25:46.574315', NULL, 'FACULDADE DO VALE DO CAJU (FVC)', 1, NULL, 451, false);
INSERT INTO public.empresa VALUES (1582, true, '2023-06-12 12:25:46.582234', NULL, 'FACULDADE DO VALE DO ITAPECURÚ (FAI)', 1, NULL, 97, false);
INSERT INTO public.empresa VALUES (1583, true, '2023-06-12 12:25:46.589577', NULL, 'FACULDADE DO VALE DO JAGUARIBE MOSSORÓ (FVJ MOSSORÓ)', 1, NULL, 323, false);
INSERT INTO public.empresa VALUES (1584, true, '2023-06-12 12:25:46.597056', NULL, 'FACULDADE DO VALE DO RIO ARINOS (AJES)', 1, NULL, 577, false);
INSERT INTO public.empresa VALUES (1585, true, '2023-06-12 12:25:46.604524', NULL, 'FACULDADE DO VALE ELVIRA DAYRELL - FAVED (FAVED)', 1, NULL, 578, false);
INSERT INTO public.empresa VALUES (1586, true, '2023-06-12 12:25:46.612424', NULL, 'FACULDADE DUARTE COELHO (FDC)', 1, NULL, 579, false);
INSERT INTO public.empresa VALUES (1587, true, '2023-06-12 12:25:46.619821', NULL, 'FACULDADE DYNAMUS DE CAMPINAS (FADYC)', 1, NULL, 177, false);
INSERT INTO public.empresa VALUES (1588, true, '2023-06-12 12:25:46.627208', NULL, 'FACULDADE EASE BRASIL (EASE)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (1589, true, '2023-06-12 12:25:46.634563', NULL, 'FACULDADE EDUCABRASIL NOEL DE MELLO', 1, NULL, 580, false);
INSERT INTO public.empresa VALUES (1590, true, '2023-06-12 12:25:46.64268', NULL, 'FACULDADE EDUCACIONAL ARAUCÁRIA (FACEAR)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (1591, true, '2023-06-12 12:25:46.650059', NULL, 'FACULDADE EDUCACIONAL DE COLOMBO (FAEC)', 1, NULL, 582, false);
INSERT INTO public.empresa VALUES (1592, true, '2023-06-12 12:25:46.657458', NULL, 'FACULDADE EDUCACIONAL DE MEDIANEIRA (UDC MEDIANEIRA)', 1, NULL, 583, false);
INSERT INTO public.empresa VALUES (1593, true, '2023-06-12 12:25:46.664769', NULL, 'FACULDADE EDUCACIONAL JURÍDICA E GERENCIAL DE OLIVEIRA (FEJUGO)', 1, NULL, 584, false);
INSERT INTO public.empresa VALUES (1594, true, '2023-06-12 12:25:46.676361', NULL, 'FACULDADE EDUCAMAIS (EDUCA+)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1595, true, '2023-06-12 12:25:46.683643', NULL, 'FACULDADE EDUCAREMT (EDUCARE)', 1, NULL, 203, false);
INSERT INTO public.empresa VALUES (1596, true, '2023-06-12 12:25:46.691234', NULL, 'FACULDADE EDUFOR (EDUFOR)', 1, NULL, 141, false);
INSERT INTO public.empresa VALUES (1597, true, '2023-06-12 12:25:46.698637', NULL, 'FACULDADE EDUFOR DE SALVADOR (EDUFOR)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (1598, true, '2023-06-12 12:25:46.706562', NULL, 'FACULDADE EDUVALE DE AVARÉ (EDUVALE)', 1, NULL, 195, false);
INSERT INTO public.empresa VALUES (1599, true, '2023-06-12 12:25:46.714142', NULL, 'FACULDADE EFICAZ (EFICAZ)', 1, NULL, 76, false);
INSERT INTO public.empresa VALUES (1600, true, '2023-06-12 12:25:46.721552', NULL, 'FACULDADE EGAS MONIZ (FEM)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (1601, true, '2023-06-12 12:25:46.728849', NULL, 'FACULDADE EINSTEIN', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (1602, true, '2023-06-12 12:25:46.736765', NULL, 'FACULDADE ELO (FAELO)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (1603, true, '2023-06-12 12:25:46.744065', NULL, 'FACULDADE EMBU DAS ARTES (FAEM)', 1, NULL, 585, false);
INSERT INTO public.empresa VALUES (1604, true, '2023-06-12 12:25:46.751422', NULL, 'FACULDADE EMPRESARIAL DE CHAPECÓ (FAEM)', 1, NULL, 406, false);
INSERT INTO public.empresa VALUES (1605, true, '2023-06-12 12:25:46.758709', NULL, 'FACULDADE ENAU (FACENAU)', 1, NULL, 502, false);
INSERT INTO public.empresa VALUES (1606, true, '2023-06-12 12:25:46.766602', NULL, 'FACULDADE ENDEX (ENDEX)', 1, NULL, 230, false);
INSERT INTO public.empresa VALUES (1607, true, '2023-06-12 12:25:46.7786', NULL, 'FACULDADE ENERGIA', 1, NULL, 3, false);
INSERT INTO public.empresa VALUES (1608, true, '2023-06-12 12:25:46.786108', NULL, 'FACULDADE ENGENHEIRO SALVADOR ARENA (FESA)', 1, NULL, 82, false);
INSERT INTO public.empresa VALUES (1609, true, '2023-06-12 12:25:46.794467', NULL, 'FACULDADE ENSIN.E (ENSIN.E)', 1, NULL, 38, false);
INSERT INTO public.empresa VALUES (1610, true, '2023-06-12 12:25:46.801777', NULL, 'FACULDADE ERICH FROMM (FACEF)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (1611, true, '2023-06-12 12:25:46.808994', NULL, 'FACULDADE ESAMC CAMPINAS (ESAMC)', 1, NULL, 177, false);
INSERT INTO public.empresa VALUES (1612, true, '2023-06-12 12:25:46.816277', NULL, 'FACULDADE ESAMC FRANCA (ESAMC FRANCA)', 1, NULL, 179, false);
INSERT INTO public.empresa VALUES (1613, true, '2023-06-12 12:25:46.824074', NULL, 'FACULDADE ESAMC GOIÂNIA (ESAMC GOIÂNIA)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (1614, true, '2023-06-12 12:25:46.831347', NULL, 'FACULDADE ESAMC JUNDIAÍ (ESAMC)', 1, NULL, 182, false);
INSERT INTO public.empresa VALUES (1615, true, '2023-06-12 12:25:46.838645', NULL, 'FACULDADE ESAMC SANTOS (ESAMC)', 1, NULL, 171, false);
INSERT INTO public.empresa VALUES (1616, true, '2023-06-12 12:25:46.845968', NULL, 'FACULDADE ESAMC SÃO PAULO - ESAMC (ESAMC)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1617, true, '2023-06-12 12:25:46.853729', NULL, 'FACULDADE ESAMC SOROCABA (ESAMC)', 1, NULL, 146, false);
INSERT INTO public.empresa VALUES (1618, true, '2023-06-12 12:25:46.861025', NULL, 'FACULDADE ESAMC UBERLÂNDIA (ESAMC)', 1, NULL, 134, false);
INSERT INTO public.empresa VALUES (1619, true, '2023-06-12 12:25:46.868419', NULL, 'FACULDADE ESCOLA DE AYURVEDA (FAESDA)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (1620, true, '2023-06-12 12:25:46.880386', NULL, 'FACULDADE ESCOLA DE NEGÓCIOS EXCELLENCE (FAENE)', 1, NULL, 141, false);
INSERT INTO public.empresa VALUES (1621, true, '2023-06-12 12:25:46.888247', NULL, 'FACULDADE ESCOLA PAULISTA DE DIREITO (FACEPD)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1622, true, '2023-06-12 12:25:46.895903', NULL, 'FACULDADE ESCOLA POLITÉCNICA DE INOVAÇÃO E CONHECIMENTO APLICADO (ÉPICA)', 1, NULL, 193, false);
INSERT INTO public.empresa VALUES (1623, true, '2023-06-12 12:25:46.903244', NULL, 'FACULDADE ESCOLA SOBRAL DE OLIVEIRA (FAESDO)', 1, NULL, 586, false);
INSERT INTO public.empresa VALUES (1624, true, '2023-06-12 12:25:46.910579', NULL, 'FACULDADE ESPECIALIZADA NA ÁREA DE SAÚDE DO RIO GRANDE DO SUL (FASURGS)', 1, NULL, 282, false);
INSERT INTO public.empresa VALUES (1625, true, '2023-06-12 12:25:46.918395', NULL, 'FACULDADE ÉSPER (ÉSPER)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (1626, true, '2023-06-12 12:25:46.925696', NULL, 'FACULDADE ESPÍRITO SANTENSE (UNICAPE)', 1, NULL, 389, false);
INSERT INTO public.empresa VALUES (1627, true, '2023-06-12 12:25:46.932968', NULL, 'FACULDADE ESPÍRITO SANTENSE DE CIÊNCIAS JURÍDICAS (PIO XII - DIR)', 1, NULL, 389, false);
INSERT INTO public.empresa VALUES (1628, true, '2023-06-12 12:25:46.940543', NULL, 'FACULDADE ESPÍRITO SANTO (FAES)', 1, NULL, 587, false);
INSERT INTO public.empresa VALUES (1629, true, '2023-06-12 12:25:46.948514', NULL, 'FACULDADE ESSA EDUCACAO PROFISSIONAL (UNIESSA)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1630, true, '2023-06-12 12:25:46.955728', NULL, 'FACULDADE ESTÁCIO DA PARAÍBA (ESTACIO PARAIBA)', 1, NULL, 107, false);
INSERT INTO public.empresa VALUES (1631, true, '2023-06-12 12:25:46.963096', NULL, 'FACULDADE ESTÁCIO DE ALAGOAS - ESTÁCIO FAL (ESTÁCIO FAL)', 1, NULL, 73, false);
INSERT INTO public.empresa VALUES (1632, true, '2023-06-12 12:25:46.974864', NULL, 'FACULDADE ESTÁCIO DE ALAGOINHAS', 1, NULL, 213, false);
INSERT INTO public.empresa VALUES (1633, true, '2023-06-12 12:25:46.982693', NULL, 'FACULDADE ESTÁCIO DE ANANINDEUA', 1, NULL, 232, false);
INSERT INTO public.empresa VALUES (1634, true, '2023-06-12 12:25:46.989992', NULL, 'FACULDADE ESTÁCIO DE BELÉM - ESTÁCIO BELÉM (ESTÁCIO BELÉM)', 1, NULL, 79, false);
INSERT INTO public.empresa VALUES (1635, true, '2023-06-12 12:25:46.997463', NULL, 'FACULDADE ESTÁCIO DE CANINDÉ (ESTÁCIO CANINDÉ)', 1, NULL, 588, false);
INSERT INTO public.empresa VALUES (1636, true, '2023-06-12 12:25:47.004986', NULL, 'FACULDADE ESTÁCIO DE CARAPICUÍBA (ESTÁCIO CARAPICUÍBA)', 1, NULL, 519, false);
INSERT INTO public.empresa VALUES (1637, true, '2023-06-12 12:25:47.013008', NULL, 'FACULDADE ESTÁCIO DE CASTANHAL (ESTÁCIO CASTANHAL)', 1, NULL, 484, false);
INSERT INTO public.empresa VALUES (1638, true, '2023-06-12 12:25:47.020482', NULL, 'FACULDADE ESTÁCIO DE COTIA (ESTACIO COTIA)', 1, NULL, 520, false);
INSERT INTO public.empresa VALUES (1639, true, '2023-06-12 12:25:47.027841', NULL, 'FACULDADE ESTÁCIO DE CURITIBA (ESTÁCIO CURITIBA)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (1640, true, '2023-06-12 12:25:47.03536', NULL, 'FACULDADE ESTÁCIO DE FEIRA DE SANTANA (ESTÁCIO FEIRA DE SAN)', 1, NULL, 99, false);
INSERT INTO public.empresa VALUES (1641, true, '2023-06-12 12:25:47.043722', NULL, 'FACULDADE ESTÁCIO DE FLORIANÓPOLIS - ESTÁCIO FLORIANÓPOLIS', 1, NULL, 3, false);
INSERT INTO public.empresa VALUES (1642, true, '2023-06-12 12:25:47.051054', NULL, 'FACULDADE ESTÁCIO DE JARAGUÁ DO SUL (ESTÁCIO JARAGUÁ)', 1, NULL, 31, false);
INSERT INTO public.empresa VALUES (1643, true, '2023-06-12 12:25:47.058404', NULL, 'FACULDADE ESTÁCIO DE JUAZEIRO (ESTÁCIOJUAZEIRO)', 1, NULL, 533, false);
INSERT INTO public.empresa VALUES (1644, true, '2023-06-12 12:25:47.065719', NULL, 'FACULDADE ESTÁCIO DE NATAL (ESTACIO NATAL)', 1, NULL, 130, false);
INSERT INTO public.empresa VALUES (1645, true, '2023-06-12 12:25:47.073562', NULL, 'FACULDADE ESTÁCIO DE PIMENTA BUENO (ESTÁCIO FAP)', 1, NULL, 589, false);
INSERT INTO public.empresa VALUES (1646, true, '2023-06-12 12:25:47.080938', NULL, 'FACULDADE ESTÁCIO DE RIO PRETO (ESTÁCIO RIO PRETO)', 1, NULL, 114, false);
INSERT INTO public.empresa VALUES (1647, true, '2023-06-12 12:25:47.088373', NULL, 'FACULDADE ESTÁCIO DE SÁ DE OURINHOS (FAESO)', 1, NULL, 89, false);
INSERT INTO public.empresa VALUES (1648, true, '2023-06-12 12:25:47.100322', NULL, 'FACULDADE ESTÁCIO DE SÁ DE VILA VELHA (FESVV)', 1, NULL, 226, false);
INSERT INTO public.empresa VALUES (1649, true, '2023-06-12 12:25:47.108184', NULL, 'FACULDADE ESTÁCIO DE SÁ DE VITÓRIA (FESV)', 1, NULL, 25, false);
INSERT INTO public.empresa VALUES (1650, true, '2023-06-12 12:25:47.115585', NULL, 'FACULDADE ESTÁCIO DE SANTO ANDRÉ (ESTÁCIO SANTO ANDRÉ)', 1, NULL, 47, false);
INSERT INTO public.empresa VALUES (1651, true, '2023-06-12 12:25:47.122887', NULL, 'FACULDADE ESTÁCIO DE TERESINA (ESTÁCIO TERESINA)', 1, NULL, 27, false);
INSERT INTO public.empresa VALUES (1652, true, '2023-06-12 12:25:47.130615', NULL, 'FACULDADE ESTÁCIO DO AMAPÁ - ESTÁCIO AMAPÁ (ESTÁCIO AMAPÁ)', 1, NULL, 26, false);
INSERT INTO public.empresa VALUES (1653, true, '2023-06-12 12:25:47.13842', NULL, 'FACULDADE ESTÁCIO DO AMAZONAS - ESTÁCIO AMAZONAS (ESTÁCIO AMAZONAS)', 1, NULL, 75, false);
INSERT INTO public.empresa VALUES (1654, true, '2023-06-12 12:25:47.145998', NULL, 'FACULDADE ESTÁCIO DO PANTANAL (ESTÁCIO FAPAN)', 1, NULL, 590, false);
INSERT INTO public.empresa VALUES (1655, true, '2023-06-12 12:25:47.153429', NULL, 'FACULDADE ESTÁCIO DO PARÁ - ESTÁCIO FAP (ESTÁCIO FAP)', 1, NULL, 79, false);
INSERT INTO public.empresa VALUES (1656, true, '2023-06-12 12:25:47.16077', NULL, 'FACULDADE ESTÁCIO DO RIO GRANDE DO SUL - ESTÁCIO FARGS (ESTÁCIO FARGS)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (1657, true, '2023-06-12 12:25:47.168786', NULL, 'FACULDADE ESTÁCIO MACAPÁ - ESTÁCIO MACAPÁ (ESTÁCIO MACAPÁ)', 1, NULL, 26, false);
INSERT INTO public.empresa VALUES (1658, true, '2023-06-12 12:25:47.176319', NULL, 'FACULDADE ESTÁCIO SÃO PAULO DE RONDÔNIA (ESTÁCIO FSP)', 1, NULL, 503, false);
INSERT INTO public.empresa VALUES (1659, true, '2023-06-12 12:25:47.183592', NULL, 'FACULDADE ESTRATEGO (ESTRATEGO)', 1, NULL, 79, false);
INSERT INTO public.empresa VALUES (1660, true, '2023-06-12 12:25:47.191142', NULL, 'FACULDADE EUGÊNIO GOMES (FEG)', 1, NULL, 591, false);
INSERT INTO public.empresa VALUES (1661, true, '2023-06-12 12:25:47.198868', NULL, 'FACULDADE EUROPÉIA DE TECNOLOGIA E CIÊNCIAS HUMANAS - EUROTECH (EUROTECH)', 1, NULL, 132, false);
INSERT INTO public.empresa VALUES (1662, true, '2023-06-12 12:25:47.207085', NULL, 'FACULDADE EUROPÉIA DE VITÓRIA (FAEV)', 1, NULL, 389, false);
INSERT INTO public.empresa VALUES (1663, true, '2023-06-12 12:25:47.215222', NULL, 'FACULDADE EVANGÉLICA DE CERES (FACER)', 1, NULL, 592, false);
INSERT INTO public.empresa VALUES (1664, true, '2023-06-12 12:25:47.222449', NULL, 'FACULDADE EVANGÉLICA DE GOIANÉSIA (FACEG)', 1, NULL, 593, false);
INSERT INTO public.empresa VALUES (1665, true, '2023-06-12 12:25:47.235764', NULL, 'FACULDADE EVANGÉLICA DE JARAGUÁ (FEJA)', 1, NULL, 594, false);
INSERT INTO public.empresa VALUES (1666, true, '2023-06-12 12:25:47.243039', NULL, 'FACULDADE EVANGÉLICA DE RUBIATABA (FER)', 1, NULL, 595, false);
INSERT INTO public.empresa VALUES (1667, true, '2023-06-12 12:25:47.250379', NULL, 'FACULDADE EVANGÉLICA DE SALVADOR (FACESA)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (1668, true, '2023-06-12 12:25:47.258158', NULL, 'FACULDADE EVANGÉLICA DE SÃO PAULO', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1669, true, '2023-06-12 12:25:47.26561', NULL, 'FACULDADE EVANGÉLICA DE SENADOR CANEDO (FESCAN)', 1, NULL, 538, false);
INSERT INTO public.empresa VALUES (1670, true, '2023-06-12 12:25:47.27292', NULL, 'FACULDADE EVANGÉLICA DE TECNOLOGIA, CIÊNCIAS E BIOTECNOLOGIA DA CGADB (FAECAD)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (1671, true, '2023-06-12 12:25:47.280411', NULL, 'FACULDADE EVANGÉLICA DO MEIO NORTE (FAEME)', 1, NULL, 596, false);
INSERT INTO public.empresa VALUES (1672, true, '2023-06-12 12:25:47.288206', NULL, 'FACULDADE EVANGÉLICA MACKENZIE DO PARANÁ (FEMPAR)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (1673, true, '2023-06-12 12:25:47.29553', NULL, 'FACULDADE EVANGÉLICA RAÍZES (RAÍZES)', 1, NULL, 264, false);
INSERT INTO public.empresa VALUES (1674, true, '2023-06-12 12:25:47.302979', NULL, 'FACULDADE EVOLUÇÃO (FAEV)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1675, true, '2023-06-12 12:25:47.310306', NULL, 'FACULDADE EVOLUÇÃO ALTO OESTE POTIGUAR (FACEP)', 1, NULL, 597, false);
INSERT INTO public.empresa VALUES (1676, true, '2023-06-12 12:25:47.318196', NULL, 'FACULDADE EVOLUIR (FAEV)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (1677, true, '2023-06-12 12:25:47.325404', NULL, 'FACULDADE EXATA EDUCACIONAL (FEE)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (1678, true, '2023-06-12 12:25:47.33262', NULL, 'FACULDADE FABAD (FABAD)', 1, NULL, 162, false);
INSERT INTO public.empresa VALUES (1679, true, '2023-06-12 12:25:47.339881', NULL, 'FACULDADE FACCAT (FACCAT)', 1, NULL, 354, false);
INSERT INTO public.empresa VALUES (1680, true, '2023-06-12 12:25:47.347935', NULL, 'FACULDADE FACIENCIA (FACIENCIA)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (1681, true, '2023-06-12 12:25:47.355265', NULL, 'FACULDADE FACMIL', 1, NULL, 114, false);
INSERT INTO public.empresa VALUES (1682, true, '2023-06-12 12:25:47.362601', NULL, 'FACULDADE FACTUM (FACTUM)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (1683, true, '2023-06-12 12:25:47.369903', NULL, 'FACULDADE FACUMINAS DE PÓS-GRADUAÇÃO EAD (FACUMINAS EAD)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1684, true, '2023-06-12 12:25:47.377679', NULL, 'FACULDADE FADAM (FADAM)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (1685, true, '2023-06-12 12:25:47.389793', NULL, 'FACULDADE FADAM DE MARACANAÚ (FADAM)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (1686, true, '2023-06-12 12:25:47.397568', NULL, 'FACULDADE FAIPE', 1, NULL, 203, false);
INSERT INTO public.empresa VALUES (1687, true, '2023-06-12 12:25:47.404911', NULL, 'FACULDADE FAMART', 1, NULL, 598, false);
INSERT INTO public.empresa VALUES (1688, true, '2023-06-12 12:25:47.412751', NULL, 'FACULDADE FAMEP - UNIDADE PARAMBU - CE (FAMEP)', 1, NULL, 599, false);
INSERT INTO public.empresa VALUES (1689, true, '2023-06-12 12:25:47.420044', NULL, 'FACULDADE FAMERCOSUL (FSUL)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (1690, true, '2023-06-12 12:25:47.427277', NULL, 'FACULDADE FANORPI BANDEIRANTES (FANORPI)', 1, NULL, 600, false);
INSERT INTO public.empresa VALUES (1691, true, '2023-06-12 12:25:47.434578', NULL, 'FACULDADE FAPAF (FAPAF)', 1, NULL, 601, false);
INSERT INTO public.empresa VALUES (1692, true, '2023-06-12 12:25:47.442644', NULL, 'FACULDADE FARUS (FARUS)', 1, NULL, 488, false);
INSERT INTO public.empresa VALUES (1693, true, '2023-06-12 12:25:47.449874', NULL, 'FACULDADE FASIPE CUIABÁ (FFC)', 1, NULL, 203, false);
INSERT INTO public.empresa VALUES (1694, true, '2023-06-12 12:25:47.457175', NULL, 'FACULDADE FASIPE DE PRIMAVERA (FFP)', 1, NULL, 285, false);
INSERT INTO public.empresa VALUES (1695, true, '2023-06-12 12:25:47.464435', NULL, 'FACULDADE FASIPE DE RONDONÓPOLIS (FFR)', 1, NULL, 287, false);
INSERT INTO public.empresa VALUES (1696, true, '2023-06-12 12:25:47.472298', NULL, 'FACULDADE FASIPE DE SORRISO (FFS)', 1, NULL, 292, false);
INSERT INTO public.empresa VALUES (1697, true, '2023-06-12 12:25:47.48011', NULL, 'FACULDADE FASIPE DF (FACDF)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (1698, true, '2023-06-12 12:25:47.487527', NULL, 'FACULDADE FASIPE MATO GROSSO (FFMT)', 1, NULL, 203, false);
INSERT INTO public.empresa VALUES (1699, true, '2023-06-12 12:25:47.49491', NULL, 'FACULDADE FASIPE PANTANAL (FASIPE)', 1, NULL, 203, false);
INSERT INTO public.empresa VALUES (1700, true, '2023-06-12 12:25:47.502913', NULL, 'FACULDADE FASUP (FASUP)', 1, NULL, 175, false);
INSERT INTO public.empresa VALUES (1701, true, '2023-06-12 12:25:47.51534', NULL, 'FACULDADE FATIFAJAR JAGUARIAÍVA (FAJAR)', 1, NULL, 602, false);
INSERT INTO public.empresa VALUES (1702, true, '2023-06-12 12:25:47.52276', NULL, 'FACULDADE FAVENI GUARULHOS (FAVENI - GUARULHOS)', 1, NULL, 100, false);
INSERT INTO public.empresa VALUES (1703, true, '2023-06-12 12:25:47.530087', NULL, 'FACULDADE FAVOO COOP', 1, NULL, 355, false);
INSERT INTO public.empresa VALUES (1704, true, '2023-06-12 12:25:47.538235', NULL, 'FACULDADE FECOMERCIO RORAIMA (FACORR)', 1, NULL, 138, false);
INSERT INTO public.empresa VALUES (1705, true, '2023-06-12 12:25:47.546509', NULL, 'FACULDADE FEITEP (FEITEP)', 1, NULL, 76, false);
INSERT INTO public.empresa VALUES (1706, true, '2023-06-12 12:25:47.554379', NULL, 'FACULDADE FERNANDA BICCHIERI', 1, NULL, 1, false);
INSERT INTO public.empresa VALUES (1707, true, '2023-06-12 12:25:47.561647', NULL, 'FACULDADE FERNÃO DIAS (FAFE)', 1, NULL, 158, false);
INSERT INTO public.empresa VALUES (1708, true, '2023-06-12 12:25:47.569527', NULL, 'FACULDADE FIA DE ADMINISTRAÇÃO E NEGÓCIOS (FFIA)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1709, true, '2023-06-12 12:25:47.57688', NULL, 'FACULDADE FIDELIS (FF)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (1710, true, '2023-06-12 12:25:47.584255', NULL, 'FACULDADE FIGUEIREDO COSTA - FIC', 1, NULL, 73, false);
INSERT INTO public.empresa VALUES (1711, true, '2023-06-12 12:25:47.592044', NULL, 'FACULDADE FILADELFIA DE TECNOLOGIA (FAFILTEC)', 1, NULL, 345, false);
INSERT INTO public.empresa VALUES (1712, true, '2023-06-12 12:25:47.599879', NULL, 'FACULDADE FILOS', 1, NULL, 603, false);
INSERT INTO public.empresa VALUES (1713, true, '2023-06-12 12:25:47.607142', NULL, 'FACULDADE FINACI (FINACI)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1714, true, '2023-06-12 12:25:47.614566', NULL, 'FACULDADE FINOM DE PATOS DE MINAS (FINOM)', 1, NULL, 112, false);
INSERT INTO public.empresa VALUES (1715, true, '2023-06-12 12:25:47.626836', NULL, 'FACULDADE FIPECAFI (FIPECAFI)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1716, true, '2023-06-12 12:25:47.635044', NULL, 'FACULDADE FISEPE (FISEPE)', 1, NULL, 282, false);
INSERT INTO public.empresa VALUES (1717, true, '2023-06-12 12:25:47.642325', NULL, 'FACULDADE FLAMINGO', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1718, true, '2023-06-12 12:25:47.649583', NULL, 'FACULDADE FLEMING CERQUILHO (FAC CERQUILHO)', 1, NULL, 604, false);
INSERT INTO public.empresa VALUES (1719, true, '2023-06-12 12:25:47.657006', NULL, 'FACULDADE FLEMING DE OSASCO (A. FLEMING)', 1, NULL, 158, false);
INSERT INTO public.empresa VALUES (1720, true, '2023-06-12 12:25:47.664996', NULL, 'FACULDADE FOCUS (FOCUS)', 1, NULL, 54, false);
INSERT INTO public.empresa VALUES (1721, true, '2023-06-12 12:25:47.672394', NULL, 'FACULDADE FOZ DO IGUAÇU (FAFIG)', 1, NULL, 124, false);
INSERT INTO public.empresa VALUES (1722, true, '2023-06-12 12:25:47.679937', NULL, 'FACULDADE FRACTAL (FRACTAL)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (1723, true, '2023-06-12 12:25:47.687485', NULL, 'FACULDADE FRAGA DE INTEGRAÇÃO DA CULTURA EDUCAÇÃO E PESQUISA (FICEPE)', 1, NULL, 605, false);
INSERT INTO public.empresa VALUES (1724, true, '2023-06-12 12:25:47.700195', NULL, 'FACULDADE FRASSINETTI DO RECIFE (FAFIRE)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (1725, true, '2023-06-12 12:25:47.707393', NULL, 'FACULDADE FREIRE DE ENSINO (FFE)', 1, NULL, 540, false);
INSERT INTO public.empresa VALUES (1726, true, '2023-06-12 12:25:47.714784', NULL, 'FACULDADE FUCAPE (FUCAPE)', 1, NULL, 25, false);
INSERT INTO public.empresa VALUES (1727, true, '2023-06-12 12:25:47.722159', NULL, 'FACULDADE FUNORTE DE JANAÚBA', 1, NULL, 407, false);
INSERT INTO public.empresa VALUES (1728, true, '2023-06-12 12:25:47.730029', NULL, 'FACULDADE FUNORTE DE JANUÁRIA', 1, NULL, 606, false);
INSERT INTO public.empresa VALUES (1729, true, '2023-06-12 12:25:47.737565', NULL, 'FACULDADE FUTURA', 1, NULL, 10, false);
INSERT INTO public.empresa VALUES (1730, true, '2023-06-12 12:25:47.749631', NULL, 'FACULDADE G8 (FG8)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1731, true, '2023-06-12 12:25:47.757717', NULL, 'FACULDADE GALILEU (FG)', 1, NULL, 383, false);
INSERT INTO public.empresa VALUES (1732, true, '2023-06-12 12:25:47.765089', NULL, 'FACULDADE GARÇA BRANCA PANTANAL (FGB)', 1, NULL, 203, false);
INSERT INTO public.empresa VALUES (1733, true, '2023-06-12 12:25:47.772388', NULL, 'FACULDADE GENNARI E PEARTREE (FGP)', 1, NULL, 607, false);
INSERT INTO public.empresa VALUES (1734, true, '2023-06-12 12:25:47.779646', NULL, 'FACULDADE GEORGINA (FAGEO)', 1, NULL, 608, false);
INSERT INTO public.empresa VALUES (1735, true, '2023-06-12 12:25:47.787519', NULL, 'FACULDADE GIANNA BERETTA', 1, NULL, 141, false);
INSERT INTO public.empresa VALUES (1736, true, '2023-06-12 12:25:47.794815', NULL, 'FACULDADE GIL GAL (GILGAL)', 1, NULL, 609, false);
INSERT INTO public.empresa VALUES (1737, true, '2023-06-12 12:25:47.802083', NULL, 'FACULDADE GRAN TIETÊ (FGT)', 1, NULL, 531, false);
INSERT INTO public.empresa VALUES (1738, true, '2023-06-12 12:25:47.809361', NULL, 'FACULDADE GRAU S ENSINO SUPERIOR (GRAU)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (1739, true, '2023-06-12 12:25:47.8177', NULL, 'FACULDADE GUARAÍ (FAG)', 1, NULL, 610, false);
INSERT INTO public.empresa VALUES (1740, true, '2023-06-12 12:25:47.824922', NULL, 'FACULDADE GUARAPUAVA (FG)', 1, NULL, 64, false);
INSERT INTO public.empresa VALUES (1741, true, '2023-06-12 12:25:47.832281', NULL, 'FACULDADE GUERRA (FAG)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (1742, true, '2023-06-12 12:25:47.839522', NULL, 'FACULDADE GUILHERME GUIMBALA (FGG)', 1, NULL, 68, false);
INSERT INTO public.empresa VALUES (1743, true, '2023-06-12 12:25:47.872792', NULL, 'FACULDADE HÉLIO ROCHA (FHR)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (1744, true, '2023-06-12 12:25:47.880179', NULL, 'FACULDADE HERRERO (FATEC)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (1745, true, '2023-06-12 12:25:47.892127', NULL, 'FACULDADE HOLÍSTICA (FAHOL)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (1746, true, '2023-06-12 12:25:47.899415', NULL, 'FACULDADE HONPAR', 1, NULL, 611, false);
INSERT INTO public.empresa VALUES (1747, true, '2023-06-12 12:25:47.907077', NULL, 'FACULDADE HORIZONTE (FACHORIZONTE)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (1748, true, '2023-06-12 12:25:47.914707', NULL, 'FACULDADE HORIZONTINA (FAHOR)', 1, NULL, 612, false);
INSERT INTO public.empresa VALUES (1749, true, '2023-06-12 12:25:47.922292', NULL, 'FACULDADE HOSPITAL SÃO PAULO DE MURIAÉ (FAMEHSP)', 1, NULL, 154, false);
INSERT INTO public.empresa VALUES (1750, true, '2023-06-12 12:25:47.929647', NULL, 'FACULDADE IBAM', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (1751, true, '2023-06-12 12:25:47.937428', NULL, 'FACULDADE IBECO (IBECO)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1752, true, '2023-06-12 12:25:47.9448', NULL, 'FACULDADE IBERO AMERICANA DE SÃO PAULO (FIASP)', 1, NULL, 613, false);
INSERT INTO public.empresa VALUES (1753, true, '2023-06-12 12:25:47.952121', NULL, 'FACULDADE IBG (IBG)', 1, NULL, 287, false);
INSERT INTO public.empresa VALUES (1754, true, '2023-06-12 12:25:47.9595', NULL, 'FACULDADE IBGEN', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (1755, true, '2023-06-12 12:25:47.967189', NULL, 'FACULDADE IBIAPABA', 1, NULL, 235, false);
INSERT INTO public.empresa VALUES (1756, true, '2023-06-12 12:25:47.974601', NULL, 'FACULDADE IBMEC (IBMEC)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (1757, true, '2023-06-12 12:25:47.981962', NULL, 'FACULDADE IBMEC DE BRASÍLIA (IBMEC BRASÍLIA)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (1758, true, '2023-06-12 12:25:47.989302', NULL, 'FACULDADE IBMEC SÃO PAULO (IBMEC SP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1759, true, '2023-06-12 12:25:47.997228', NULL, 'FACULDADE IBRA DA GRANDE SÃO PAULO (FACULDADE FAGRAN)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1760, true, '2023-06-12 12:25:48.009253', NULL, 'FACULDADE IBRA DE BRASÍLIA (FACULDADE FABRAS)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (1761, true, '2023-06-12 12:25:48.016597', NULL, 'FACULDADE IBRA DE MINAS GERAIS (FACULDADE FIBMG)', 1, NULL, 268, false);
INSERT INTO public.empresa VALUES (1762, true, '2023-06-12 12:25:48.024559', NULL, 'FACULDADE IBRA DE TECNOLOGIA (FACULDADE FITEC)', 1, NULL, 144, false);
INSERT INTO public.empresa VALUES (1763, true, '2023-06-12 12:25:48.032271', NULL, 'FACULDADE IBRA DOS VALES (FACULDADE FADIVALES)', 1, NULL, 273, false);
INSERT INTO public.empresa VALUES (1764, true, '2023-06-12 12:25:48.039545', NULL, 'FACULDADE IBS (IBS)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (1765, true, '2023-06-12 12:25:48.046765', NULL, 'FACULDADE ICESP (ICESP)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (1766, true, '2023-06-12 12:25:48.054094', NULL, 'FACULDADE ICTQ/PGE (ICTQ/PGE)', 1, NULL, 264, false);
INSERT INTO public.empresa VALUES (1767, true, '2023-06-12 12:25:48.061991', NULL, 'FACULDADE IDD (IDD)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (1768, true, '2023-06-12 12:25:48.069311', NULL, 'FACULDADE IDEAL WYDEN (FACI WYDEN)', 1, NULL, 79, false);
INSERT INTO public.empresa VALUES (1769, true, '2023-06-12 12:25:48.076597', NULL, 'FACULDADE IDEAU DE BAGÉ (IDEAU)', 1, NULL, 86, false);
INSERT INTO public.empresa VALUES (1770, true, '2023-06-12 12:25:48.083924', NULL, 'FACULDADE IDEAU DE CAXIAS DO SUL (IDEAU)', 1, NULL, 87, false);
INSERT INTO public.empresa VALUES (1771, true, '2023-06-12 12:25:48.09172', NULL, 'FACULDADE IDEAU DE PASSO FUNDO (IDEAU)', 1, NULL, 282, false);
INSERT INTO public.empresa VALUES (1772, true, '2023-06-12 12:25:48.099308', NULL, 'FACULDADE IDOR DE CIÊNCIAS MÉDICAS (FACULDADE IDOR)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (1773, true, '2023-06-12 12:25:48.106616', NULL, 'FACULDADE ILAPEO (ILAPEO)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (1774, true, '2023-06-12 12:25:48.114037', NULL, 'FACULDADE IMEPAC DE ITUMBIARA (IMEPAC ITUMBIAR)', 1, NULL, 234, false);
INSERT INTO public.empresa VALUES (1775, true, '2023-06-12 12:25:48.121933', NULL, 'FACULDADE IMES (IMES)', 1, NULL, 265, false);
INSERT INTO public.empresa VALUES (1776, true, '2023-06-12 12:25:48.129229', NULL, 'FACULDADE IMESP MONITOR (IMESP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1777, true, '2023-06-12 12:25:48.136531', NULL, 'FACULDADE IMPACTA (IMPACTA)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1778, true, '2023-06-12 12:25:48.148791', NULL, 'FACULDADE IMPACTO', 1, NULL, 73, false);
INSERT INTO public.empresa VALUES (1779, true, '2023-06-12 12:25:48.156754', NULL, 'FACULDADE IMPACTO DE PORANGATU (FIP)', 1, NULL, 614, false);
INSERT INTO public.empresa VALUES (1780, true, '2023-06-12 12:25:48.164326', NULL, 'FACULDADE IMPACTOS - FACI (FACI)', 1, NULL, 203, false);
INSERT INTO public.empresa VALUES (1781, true, '2023-06-12 12:25:48.17192', NULL, 'FACULDADE INBEC (INBEC)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (1782, true, '2023-06-12 12:25:48.18037', NULL, 'FACULDADE INDEPENDENTE DO NORDESTE (FAINOR)', 1, NULL, 37, false);
INSERT INTO public.empresa VALUES (1783, true, '2023-06-12 12:25:48.188493', NULL, 'FACULDADE INESP - INSTITUTO NACIONAL DE ENSINO E PESQUISA (INESP)', 1, NULL, 273, false);
INSERT INTO public.empresa VALUES (1784, true, '2023-06-12 12:25:48.195966', NULL, 'FACULDADE INNOVARE (FACINN)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1785, true, '2023-06-12 12:25:48.203375', NULL, 'FACULDADE INNOVATE DE ANÁPOLIS (INNOVATE)', 1, NULL, 264, false);
INSERT INTO public.empresa VALUES (1786, true, '2023-06-12 12:25:48.210775', NULL, 'FACULDADE INOVA MAIS DE SÃO PAULO (FIMSP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1787, true, '2023-06-12 12:25:48.218661', NULL, 'FACULDADE INPG DE BLUMENAU (FACINPG)', 1, NULL, 193, false);
INSERT INTO public.empresa VALUES (1788, true, '2023-06-12 12:25:48.226119', NULL, 'FACULDADE INPRO (FACINPRO)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (1789, true, '2023-06-12 12:25:48.233451', NULL, 'FACULDADE INSPIRAR (INSPIRAR)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (1790, true, '2023-06-12 12:25:48.240655', NULL, 'FACULDADE INSTED', 1, NULL, 48, false);
INSERT INTO public.empresa VALUES (1791, true, '2023-06-12 12:25:48.248482', NULL, 'FACULDADE INSTITUTO BRASILEIRO DE ENSINO (FACIBE)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (1792, true, '2023-06-12 12:25:48.26043', NULL, 'FACULDADE INSTITUTO DE ENSINO SUPERIOR (FACIES)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (1793, true, '2023-06-12 12:25:48.268455', NULL, 'FACULDADE INSTITUTO PAULISTA DE ENSINO (FIPEN)', 1, NULL, 158, false);
INSERT INTO public.empresa VALUES (1794, true, '2023-06-12 12:25:48.27688', NULL, 'FACULDADE INSTITUTO RIO DE JANEIRO (FIURJ)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (1795, true, '2023-06-12 12:25:48.284248', NULL, 'FACULDADE INSTITUTO SUPERIOR DE EDUCAÇÃO DO PARANÁ - FAINSEP (FAINSEP)', 1, NULL, 76, false);
INSERT INTO public.empresa VALUES (1796, true, '2023-06-12 12:25:48.291553', NULL, 'FACULDADE INTEGRAÇÃO (FI)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1797, true, '2023-06-12 12:25:48.29897', NULL, 'FACULDADE INTEGRADA CARAJÁS (FIC)', 1, NULL, 452, false);
INSERT INTO public.empresa VALUES (1798, true, '2023-06-12 12:25:48.306773', NULL, 'FACULDADE INTEGRADA CESUMAR DE CURITIBA (CESUMAR)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (1799, true, '2023-06-12 12:25:48.314226', NULL, 'FACULDADE INTEGRADA CETE (FIC)', 1, NULL, 483, false);
INSERT INTO public.empresa VALUES (1800, true, '2023-06-12 12:25:48.321504', NULL, 'FACULDADE INTEGRADA DA AMAZÔNIA (FINAMA)', 1, NULL, 79, false);
INSERT INTO public.empresa VALUES (1801, true, '2023-06-12 12:25:48.328752', NULL, 'FACULDADE INTEGRADA DAS CATARATAS EJOVEM (EJOVEM)', 1, NULL, 124, false);
INSERT INTO public.empresa VALUES (1802, true, '2023-06-12 12:25:48.336945', NULL, 'FACULDADE INTEGRADA DE ADVOCACIA DA AMAZÔNIA (FINAMA)', 1, NULL, 79, false);
INSERT INTO public.empresa VALUES (1803, true, '2023-06-12 12:25:48.344346', NULL, 'FACULDADE INTEGRADA DE GESTÃO E MEIO AMBIENTE (FACIGMA)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (1804, true, '2023-06-12 12:25:48.351695', NULL, 'FACULDADE INTEGRADA DE PALMEIRAS DE GOIÁS (FAI)', 1, NULL, 490, false);
INSERT INTO public.empresa VALUES (1805, true, '2023-06-12 12:25:48.359058', NULL, 'FACULDADE INTEGRADA DE SANTA MARIA (FISMA)', 1, NULL, 417, false);
INSERT INTO public.empresa VALUES (1806, true, '2023-06-12 12:25:48.36682', NULL, 'FACULDADE INTEGRADA DE TAUBATÉ (FACULDADE FITAU)', 1, NULL, 33, false);
INSERT INTO public.empresa VALUES (1807, true, '2023-06-12 12:25:48.374524', NULL, 'FACULDADE INTEGRADA INSTITUTO SOUZA (FASOUZA)', 1, NULL, 268, false);
INSERT INTO public.empresa VALUES (1808, true, '2023-06-12 12:25:48.38175', NULL, 'FACULDADE INTEGRAL CANTAREIRA (F.I.C.)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1809, true, '2023-06-12 12:25:48.389117', NULL, 'FACULDADE INTEGRAL DE JABOATÃO DOS GUARARAPES (FIJ)', 1, NULL, 132, false);
INSERT INTO public.empresa VALUES (1810, true, '2023-06-12 12:25:48.397004', NULL, 'FACULDADE INTELLECTUS (FACINTEL)', 1, NULL, 176, false);
INSERT INTO public.empresa VALUES (1811, true, '2023-06-12 12:25:48.409466', NULL, 'FACULDADE INTERAMERICANA DE PORTO VELHO (UNIRON)', 1, NULL, 51, false);
INSERT INTO public.empresa VALUES (1812, true, '2023-06-12 12:25:48.416811', NULL, 'FACULDADE INTERATIVA DE SÃO PAULO (FAISP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1813, true, '2023-06-12 12:25:48.424381', NULL, 'FACULDADE INTERCONTINENTAL (FAICON)', 1, NULL, 299, false);
INSERT INTO public.empresa VALUES (1814, true, '2023-06-12 12:25:48.432329', NULL, 'FACULDADE INTERCULTURAL DA AMAZONIA (FIAMA)', 1, NULL, 79, false);
INSERT INTO public.empresa VALUES (1815, true, '2023-06-12 12:25:48.439637', NULL, 'FACULDADE INTERMUNICIPAL DO NOROESTE DO PARANÁ (FACINOR)', 1, NULL, 615, false);
INSERT INTO public.empresa VALUES (1816, true, '2023-06-12 12:25:48.447139', NULL, 'FACULDADE INTERNACIONAL CIDADE VIVA', 1, NULL, 107, false);
INSERT INTO public.empresa VALUES (1817, true, '2023-06-12 12:25:48.454419', NULL, 'FACULDADE INTERNACIONAL DA PARAÍBA (FPB)', 1, NULL, 107, false);
INSERT INTO public.empresa VALUES (1818, true, '2023-06-12 12:25:48.462229', NULL, 'FACULDADE INTERNACIONAL DE SÃO LUÍS (ISL)', 1, NULL, 141, false);
INSERT INTO public.empresa VALUES (1819, true, '2023-06-12 12:25:48.469688', NULL, 'FACULDADE INTERNACIONAL DE SÃO PAULO (FINSP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1820, true, '2023-06-12 12:25:48.476863', NULL, 'FACULDADE INTERVALE (INTERVALE)', 1, NULL, 616, false);
INSERT INTO public.empresa VALUES (1821, true, '2023-06-12 12:25:48.484075', NULL, 'FACULDADE INTESP (INTESP)', 1, NULL, 617, false);
INSERT INTO public.empresa VALUES (1822, true, '2023-06-12 12:25:48.491611', NULL, 'FACULDADE INVEST DE CIÊNCIAS E TECNOLOGIA (INVEST)', 1, NULL, 203, false);
INSERT INTO public.empresa VALUES (1823, true, '2023-06-12 12:25:48.499087', NULL, 'FACULDADE INVICTUS (FIRP)', 1, NULL, 114, false);
INSERT INTO public.empresa VALUES (1824, true, '2023-06-12 12:25:48.506395', NULL, 'FACULDADE IPEMED DE CIÊNCIAS MÉDICAS (IPEMED)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (1825, true, '2023-06-12 12:25:48.513838', NULL, 'FACULDADE IPESSP (IPESSP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1826, true, '2023-06-12 12:25:48.522224', NULL, 'FACULDADE IRECÊ (FAI)', 1, NULL, 245, false);
INSERT INTO public.empresa VALUES (1827, true, '2023-06-12 12:25:48.534017', NULL, 'FACULDADE ISAE BRASIL (ISAE)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (1828, true, '2023-06-12 12:25:48.541286', NULL, 'FACULDADE ISEIB DE BELO HORIZONTE (FIBH)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (1829, true, '2023-06-12 12:25:48.549049', NULL, 'FACULDADE ISEIB DE BETIM (FISBE)', 1, NULL, 198, false);
INSERT INTO public.empresa VALUES (1830, true, '2023-06-12 12:25:48.557102', NULL, 'FACULDADE ISMD (ISMD)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1831, true, '2023-06-12 12:25:48.564938', NULL, 'FACULDADE ISRAELITA DE CIÊNCIAS DA SAÚDE ALBERT EINSTEIN (FICSAE)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1832, true, '2023-06-12 12:25:48.572584', NULL, 'FACULDADE ITA EDUCACIONAL PAULISTA', 1, NULL, 531, false);
INSERT INTO public.empresa VALUES (1833, true, '2023-06-12 12:25:48.580012', NULL, 'FACULDADE ITANHAÉM (FAITA)', 1, NULL, 618, false);
INSERT INTO public.empresa VALUES (1834, true, '2023-06-12 12:25:48.588042', NULL, 'FACULDADE ITAPURANGA', 1, NULL, 619, false);
INSERT INTO public.empresa VALUES (1835, true, '2023-06-12 12:25:48.595601', NULL, 'FACULDADE ITAQUÁ (UNEITAQUÁ)', 1, NULL, 526, false);
INSERT INTO public.empresa VALUES (1836, true, '2023-06-12 12:25:48.603029', NULL, 'FACULDADE ITATAIA (FACIT)', 1, NULL, 620, false);
INSERT INTO public.empresa VALUES (1837, true, '2023-06-12 12:25:48.610384', NULL, 'FACULDADE ITEANA DE BOTUCATU (FITB)', 1, NULL, 383, false);
INSERT INTO public.empresa VALUES (1838, true, '2023-06-12 12:25:48.618286', NULL, 'FACULDADE ITEC', 1, NULL, 111, false);
INSERT INTO public.empresa VALUES (1839, true, '2023-06-12 12:25:48.62546', NULL, 'FACULDADE ITH (ITH)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (1840, true, '2023-06-12 12:25:48.632759', NULL, 'FACULDADE ITPAC ABAETETUBA (ITPAC ABAET)', 1, NULL, 227, false);
INSERT INTO public.empresa VALUES (1841, true, '2023-06-12 12:25:48.640016', NULL, 'FACULDADE ITPAC BRAGANÇA (ITPAC BRAGANÇA)', 1, NULL, 384, false);
INSERT INTO public.empresa VALUES (1842, true, '2023-06-12 12:25:48.647923', NULL, 'FACULDADE ITPAC SANTA INES (ITPAC SANTA INÊS)', 1, NULL, 507, false);
INSERT INTO public.empresa VALUES (1843, true, '2023-06-12 12:25:48.66003', NULL, 'FACULDADE JAGUAR INDAIÁ (FJI)', 1, NULL, 11, false);
INSERT INTO public.empresa VALUES (1844, true, '2023-06-12 12:25:48.667276', NULL, 'FACULDADE JARDINS (FACJARDINS)', 1, NULL, 142, false);
INSERT INTO public.empresa VALUES (1845, true, '2023-06-12 12:25:48.674773', NULL, 'FACULDADE JESUÍTA DE FILOSOFIA E TEOLOGIA (FAJE)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (1846, true, '2023-06-12 12:25:48.682723', NULL, 'FACULDADE JK BRASÍLIA - RECANTO DAS EMAS (JK BSB RE)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (1847, true, '2023-06-12 12:25:48.690187', NULL, 'FACULDADE JK DE TECNOLOGIA (FACJK)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (1848, true, '2023-06-12 12:25:48.697658', NULL, 'FACULDADE JK - GUARÁ (JK)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (1849, true, '2023-06-12 12:25:48.705019', NULL, 'FACULDADE JK - UNIDADE I - GAMA', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (1850, true, '2023-06-12 12:25:48.712903', NULL, 'FACULDADE JK - UNIDADE II - GAMA', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (1851, true, '2023-06-12 12:25:48.720283', NULL, 'FACULDADE JOÃO PAULO II (FAJOP)', 1, NULL, 621, false);
INSERT INTO public.empresa VALUES (1852, true, '2023-06-12 12:25:48.727504', NULL, 'FACULDADE KENNEDY DE BELO HORIZONTE (FKBH)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (1853, true, '2023-06-12 12:25:48.734777', NULL, 'FACULDADE KENNEDY DE IPATINGA (FKIPATINGA)', 1, NULL, 268, false);
INSERT INTO public.empresa VALUES (1854, true, '2023-06-12 12:25:48.743097', NULL, 'FACULDADE KENNEDY DE MINAS GERAIS - FKMG (FKMG)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (1855, true, '2023-06-12 12:25:48.750266', NULL, 'FACULDADE LABORO (LABORO)', 1, NULL, 141, false);
INSERT INTO public.empresa VALUES (1856, true, '2023-06-12 12:25:48.757578', NULL, 'FACULDADE LA SALLE', 1, NULL, 75, false);
INSERT INTO public.empresa VALUES (1857, true, '2023-06-12 12:25:48.764934', NULL, 'FACULDADE LATINO-AMERICANA (FLAM)', 1, NULL, 622, false);
INSERT INTO public.empresa VALUES (1858, true, '2023-06-12 12:25:48.773329', NULL, 'FACULDADE LEGALE (LEGALE)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1859, true, '2023-06-12 12:25:48.780845', NULL, 'FACULDADE LEONARDO DA VINCI DE BELO HORIZONTE', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (1860, true, '2023-06-12 12:25:48.788256', NULL, 'FACULDADE LEONARDO DA VINCI DE SÃO GONÇALO', 1, NULL, 623, false);
INSERT INTO public.empresa VALUES (1861, true, '2023-06-12 12:25:48.800677', NULL, 'FACULDADE LEONARDO DA VINCI - SANTA CATARINA (FAVINCI)', 1, NULL, 624, false);
INSERT INTO public.empresa VALUES (1862, true, '2023-06-12 12:25:48.807994', NULL, 'FACULDADE LIBER DE PORANGATU (FACLIBER)', 1, NULL, 614, false);
INSERT INTO public.empresa VALUES (1863, true, '2023-06-12 12:25:48.815325', NULL, 'FACULDADE LIFE (FACLIFE)', 1, NULL, 625, false);
INSERT INTO public.empresa VALUES (1864, true, '2023-06-12 12:25:48.822492', NULL, 'FACULDADE LIFE UNIC EDUCATION (LI)', 1, NULL, 68, false);
INSERT INTO public.empresa VALUES (1865, true, '2023-06-12 12:25:48.830506', NULL, 'FACULDADE LIONS (FAC-LIONS)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (1866, true, '2023-06-12 12:25:48.837718', NULL, 'FACULDADE LOGOS (FALOG)', 1, NULL, 626, false);
INSERT INTO public.empresa VALUES (1867, true, '2023-06-12 12:25:48.845019', NULL, 'FACULDADE LUCIANO FEIJÃO (FLF)', 1, NULL, 167, false);
INSERT INTO public.empresa VALUES (1868, true, '2023-06-12 12:25:48.852451', NULL, 'FACULDADE LUIZ EDUARDO MAGALHÃES (FILEM)', 1, NULL, 52, false);
INSERT INTO public.empresa VALUES (1869, true, '2023-06-12 12:25:48.860329', NULL, 'FACULDADE LUIZ MÁRIO MOUTINHO (FLMM)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (1870, true, '2023-06-12 12:25:48.867762', NULL, 'FACULDADE LUSITANA DE PERNAMBUCO (FALUP)', 1, NULL, 627, false);
INSERT INTO public.empresa VALUES (1871, true, '2023-06-12 12:25:48.875344', NULL, 'FACULDADE LUSO-BRASILEIRA (FALUB)', 1, NULL, 627, false);
INSERT INTO public.empresa VALUES (1872, true, '2023-06-12 12:25:48.882484', NULL, 'FACULDADE LUSÓFONA DA BAHIA (FL-BA)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (1873, true, '2023-06-12 12:25:48.890289', NULL, 'FACULDADE LUSÓFONA DE SÃO PAULO (FL-SP)', 1, NULL, 520, false);
INSERT INTO public.empresa VALUES (1874, true, '2023-06-12 12:25:48.897696', NULL, 'FACULDADE LUSÓFONA DO RIO DE JANEIRO (FL-RJ)', 1, NULL, 623, false);
INSERT INTO public.empresa VALUES (1875, true, '2023-06-12 12:25:48.905178', NULL, 'FACULDADE LUTERANA DE TEOLOGIA (FLT)', 1, NULL, 546, false);
INSERT INTO public.empresa VALUES (1876, true, '2023-06-12 12:25:48.912562', NULL, 'FACULDADE LUTERANA SÃO MARCOS (FALSM)', 1, NULL, 263, false);
INSERT INTO public.empresa VALUES (1877, true, '2023-06-12 12:25:48.920646', NULL, 'FACULDADE MACÊDO DE AMORIM (FAMAM)', 1, NULL, 90, false);
INSERT INTO public.empresa VALUES (1878, true, '2023-06-12 12:25:48.928071', NULL, 'FACULDADE MACHADO DE ASSIS (FAMA)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (1879, true, '2023-06-12 12:25:48.940281', NULL, 'FACULDADE MACHADO SOBRINHO (FMS)', 1, NULL, 38, false);
INSERT INTO public.empresa VALUES (1880, true, '2023-06-12 12:25:48.947531', NULL, 'FACULDADE MADALENA SOFIA (FMS)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (1881, true, '2023-06-12 12:25:48.955345', NULL, 'FACULDADE MADRE TEREZA (FAMAT)', 1, NULL, 628, false);
INSERT INTO public.empresa VALUES (1882, true, '2023-06-12 12:25:48.963019', NULL, 'FACULDADE MADRE THAIS (FMT)', 1, NULL, 20, false);
INSERT INTO public.empresa VALUES (1883, true, '2023-06-12 12:25:48.970663', NULL, 'FACULDADE MAIS DE ITUIUTABA (FACMAIS)', 1, NULL, 629, false);
INSERT INTO public.empresa VALUES (1884, true, '2023-06-12 12:25:48.977875', NULL, 'FACULDADE MALTA (FACMA)', 1, NULL, 27, false);
INSERT INTO public.empresa VALUES (1885, true, '2023-06-12 12:25:48.985967', NULL, 'FACULDADE MARANATHA (FAMAH)', 1, NULL, 27, false);
INSERT INTO public.empresa VALUES (1886, true, '2023-06-12 12:25:48.993296', NULL, 'FACULDADE MARANHENSE (FAM)', 1, NULL, 630, false);
INSERT INTO public.empresa VALUES (1887, true, '2023-06-12 12:25:49.000501', NULL, 'FACULDADE MARANHENSE SÃO JOSÉ DOS COCAIS (FSJ)', 1, NULL, 456, false);
INSERT INTO public.empresa VALUES (1888, true, '2023-06-12 12:25:49.007828', NULL, 'FACULDADE MARECHAL RONDON', 1, NULL, 355, false);
INSERT INTO public.empresa VALUES (1889, true, '2023-06-12 12:25:49.015888', NULL, 'FACULDADE MARECHAL RONDON (FMR)', 1, NULL, 631, false);
INSERT INTO public.empresa VALUES (1890, true, '2023-06-12 12:25:49.02382', NULL, 'FACULDADE MARECHAL RONDON DE BAURU (FMR-BAURU)', 1, NULL, 93, false);
INSERT INTO public.empresa VALUES (1891, true, '2023-06-12 12:25:49.031418', NULL, 'FACULDADE MARECHAL RONDON DE GUARULHOS (FMR-GUARULHOS)', 1, NULL, 100, false);
INSERT INTO public.empresa VALUES (1892, true, '2023-06-12 12:25:49.038636', NULL, 'FACULDADE MARECHAL RONDON DE MAUÁ (FMR-MAUÁ)', 1, NULL, 480, false);
INSERT INTO public.empresa VALUES (1893, true, '2023-06-12 12:25:49.046931', NULL, 'FACULDADE MARIA THEREZA (FAMATH)', 1, NULL, 49, false);
INSERT INTO public.empresa VALUES (1894, true, '2023-06-12 12:25:49.054256', NULL, 'FACULDADE MARINGÁ (CESPAR)', 1, NULL, 76, false);
INSERT INTO public.empresa VALUES (1895, true, '2023-06-12 12:25:49.061549', NULL, 'FACULDADE MÁRIO QUINTANA (FAMAQUI)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (1896, true, '2023-06-12 12:25:49.068985', NULL, 'FACULDADE MARQUÊS DE OLINDA (FMO)', 1, NULL, 127, false);
INSERT INTO public.empresa VALUES (1897, true, '2023-06-12 12:25:49.076879', NULL, 'FACULDADE MARTHA FALCÃO WYDEN (FMF WYDEN)', 1, NULL, 75, false);
INSERT INTO public.empresa VALUES (1898, true, '2023-06-12 12:25:49.084157', NULL, 'FACULDADE MASTER DE PARAUAPEBAS - FAMAP (FAMAP)', 1, NULL, 281, false);
INSERT INTO public.empresa VALUES (1899, true, '2023-06-12 12:25:49.096371', NULL, 'FACULDADE MASTER DO PARÁ - FAMAP TUCUMÃ (FAMAP)', 1, NULL, 632, false);
INSERT INTO public.empresa VALUES (1900, true, '2023-06-12 12:25:49.103673', NULL, 'FACULDADE MASTER DO PARÁ - FAMAP XINGUARA (FAMAP)', 1, NULL, 633, false);
INSERT INTO public.empresa VALUES (1901, true, '2023-06-12 12:25:49.11159', NULL, 'FACULDADE MATO GROSSO DO SUL (FACSUL)', 1, NULL, 48, false);
INSERT INTO public.empresa VALUES (1902, true, '2023-06-12 12:25:49.119172', NULL, 'FACULDADE MAUÁ DE GOIÁS', 1, NULL, 603, false);
INSERT INTO public.empresa VALUES (1903, true, '2023-06-12 12:25:49.126774', NULL, 'FACULDADE MAURÍCIO DE NASSAU DE IMPETRATRIZ (FMN IMPERATRIZ)', 1, NULL, 267, false);
INSERT INTO public.empresa VALUES (1904, true, '2023-06-12 12:25:49.133926', NULL, 'FACULDADE MAURÍCIO DE NASSAU SERRA TALHADA (FMN SERRA)', 1, NULL, 398, false);
INSERT INTO public.empresa VALUES (1905, true, '2023-06-12 12:25:49.141771', NULL, 'FACULDADE M-EDUCAR (FAMED)', 1, NULL, 634, false);
INSERT INTO public.empresa VALUES (1906, true, '2023-06-12 12:25:49.149258', NULL, 'FACULDADE MEGA (MEGA)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (1907, true, '2023-06-12 12:25:49.156382', NULL, 'FACULDADE MÉLIÈS (MÉLIÈS)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1908, true, '2023-06-12 12:25:49.163644', NULL, 'FACULDADE MENINO DEUS (FAMED)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (1909, true, '2023-06-12 12:25:49.17173', NULL, 'FACULDADE MENNA BARRETO (FMB)', 1, NULL, 206, false);
INSERT INTO public.empresa VALUES (1910, true, '2023-06-12 12:25:49.179558', NULL, 'FACULDADE MERIDIONAL (IMED)', 1, NULL, 282, false);
INSERT INTO public.empresa VALUES (1911, true, '2023-06-12 12:25:49.187084', NULL, 'FACULDADE MERIDIONAL DE IJUÍ (IMED)', 1, NULL, 311, false);
INSERT INTO public.empresa VALUES (1912, true, '2023-06-12 12:25:49.194639', NULL, 'FACULDADE MERIDIONAL DE PORTO ALEGRE (IMED)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (1913, true, '2023-06-12 12:25:49.202579', NULL, 'FACULDADE MERIDIONAL RS (IMED )', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (1914, true, '2023-06-12 12:25:49.209903', NULL, 'FACULDADE MESSIANICA', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1915, true, '2023-06-12 12:25:49.221789', NULL, 'FACULDADE METODISTA CENTENÁRIO (FMC)', 1, NULL, 417, false);
INSERT INTO public.empresa VALUES (1916, true, '2023-06-12 12:25:49.240376', NULL, 'FACULDADE METODISTA CONEXIONAL (FACO)', 1, NULL, 467, false);
INSERT INTO public.empresa VALUES (1917, true, '2023-06-12 12:25:49.25193', NULL, 'FACULDADE METODISTA DE CIÊNCIAS HUMANAS E EXATAS (METODISTA)', 1, NULL, 313, false);
INSERT INTO public.empresa VALUES (1918, true, '2023-06-12 12:25:49.259956', NULL, 'FACULDADE METODISTA GRANBERY (FMG)', 1, NULL, 38, false);
INSERT INTO public.empresa VALUES (1919, true, '2023-06-12 12:25:49.267699', NULL, 'FACULDADE MÉTODO DE SÃO PAULO (FAMESP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1920, true, '2023-06-12 12:25:49.294537', NULL, 'FACULDADE METROPOLITANA (UNNESA)', 1, NULL, 51, false);
INSERT INTO public.empresa VALUES (1921, true, '2023-06-12 12:25:49.302377', NULL, 'FACULDADE METROPOLITANA DA GRANDE RECIFE (UNESJ)', 1, NULL, 132, false);
INSERT INTO public.empresa VALUES (1922, true, '2023-06-12 12:25:49.309701', NULL, 'FACULDADE METROPOLITANA DE ANÁPOLIS (FAMA)', 1, NULL, 264, false);
INSERT INTO public.empresa VALUES (1923, true, '2023-06-12 12:25:49.317122', NULL, 'FACULDADE METROPOLITANA DE CIENCIAS E TECNOLOGIA (FAMEC)', 1, NULL, 537, false);
INSERT INTO public.empresa VALUES (1924, true, '2023-06-12 12:25:49.32458', NULL, 'FACULDADE METROPOLITANA DE COARI (FAMETRO)', 1, NULL, 635, false);
INSERT INTO public.empresa VALUES (1925, true, '2023-06-12 12:25:49.332501', NULL, 'FACULDADE METROPOLITANA DE DIAS D''ÀVILA (FACD''ÀVILA)', 1, NULL, 636, false);
INSERT INTO public.empresa VALUES (1926, true, '2023-06-12 12:25:49.339893', NULL, 'FACULDADE METROPOLITANA DE FLORIANÓPOLIS (FAMEFLORIPA)', 1, NULL, 3, false);
INSERT INTO public.empresa VALUES (1927, true, '2023-06-12 12:25:49.347372', NULL, 'FACULDADE METROPOLITANA DE FRANCA (FAMEF)', 1, NULL, 179, false);
INSERT INTO public.empresa VALUES (1928, true, '2023-06-12 12:25:49.355112', NULL, 'FACULDADE METROPOLITANA DE HORIZONTE (FMH)', 1, NULL, 525, false);
INSERT INTO public.empresa VALUES (1929, true, '2023-06-12 12:25:49.367835', NULL, 'FACULDADE METROPOLITANA DE ITACOATIARA (FAMETRO)', 1, NULL, 637, false);
INSERT INTO public.empresa VALUES (1930, true, '2023-06-12 12:25:49.375299', NULL, 'FACULDADE METROPOLITANA DE ITAJAÍ (FIMT)', 1, NULL, 345, false);
INSERT INTO public.empresa VALUES (1931, true, '2023-06-12 12:25:49.382792', NULL, 'FACULDADE METROPOLITANA DE JOINVILLE (FAMEVILLE)', 1, NULL, 68, false);
INSERT INTO public.empresa VALUES (1932, true, '2023-06-12 12:25:49.390632', NULL, 'FACULDADE METROPOLITANA DE LAGES (FAMELAGES)', 1, NULL, 148, false);
INSERT INTO public.empresa VALUES (1933, true, '2023-06-12 12:25:49.397989', NULL, 'FACULDADE METROPOLITANA DE PALHOÇA (FAMEPALHOÇA)', 1, NULL, 544, false);
INSERT INTO public.empresa VALUES (1934, true, '2023-06-12 12:25:49.405634', NULL, 'FACULDADE METROPOLITANA DE PARINTINS (FAMETRO)', 1, NULL, 638, false);
INSERT INTO public.empresa VALUES (1935, true, '2023-06-12 12:25:49.413061', NULL, 'FACULDADE METROPOLITANA DE RIO DO SUL (FAMESUL)', 1, NULL, 183, false);
INSERT INTO public.empresa VALUES (1936, true, '2023-06-12 12:25:49.421702', NULL, 'FACULDADE METROPOLITANA DE TEFÉ (FAMETRO)', 1, NULL, 639, false);
INSERT INTO public.empresa VALUES (1937, true, '2023-06-12 12:25:49.429237', NULL, 'FACULDADE METROPOLITANA DE TERESINA', 1, NULL, 27, false);
INSERT INTO public.empresa VALUES (1938, true, '2023-06-12 12:25:49.436774', NULL, 'FACULDADE METROPOLITANA DO CARIRI (FAMEC)', 1, NULL, 310, false);
INSERT INTO public.empresa VALUES (1939, true, '2023-06-12 12:25:49.444062', NULL, 'FACULDADE METROPOLITANA DO CEARÁ (FAMEC)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (1940, true, '2023-06-12 12:25:49.452015', NULL, 'FACULDADE METROPOLITANA DO ESTADO DE SÃO PAULO (FAMEESP)', 1, NULL, 58, false);
INSERT INTO public.empresa VALUES (1941, true, '2023-06-12 12:25:49.459348', NULL, 'FACULDADE METROPOLITANA DO MARAJÓ (FAMMA)', 1, NULL, 640, false);
INSERT INTO public.empresa VALUES (1942, true, '2023-06-12 12:25:49.47136', NULL, 'FACULDADE METROPOLITANA DO PARÁ (FAMETRO)', 1, NULL, 78, false);
INSERT INTO public.empresa VALUES (1943, true, '2023-06-12 12:25:49.4788', NULL, 'FACULDADE METROPOLITANA DO PLANALTO NORTE (FAMEPLAN)', 1, NULL, 358, false);
INSERT INTO public.empresa VALUES (1944, true, '2023-06-12 12:25:49.486691', NULL, 'FACULDADE METROPOLITANA NORTE RIOGRANDENSE (FAMEN)', 1, NULL, 130, false);
INSERT INTO public.empresa VALUES (1945, true, '2023-06-12 12:25:49.494018', NULL, 'FACULDADE METROPOLITANA SÃO CARLOS BJI (FAMESC-BJI)', 1, NULL, 448, false);
INSERT INTO public.empresa VALUES (1946, true, '2023-06-12 12:25:49.501474', NULL, 'FACULDADE MICROLINS (FAMIC)', 1, NULL, 181, false);
INSERT INTO public.empresa VALUES (1947, true, '2023-06-12 12:25:49.509261', NULL, 'FACULDADE MILTON CAMPOS (FMC)', 1, NULL, 481, false);
INSERT INTO public.empresa VALUES (1948, true, '2023-06-12 12:25:49.521945', NULL, 'FACULDADE MINAS GERAIS (FAMIG)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (1949, true, '2023-06-12 12:25:49.529394', NULL, 'FACULDADE MIRIENSE', 1, NULL, 641, false);
INSERT INTO public.empresa VALUES (1950, true, '2023-06-12 12:25:49.536634', NULL, 'FACULDADE MODAL (MODAL)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (1951, true, '2023-06-12 12:25:49.543999', NULL, 'FACULDADE MODELO (FACIMOD)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (1952, true, '2023-06-12 12:25:49.551917', NULL, 'FACULDADE MOGIANA (FAMOGI)', 1, NULL, 642, false);
INSERT INTO public.empresa VALUES (1953, true, '2023-06-12 12:25:49.559453', NULL, 'FACULDADE MOGIANA DO ESTADO DE SÃO PAULO (FMG)', 1, NULL, 279, false);
INSERT INTO public.empresa VALUES (1954, true, '2023-06-12 12:25:49.566964', NULL, 'FACULDADE MONSENHOR HIPOLITO (FMH)', 1, NULL, 643, false);
INSERT INTO public.empresa VALUES (1955, true, '2023-06-12 12:25:49.574565', NULL, 'FACULDADE MONTE PASCOAL (FMP)', 1, NULL, 644, false);
INSERT INTO public.empresa VALUES (1956, true, '2023-06-12 12:25:49.582749', NULL, 'FACULDADE MONTES CLAROS (FACULMONTES)', 1, NULL, 128, false);
INSERT INTO public.empresa VALUES (1957, true, '2023-06-12 12:25:49.594915', NULL, 'FACULDADE MONTESSORIANO DE SALVADOR (FAMA)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (1958, true, '2023-06-12 12:25:49.602467', NULL, 'FACULDADE MORGANA POTRICH (FAMP)', 1, NULL, 109, false);
INSERT INTO public.empresa VALUES (1959, true, '2023-06-12 12:25:49.610264', NULL, 'FACULDADE MORUMBI (FAMOR)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1960, true, '2023-06-12 12:25:49.618225', NULL, 'FACULDADE MOZARTEUM DE SÃO PAULO (FAMOSP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (1961, true, '2023-06-12 12:25:49.625625', NULL, 'FACULDADE MULTIVERSA (MULTIVERSA)', 1, NULL, 124, false);
INSERT INTO public.empresa VALUES (1962, true, '2023-06-12 12:25:49.636965', NULL, 'FACULDADE MULTIVERSA DE FORTALEZA', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (1963, true, '2023-06-12 12:25:49.644464', NULL, 'FACULDADE MULTIVERSA DE PALOTINA (MULTIVERSA)', 1, NULL, 645, false);
INSERT INTO public.empresa VALUES (1964, true, '2023-06-12 12:25:49.652456', NULL, 'FACULDADE MULTIVERSA DE TECNOLOGIA', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (1965, true, '2023-06-12 12:25:49.659796', NULL, 'FACULDADE MULTIVIX CARIACICA (MULTIVIX CARIAC)', 1, NULL, 389, false);
INSERT INTO public.empresa VALUES (1966, true, '2023-06-12 12:25:49.667756', NULL, 'FACULDADE MULTIVIX DE CACHOEIRO (MULTIVIX CACHOEIRO)', 1, NULL, 190, false);
INSERT INTO public.empresa VALUES (1967, true, '2023-06-12 12:25:49.675055', NULL, 'FACULDADE MULTIVIX NOVA VENÉCIA (MULTIVIX NOVA VENÉCI)', 1, NULL, 646, false);
INSERT INTO public.empresa VALUES (1968, true, '2023-06-12 12:25:49.682906', NULL, 'FACULDADE MULTIVIX SÃO MATEUS (MULTIVIX SÃO MATEUS)', 1, NULL, 216, false);
INSERT INTO public.empresa VALUES (1969, true, '2023-06-12 12:25:49.69029', NULL, 'FACULDADE MULTIVIX SERRA (MULTIVIX SERRA)', 1, NULL, 290, false);
INSERT INTO public.empresa VALUES (1970, true, '2023-06-12 12:25:49.697677', NULL, 'FACULDADE MULTIVIX VILA VELHA (MULTIVIX VILA V)', 1, NULL, 226, false);
INSERT INTO public.empresa VALUES (1971, true, '2023-06-12 12:25:49.705014', NULL, 'FACULDADE MUNICIPAL DE EDUCAÇÃO E MEIO AMBIENTE (FAMA)', 1, NULL, 647, false);
INSERT INTO public.empresa VALUES (1972, true, '2023-06-12 12:25:49.713159', NULL, 'FACULDADE MUNICIPAL DE PALHOÇA (FMP)', 1, NULL, 544, false);
INSERT INTO public.empresa VALUES (1973, true, '2023-06-12 12:25:49.725284', NULL, 'FACULDADE MUNICIPAL PROFESSOR FRANCO MONTORO DE MOGI GUAÇU (FMPFM)', 1, NULL, 279, false);
INSERT INTO public.empresa VALUES (1974, true, '2023-06-12 12:25:49.732608', NULL, 'FACULDADE MURIALDO (FAMUR)', 1, NULL, 87, false);
INSERT INTO public.empresa VALUES (1975, true, '2023-06-12 12:25:49.739901', NULL, 'FACULDADE NACIONAL (FANAC)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (1976, true, '2023-06-12 12:25:49.747802', NULL, 'FACULDADE NACIONAL DE NATUROPATIA ADMINISTRAÇÃO E PEDAGOGIA (FANNAP)', 1, NULL, 541, false);
INSERT INTO public.empresa VALUES (1977, true, '2023-06-12 12:25:49.755173', NULL, 'FACULDADE NAZARENA DO BRASIL (FNB)', 1, NULL, 177, false);
INSERT INTO public.empresa VALUES (1978, true, '2023-06-12 12:25:49.762699', NULL, 'FACULDADE NETCOM (FANET)', 1, NULL, 141, false);
INSERT INTO public.empresa VALUES (1979, true, '2023-06-12 12:25:49.770213', NULL, 'FACULDADE NETWORK (NWK)', 1, NULL, 648, false);
INSERT INTO public.empresa VALUES (1980, true, '2023-06-12 12:25:49.77804', NULL, 'FACULDADE NIP DE CIÊNCIAS APLICADAS (FANIP)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (1981, true, '2023-06-12 12:25:49.785388', NULL, 'FACULDADE NOROESTE (FAN)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (1982, true, '2023-06-12 12:25:49.792752', NULL, 'FACULDADE NORTE E NORDESTE DO BRASIL (FANOR - BRASIL)', 1, NULL, 649, false);
INSERT INTO public.empresa VALUES (1983, true, '2023-06-12 12:25:49.799997', NULL, 'FACULDADE NORTE-SUL (FANS)', 1, NULL, 183, false);
INSERT INTO public.empresa VALUES (1984, true, '2023-06-12 12:25:49.807806', NULL, 'FACULDADE NOSSA SENHORA APARECIDA (FNSA)', 1, NULL, 98, false);
INSERT INTO public.empresa VALUES (1985, true, '2023-06-12 12:25:49.815562', NULL, 'FACULDADE NOSSA SENHORA DA CONCEIÇÃO (FSC)', 1, NULL, 142, false);
INSERT INTO public.empresa VALUES (1986, true, '2023-06-12 12:25:49.822972', NULL, 'FACULDADE NOSSA SENHORA DE FÁTIMA (FACULDADE FÁTIMA)', 1, NULL, 87, false);
INSERT INTO public.empresa VALUES (1987, true, '2023-06-12 12:25:49.830409', NULL, 'FACULDADE NOSSA SENHORA DE LOURDES (FNSL)', 1, NULL, 308, false);
INSERT INTO public.empresa VALUES (1988, true, '2023-06-12 12:25:49.838341', NULL, 'FACULDADE NOVA ROMA (FNR)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (1989, true, '2023-06-12 12:25:49.845611', NULL, 'FACULDADE NOVA ROMA CARUARU (FNR CARUARU)', 1, NULL, 156, false);
INSERT INTO public.empresa VALUES (1990, true, '2023-06-12 12:25:49.852984', NULL, 'FACULDADE NOVA ROMA DE CAMPO GRANDE (FNR - CAMPO GRANDE)', 1, NULL, 48, false);
INSERT INTO public.empresa VALUES (1991, true, '2023-06-12 12:25:49.865613', NULL, 'FACULDADE NOVE DE JULHO DE BAURU (NOVE-BAURU)', 1, NULL, 93, false);
INSERT INTO public.empresa VALUES (1992, true, '2023-06-12 12:25:49.873021', NULL, 'FACULDADE NOVE DE JULHO DE BOTUCATU (NOVE-BOTUCATU)', 1, NULL, 383, false);
INSERT INTO public.empresa VALUES (1993, true, '2023-06-12 12:25:49.880673', NULL, 'FACULDADE NOVE DE JULHO DE OSASCO (NOVE-OSASCO)', 1, NULL, 158, false);
INSERT INTO public.empresa VALUES (1994, true, '2023-06-12 12:25:49.888189', NULL, 'FACULDADE NOVE DE JULHO DE SÃO BERNARDO DO CAMPO (NOVE-SBC)', 1, NULL, 82, false);
INSERT INTO public.empresa VALUES (1995, true, '2023-06-12 12:25:49.896287', NULL, 'FACULDADE NOVE DE JULHO GUARULHOS (NOVE-GUARULHOS)', 1, NULL, 100, false);
INSERT INTO public.empresa VALUES (1996, true, '2023-06-12 12:25:49.903725', NULL, 'FACULDADE NOVE DE JULHO MAUÁ (NOVE_MAUÁ)', 1, NULL, 480, false);
INSERT INTO public.empresa VALUES (1997, true, '2023-06-12 12:25:49.91105', NULL, 'FACULDADE NOVOESTE (NOVOESTE)', 1, NULL, 48, false);
INSERT INTO public.empresa VALUES (1998, true, '2023-06-12 12:25:49.919058', NULL, 'FACULDADE NOVO HAMBURGO (FACULDADE IENH)', 1, NULL, 541, false);
INSERT INTO public.empresa VALUES (1999, true, '2023-06-12 12:25:49.927009', NULL, 'FACULDADE NOVO HORIZONTE (FNH)', 1, NULL, 90, false);
INSERT INTO public.empresa VALUES (2000, true, '2023-06-12 12:25:49.934526', NULL, 'FACULDADE NOVO HORIZONTE DE IPOJUCA (FNH)', 1, NULL, 650, false);
INSERT INTO public.empresa VALUES (2001, true, '2023-06-12 12:25:49.94266', NULL, 'FACULDADE NOVO MILÊNIO (FNM)', 1, NULL, 226, false);
INSERT INTO public.empresa VALUES (2002, true, '2023-06-12 12:25:49.950176', NULL, 'FACULDADE OLGA METTIG (FAMETTIG)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (2003, true, '2023-06-12 12:25:49.957985', NULL, 'FACULDADE ONE LEARNING', 1, NULL, 566, false);
INSERT INTO public.empresa VALUES (2004, true, '2023-06-12 12:25:49.965435', NULL, 'FACULDADE OPUS 365', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2005, true, '2023-06-12 12:25:49.972719', NULL, 'FACULDADE ORÍGENES LESSA (FACOL)', 1, NULL, 651, false);
INSERT INTO public.empresa VALUES (2006, true, '2023-06-12 12:25:49.979978', NULL, 'FACULDADE PADRÃO (PADRAO)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (2007, true, '2023-06-12 12:25:49.992581', NULL, 'FACULDADE PADRÃO (-)', 1, NULL, 41, false);
INSERT INTO public.empresa VALUES (2008, true, '2023-06-12 12:25:49.999944', NULL, 'FACULDADE PADRAO DE SENADOR CANEDO (FAPSC)', 1, NULL, 538, false);
INSERT INTO public.empresa VALUES (2009, true, '2023-06-12 12:25:50.007365', NULL, 'FACULDADE PAIVA ANDRADE (FPA)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (2010, true, '2023-06-12 12:25:50.01477', NULL, 'FACULDADE PALOTINA (FAPAS)', 1, NULL, 417, false);
INSERT INTO public.empresa VALUES (2011, true, '2023-06-12 12:25:50.022896', NULL, 'FACULDADE PAN AMAZÔNICA (FAPAN)', 1, NULL, 79, false);
INSERT INTO public.empresa VALUES (2012, true, '2023-06-12 12:25:50.030282', NULL, 'FACULDADE PAN AMERICANA (FPA)', 1, NULL, 652, false);
INSERT INTO public.empresa VALUES (2013, true, '2023-06-12 12:25:50.037575', NULL, 'FACULDADE PAN-AMERICANA DE ADMINISTRAÇÃO E DIREITO (FAPAD)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (2014, true, '2023-06-12 12:25:50.044926', NULL, 'FACULDADE PARAENSE DE ENSINO (FAPEN)', 1, NULL, 79, false);
INSERT INTO public.empresa VALUES (2015, true, '2023-06-12 12:25:50.052745', NULL, 'FACULDADE PARAÍSO ARARIPINA (FAP)', 1, NULL, 393, false);
INSERT INTO public.empresa VALUES (2016, true, '2023-06-12 12:25:50.059939', NULL, 'FACULDADE PARAÍSO FORTALEZA (FAP)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (2017, true, '2023-06-12 12:25:50.067527', NULL, 'FACULDADE PARANÁ (FAP)', 1, NULL, 327, false);
INSERT INTO public.empresa VALUES (2018, true, '2023-06-12 12:25:50.075159', NULL, 'FACULDADE PARANAENSE (FACCAR)', 1, NULL, 653, false);
INSERT INTO public.empresa VALUES (2019, true, '2023-06-12 12:25:50.083064', NULL, 'FACULDADE PARANAENSE (FAPAR)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (2020, true, '2023-06-12 12:25:50.090456', NULL, 'FACULDADE PARA O DESENVOLVIMENTO SUSTENTÁVEL DA AMAZÔNIA (FADESA)', 1, NULL, 281, false);
INSERT INTO public.empresa VALUES (2021, true, '2023-06-12 12:25:50.097795', NULL, 'FACULDADE PARQUE (FAP)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (2022, true, '2023-06-12 12:25:50.105392', NULL, 'FACULDADE PASCHOAL DANTAS (FPD)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2023, true, '2023-06-12 12:25:50.113348', NULL, 'FACULDADE PASCHOAL DANTAS EAD (FPD - EAD)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2024, true, '2023-06-12 12:25:50.121055', NULL, 'FACULDADE PAULISTA DE ARTES (FPA)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2025, true, '2023-06-12 12:25:50.133422', NULL, 'FACULDADE PAULISTA DE BEM ESTAR E SAÚDE', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2026, true, '2023-06-12 12:25:50.140834', NULL, 'FACULDADE PAULISTA DE CIÊNCIAS DA SAÚDE (FPCS)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2027, true, '2023-06-12 12:25:50.148701', NULL, 'FACULDADE PAULISTA DE COMUNICAÇÃO (FEPAC)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2028, true, '2023-06-12 12:25:50.156047', NULL, 'FACULDADE PAULISTA DE GESTÃO E SAÚDE', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2029, true, '2023-06-12 12:25:50.163513', NULL, 'FACULDADE PAULISTA DE SERVIÇO SOCIAL DE SÃO CAETANO DO SUL (FAPSS)', 1, NULL, 126, false);
INSERT INTO public.empresa VALUES (2030, true, '2023-06-12 12:25:50.171345', NULL, 'FACULDADE PAULO PICANÇO (FACPP)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (2031, true, '2023-06-12 12:25:50.179256', NULL, 'FACULDADE PAULUS DE TECNOLOGIA E COMUNICAÇÃO (FAPCOM)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2032, true, '2023-06-12 12:25:50.186578', NULL, 'FACULDADE PECEGE (PECEGE)', 1, NULL, 224, false);
INSERT INTO public.empresa VALUES (2033, true, '2023-06-12 12:25:50.194202', NULL, 'FACULDADE PEDRO II (FAPE2)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (2034, true, '2023-06-12 12:25:50.201551', NULL, 'FACULDADE PEDRO LEOPOLDO (FPL)', 1, NULL, 654, false);
INSERT INTO public.empresa VALUES (2035, true, '2023-06-12 12:25:50.209435', NULL, 'FACULDADE PENTÁGONO - FAPEN (FAPEN)', 1, NULL, 47, false);
INSERT INTO public.empresa VALUES (2036, true, '2023-06-12 12:25:50.216966', NULL, 'FACULDADE PERNAMBUCANA DE SAÚDE (FPS)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (2037, true, '2023-06-12 12:25:50.224245', NULL, 'FACULDADE PERUIBE (FPBE)', 1, NULL, 655, false);
INSERT INTO public.empresa VALUES (2038, true, '2023-06-12 12:25:50.231617', NULL, 'FACULDADE PESTALOZZI DE FRANCA (FAPESF)', 1, NULL, 179, false);
INSERT INTO public.empresa VALUES (2039, true, '2023-06-12 12:25:50.23946', NULL, 'FACULDADE PETRUS (FAPETRUS)', 1, NULL, 141, false);
INSERT INTO public.empresa VALUES (2040, true, '2023-06-12 12:25:50.246769', NULL, 'FACULDADE PHORTE DE EDUCAÇÃO E TECNOLOGIA', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2041, true, '2023-06-12 12:25:50.253988', NULL, 'FACULDADE PHYSIO CURSOS (FACPHYSIO)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2042, true, '2023-06-12 12:25:50.26133', NULL, 'FACULDADE PIAUIENSE DE PROCESSAMENTO DE DADOS (FPPD)', 1, NULL, 27, false);
INSERT INTO public.empresa VALUES (2043, true, '2023-06-12 12:25:50.269251', NULL, 'FACULDADE PINHALZINHO (HORUS)', 1, NULL, 656, false);
INSERT INTO public.empresa VALUES (2044, true, '2023-06-12 12:25:50.276499', NULL, 'FACULDADE PINHEIRO GUIMARÃES (FAPG)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2045, true, '2023-06-12 12:25:50.283753', NULL, 'FACULDADE PIO DÉCIMO (FPD)', 1, NULL, 142, false);
INSERT INTO public.empresa VALUES (2046, true, '2023-06-12 12:25:50.290982', NULL, 'FACULDADE PIO DECIMO DE CANINDE DO SAO FRANCISCO (FAPIDE)', 1, NULL, 657, false);
INSERT INTO public.empresa VALUES (2047, true, '2023-06-12 12:25:50.299067', NULL, 'FACULDADE PITÁGORAS ANHANGUERA DE TERESINA', 1, NULL, 27, false);
INSERT INTO public.empresa VALUES (2048, true, '2023-06-12 12:25:50.306542', NULL, 'FACULDADE PITAGORAS ANHANGUERA DE TRÊS LAGOAS', 1, NULL, 658, false);
INSERT INTO public.empresa VALUES (2049, true, '2023-06-12 12:25:50.319915', NULL, 'FACULDADE PITÁGORAS BACABAL MEARIM', 1, NULL, 659, false);
INSERT INTO public.empresa VALUES (2050, true, '2023-06-12 12:25:50.327914', NULL, 'FACULDADE PITÁGORAS DE ALTAMIRA', 1, NULL, 14, false);
INSERT INTO public.empresa VALUES (2051, true, '2023-06-12 12:25:50.335904', NULL, 'FACULDADE PITÁGORAS DE BACABAL', 1, NULL, 659, false);
INSERT INTO public.empresa VALUES (2052, true, '2023-06-12 12:25:50.343321', NULL, 'FACULDADE PITÁGORAS DE BELÉM', 1, NULL, 79, false);
INSERT INTO public.empresa VALUES (2053, true, '2023-06-12 12:25:50.351033', NULL, 'FACULDADE PITÁGORAS DE BRUMADO', 1, NULL, 660, false);
INSERT INTO public.empresa VALUES (2054, true, '2023-06-12 12:25:50.358689', NULL, 'FACULDADE PITÁGORAS DE CONCÓRDIA', 1, NULL, 350, false);
INSERT INTO public.empresa VALUES (2055, true, '2023-06-12 12:25:50.36663', NULL, 'FACULDADE PITAGORAS DE EUNAPOLIS (FPE)', 1, NULL, 587, false);
INSERT INTO public.empresa VALUES (2056, true, '2023-06-12 12:25:50.374246', NULL, 'FACULDADE PITÁGORAS DE IRECÊ (FPI)', 1, NULL, 245, false);
INSERT INTO public.empresa VALUES (2057, true, '2023-06-12 12:25:50.382027', NULL, 'FACULDADE PITÁGORAS DE JUIZ DE FORA (FPJF)', 1, NULL, 38, false);
INSERT INTO public.empresa VALUES (2058, true, '2023-06-12 12:25:50.389395', NULL, 'FACULDADE PITÁGORAS DE LUIS EDUARDO MAGALHÃES', 1, NULL, 52, false);
INSERT INTO public.empresa VALUES (2059, true, '2023-06-12 12:25:50.397387', NULL, 'FACULDADE PITÁGORAS DE MEDICINA DE EUNÁPOLIS', 1, NULL, 587, false);
INSERT INTO public.empresa VALUES (2060, true, '2023-06-12 12:25:50.404889', NULL, 'FACULDADE PITÁGORAS DE MOSSORÓ', 1, NULL, 323, false);
INSERT INTO public.empresa VALUES (2061, true, '2023-06-12 12:25:50.412517', NULL, 'FACULDADE PITÁGORAS DE PARANAGUÁ', 1, NULL, 661, false);
INSERT INTO public.empresa VALUES (2062, true, '2023-06-12 12:25:50.420022', NULL, 'FACULDADE PITÁGORAS DE PENÁPOLIS', 1, NULL, 463, false);
INSERT INTO public.empresa VALUES (2063, true, '2023-06-12 12:25:50.428294', NULL, 'FACULDADE PITÁGORAS DE POUSO ALEGRE (FPPA)', 1, NULL, 230, false);
INSERT INTO public.empresa VALUES (2064, true, '2023-06-12 12:25:50.435729', NULL, 'FACULDADE PITÁGORAS DE RIO VERDE', 1, NULL, 202, false);
INSERT INTO public.empresa VALUES (2065, true, '2023-06-12 12:25:50.443533', NULL, 'FACULDADE PITÁGORAS DE TUCURUÍ', 1, NULL, 418, false);
INSERT INTO public.empresa VALUES (2066, true, '2023-06-12 12:25:50.450971', NULL, 'FACULDADE PITÁGORAS UNOPAR ANHANGUERA DE LONDRINA', 1, NULL, 159, false);
INSERT INTO public.empresa VALUES (2067, true, '2023-06-12 12:25:50.464047', NULL, 'FACULDADE PITÁGORAS UNOPAR DE BRUMADO', 1, NULL, 660, false);
INSERT INTO public.empresa VALUES (2068, true, '2023-06-12 12:25:50.471497', NULL, 'FACULDADE PITÁGORAS UNOPAR DE CALDAS NOVAS', 1, NULL, 387, false);
INSERT INTO public.empresa VALUES (2069, true, '2023-06-12 12:25:50.478987', NULL, 'FACULDADE PITÁGORAS UNOPAR DE CANINDÉ', 1, NULL, 588, false);
INSERT INTO public.empresa VALUES (2070, true, '2023-06-12 12:25:50.487231', NULL, 'FACULDADE PITÁGORAS UNOPAR DE CHAPECÓ', 1, NULL, 406, false);
INSERT INTO public.empresa VALUES (2071, true, '2023-06-12 12:25:50.494707', NULL, 'FACULDADE PITÁGORAS UNOPAR DE GUANAMBI (FPG)', 1, NULL, 157, false);
INSERT INTO public.empresa VALUES (2072, true, '2023-06-12 12:25:50.502268', NULL, 'FACULDADE PITÁGORAS UNOPAR DE ITAJUBÁ', 1, NULL, 103, false);
INSERT INTO public.empresa VALUES (2073, true, '2023-06-12 12:25:50.509662', NULL, 'FACULDADE PITÁGORAS UNOPAR DE JOÃO PESSOA', 1, NULL, 107, false);
INSERT INTO public.empresa VALUES (2074, true, '2023-06-12 12:25:50.517718', NULL, 'FACULDADE PITÁGORAS UNOPAR DE MURIAÉ', 1, NULL, 154, false);
INSERT INTO public.empresa VALUES (2075, true, '2023-06-12 12:25:50.525255', NULL, 'FACULDADE PITÁGORAS UNOPAR DE QUIXERAMOBIM', 1, NULL, 500, false);
INSERT INTO public.empresa VALUES (2076, true, '2023-06-12 12:25:50.532863', NULL, 'FACULDADE PLUS (PLUS)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (2077, true, '2023-06-12 12:25:50.540273', NULL, 'FACULDADE POLIENSINO - FP', 1, NULL, 203, false);
INSERT INTO public.empresa VALUES (2078, true, '2023-06-12 12:25:50.548405', NULL, 'FACULDADE PÓLIS CIVITAS', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (2079, true, '2023-06-12 12:25:50.555936', NULL, 'FACULDADE POLITÉCNICA DE CAMPINAS (POLICAMP)', 1, NULL, 177, false);
INSERT INTO public.empresa VALUES (2080, true, '2023-06-12 12:25:50.563815', NULL, 'FACULDADE POLITÉCNICA DE CAMPO GRANDE (POLITÉCNICA)', 1, NULL, 48, false);
INSERT INTO public.empresa VALUES (2081, true, '2023-06-12 12:25:50.571512', NULL, 'FACULDADE PORTO DAS ÁGUAS (FAPAG)', 1, NULL, 662, false);
INSERT INTO public.empresa VALUES (2082, true, '2023-06-12 12:25:50.584181', NULL, 'FACULDADE PORTO UNIÃO (FPU)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2083, true, '2023-06-12 12:25:50.591601', NULL, 'FACULDADE POSITIVO LONDRINA (FPL)', 1, NULL, 159, false);
INSERT INTO public.empresa VALUES (2084, true, '2023-06-12 12:25:50.599105', NULL, 'FACULDADE PRAIA GRANDE (FPG)', 1, NULL, 250, false);
INSERT INTO public.empresa VALUES (2085, true, '2023-06-12 12:25:50.606557', NULL, 'FACULDADE PREMIER (PREMIER)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (2086, true, '2023-06-12 12:25:50.614979', NULL, 'FACULDADE PRESBITERIANA GAMMON (FAGAMMON)', 1, NULL, 108, false);
INSERT INTO public.empresa VALUES (2087, true, '2023-06-12 12:25:50.622416', NULL, 'FACULDADE PRESBITERIANA MACKENZIE BRASILIA (FPMB)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (2088, true, '2023-06-12 12:25:50.629953', NULL, 'FACULDADE PRESBITERIANA MACKENZIE RIO', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2089, true, '2023-06-12 12:25:50.637738', NULL, 'FACULDADE PRESBITERIANA QUINZE DE NOVEMBRO', 1, NULL, 483, false);
INSERT INTO public.empresa VALUES (2090, true, '2023-06-12 12:25:50.645867', NULL, 'FACULDADE PRESIDENTE ANTÔNIO CARLOS (FAPAC)', 1, NULL, 663, false);
INSERT INTO public.empresa VALUES (2091, true, '2023-06-12 12:25:50.653372', NULL, 'FACULDADE PRESIDENTE ANTÔNIO CARLOS DE AIMORÉS', 1, NULL, 664, false);
INSERT INTO public.empresa VALUES (2092, true, '2023-06-12 12:25:50.66099', NULL, 'FACULDADE PRESIDENTE ANTÔNIO CARLOS DE BAEPENDI (FAPAC BAEPENDI)', 1, NULL, 665, false);
INSERT INTO public.empresa VALUES (2093, true, '2023-06-12 12:25:50.668477', NULL, 'FACULDADE PRESIDENTE ANTÔNIO CARLOS DE BARÃO DE COCAIS', 1, NULL, 666, false);
INSERT INTO public.empresa VALUES (2094, true, '2023-06-12 12:25:50.681594', NULL, 'FACULDADE PRESIDENTE ANTÔNIO CARLOS DE CONSELHEIRO LAFAIETE', 1, NULL, 18, false);
INSERT INTO public.empresa VALUES (2095, true, '2023-06-12 12:25:50.689274', NULL, 'FACULDADE PRESIDENTE ANTÔNIO CARLOS DE GOVERNADOR VALADARES (FAPAC - GV )', 1, NULL, 265, false);
INSERT INTO public.empresa VALUES (2096, true, '2023-06-12 12:25:50.697535', NULL, 'FACULDADE PRESIDENTE ANTÔNIO CARLOS DE ITABIRITO', 1, NULL, 261, false);
INSERT INTO public.empresa VALUES (2097, true, '2023-06-12 12:25:50.705491', NULL, 'FACULDADE PRESIDENTE ANTÔNIO CARLOS DE ITANHANDU (FAPACI)', 1, NULL, 667, false);
INSERT INTO public.empresa VALUES (2098, true, '2023-06-12 12:25:50.713657', NULL, 'FACULDADE PRESIDENTE ANTÔNIO CARLOS DE LAMBARI (FAPAC LAMBARI)', 1, NULL, 668, false);
INSERT INTO public.empresa VALUES (2099, true, '2023-06-12 12:25:50.721137', NULL, 'FACULDADE PRESIDENTE ANTÔNIO CARLOS DE LEOPOLDINA', 1, NULL, 669, false);
INSERT INTO public.empresa VALUES (2100, true, '2023-06-12 12:25:50.72878', NULL, 'FACULDADE PRESIDENTE ANTÔNIO CARLOS DE MARIANA (FAPAM)', 1, NULL, 238, false);
INSERT INTO public.empresa VALUES (2101, true, '2023-06-12 12:25:50.736378', NULL, 'FACULDADE PRESIDENTE ANTÔNIO CARLOS DE NOVA LIMA', 1, NULL, 481, false);
INSERT INTO public.empresa VALUES (2102, true, '2023-06-12 12:25:50.744646', NULL, 'FACULDADE PRESIDENTE ANTÔNIO CARLOS DE PONTE NOVA', 1, NULL, 550, false);
INSERT INTO public.empresa VALUES (2103, true, '2023-06-12 12:25:50.752217', NULL, 'FACULDADE PRESIDENTE ANTÔNIO CARLOS DE SABARÁ (FUNEES SABARÁ)', 1, NULL, 505, false);
INSERT INTO public.empresa VALUES (2182, true, '2023-06-12 12:25:51.403742', NULL, 'FACULDADE SANTA CRUZ (FACRUZ)', 1, NULL, 687, false);
INSERT INTO public.empresa VALUES (2104, true, '2023-06-12 12:25:50.759687', NULL, 'FACULDADE PRESIDENTE ANTÔNIO CARLOS DE SÃO JOÃO NEPOMUCENO', 1, NULL, 670, false);
INSERT INTO public.empresa VALUES (2105, true, '2023-06-12 12:25:50.767213', NULL, 'FACULDADE PRESIDENTE ANTÔNIO CARLOS DE TEÓFILO OTONI', 1, NULL, 7, false);
INSERT INTO public.empresa VALUES (2106, true, '2023-06-12 12:25:50.775282', NULL, 'FACULDADE PRESIDENTE ANTÔNIO CARLOS DE UBÁ', 1, NULL, 163, false);
INSERT INTO public.empresa VALUES (2107, true, '2023-06-12 12:25:50.78277', NULL, 'FACULDADE PRESIDENTE ANTÔNIO CARLOS DE UBERABA', 1, NULL, 118, false);
INSERT INTO public.empresa VALUES (2108, true, '2023-06-12 12:25:50.790345', NULL, 'FACULDADE PRESIDENTE ANTÔNIO CARLOS DE UBERLÂNDIA', 1, NULL, 134, false);
INSERT INTO public.empresa VALUES (2109, true, '2023-06-12 12:25:50.802439', NULL, 'FACULDADE PRESIDENTE ANTÔNIO CARLOS DE VISCONDE DO RIO BRANCO', 1, NULL, 671, false);
INSERT INTO public.empresa VALUES (2110, true, '2023-06-12 12:25:50.810557', NULL, 'FACULDADE PRESIDENTE DUTRA (FAP)', 1, NULL, 672, false);
INSERT INTO public.empresa VALUES (2111, true, '2023-06-12 12:25:50.818097', NULL, 'FACULDADE PRIME (FAPRIME)', 1, NULL, 48, false);
INSERT INTO public.empresa VALUES (2112, true, '2023-06-12 12:25:50.825392', NULL, 'FACULDADE PRIMEIRO DE JANEIRO (FPJ)', 1, NULL, 673, false);
INSERT INTO public.empresa VALUES (2113, true, '2023-06-12 12:25:50.833562', NULL, 'FACULDADE PRIMUM (PRIMUM)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2114, true, '2023-06-12 12:25:50.841571', NULL, 'FACULDADE PRINCESA DO OESTE (FPO)', 1, NULL, 673, false);
INSERT INTO public.empresa VALUES (2115, true, '2023-06-12 12:25:50.849145', NULL, 'FACULDADE PRISMA DE APUCARANA (FPA)', 1, NULL, 377, false);
INSERT INTO public.empresa VALUES (2116, true, '2023-06-12 12:25:50.856424', NULL, 'FACULDADE PROFESSOR DALTRO', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2117, true, '2023-06-12 12:25:50.86398', NULL, 'FACULDADE PROFESSOR MIGUEL ÂNGELO DA SILVA SANTOS (FEMASS)', 1, NULL, 325, false);
INSERT INTO public.empresa VALUES (2118, true, '2023-06-12 12:25:50.872035', NULL, 'FACULDADE PROFISSIONAL (FAPRO)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (2119, true, '2023-06-12 12:25:50.879552', NULL, 'FACULDADE PROF. LUÍZ MÁRIO D''AVILA (FADAVILA)', 1, NULL, 80, false);
INSERT INTO public.empresa VALUES (2120, true, '2023-06-12 12:25:50.886932', NULL, 'FACULDADE PROF. WLADEMIR DOS SANTOS (WLASAN)', 1, NULL, 146, false);
INSERT INTO public.empresa VALUES (2121, true, '2023-06-12 12:25:50.894326', NULL, 'FACULDADE PROGRESSO (FAP)', 1, NULL, 100, false);
INSERT INTO public.empresa VALUES (2122, true, '2023-06-12 12:25:50.902244', NULL, 'FACULDADE PROJEÇÃO DE CEILÂNDIA (FAPRO)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (2123, true, '2023-06-12 12:25:50.909543', NULL, 'FACULDADE PROJEÇÃO DE SOBRADINHO (FAPRO)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (2124, true, '2023-06-12 12:25:50.921826', NULL, 'FACULDADE PROJEÇÃO DE TAGUATINGA NORTE (FAPRO)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (2125, true, '2023-06-12 12:25:50.929939', NULL, 'FACULDADE PROJEÇÃO DO GUARÁ', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (2126, true, '2023-06-12 12:25:50.937381', NULL, 'FACULDADE PROMINAS DE CONTAGEM (PROMINAS)', 1, NULL, 200, false);
INSERT INTO public.empresa VALUES (2127, true, '2023-06-12 12:25:50.944807', NULL, 'FACULDADE PROMINAS DE MONTES CLAROS (PROMINAS)', 1, NULL, 128, false);
INSERT INTO public.empresa VALUES (2128, true, '2023-06-12 12:25:50.952426', NULL, 'FACULDADE PROMINAS DE TIMÓTEO (PROMINAS)', 1, NULL, 352, false);
INSERT INTO public.empresa VALUES (2129, true, '2023-06-12 12:25:50.960655', NULL, 'FACULDADE PROMOVE DE ALFENAS', 1, NULL, 674, false);
INSERT INTO public.empresa VALUES (2130, true, '2023-06-12 12:25:50.968109', NULL, 'FACULDADE PROMOVE DE BELO HORIZONTE (PROMOVE)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (2131, true, '2023-06-12 12:25:50.975565', NULL, 'FACULDADE PROMOVE DE CURVELO (FACURVELO)', 1, NULL, 301, false);
INSERT INTO public.empresa VALUES (2132, true, '2023-06-12 12:25:50.983295', NULL, 'FACULDADE PROMOVE DE MINAS GERAIS (PROMOVE)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (2133, true, '2023-06-12 12:25:50.991324', NULL, 'FACULDADE PROMOVE DE SÃO PAULO (FPSP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2134, true, '2023-06-12 12:25:51.019506', NULL, 'FACULDADE PROMOVE DE SETE LAGOAS (FSLMG)', 1, NULL, 24, false);
INSERT INTO public.empresa VALUES (2135, true, '2023-06-12 12:25:51.028564', NULL, 'FACULDADE PROMOVE DE TECNOLOGIA (FPTEC)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (2136, true, '2023-06-12 12:25:51.036324', NULL, 'FACULDADE PSICOLOG (FAPSI)', 1, NULL, 58, false);
INSERT INTO public.empresa VALUES (2137, true, '2023-06-12 12:25:51.044341', NULL, 'FACULDADE QI BRASIL (FAQI)', 1, NULL, 344, false);
INSERT INTO public.empresa VALUES (2138, true, '2023-06-12 12:25:51.051894', NULL, 'FACULDADE QUALITTAS (QUALITTAS)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2139, true, '2023-06-12 12:25:51.059349', NULL, 'FACULDADE QUALITTAS - EAD', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2140, true, '2023-06-12 12:25:51.066869', NULL, 'FACULDADE QUIRINÓPOLIS (FAQUI)', 1, NULL, 621, false);
INSERT INTO public.empresa VALUES (2141, true, '2023-06-12 12:25:51.074828', NULL, 'FACULDADE RACHEL DE QUEIROZ (FAQ)', 1, NULL, 188, false);
INSERT INTO public.empresa VALUES (2142, true, '2023-06-12 12:25:51.08233', NULL, 'FACULDADE RAIMUNDO MARINHO (FRM)', 1, NULL, 73, false);
INSERT INTO public.empresa VALUES (2143, true, '2023-06-12 12:25:51.08969', NULL, 'FACULDADE RAIMUNDO MARINHO DE PENEDO', 1, NULL, 492, false);
INSERT INTO public.empresa VALUES (2144, true, '2023-06-12 12:25:51.097123', NULL, 'FACULDADE REALIZA', 1, NULL, 41, false);
INSERT INTO public.empresa VALUES (2145, true, '2023-06-12 12:25:51.104948', NULL, 'FACULDADE REBOUÇAS DE CAMPINA GRANDE (FRCG)', 1, NULL, 147, false);
INSERT INTO public.empresa VALUES (2146, true, '2023-06-12 12:25:51.112541', NULL, 'FACULDADE RECONHECER (FR)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (2147, true, '2023-06-12 12:25:51.124812', NULL, 'FACULDADE REFIDIM (REFIDIM)', 1, NULL, 68, false);
INSERT INTO public.empresa VALUES (2148, true, '2023-06-12 12:25:51.132523', NULL, 'FACULDADE REGES DE DRACENA', 1, NULL, 435, false);
INSERT INTO public.empresa VALUES (2149, true, '2023-06-12 12:25:51.140598', NULL, 'FACULDADE REGES DE JUNQUEIRÓPOLIS', 1, NULL, 675, false);
INSERT INTO public.empresa VALUES (2150, true, '2023-06-12 12:25:51.148387', NULL, 'FACULDADE REGES DE OSVALDO CRUZ', 1, NULL, 676, false);
INSERT INTO public.empresa VALUES (2151, true, '2023-06-12 12:25:51.155953', NULL, 'FACULDADE REGES DE REALEZA', 1, NULL, 677, false);
INSERT INTO public.empresa VALUES (2152, true, '2023-06-12 12:25:51.163607', NULL, 'FACULDADE REGES DE RIBEIRÃO PRETO', 1, NULL, 58, false);
INSERT INTO public.empresa VALUES (2153, true, '2023-06-12 12:25:51.171453', NULL, 'FACULDADE REGES DE TUPI PAULISTA', 1, NULL, 678, false);
INSERT INTO public.empresa VALUES (2154, true, '2023-06-12 12:25:51.178965', NULL, 'FACULDADE REGIONAL DE FILOSOFIA, CIÊNCIAS E LETRAS DE CANDEIAS (FAC)', 1, NULL, 679, false);
INSERT INTO public.empresa VALUES (2155, true, '2023-06-12 12:25:51.186722', NULL, 'FACULDADE REGIONAL DE LEOPOLDINA', 1, NULL, 669, false);
INSERT INTO public.empresa VALUES (2156, true, '2023-06-12 12:25:51.194243', NULL, 'FACULDADE REGIONAL DE MINAS GERAIS (FACMINAS)', 1, NULL, 680, false);
INSERT INTO public.empresa VALUES (2157, true, '2023-06-12 12:25:51.202313', NULL, 'FACULDADE REGIONAL DE RIACHÃO DO JACUÍPE (FARJ)', 1, NULL, 681, false);
INSERT INTO public.empresa VALUES (2158, true, '2023-06-12 12:25:51.20982', NULL, 'FACULDADE REGIONAL DO AMAZONAS (FAM)', 1, NULL, 75, false);
INSERT INTO public.empresa VALUES (2159, true, '2023-06-12 12:25:51.217255', NULL, 'FACULDADE REGIONAL DO CENTRO SUL DE SERGIPE (FARSUL)', 1, NULL, 682, false);
INSERT INTO public.empresa VALUES (2160, true, '2023-06-12 12:25:51.22952', NULL, 'FACULDADE REGIONAL DO JACUÍPE (FARJ)', 1, NULL, 403, false);
INSERT INTO public.empresa VALUES (2161, true, '2023-06-12 12:25:51.237483', NULL, 'FACULDADE REGIONAL JAGUARIBANA (FRJ)', 1, NULL, 683, false);
INSERT INTO public.empresa VALUES (2162, true, '2023-06-12 12:25:51.244873', NULL, 'FACULDADE REGIONAL PALMITOS (FAP)', 1, NULL, 684, false);
INSERT INTO public.empresa VALUES (2163, true, '2023-06-12 12:25:51.252441', NULL, 'FACULDADE REHAGRO (REHAGRO)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (2164, true, '2023-06-12 12:25:51.259854', NULL, 'FACULDADE REPUBLICANA', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (2165, true, '2023-06-12 12:25:51.267817', NULL, 'FACULDADE RESULTADOS (FR)', 1, NULL, 48, false);
INSERT INTO public.empresa VALUES (2166, true, '2023-06-12 12:25:51.275732', NULL, 'FACULDADE RHEMA (FACUR)', 1, NULL, 611, false);
INSERT INTO public.empresa VALUES (2167, true, '2023-06-12 12:25:51.283257', NULL, 'FACULDADE RIO GUARIBAS (FARG)', 1, NULL, 643, false);
INSERT INTO public.empresa VALUES (2168, true, '2023-06-12 12:25:51.290937', NULL, 'FACULDADE RIO PARNAÍBA (FARP)', 1, NULL, 456, false);
INSERT INTO public.empresa VALUES (2169, true, '2023-06-12 12:25:51.299075', NULL, 'FACULDADE RIO SONO (RISO)', 1, NULL, 685, false);
INSERT INTO public.empresa VALUES (2170, true, '2023-06-12 12:25:51.306668', NULL, 'FACULDADE ROBERTO MIRANDA (FRM SP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2171, true, '2023-06-12 12:25:51.314297', NULL, 'FACULDADE RODOLFO TEÓFILO (FRT)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (2172, true, '2023-06-12 12:25:51.321774', NULL, 'FACULDADE RUDOLF STEINER (FRS)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2173, true, '2023-06-12 12:25:51.329882', NULL, 'FACULDADE SABERES (SABERES)', 1, NULL, 25, false);
INSERT INTO public.empresa VALUES (2174, true, '2023-06-12 12:25:51.341955', NULL, 'FACULDADES AGGEU MAGALHÃES (FAMA)', 1, NULL, 398, false);
INSERT INTO public.empresa VALUES (2175, true, '2023-06-12 12:25:51.349552', NULL, 'FACULDADE SAGRADA FAMÍLIA (FASF)', 1, NULL, 188, false);
INSERT INTO public.empresa VALUES (2176, true, '2023-06-12 12:25:51.357639', NULL, 'FACULDADE SALESIANA DE SANTA TERESA (FSST)', 1, NULL, 686, false);
INSERT INTO public.empresa VALUES (2177, true, '2023-06-12 12:25:51.365105', NULL, 'FACULDADE SALESIANA DOM BOSCO (FSDB)', 1, NULL, 75, false);
INSERT INTO public.empresa VALUES (2178, true, '2023-06-12 12:25:51.37254', NULL, 'FACULDADE SALESIANA DO NORDESTE (FASNE)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (2179, true, '2023-06-12 12:25:51.380156', NULL, 'FACULDADE SANAR (SANAR)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (2180, true, '2023-06-12 12:25:51.388096', NULL, 'FACULDADE SANTA CASA (FSC)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (2181, true, '2023-06-12 12:25:51.395585', NULL, 'FACULDADE SANTA CASA DE BELO HORIZONTE (FSCBH)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (2183, true, '2023-06-12 12:25:51.411318', NULL, 'FACULDADE SANTA FÉ (CESSF)', 1, NULL, 141, false);
INSERT INTO public.empresa VALUES (2184, true, '2023-06-12 12:25:51.419405', NULL, 'FACULDADE SANTA HELENA (FSH)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (2185, true, '2023-06-12 12:25:51.426884', NULL, 'FACULDADE SANTA LÚCIA (FCACSL)', 1, NULL, 642, false);
INSERT INTO public.empresa VALUES (2186, true, '2023-06-12 12:25:51.434386', NULL, 'FACULDADE SANTA LUZIA (FSL)', 1, NULL, 507, false);
INSERT INTO public.empresa VALUES (2187, true, '2023-06-12 12:25:51.44174', NULL, 'FACULDADE SANTA MARCELINA (FASM)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2188, true, '2023-06-12 12:25:51.449623', NULL, 'FACULDADE SANTA MARCELINA MURIAÉ - FASM (FASM)', 1, NULL, 154, false);
INSERT INTO public.empresa VALUES (2189, true, '2023-06-12 12:25:51.465812', NULL, 'FACULDADE SANTA MARIA (FASAMP)', 1, NULL, 688, false);
INSERT INTO public.empresa VALUES (2190, true, '2023-06-12 12:25:51.473331', NULL, 'FACULDADE SANTANA', 1, NULL, 242, false);
INSERT INTO public.empresa VALUES (2191, true, '2023-06-12 12:25:51.480754', NULL, 'FACULDADE SANT ANA (IESSA)', 1, NULL, 188, false);
INSERT INTO public.empresa VALUES (2192, true, '2023-06-12 12:25:51.488841', NULL, 'FACULDADE SANTA RITA (FASAR)', 1, NULL, 689, false);
INSERT INTO public.empresa VALUES (2193, true, '2023-06-12 12:25:51.496998', NULL, 'FACULDADE SANTA RITA DE CÁSSIA (IFASC)', 1, NULL, 234, false);
INSERT INTO public.empresa VALUES (2194, true, '2023-06-12 12:25:51.504596', NULL, 'FACULDADE SANTA RITA DE CHAPECÓ', 1, NULL, 406, false);
INSERT INTO public.empresa VALUES (2195, true, '2023-06-12 12:25:51.512467', NULL, 'FACULDADE SANTA TERESA', 1, NULL, 75, false);
INSERT INTO public.empresa VALUES (2196, true, '2023-06-12 12:25:51.520512', NULL, 'FACULDADE SANTA TEREZINHA (CEST)', 1, NULL, 141, false);
INSERT INTO public.empresa VALUES (2197, true, '2023-06-12 12:25:51.527982', NULL, 'FACULDADE SANTISSIMA TRINDADE (FAST)', 1, NULL, 690, false);
INSERT INTO public.empresa VALUES (2198, true, '2023-06-12 12:25:51.536287', NULL, 'FACULDADE SANTÍSSIMO SACRAMENTO (FSSS)', 1, NULL, 213, false);
INSERT INTO public.empresa VALUES (2199, true, '2023-06-12 12:25:51.54392', NULL, 'FACULDADE SANTO AGOSTINHO (FACSA)', 1, NULL, 691, false);
INSERT INTO public.empresa VALUES (2200, true, '2023-06-12 12:25:51.552323', NULL, 'FACULDADE SANTO AGOSTINHO DE ITABUNA (FASAI)', 1, NULL, 269, false);
INSERT INTO public.empresa VALUES (2201, true, '2023-06-12 12:25:51.560359', NULL, 'FACULDADE SANTO AGOSTINHO DE SETE LAGOAS (FASASETE)', 1, NULL, 24, false);
INSERT INTO public.empresa VALUES (2202, true, '2023-06-12 12:25:51.568381', NULL, 'FACULDADE SANTO AGOSTINHO DE VITÓRIA DA CONQUISTA (FASAVIC)', 1, NULL, 37, false);
INSERT INTO public.empresa VALUES (2203, true, '2023-06-12 12:25:51.576479', NULL, 'FACULDADE SANTO ANDRÉ (FASA)', 1, NULL, 355, false);
INSERT INTO public.empresa VALUES (2204, true, '2023-06-12 12:25:51.584664', NULL, 'FACULDADE SANTO ANTONIO (FSA)', 1, NULL, 213, false);
INSERT INTO public.empresa VALUES (2205, true, '2023-06-12 12:25:51.60788', NULL, 'FACULDADE SANTO ANTÔNIO (FSA)', 1, NULL, 692, false);
INSERT INTO public.empresa VALUES (2206, true, '2023-06-12 12:25:51.615558', NULL, 'FACULDADE SANTO ANTÔNIO DE FEIRA DE SANTANA (FSAF)', 1, NULL, 99, false);
INSERT INTO public.empresa VALUES (2207, true, '2023-06-12 12:25:51.623085', NULL, 'FACULDADE SANTO ANTONIO DE ITABUNA (FSAI)', 1, NULL, 269, false);
INSERT INTO public.empresa VALUES (2208, true, '2023-06-12 12:25:51.931042', NULL, 'FACULDADE SANTO ANTÔNIO DE PÁDUA (FASAP)', 1, NULL, 447, false);
INSERT INTO public.empresa VALUES (2209, true, '2023-06-12 12:25:51.938975', NULL, 'FACULDADE SANTO ANTONIO DE QUEIMADAS (FSAQ)', 1, NULL, 693, false);
INSERT INTO public.empresa VALUES (2210, true, '2023-06-12 12:25:51.946231', NULL, 'FACULDADE SANTO ANTÔNIO - SJC (FSA)', 1, NULL, 144, false);
INSERT INTO public.empresa VALUES (2211, true, '2023-06-12 12:25:51.953231', NULL, 'FACULDADE SANTOS DUMONT (FSD)', 1, NULL, 694, false);
INSERT INTO public.empresa VALUES (2212, true, '2023-06-12 12:25:51.965635', NULL, 'FACULDADE SÃO BASÍLIO MAGNO (FASBAM)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (2213, true, '2023-06-12 12:25:51.973367', NULL, 'FACULDADE SÃO BENTO DA BAHIA (FSBB)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (2214, true, '2023-06-12 12:25:51.98052', NULL, 'FACULDADE SÃO BENTO DO RIO DE JANEIRO (FSB/RJ)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2215, true, '2023-06-12 12:25:51.987751', NULL, 'FACULDADE SÃO CAMILO (FASC)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2216, true, '2023-06-12 12:25:51.994712', NULL, 'FACULDADE SÃO FRANCISCO DA PARAÍBA (FASP)', 1, NULL, 189, false);
INSERT INTO public.empresa VALUES (2217, true, '2023-06-12 12:25:52.002174', NULL, 'FACULDADE SÃO FRANCISCO DA PARAÍBA CAMPINA GRANDE', 1, NULL, 147, false);
INSERT INTO public.empresa VALUES (2218, true, '2023-06-12 12:25:52.009405', NULL, 'FACULDADE SÃO FRANCISCO DE ASSIS (FSFA)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (2219, true, '2023-06-12 12:25:52.016381', NULL, 'FACULDADE SÃO FRANCISCO DE CAJAZEIRAS (FSF)', 1, NULL, 189, false);
INSERT INTO public.empresa VALUES (2220, true, '2023-06-12 12:25:52.02323', NULL, 'FACULDADE SÃO FRANCISCO DO CEARÁ (FASC)', 1, NULL, 332, false);
INSERT INTO public.empresa VALUES (2221, true, '2023-06-12 12:25:52.030895', NULL, 'FACULDADE SÃO FRANCISCO DO CEARÁ - CRATO (FASC)', 1, NULL, 310, false);
INSERT INTO public.empresa VALUES (2222, true, '2023-06-12 12:25:52.038693', NULL, 'FACULDADE SÃO FRANCISCO XAVIER (FACSFX)', 1, NULL, 268, false);
INSERT INTO public.empresa VALUES (2223, true, '2023-06-12 12:25:52.045703', NULL, 'FACULDADE SÃO JOAQUIM DA BARRA', 1, NULL, 514, false);
INSERT INTO public.empresa VALUES (2224, true, '2023-06-12 12:25:52.052718', NULL, 'FACULDADE SÃO JUDAS DE GUARULHOS', 1, NULL, 100, false);
INSERT INTO public.empresa VALUES (2225, true, '2023-06-12 12:25:52.060262', NULL, 'FACULDADE SÃO JUDAS DE SÃO BERNARDO DO CAMPO', 1, NULL, 82, false);
INSERT INTO public.empresa VALUES (2226, true, '2023-06-12 12:25:52.067101', NULL, 'FACULDADE SÃO JUDAS DE TERRA BOA (FSJ)', 1, NULL, 695, false);
INSERT INTO public.empresa VALUES (2227, true, '2023-06-12 12:25:52.073974', NULL, 'FACULDADE SÃO JUDAS TADEU (FSJT)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2228, true, '2023-06-12 12:25:52.081278', NULL, 'FACULDADE SÃO LEOPOLDO MANDIC', 1, NULL, 177, false);
INSERT INTO public.empresa VALUES (2229, true, '2023-06-12 12:25:52.088934', NULL, 'FACULDADE SÃO LEOPOLDO MANDIC DE ARARAS (SLMANDIC-ARARAS)', 1, NULL, 83, false);
INSERT INTO public.empresa VALUES (2230, true, '2023-06-12 12:25:52.095962', NULL, 'FACULDADE SÃO LEOPOLDO MANDIC DE LIMEIRA (SLM LIMEIRA)', 1, NULL, 276, false);
INSERT INTO public.empresa VALUES (2231, true, '2023-06-12 12:25:52.102971', NULL, 'FACULDADE SÃO LUÍS (FSL)', 1, NULL, 94, false);
INSERT INTO public.empresa VALUES (2232, true, '2023-06-12 12:25:52.109952', NULL, 'FACULDADE SÃO LUÍS DE FRANÇA (FSLF)', 1, NULL, 142, false);
INSERT INTO public.empresa VALUES (2233, true, '2023-06-12 12:25:52.117436', NULL, 'FACULDADE SÃO MARCOS (FASAMAR)', 1, NULL, 663, false);
INSERT INTO public.empresa VALUES (2234, true, '2023-06-12 12:25:52.124316', NULL, 'FACULDADE SÃO PAULO DE PRESIDENTE VENCESLAU (FASPREV)', 1, NULL, 498, false);
INSERT INTO public.empresa VALUES (2235, true, '2023-06-12 12:25:52.131481', NULL, 'FACULDADE SÃO SALVADOR (FSS)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (2236, true, '2023-06-12 12:25:52.138405', NULL, 'FACULDADE SÃO SEBASTIÃO', 1, NULL, 530, false);
INSERT INTO public.empresa VALUES (2237, true, '2023-06-12 12:25:52.1461', NULL, 'FACULDADE SÃO TOMÁS DE AQUINO (FACESTA)', 1, NULL, 334, false);
INSERT INTO public.empresa VALUES (2238, true, '2023-06-12 12:25:52.153296', NULL, 'FACULDADE SÃO TOMÁS DE AQUINO DE NOVA LIMA (FACTAN)', 1, NULL, 481, false);
INSERT INTO public.empresa VALUES (2239, true, '2023-06-12 12:25:52.160899', NULL, 'FACULDADE SÃO TOMAZ DE AQUINO (FSTA)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (2240, true, '2023-06-12 12:25:52.172545', NULL, 'FACULDADE SÃO VICENTE (FASVIPA)', 1, NULL, 696, false);
INSERT INTO public.empresa VALUES (2241, true, '2023-06-12 12:25:52.18006', NULL, 'FACULDADE SÃO VICENTE DE IRATI (FASVI)', 1, NULL, 697, false);
INSERT INTO public.empresa VALUES (2242, true, '2023-06-12 12:25:52.187071', NULL, 'FACULDADE SAPIENS (SAPIENS)', 1, NULL, 51, false);
INSERT INTO public.empresa VALUES (2243, true, '2023-06-12 12:25:52.193979', NULL, 'FACULDADES ASSOCIADAS DE UBERABA - FAZU (FAZU)', 1, NULL, 118, false);
INSERT INTO public.empresa VALUES (2244, true, '2023-06-12 12:25:52.201048', NULL, 'FACULDADES BATISTA DO PARANÁ (FABAPAR)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (2245, true, '2023-06-12 12:25:52.208466', NULL, 'FACULDADES DE CAMPINAS (FACAMP)', 1, NULL, 177, false);
INSERT INTO public.empresa VALUES (2246, true, '2023-06-12 12:25:52.215525', NULL, 'FACULDADES DE CIÊNCIAS E TECNOLOGIA DO NORDESTE LTDA (FACINE)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (2247, true, '2023-06-12 12:25:52.222397', NULL, 'FACULDADES DE DRACENA', 1, NULL, 435, false);
INSERT INTO public.empresa VALUES (2248, true, '2023-06-12 12:25:52.229476', NULL, 'FACULDADES DE INOVAÇÃO E TECNOLOGIA DE MINAS GERAIS (FIT MG)', 1, NULL, 307, false);
INSERT INTO public.empresa VALUES (2249, true, '2023-06-12 12:25:52.237052', NULL, 'FACULDADES DOCTUM DE CARATINGA (DOCTUM )', 1, NULL, 95, false);
INSERT INTO public.empresa VALUES (2250, true, '2023-06-12 12:25:52.244323', NULL, 'FACULDADES DOCTUM DE GUARAPARI (DOCTUM)', 1, NULL, 266, false);
INSERT INTO public.empresa VALUES (2251, true, '2023-06-12 12:25:52.251261', NULL, 'FACULDADES DOCTUM DE IPATINGA', 1, NULL, 268, false);
INSERT INTO public.empresa VALUES (2252, true, '2023-06-12 12:25:52.258223', NULL, 'FACULDADES DO VALE DO ARARANGUA - FVA (FVA)', 1, NULL, 698, false);
INSERT INTO public.empresa VALUES (2253, true, '2023-06-12 12:25:52.265635', NULL, 'FACULDADE SEB DE RIBEIRÃO PRETO (SEBRP)', 1, NULL, 58, false);
INSERT INTO public.empresa VALUES (2254, true, '2023-06-12 12:25:52.272449', NULL, 'FACULDADE SEB LAFAIETE (SEBLF)', 1, NULL, 58, false);
INSERT INTO public.empresa VALUES (2255, true, '2023-06-12 12:25:52.279526', NULL, 'FACULDADE SEBRAE', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2256, true, '2023-06-12 12:25:52.286374', NULL, 'FACULDADE SENAC BLUMENAU (SENAC)', 1, NULL, 193, false);
INSERT INTO public.empresa VALUES (2257, true, '2023-06-12 12:25:52.293842', NULL, 'FACULDADE SENAC CAÇADOR (SENAC)', 1, NULL, 699, false);
INSERT INTO public.empresa VALUES (2258, true, '2023-06-12 12:25:52.300615', NULL, 'FACULDADE SENAC CEARA (SENACCE)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (2259, true, '2023-06-12 12:25:52.307483', NULL, 'FACULDADE SENAC CHAPECÓ (SENAC)', 1, NULL, 406, false);
INSERT INTO public.empresa VALUES (2260, true, '2023-06-12 12:25:52.314643', NULL, 'FACULDADE SENAC CONCÓRDIA', 1, NULL, 350, false);
INSERT INTO public.empresa VALUES (2261, true, '2023-06-12 12:25:52.322064', NULL, 'FACULDADE SENAC CRICIÚMA (SENAC CRICIÚMA)', 1, NULL, 192, false);
INSERT INTO public.empresa VALUES (2262, true, '2023-06-12 12:25:52.328923', NULL, 'FACULDADE SENAC FLORIANÓPOLIS (SENAC FLORIANÓPOLIS)', 1, NULL, 3, false);
INSERT INTO public.empresa VALUES (2263, true, '2023-06-12 12:25:52.335816', NULL, 'FACULDADE SENAC GOIÁS (FACSENACGO)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (2264, true, '2023-06-12 12:25:52.342719', NULL, 'FACULDADE SENAC JARAGUÁ DO SUL', 1, NULL, 31, false);
INSERT INTO public.empresa VALUES (2265, true, '2023-06-12 12:25:52.350148', NULL, 'FACULDADE SENAC MINAS (FSM)', 1, NULL, 200, false);
INSERT INTO public.empresa VALUES (2266, true, '2023-06-12 12:25:52.361871', NULL, 'FACULDADE SENAC PALHOÇA (SENAC PALHOÇA)', 1, NULL, 544, false);
INSERT INTO public.empresa VALUES (2267, true, '2023-06-12 12:25:52.36888', NULL, 'FACULDADE SENAC PERNAMBUCO (SENACPE)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (2268, true, '2023-06-12 12:25:52.375822', NULL, 'FACULDADE SENAC SÃO MIGUEL DO OESTE', 1, NULL, 700, false);
INSERT INTO public.empresa VALUES (2269, true, '2023-06-12 12:25:52.383325', NULL, 'FACULDADE SENAC TUBARÃO', 1, NULL, 701, false);
INSERT INTO public.empresa VALUES (2270, true, '2023-06-12 12:25:52.390262', NULL, 'FACULDADE SENAI-CETIQT (SENAI-CETIQT)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2271, true, '2023-06-12 12:25:52.397838', NULL, 'FACULDADE SENAI DA PARAÍBA', 1, NULL, 107, false);
INSERT INTO public.empresa VALUES (2272, true, '2023-06-12 12:25:52.404839', NULL, 'FACULDADE SENAI DE CONSTRUÇÃO', 1, NULL, 48, false);
INSERT INTO public.empresa VALUES (2273, true, '2023-06-12 12:25:52.412446', NULL, 'FACULDADE SENAI DE TECNOLOGIA MECATRÔNICA (SENAI)', 1, NULL, 126, false);
INSERT INTO public.empresa VALUES (2274, true, '2023-06-12 12:25:52.419305', NULL, 'FACULDADE SENAI RIO', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2275, true, '2023-06-12 12:25:52.426315', NULL, 'FACULDADE SENAI SÃO PAULO (SENAI SP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2276, true, '2023-06-12 12:25:52.433231', NULL, 'FACULDADE SENSU (FAS)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (2277, true, '2023-06-12 12:25:52.441672', NULL, 'FACULDADE SEQÜENCIAL', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2278, true, '2023-06-12 12:25:52.448689', NULL, 'FACULDADE SERGIPANA (FASER)', 1, NULL, 142, false);
INSERT INTO public.empresa VALUES (2279, true, '2023-06-12 12:25:52.455736', NULL, 'FACULDADE SERRA DA MESA (FASEM)', 1, NULL, 702, false);
INSERT INTO public.empresa VALUES (2280, true, '2023-06-12 12:25:52.462882', NULL, 'FACULDADE SERRA DO CARMO (FASEC)', 1, NULL, 23, false);
INSERT INTO public.empresa VALUES (2281, true, '2023-06-12 12:25:52.47043', NULL, 'FACULDADE SERRA DOURADA', 1, NULL, 14, false);
INSERT INTO public.empresa VALUES (2282, true, '2023-06-12 12:25:52.477694', NULL, 'FACULDADE SERRA GERAL (FASG)', 1, NULL, 407, false);
INSERT INTO public.empresa VALUES (2283, true, '2023-06-12 12:25:52.484679', NULL, 'FACULDADE SESI-SP DE EDUCAÇÃO (FASESP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2284, true, '2023-06-12 12:25:52.491511', NULL, 'FACULDADES EST (EST)', 1, NULL, 703, false);
INSERT INTO public.empresa VALUES (2285, true, '2023-06-12 12:25:52.499324', NULL, 'FACULDADE SETE LAGOAS (FACSETE)', 1, NULL, 24, false);
INSERT INTO public.empresa VALUES (2286, true, '2023-06-12 12:25:52.50651', NULL, 'FACULDADES EVANGÉLICAS INTEGRADAS CANTARES DE SALOMÃO (FEICS)', 1, NULL, 203, false);
INSERT INTO public.empresa VALUES (2287, true, '2023-06-12 12:25:52.513769', NULL, 'FACULDADES FAMEP (FAMEP)', 1, NULL, 704, false);
INSERT INTO public.empresa VALUES (2288, true, '2023-06-12 12:25:52.521023', NULL, 'FACULDADES FAMEP UNIDADE EUCLIDES DA CUNHA - BA (FAMEP)', 1, NULL, 705, false);
INSERT INTO public.empresa VALUES (2289, true, '2023-06-12 12:25:52.528596', NULL, 'FACULDADES FAMEP UNIDADE FORTALEZA CE (FAMEP)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (2290, true, '2023-06-12 12:25:52.535412', NULL, 'FACULDADES FAMEP UNIDADE IRARÁ - BA (FAMEP)', 1, NULL, 706, false);
INSERT INTO public.empresa VALUES (2291, true, '2023-06-12 12:25:52.546982', NULL, 'FACULDADES FAMEP UNIDADE LAGO DA PEDRA - MA (FAMEP)', 1, NULL, 707, false);
INSERT INTO public.empresa VALUES (2292, true, '2023-06-12 12:25:52.55484', NULL, 'FACULDADES FAMEP UNIDADE PARNAÍBA - PI (FAMEP)', 1, NULL, 176, false);
INSERT INTO public.empresa VALUES (2293, true, '2023-06-12 12:25:52.561836', NULL, 'FACULDADES FAMEP UNIDADE TERESINA - P (FAMEP)', 1, NULL, 27, false);
INSERT INTO public.empresa VALUES (2294, true, '2023-06-12 12:25:52.568992', NULL, 'FACULDADES FAMEP - UNIDADE URUÇUI - PI (FAMEP)', 1, NULL, 708, false);
INSERT INTO public.empresa VALUES (2295, true, '2023-06-12 12:25:52.575979', NULL, 'FACULDADES FATIFAJAR - FATIFAJAR ARAPOTI', 1, NULL, 709, false);
INSERT INTO public.empresa VALUES (2296, true, '2023-06-12 12:25:52.5835', NULL, 'FACULDADES IDAAM (IDAAM)', 1, NULL, 75, false);
INSERT INTO public.empresa VALUES (2297, true, '2023-06-12 12:25:52.590393', NULL, 'FACULDADE SIGMA (SIGMA EAD)', 1, NULL, 710, false);
INSERT INTO public.empresa VALUES (2298, true, '2023-06-12 12:25:52.597509', NULL, 'FACULDADE SILVA NETO (FASINE)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (2299, true, '2023-06-12 12:25:52.604509', NULL, 'FACULDADES IMPACTOS BRASIL (FACIB)', 1, NULL, 203, false);
INSERT INTO public.empresa VALUES (2300, true, '2023-06-12 12:25:52.612099', NULL, 'FACULDADE SINERGIA (SINERGIA)', 1, NULL, 711, false);
INSERT INTO public.empresa VALUES (2301, true, '2023-06-12 12:25:52.619086', NULL, 'FACULDADE SINOP (FASIP)', 1, NULL, 155, false);
INSERT INTO public.empresa VALUES (2302, true, '2023-06-12 12:25:52.625984', NULL, 'FACULDADE SINPAIN (SINPAIN)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2303, true, '2023-06-12 12:25:52.633307', NULL, 'FACULDADES INTEGRADAS ADVENTISTAS DE MINAS GERAIS (FADMINAS)', 1, NULL, 108, false);
INSERT INTO public.empresa VALUES (2304, true, '2023-06-12 12:25:52.64326', NULL, 'FACULDADES INTEGRADAS APARÍCIO CARVALHO VILHENA (FIMCAVILHENA)', 1, NULL, 355, false);
INSERT INTO public.empresa VALUES (2305, true, '2023-06-12 12:25:52.650376', NULL, 'FACULDADES INTEGRADAS ASMEC (ASMEC)', 1, NULL, 712, false);
INSERT INTO public.empresa VALUES (2306, true, '2023-06-12 12:25:52.657418', NULL, 'FACULDADES INTEGRADAS CAMÕES (FICA)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (2307, true, '2023-06-12 12:25:52.664406', NULL, 'FACULDADES INTEGRADAS CAMPO-GRANDENSES (FIC)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2308, true, '2023-06-12 12:25:52.696938', NULL, 'FACULDADES INTEGRADAS CAMPOS SALLES (FICS)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2309, true, '2023-06-12 12:25:52.703824', NULL, 'FACULDADES INTEGRADAS CESUMAR DE ARAPONGAS (CESUMAR)', 1, NULL, 611, false);
INSERT INTO public.empresa VALUES (2310, true, '2023-06-12 12:25:52.710882', NULL, 'FACULDADES INTEGRADAS DA AMÉRICA DO SUL (FAC INTEGRA)', 1, NULL, 387, false);
INSERT INTO public.empresa VALUES (2311, true, '2023-06-12 12:25:52.718053', NULL, 'FACULDADES INTEGRADAS DA UPIS (UPIS)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (2312, true, '2023-06-12 12:25:52.725395', NULL, 'FACULDADES INTEGRADAS DE ARACRUZ (FAACZ)', 1, NULL, 321, false);
INSERT INTO public.empresa VALUES (2313, true, '2023-06-12 12:25:52.732369', NULL, 'FACULDADES INTEGRADAS DE ARARAQUARA (FIAR)', 1, NULL, 378, false);
INSERT INTO public.empresa VALUES (2314, true, '2023-06-12 12:25:52.739636', NULL, 'FACULDADES INTEGRADAS DE BAURU (FIB)', 1, NULL, 93, false);
INSERT INTO public.empresa VALUES (2315, true, '2023-06-12 12:25:52.751275', NULL, 'FACULDADES INTEGRADAS DE BOTUCATU', 1, NULL, 383, false);
INSERT INTO public.empresa VALUES (2316, true, '2023-06-12 12:25:52.758653', NULL, 'FACULDADES INTEGRADAS DE CASSILÂNDIA (FIC)', 1, NULL, 713, false);
INSERT INTO public.empresa VALUES (2317, true, '2023-06-12 12:25:52.765591', NULL, 'FACULDADES INTEGRADAS DE CATAGUASES (FIC)', 1, NULL, 366, false);
INSERT INTO public.empresa VALUES (2318, true, '2023-06-12 12:25:52.772504', NULL, 'FACULDADES INTEGRADAS DE CIÊNCIAS HUMANAS, SAÚDE E EDUCAÇÃO DE GUARULHOS (FG)', 1, NULL, 100, false);
INSERT INTO public.empresa VALUES (2319, true, '2023-06-12 12:25:52.779421', NULL, 'FACULDADES INTEGRADAS DE DIAMANTINO (FID)', 1, NULL, 714, false);
INSERT INTO public.empresa VALUES (2320, true, '2023-06-12 12:25:52.786694', NULL, 'FACULDADES INTEGRADAS DE FERNANDÓPOLIS (FIFE)', 1, NULL, 309, false);
INSERT INTO public.empresa VALUES (2321, true, '2023-06-12 12:25:52.793755', NULL, 'FACULDADES INTEGRADAS DE GARANHUNS (FACIGA)', 1, NULL, 483, false);
INSERT INTO public.empresa VALUES (2322, true, '2023-06-12 12:25:52.800841', NULL, 'FACULDADES INTEGRADAS DE ITAPETININGA (FII)', 1, NULL, 271, false);
INSERT INTO public.empresa VALUES (2323, true, '2023-06-12 12:25:52.807795', NULL, 'FACULDADES INTEGRADAS DE JACAREPAGUÁ (FIJ)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2324, true, '2023-06-12 12:25:52.81531', NULL, 'FACULDADES INTEGRADAS DE JAHU (FIJ)', 1, NULL, 274, false);
INSERT INTO public.empresa VALUES (2325, true, '2023-06-12 12:25:52.822182', NULL, 'FACULDADES INTEGRADAS DE NAVIRAÍ (FINAV)', 1, NULL, 715, false);
INSERT INTO public.empresa VALUES (2326, true, '2023-06-12 12:25:52.829252', NULL, 'FACULDADES INTEGRADAS DE PARANAÍBA - FIPAR (FIPAR)', 1, NULL, 716, false);
INSERT INTO public.empresa VALUES (2327, true, '2023-06-12 12:25:52.836278', NULL, 'FACULDADES INTEGRADAS DE PATOS (FIP)', 1, NULL, 147, false);
INSERT INTO public.empresa VALUES (2328, true, '2023-06-12 12:25:52.843599', NULL, 'FACULDADES INTEGRADAS DE RONDONÓPOLIS (FAIR)', 1, NULL, 287, false);
INSERT INTO public.empresa VALUES (2329, true, '2023-06-12 12:25:52.85054', NULL, 'FACULDADES INTEGRADAS DE SAÚDE E EDUCAÇÃO DO BRASIL (FISEB)', 1, NULL, 203, false);
INSERT INTO public.empresa VALUES (2330, true, '2023-06-12 12:25:52.857648', NULL, 'FACULDADES INTEGRADAS DE TAGUAÍ (FIT)', 1, NULL, 717, false);
INSERT INTO public.empresa VALUES (2331, true, '2023-06-12 12:25:52.864553', NULL, 'FACULDADES INTEGRADAS DE TAQUARA (FACCAT)', 1, NULL, 718, false);
INSERT INTO public.empresa VALUES (2332, true, '2023-06-12 12:25:52.872123', NULL, 'FACULDADES INTEGRADAS DE TRÊS LAGOAS (AEMS)', 1, NULL, 658, false);
INSERT INTO public.empresa VALUES (2333, true, '2023-06-12 12:25:52.879102', NULL, 'FACULDADES INTEGRADAS DO BRASIL UNIFUTURO (FACULDADE UNIFUTURO)', 1, NULL, 107, false);
INSERT INTO public.empresa VALUES (2334, true, '2023-06-12 12:25:52.886017', NULL, 'FACULDADES INTEGRADAS DO EXTREMO SUL DA BAHIA (UNESULBAHIA)', 1, NULL, 587, false);
INSERT INTO public.empresa VALUES (2335, true, '2023-06-12 12:25:52.893437', NULL, 'FACULDADES INTEGRADAS DOM PEDRO II (DOMPEDRO)', 1, NULL, 114, false);
INSERT INTO public.empresa VALUES (2336, true, '2023-06-12 12:25:52.90104', NULL, 'FACULDADES INTEGRADAS DOS CAMPOS GERAIS (CESCAGE)', 1, NULL, 188, false);
INSERT INTO public.empresa VALUES (2337, true, '2023-06-12 12:25:52.908056', NULL, 'FACULDADES INTEGRADAS DO SUL DE MINAS - FISMINAS', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (2338, true, '2023-06-12 12:25:52.914936', NULL, 'FACULDADES INTEGRADAS DO VALE DO IVAÍ', 1, NULL, 532, false);
INSERT INTO public.empresa VALUES (2339, true, '2023-06-12 12:25:52.921775', NULL, 'FACULDADES INTEGRADAS EINSTEIN DE LIMEIRA (FIEL)', 1, NULL, 276, false);
INSERT INTO public.empresa VALUES (2340, true, '2023-06-12 12:25:52.929441', NULL, 'FACULDADES INTEGRADAS ESPÍRITA (FIES)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (2341, true, '2023-06-12 12:25:52.936563', NULL, 'FACULDADES INTEGRADAS HÉLIO ALONSO (FACHA)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2342, true, '2023-06-12 12:25:52.943423', NULL, 'FACULDADES INTEGRADAS IESGO (IESGO)', 1, NULL, 539, false);
INSERT INTO public.empresa VALUES (2343, true, '2023-06-12 12:25:52.954956', NULL, 'FACULDADES INTEGRADAS IPEP (FIPEP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2344, true, '2023-06-12 12:25:52.962467', NULL, 'FACULDADES INTEGRADAS IPITANGA (FACIIP)', 1, NULL, 209, false);
INSERT INTO public.empresa VALUES (2345, true, '2023-06-12 12:25:52.96945', NULL, 'FACULDADES INTEGRADAS MACHADO DE ASSIS (FEMA)', 1, NULL, 719, false);
INSERT INTO public.empresa VALUES (2346, true, '2023-06-12 12:25:52.976651', NULL, 'FACULDADES INTEGRADAS MARIA IMACULADA (FIMI)', 1, NULL, 279, false);
INSERT INTO public.empresa VALUES (2347, true, '2023-06-12 12:25:52.983738', NULL, 'FACULDADES INTEGRADAS OSWALDO CRUZ', 1, NULL, 23, false);
INSERT INTO public.empresa VALUES (2348, true, '2023-06-12 12:25:52.991371', NULL, 'FACULDADES INTEGRADAS PADRÃO (FIP GUANAMBI)', 1, NULL, 157, false);
INSERT INTO public.empresa VALUES (2349, true, '2023-06-12 12:25:52.998555', NULL, 'FACULDADES INTEGRADAS PAULISTA (FIP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2350, true, '2023-06-12 12:25:53.005752', NULL, 'FACULDADES INTEGRADAS POTENCIAL (FIP)', 1, NULL, 520, false);
INSERT INTO public.empresa VALUES (2351, true, '2023-06-12 12:25:53.012983', NULL, 'FACULDADES INTEGRADAS QUALIS (FIQ)', 1, NULL, 225, false);
INSERT INTO public.empresa VALUES (2352, true, '2023-06-12 12:25:53.020456', NULL, 'FACULDADES INTEGRADAS REGIONAIS DE AVARÉ (FIRA)', 1, NULL, 195, false);
INSERT INTO public.empresa VALUES (2353, true, '2023-06-12 12:25:53.027383', NULL, 'FACULDADES INTEGRADAS RIO BRANCO (FRB)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2354, true, '2023-06-12 12:25:53.034196', NULL, 'FACULDADES INTEGRADAS RIO BRANCO GRANJA VIANNA (FRB-GV)', 1, NULL, 520, false);
INSERT INTO public.empresa VALUES (2355, true, '2023-06-12 12:25:53.041162', NULL, 'FACULDADES INTEGRADAS RUI BARBOSA (FIRB)', 1, NULL, 392, false);
INSERT INTO public.empresa VALUES (2356, true, '2023-06-12 12:25:53.048944', NULL, 'FACULDADES INTEGRADAS SÃO JUDAS TADEU (SJT)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (2357, true, '2023-06-12 12:25:53.056031', NULL, 'FACULDADES INTEGRADAS SILVA E SOUZA (FAU)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2358, true, '2023-06-12 12:25:53.063161', NULL, 'FACULDADES INTEGRADAS SIMONSEN (FIS)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2359, true, '2023-06-12 12:25:53.070156', NULL, 'FACULDADES INTEGRADAS SOARES DE OLIVEIRA (FISO)', 1, NULL, 80, false);
INSERT INTO public.empresa VALUES (2360, true, '2023-06-12 12:25:53.077689', NULL, 'FACULDADES INTEGRADAS STELLA MARIS DE ANDRADINA (FISMA)', 1, NULL, 392, false);
INSERT INTO public.empresa VALUES (2361, true, '2023-06-12 12:25:53.084772', NULL, 'FACULDADES INTEGRADAS URUBUPUNGÁ (FIU)', 1, NULL, 720, false);
INSERT INTO public.empresa VALUES (2362, true, '2023-06-12 12:25:53.091776', NULL, 'FACULDADES INTEGRADAS VALE DO RIO VERDE (FIVAR)', 1, NULL, 721, false);
INSERT INTO public.empresa VALUES (2363, true, '2023-06-12 12:25:53.098722', NULL, 'FACULDADES INTEGRADAS VIANNA JÚNIOR (FIVJ)', 1, NULL, 38, false);
INSERT INTO public.empresa VALUES (2364, true, '2023-06-12 12:25:53.106043', NULL, 'FACULDADES INTEGRADAS VITAL BRAZIL (FVB)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2365, true, '2023-06-12 12:25:53.113099', NULL, 'FACULDADES INTEGRADAS ZONA DA MATA (FIZM)', 1, NULL, 38, false);
INSERT INTO public.empresa VALUES (2366, true, '2023-06-12 12:25:53.120084', NULL, 'FACULDADES IPEDE (IPEDE)', 1, NULL, 399, false);
INSERT INTO public.empresa VALUES (2367, true, '2023-06-12 12:25:53.127522', NULL, 'FACULDADES ITECNE DE CASCAVEL (ITECNE)', 1, NULL, 54, false);
INSERT INTO public.empresa VALUES (2368, true, '2023-06-12 12:25:53.13522', NULL, 'FACULDADES JOÃO PAULO II (FJP)', 1, NULL, 282, false);
INSERT INTO public.empresa VALUES (2369, true, '2023-06-12 12:25:53.142409', NULL, 'FACULDADES JOÃO PAULO II - CAMPUS PORTO ALEGRE (FJP)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (2370, true, '2023-06-12 12:25:53.153888', NULL, 'FACULDADES JOÃO PAULO II - PELOTAS (FJP -PELOTAS)', 1, NULL, 283, false);
INSERT INTO public.empresa VALUES (2371, true, '2023-06-12 12:25:53.160764', NULL, 'FACULDADES JOÃO PAULO II - RIO GRANDE (FJP)', 1, NULL, 298, false);
INSERT INTO public.empresa VALUES (2372, true, '2023-06-12 12:25:53.168354', NULL, 'FACULDADE SKEMA BUSINESS SCHOOL (SKEMA)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (2373, true, '2023-06-12 12:25:53.175224', NULL, 'FACULDADES LONDRINA', 1, NULL, 159, false);
INSERT INTO public.empresa VALUES (2374, true, '2023-06-12 12:25:53.18241', NULL, 'FACULDADES MAGSUL (FAMAG)', 1, NULL, 495, false);
INSERT INTO public.empresa VALUES (2375, true, '2023-06-12 12:25:53.189301', NULL, 'FACULDADES METROPOLITANAS DE CUIABÁ (FAMEC)', 1, NULL, 203, false);
INSERT INTO public.empresa VALUES (2376, true, '2023-06-12 12:25:53.19673', NULL, 'FACULDADE SNA DIGITAL (SNA DIGITAL)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2377, true, '2023-06-12 12:25:53.20365', NULL, 'FACULDADES NETWORK - CAMPUS SUMARÉ', 1, NULL, 293, false);
INSERT INTO public.empresa VALUES (2378, true, '2023-06-12 12:25:53.210925', NULL, 'FACULDADE SOBERANA DE ARAPIRACA (SOBERANA)', 1, NULL, 333, false);
INSERT INTO public.empresa VALUES (2379, true, '2023-06-12 12:25:53.217867', NULL, 'FACULDADE SOBERANA DE CACHOEIRO DO ITAPEMIRIM (SOBERANA)', 1, NULL, 190, false);
INSERT INTO public.empresa VALUES (2380, true, '2023-06-12 12:25:53.225227', NULL, 'FACULDADE SOBERANA DE JACOBINA (SOBERANA)', 1, NULL, 244, false);
INSERT INTO public.empresa VALUES (2381, true, '2023-06-12 12:25:53.232149', NULL, 'FACULDADE SOCIESC DE EDUCAÇÃO DE JARAGUÁ DO SUL', 1, NULL, 31, false);
INSERT INTO public.empresa VALUES (2382, true, '2023-06-12 12:25:53.239032', NULL, 'FACULDADE SOCIESC DE EDUCAÇÃO DE SÃO BENTO DO SUL', 1, NULL, 546, false);
INSERT INTO public.empresa VALUES (2383, true, '2023-06-12 12:25:53.246061', NULL, 'FACULDADE SOCIESC DE JARAGUÁ DO SUL (SOCIESC)', 1, NULL, 31, false);
INSERT INTO public.empresa VALUES (2384, true, '2023-06-12 12:25:53.253367', NULL, 'FACULDADE SOGIPA DE EDUCAÇÃO FÍSICA', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (2385, true, '2023-06-12 12:25:53.260374', NULL, 'FACULDADE SOLIDÁRIA DE SOBRADINHO (FASOL)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (2386, true, '2023-06-12 12:25:53.267269', NULL, 'FACULDADE SOLIDARIA DO OESTE PAULISTA (FASOL)', 1, NULL, 50, false);
INSERT INTO public.empresa VALUES (2387, true, '2023-06-12 12:25:53.274411', NULL, 'FACULDADES OSWALDO CRUZ (FOC)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2388, true, '2023-06-12 12:25:53.282407', NULL, 'FACULDADES PEQUENO PRÍNCIPE (FPP)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (2389, true, '2023-06-12 12:25:53.289508', NULL, 'FACULDADES PLANALTO CENTRAL (FPC)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (2390, true, '2023-06-12 12:25:53.296498', NULL, 'FACULDADES REUNIDAS DA ASCE (FRASCE)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2391, true, '2023-06-12 12:25:53.303381', NULL, 'FACULDADES SULAMÉRICA BAHIA', 1, NULL, 52, false);
INSERT INTO public.empresa VALUES (2392, true, '2023-06-12 12:25:53.310839', NULL, 'FACULDADE STBNB', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (2393, true, '2023-06-12 12:25:53.317744', NULL, 'FACULDADE STELLA MARIS - FSM (FSM)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (2394, true, '2023-06-12 12:25:53.324682', NULL, 'FACULDADE SUCESSO (FAS)', 1, NULL, 722, false);
INSERT INTO public.empresa VALUES (2395, true, '2023-06-12 12:25:53.331666', NULL, 'FACULDADE SUCESSO (FACSU)', 1, NULL, 723, false);
INSERT INTO public.empresa VALUES (2396, true, '2023-06-12 12:25:53.33914', NULL, 'FACULDADE SUDAMÉRICA (SUDAMÉRICA)', 1, NULL, 366, false);
INSERT INTO public.empresa VALUES (2397, true, '2023-06-12 12:25:53.346315', NULL, 'FACULDADE SUDOESTE (FASU)', 1, NULL, 37, false);
INSERT INTO public.empresa VALUES (2398, true, '2023-06-12 12:25:53.35787', NULL, 'FACULDADE SULAMÉRICA BRASÍLIA', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (2399, true, '2023-06-12 12:25:53.371813', NULL, 'FACULDADE SUL DA AMÉRICA (SULDAMÉRICA)', 1, NULL, 41, false);
INSERT INTO public.empresa VALUES (2400, true, '2023-06-12 12:25:53.378924', NULL, 'FACULDADE SUL FLUMINENSE (FASF)', 1, NULL, 123, false);
INSERT INTO public.empresa VALUES (2401, true, '2023-06-12 12:25:53.390772', NULL, 'FACULDADE SUL PAULISTA DE ITANHAÉM (FASUPI)', 1, NULL, 618, false);
INSERT INTO public.empresa VALUES (2402, true, '2023-06-12 12:25:53.397902', NULL, 'FACULDADES UNIDAS DE PESQUISA, CIÊNCIAS E SAÚDE LTDA (FAPEC)', 1, NULL, 275, false);
INSERT INTO public.empresa VALUES (2403, true, '2023-06-12 12:25:53.408148', NULL, 'FACULDADES UNIFICADAS DE CATAGUASES (FUC)', 1, NULL, 366, false);
INSERT INTO public.empresa VALUES (2404, true, '2023-06-12 12:25:53.415719', NULL, 'FACULDADES UNIFICADAS DE FOZ DO IGUAÇU (UNIFOZ)', 1, NULL, 124, false);
INSERT INTO public.empresa VALUES (2405, true, '2023-06-12 12:25:53.431171', NULL, 'FACULDADES UNIFICADAS DE IÚNA (FUI)', 1, NULL, 724, false);
INSERT INTO public.empresa VALUES (2406, true, '2023-06-12 12:25:53.44112', NULL, 'FACULDADES UNIFICADAS DE LEOPOLDINA (FUL)', 1, NULL, 669, false);
INSERT INTO public.empresa VALUES (2407, true, '2023-06-12 12:25:53.449246', NULL, 'FACULDADE SUPREMO (SUPREMO)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (2408, true, '2023-06-12 12:25:53.456347', NULL, 'FACULDADE SUPREMO REDENTOR (FACSUR)', 1, NULL, 688, false);
INSERT INTO public.empresa VALUES (2409, true, '2023-06-12 12:25:53.46351', NULL, 'FACULDADES VALE DO PIANCÓ (FAVAP)', 1, NULL, 725, false);
INSERT INTO public.empresa VALUES (2410, true, '2023-06-12 12:25:53.476444', NULL, 'FACULDADE TECNOLOGICA ANTHROPOS (FATAN)', 1, NULL, 235, false);
INSERT INTO public.empresa VALUES (2411, true, '2023-06-12 12:25:53.484574', NULL, 'FACULDADE TECNOLÓGICA DE LIMOEIRO DO NORTE: LADISLAU PEREIRA (FTLN)', 1, NULL, 726, false);
INSERT INTO public.empresa VALUES (2412, true, '2023-06-12 12:25:53.491919', NULL, 'FACULDADE TECNOLÓGICA DENTAL CEEO (ESD-CEEO)', 1, NULL, 727, false);
INSERT INTO public.empresa VALUES (2413, true, '2023-06-12 12:25:53.499198', NULL, 'FACULDADE TECNOLÓGICA DE PERNAMBUCO (FATEPE)', 1, NULL, 39, false);
INSERT INTO public.empresa VALUES (2414, true, '2023-06-12 12:25:53.506343', NULL, 'FACULDADE TECNOLÓGICA FALCÃO (FTF)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (2415, true, '2023-06-12 12:25:53.513965', NULL, 'FACULDADE TECNOLÓGICA INAP (FAT- INAP)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (2416, true, '2023-06-12 12:25:53.521307', NULL, 'FACULDADE TECNOLÓGICA LATINO AMERICANA (FATLA)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (2417, true, '2023-06-12 12:25:53.528445', NULL, 'FACULDADE TECSOMA (FATEC)', 1, NULL, 55, false);
INSERT INTO public.empresa VALUES (2418, true, '2023-06-12 12:25:53.540319', NULL, 'FACULDADE TELOS DE CAMPINAS (FATELOS)', 1, NULL, 177, false);
INSERT INTO public.empresa VALUES (2419, true, '2023-06-12 12:25:53.547961', NULL, 'FACULDADE TEOLÓGICA BATISTA DE BRASÍLIA (FTBB)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (2420, true, '2023-06-12 12:25:53.555398', NULL, 'FACULDADE TEOLÓGICA BATISTA DE SÃO PAULO (FTBSP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2421, true, '2023-06-12 12:25:53.562456', NULL, 'FACULDADE TEOLÓGICA BATISTA EQUATORIAL (FATEBE)', 1, NULL, 79, false);
INSERT INTO public.empresa VALUES (2422, true, '2023-06-12 12:25:53.569722', NULL, 'FACULDADE TEOLÓGICA BETÂNIA (FATEBE)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (2423, true, '2023-06-12 12:25:53.577328', NULL, 'FACULDADE TEOLÓGICA DE CIÊNCIAS HUMANAS E SOCIAIS LOGOS (FAETEL)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2424, true, '2023-06-12 12:25:53.588913', NULL, 'FACULDADE TEOLÓGICA SUL AMERICANA (FTSA)', 1, NULL, 159, false);
INSERT INTO public.empresa VALUES (2425, true, '2023-06-12 12:25:53.596074', NULL, 'FACULDADE TERCEIRA VISÃO (F3V)', 1, NULL, 473, false);
INSERT INTO public.empresa VALUES (2426, true, '2023-06-12 12:25:53.603032', NULL, 'FACULDADE TERRA BRASILIS', 1, NULL, 728, false);
INSERT INTO public.empresa VALUES (2427, true, '2023-06-12 12:25:53.610599', NULL, 'FACULDADE TERRA NORDESTE (FATENE)', 1, NULL, 534, false);
INSERT INTO public.empresa VALUES (2428, true, '2023-06-12 12:25:53.617629', NULL, 'FACULDADE TERZIUS (TERZIUS)', 1, NULL, 177, false);
INSERT INTO public.empresa VALUES (2429, true, '2023-06-12 12:25:53.624797', NULL, 'FACULDADE TIRADENTES DE GOIANA (FITS)', 1, NULL, 400, false);
INSERT INTO public.empresa VALUES (2430, true, '2023-06-12 12:25:53.631796', NULL, 'FACULDADE TIRADENTES DE JABOATÃO DOS GUARARAPES', 1, NULL, 132, false);
INSERT INTO public.empresa VALUES (2431, true, '2023-06-12 12:25:53.639787', NULL, 'FACULDADE TRÊS DE MAIO (SETREM)', 1, NULL, 729, false);
INSERT INTO public.empresa VALUES (2432, true, '2023-06-12 12:25:53.646858', NULL, 'FACULDADE TRÊS MARIAS (FTM)', 1, NULL, 107, false);
INSERT INTO public.empresa VALUES (2433, true, '2023-06-12 12:25:53.653794', NULL, 'FACULDADE TRÊS PONTAS (FATEP)', 1, NULL, 730, false);
INSERT INTO public.empresa VALUES (2434, true, '2023-06-12 12:25:53.660805', NULL, 'FACULDADE TRILÓGICA KEPPE & PACHECO (KEPPE & PACHECO)', 1, NULL, 731, false);
INSERT INTO public.empresa VALUES (2435, true, '2023-06-12 12:25:53.668437', NULL, 'FACULDADE TRILÓGICA NOSSA SENHORA DE TODOS OS POVOS (FATRI EAD)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2436, true, '2023-06-12 12:25:53.675328', NULL, 'FACULDADE TUCURUÍ (FATUC)', 1, NULL, 418, false);
INSERT INTO public.empresa VALUES (2437, true, '2023-06-12 12:25:53.68244', NULL, 'FACULDADE UBERLANDENSE DE NÚCLEOS INTEGRADOS DE ENSINO, SERVIÇO SOCIAL E APRENDIZAGEM (FAESSA)', 1, NULL, 134, false);
INSERT INTO public.empresa VALUES (2438, true, '2023-06-12 12:25:53.689501', NULL, 'FACULDADE UBS (FACULDADE UBS)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2439, true, '2023-06-12 12:25:53.698213', NULL, 'FACULDADE UMFG (UMFG)', 1, NULL, 732, false);
INSERT INTO public.empresa VALUES (2440, true, '2023-06-12 12:25:53.788045', NULL, 'FACULDADE UNA DE CONSELHEIRO LAFAIETE', 1, NULL, 18, false);
INSERT INTO public.empresa VALUES (2441, true, '2023-06-12 12:25:53.829159', NULL, 'FACULDADE UNA DE DIVINÓPOLIS (UNA DIVINOPOLIS)', 1, NULL, 19, false);
INSERT INTO public.empresa VALUES (2442, true, '2023-06-12 12:25:53.836142', NULL, 'FACULDADE UNA DE ITABIRA (UNA)', 1, NULL, 161, false);
INSERT INTO public.empresa VALUES (2443, true, '2023-06-12 12:25:53.843022', NULL, 'FACULDADE UNA DE ITUMBIARA', 1, NULL, 234, false);
INSERT INTO public.empresa VALUES (2444, true, '2023-06-12 12:25:53.849981', NULL, 'FACULDADE UNA DE JATAÍ (UNA)', 1, NULL, 21, false);
INSERT INTO public.empresa VALUES (2445, true, '2023-06-12 12:25:53.857562', NULL, 'FACULDADE UNA DE POUSO ALEGRE (UNA POUSOALEGRE)', 1, NULL, 230, false);
INSERT INTO public.empresa VALUES (2446, true, '2023-06-12 12:25:53.864633', NULL, 'FACULDADE UNA DE SETE LAGOAS (UNASET)', 1, NULL, 24, false);
INSERT INTO public.empresa VALUES (2447, true, '2023-06-12 12:25:53.875879', NULL, 'FACULDADE UNESC-UNAMA', 1, NULL, 51, false);
INSERT INTO public.empresa VALUES (2448, true, '2023-06-12 12:25:53.894734', NULL, 'FACULDADE UNEX (UNEX)', 1, NULL, 308, false);
INSERT INTO public.empresa VALUES (2449, true, '2023-06-12 12:25:53.909282', NULL, 'FACULDADE UNIABA (FAC UNIABA)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (2450, true, '2023-06-12 12:25:53.923631', NULL, 'FACULDADE UNIÃO ARARUAMA DE ENSINO S/S LTDA. (FAC-UNILAGOS)', 1, NULL, 733, false);
INSERT INTO public.empresa VALUES (2451, true, '2023-06-12 12:25:53.941821', NULL, 'FACULDADE UNIÃO CULTURAL DO ESTADO DE SÃO PAULO (UCESP)', 1, NULL, 197, false);
INSERT INTO public.empresa VALUES (2452, true, '2023-06-12 12:25:53.948936', NULL, 'FACULDADE UNIÃO DE CAMPO MOURÃO', 1, NULL, 168, false);
INSERT INTO public.empresa VALUES (2453, true, '2023-06-12 12:25:53.968452', NULL, 'FACULDADE UNIÃO DE GOYAZES FORMOSA (FUG)', 1, NULL, 539, false);
INSERT INTO public.empresa VALUES (2454, true, '2023-06-12 12:25:53.975437', NULL, 'FACULDADE UNIÃO PAULISTANA (FAUP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2455, true, '2023-06-12 12:25:53.982448', NULL, 'FACULDADE UNIATENEU (FATE)', 1, NULL, 734, false);
INSERT INTO public.empresa VALUES (2456, true, '2023-06-12 12:25:53.989423', NULL, 'FACULDADE UNIAVAN RIO DO SUL (UNIAVAN)', 1, NULL, 183, false);
INSERT INTO public.empresa VALUES (2457, true, '2023-06-12 12:25:53.997043', NULL, 'FACULDADE UNIBF', 1, NULL, 735, false);
INSERT INTO public.empresa VALUES (2458, true, '2023-06-12 12:25:54.004104', NULL, 'FACULDADE UNIBRAS DA BAHIA (FACBRAS)', 1, NULL, 533, false);
INSERT INTO public.empresa VALUES (2459, true, '2023-06-12 12:25:54.01109', NULL, 'FACULDADE UNIBRAS DO MARANHÃO (FACBRAS)', 1, NULL, 507, false);
INSERT INTO public.empresa VALUES (2460, true, '2023-06-12 12:25:54.018192', NULL, 'FACULDADE UNIBRAS DO MATO GROSSO (FACBRAS)', 1, NULL, 736, false);
INSERT INTO public.empresa VALUES (2461, true, '2023-06-12 12:25:54.026075', NULL, 'FACULDADE UNIBRAS DO NORTE GOIANO (FACBRAS)', 1, NULL, 614, false);
INSERT INTO public.empresa VALUES (2462, true, '2023-06-12 12:25:54.043648', NULL, 'FACULDADE UNIBRAS DO PARÁ (FACBRAS)', 1, NULL, 737, false);
INSERT INTO public.empresa VALUES (2463, true, '2023-06-12 12:25:54.061699', NULL, 'FACULDADE UNIBRASÍLIA (BRASÍLIA)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (2464, true, '2023-06-12 12:25:54.075283', NULL, 'FACULDADE UNIBRASÍLIA DE CIÊNCIAS ECONÔMICAS DE MINAS GERAIS (BRASÍLIA)', 1, NULL, 118, false);
INSERT INTO public.empresa VALUES (2465, true, '2023-06-12 12:25:54.084148', NULL, 'FACULDADE UNIBRASÍLIA DE MINAS GERAIS (BRASÍLIA)', 1, NULL, 118, false);
INSERT INTO public.empresa VALUES (2466, true, '2023-06-12 12:25:54.101522', NULL, 'FACULDADE UNIBRASÍLIA SUL (BRASÍLIA)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (2467, true, '2023-06-12 12:25:54.114479', NULL, 'FACULDADE ÚNICA DE FORMAÇÃO E ENSINO (FUNIFE)', 1, NULL, 738, false);
INSERT INTO public.empresa VALUES (2468, true, '2023-06-12 12:25:54.121545', NULL, 'FACULDADE ÚNICA DE IPATINGA (FUNIP)', 1, NULL, 268, false);
INSERT INTO public.empresa VALUES (2469, true, '2023-06-12 12:25:54.135042', NULL, 'FACULDADE UNICENTRAL', 1, NULL, 739, false);
INSERT INTO public.empresa VALUES (2470, true, '2023-06-12 12:25:54.146213', NULL, 'FACULDADE UNICESUMAR DE CORUMBÁ', 1, NULL, 686, false);
INSERT INTO public.empresa VALUES (2471, true, '2023-06-12 12:25:54.16102', NULL, 'FACULDADE UNICPO (FACULDADE UNICPO)', 1, NULL, 299, false);
INSERT INTO public.empresa VALUES (2472, true, '2023-06-12 12:25:54.171616', NULL, 'FACULDADE UNIDA DE CAMPINAS GOIÂNIA - FACUNICAMPS GOIÂNIA (FACUNICAMPS)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (2473, true, '2023-06-12 12:25:54.182688', NULL, 'FACULDADE UNIDA DE SÃO PAULO (FAUSP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2474, true, '2023-06-12 12:25:54.192111', NULL, 'FACULDADE UNIDA DE SÃO PAULO - EAD (FAUSP - EAD)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2475, true, '2023-06-12 12:25:54.226022', NULL, 'FACULDADE UNIDA DE VITÓRIA (FACULDADE UNIDA)', 1, NULL, 25, false);
INSERT INTO public.empresa VALUES (2476, true, '2023-06-12 12:25:54.257038', NULL, 'FACULDADE UNIEDUCAR', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (2477, true, '2023-06-12 12:25:54.280112', NULL, 'FACULDADE UNIFAEL CURITIBA (FAEL CURITIBA)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (2478, true, '2023-06-12 12:25:54.288713', NULL, 'FACULDADE UNIFAEL PORTO ALEGRE (FAEL POA)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (2479, true, '2023-06-12 12:25:54.311314', NULL, 'FACULDADE UNIFAHE', 1, NULL, 740, false);
INSERT INTO public.empresa VALUES (2480, true, '2023-06-12 12:25:54.32083', NULL, 'FACULDADE UNIFAMETRO CASCAVEL', 1, NULL, 741, false);
INSERT INTO public.empresa VALUES (2481, true, '2023-06-12 12:25:54.351454', NULL, 'FACULDADE UNIFAMETRO MARACANAÚ', 1, NULL, 335, false);
INSERT INTO public.empresa VALUES (2482, true, '2023-06-12 12:25:54.364174', NULL, 'FACULDADE UNIFICADA DO ESTADO DE SÃO PAULO (FAUESP - ONLINE)', 1, NULL, 480, false);
INSERT INTO public.empresa VALUES (2483, true, '2023-06-12 12:25:54.414336', NULL, 'FACULDADE UNIFICADA DO ESTADO DE SÃO PAULO (FAUESP)', 1, NULL, 480, false);
INSERT INTO public.empresa VALUES (2484, true, '2023-06-12 12:25:54.460781', NULL, 'FACULDADE UNIFTB', 1, NULL, 742, false);
INSERT INTO public.empresa VALUES (2485, true, '2023-06-12 12:25:54.499257', NULL, 'FACULDADE UNIGUAÇU (FAC UNIGUAÇU)', 1, NULL, 743, false);
INSERT INTO public.empresa VALUES (2486, true, '2023-06-12 12:25:54.553988', NULL, 'FACULDADE UNIMED', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (2487, true, '2023-06-12 12:25:54.563341', NULL, 'FACULDADE UNIME DE CIÊNCIAS EXATAS E TECNOLÓGICAS (FCT)', 1, NULL, 209, false);
INSERT INTO public.empresa VALUES (2488, true, '2023-06-12 12:25:54.572216', NULL, 'FACULDADE UNIME DE CIÊNCIAS JURÍDICAS (FCJ)', 1, NULL, 209, false);
INSERT INTO public.empresa VALUES (2489, true, '2023-06-12 12:25:54.581368', NULL, 'FACULDADE UNIME DE CIÊNCIAS SOCIAIS (FCS)', 1, NULL, 209, false);
INSERT INTO public.empresa VALUES (2490, true, '2023-06-12 12:25:54.59158', NULL, 'FACULDADE UNIME DE EDUCAÇÃO E COMUNICAÇÃO (FEC)', 1, NULL, 209, false);
INSERT INTO public.empresa VALUES (2491, true, '2023-06-12 12:25:54.602178', NULL, 'FACULDADE UNINA', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (2492, true, '2023-06-12 12:25:54.61455', NULL, 'FACULDADE UNINABUCO SÃO LOURENÇO DA MATA', 1, NULL, 744, false);
INSERT INTO public.empresa VALUES (2493, true, '2023-06-12 12:25:54.621682', NULL, 'FACULDADE UNINASSAU ARAPIRACA', 1, NULL, 333, false);
INSERT INTO public.empresa VALUES (2494, true, '2023-06-12 12:25:54.643402', NULL, 'FACULDADE UNINASSAU BELO HORIZONTE', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (2495, true, '2023-06-12 12:25:54.663943', NULL, 'FACULDADE UNINASSAU BRASÍLIA (NASSAU BRASÍLIA)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (2496, true, '2023-06-12 12:25:54.671663', NULL, 'FACULDADE UNINASSAU CABO', 1, NULL, 412, false);
INSERT INTO public.empresa VALUES (2497, true, '2023-06-12 12:25:54.678783', NULL, 'FACULDADE UNINASSAU CUIABÁ (NASSAU CUIABÁ)', 1, NULL, 203, false);
INSERT INTO public.empresa VALUES (2498, true, '2023-06-12 12:25:54.685839', NULL, 'FACULDADE UNINASSAU FEIRA DE SANTANA', 1, NULL, 99, false);
INSERT INTO public.empresa VALUES (2499, true, '2023-06-12 12:25:54.693587', NULL, 'FACULDADE UNINASSAU GARANHUNS (NASSAU GARANHUNS)', 1, NULL, 483, false);
INSERT INTO public.empresa VALUES (2500, true, '2023-06-12 12:25:54.704875', NULL, 'FACULDADE UNINASSAU JABOATÃO DOS GUARARAPES (UNINASSAU)', 1, NULL, 132, false);
INSERT INTO public.empresa VALUES (2501, true, '2023-06-12 12:25:54.711896', NULL, 'FACULDADE UNINASSAU LAURO DE FREITAS', 1, NULL, 209, false);
INSERT INTO public.empresa VALUES (2502, true, '2023-06-12 12:25:54.719574', NULL, 'FACULDADE UNINASSAU MARACANAÚ', 1, NULL, 335, false);
INSERT INTO public.empresa VALUES (2503, true, '2023-06-12 12:25:54.726621', NULL, 'FACULDADE UNINASSAU MOSSORÓ', 1, NULL, 323, false);
INSERT INTO public.empresa VALUES (2504, true, '2023-06-12 12:25:54.733666', NULL, 'FACULDADE UNINASSAU OLINDA - NASSAU OLINDA', 1, NULL, 39, false);
INSERT INTO public.empresa VALUES (2505, true, '2023-06-12 12:25:54.741036', NULL, 'FACULDADE UNINASSAU PALMAS (NASSAU PALMAS)', 1, NULL, 23, false);
INSERT INTO public.empresa VALUES (2506, true, '2023-06-12 12:25:54.755395', NULL, 'FACULDADE UNINASSAU PARNAMIRIM', 1, NULL, 537, false);
INSERT INTO public.empresa VALUES (2507, true, '2023-06-12 12:25:54.761958', NULL, 'FACULDADE UNINASSAU PETROLINA', 1, NULL, 445, false);
INSERT INTO public.empresa VALUES (2508, true, '2023-06-12 12:25:54.769124', NULL, 'FACULDADE UNINASSAU SOBRAL', 1, NULL, 167, false);
INSERT INTO public.empresa VALUES (2509, true, '2023-06-12 12:25:54.776487', NULL, 'FACULDADE UNINASSAU VILHENA', 1, NULL, 355, false);
INSERT INTO public.empresa VALUES (2510, true, '2023-06-12 12:25:54.78411', NULL, 'FACULDADE UNINASSAU VITÓRIA DA CONQUISTA', 1, NULL, 37, false);
INSERT INTO public.empresa VALUES (2511, true, '2023-06-12 12:25:54.791098', NULL, 'FACULDADE - UNINORTE ALTAMIRA', 1, NULL, 14, false);
INSERT INTO public.empresa VALUES (2512, true, '2023-06-12 12:25:54.798214', NULL, 'FACULDADE - UNINORTE BARCARENA', 1, NULL, 745, false);
INSERT INTO public.empresa VALUES (2513, true, '2023-06-12 12:25:54.805108', NULL, 'FACULDADE UNINORTE MARABÁ (UNINORTE MARABÁ)', 1, NULL, 46, false);
INSERT INTO public.empresa VALUES (2514, true, '2023-06-12 12:25:54.812911', NULL, 'FACULDADE UNINORTE TAILÂNDIA (UNINORTE)', 1, NULL, 442, false);
INSERT INTO public.empresa VALUES (2515, true, '2023-06-12 12:25:54.820018', NULL, 'FACULDADE UNINTA FORTALEZA', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (2516, true, '2023-06-12 12:25:54.82698', NULL, 'FACULDADE UNINTA FORTALEZA - GESTÃO E NEGÓCIOS', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (2517, true, '2023-06-12 12:25:54.834014', NULL, 'FACULDADE UNINTA IGUATU', 1, NULL, 332, false);
INSERT INTO public.empresa VALUES (2518, true, '2023-06-12 12:25:54.841559', NULL, 'FACULDADE UNINTA TIANGUA', 1, NULL, 235, false);
INSERT INTO public.empresa VALUES (2519, true, '2023-06-12 12:25:54.84865', NULL, 'FACULDADE UNÍNTESE', 1, NULL, 348, false);
INSERT INTO public.empresa VALUES (2520, true, '2023-06-12 12:25:54.856088', NULL, 'FACULDADE UNIRB - ALAGOAS (F. UNIRB)', 1, NULL, 73, false);
INSERT INTO public.empresa VALUES (2521, true, '2023-06-12 12:25:54.86312', NULL, 'FACULDADE UNIRB - ARACAJU (F. UNIRB)', 1, NULL, 142, false);
INSERT INTO public.empresa VALUES (2522, true, '2023-06-12 12:25:54.87063', NULL, 'FACULDADE UNIRB - ARAPIRACA (F. UNIRB)', 1, NULL, 333, false);
INSERT INTO public.empresa VALUES (2523, true, '2023-06-12 12:25:54.877558', NULL, 'FACULDADE UNIRB - BARREIRAS (F. UNIRB)', 1, NULL, 174, false);
INSERT INTO public.empresa VALUES (2524, true, '2023-06-12 12:25:54.884526', NULL, 'FACULDADE UNIRB - CAMAÇARI (FACULDADE UNIRB)', 1, NULL, 153, false);
INSERT INTO public.empresa VALUES (2525, true, '2023-06-12 12:25:54.891475', NULL, 'FACULDADE UNIRB CEARÁ (F.CEARÁ)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (2526, true, '2023-06-12 12:25:54.89897', NULL, 'FACULDADE UNIRB - CIDADE DE FORTALEZA (F. UNIRB)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (2527, true, '2023-06-12 12:25:54.910556', NULL, 'FACULDADE UNIRB - FEIRA DE SANTANA (F. UNIRB)', 1, NULL, 99, false);
INSERT INTO public.empresa VALUES (2528, true, '2023-06-12 12:25:54.917518', NULL, 'FACULDADE UNIRB - FORTALEZA (F. UNIRB)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (2529, true, '2023-06-12 12:25:54.92452', NULL, 'FACULDADE UNIRB JOÃO PESSOA (F.UNIRB)', 1, NULL, 107, false);
INSERT INTO public.empresa VALUES (2530, true, '2023-06-12 12:25:54.932141', NULL, 'FACULDADE UNIRB - JUAZEIRO (FACULDADE UNIRB)', 1, NULL, 533, false);
INSERT INTO public.empresa VALUES (2531, true, '2023-06-12 12:25:54.939515', NULL, 'FACULDADE UNIRB - MACEIO (FACULDADE UNIRB)', 1, NULL, 73, false);
INSERT INTO public.empresa VALUES (2532, true, '2023-06-12 12:25:54.94666', NULL, 'FACULDADE UNIRB - MOSSORÓ (F. UNIRB)', 1, NULL, 323, false);
INSERT INTO public.empresa VALUES (2533, true, '2023-06-12 12:25:54.953598', NULL, 'FACULDADE UNIRB - NATAL (F. UNIRB)', 1, NULL, 130, false);
INSERT INTO public.empresa VALUES (2534, true, '2023-06-12 12:25:54.961147', NULL, 'FACULDADE UNIRB - PARNAÍBA (F. UNIRB)', 1, NULL, 176, false);
INSERT INTO public.empresa VALUES (2535, true, '2023-06-12 12:25:54.968107', NULL, 'FACULDADE UNIRB PARNAMIRIM (F.UNIRB)', 1, NULL, 537, false);
INSERT INTO public.empresa VALUES (2536, true, '2023-06-12 12:25:54.975234', NULL, 'FACULDADE UNIRB - PIAUÍ (F. UNIRB)', 1, NULL, 27, false);
INSERT INTO public.empresa VALUES (2537, true, '2023-06-12 12:25:54.982251', NULL, 'FACULDADE UNIRB - SALVADOR (FACULDADE UNIRB)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (2538, true, '2023-06-12 12:25:54.98996', NULL, 'FACULDADE UNIRB - SERRINHA (FACULDADE UNIRB)', 1, NULL, 746, false);
INSERT INTO public.empresa VALUES (2539, true, '2023-06-12 12:25:54.997091', NULL, 'FACULDADE UNIRB - TERESINA (F. UNIRB)', 1, NULL, 27, false);
INSERT INTO public.empresa VALUES (2540, true, '2023-06-12 12:25:55.004243', NULL, 'FACULDADE UNIRIO', 1, NULL, 51, false);
INSERT INTO public.empresa VALUES (2541, true, '2023-06-12 12:25:55.011487', NULL, 'FACULDADE UNISE', 1, NULL, 342, false);
INSERT INTO public.empresa VALUES (2542, true, '2023-06-12 12:25:55.022002', NULL, 'FACULDADE UNIS POUSO ALEGRE', 1, NULL, 230, false);
INSERT INTO public.empresa VALUES (2543, true, '2023-06-12 12:25:55.029221', NULL, 'FACULDADE UNIS SÃO LOURENÇO', 1, NULL, 511, false);
INSERT INTO public.empresa VALUES (2544, true, '2023-06-12 12:25:55.036371', NULL, 'FACULDADE UNISUL DE BALNEÁRIO CAMBORIÚ', 1, NULL, 57, false);
INSERT INTO public.empresa VALUES (2545, true, '2023-06-12 12:25:55.043317', NULL, 'FACULDADE UNISUL DE EDUCAÇÃO DE ITAJAÍ', 1, NULL, 345, false);
INSERT INTO public.empresa VALUES (2546, true, '2023-06-12 12:25:55.050952', NULL, 'FACULDADE UNISUL DE FLORIANÓPOLIS', 1, NULL, 3, false);
INSERT INTO public.empresa VALUES (2547, true, '2023-06-12 12:25:55.058085', NULL, 'FACULDADE UNISUL DE ITAJAÍ', 1, NULL, 345, false);
INSERT INTO public.empresa VALUES (2548, true, '2023-06-12 12:25:55.065074', NULL, 'FACULDADE UNITÀ (UNITÀ)', 1, NULL, 177, false);
INSERT INTO public.empresa VALUES (2549, true, '2023-06-12 12:25:55.072118', NULL, 'FACULDADE UNITERP (FACTERP)', 1, NULL, 114, false);
INSERT INTO public.empresa VALUES (2550, true, '2023-06-12 12:25:55.079747', NULL, 'FACULDADE UNIVERITAS UNIVERSUS VERITAS DE CAMPO GRANDE', 1, NULL, 48, false);
INSERT INTO public.empresa VALUES (2551, true, '2023-06-12 12:25:55.086812', NULL, 'FACULDADE UNIVERITAS UNIVERSUS VERITAS DE GOIÂNIA (VERITAS GOIÂNIA)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (2552, true, '2023-06-12 12:25:55.094771', NULL, 'FACULDADE UNIVERITAS UNIVERSUS VERITAS DE PIRACICABA (UNIVERITAS PCBA)', 1, NULL, 224, false);
INSERT INTO public.empresa VALUES (2553, true, '2023-06-12 12:25:55.101831', NULL, 'FACULDADE UNIVERSALIS (FACSALIS)', 1, NULL, 142, false);
INSERT INTO public.empresa VALUES (2554, true, '2023-06-12 12:25:55.114293', NULL, 'FACULDADE UNIVERSO BRASÍLIA', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (2555, true, '2023-06-12 12:25:55.121358', NULL, 'FACULDADE UNIVEST DE EDUCAÇÃO (UNIVEST)', 1, NULL, 203, false);
INSERT INTO public.empresa VALUES (2556, true, '2023-06-12 12:25:55.128548', NULL, 'FACULDADE UNOPAR DE CIÊNCIAS JURÍDICAS DE PETROLINA', 1, NULL, 445, false);
INSERT INTO public.empresa VALUES (2557, true, '2023-06-12 12:25:55.135629', NULL, 'FACULDADE UNOPAR DE CIÊNCIAS JURÍDICAS DE SETE LAGOAS', 1, NULL, 24, false);
INSERT INTO public.empresa VALUES (2558, true, '2023-06-12 12:25:55.1432', NULL, 'FACULDADE UNYLEYA', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2559, true, '2023-06-12 12:25:55.150218', NULL, 'FACULDADE UNYPUBLICA', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (2560, true, '2023-06-12 12:25:55.157289', NULL, 'FACULDADE URIEL DE ALMEIDA LEITÃO', 1, NULL, 95, false);
INSERT INTO public.empresa VALUES (2561, true, '2023-06-12 12:25:55.164363', NULL, 'FACULDADE VALE DO AÇO (FAVALE)', 1, NULL, 482, false);
INSERT INTO public.empresa VALUES (2562, true, '2023-06-12 12:25:55.171896', NULL, 'FACULDADE VALE DO GORUTUBA (FAVAG)', 1, NULL, 747, false);
INSERT INTO public.empresa VALUES (2563, true, '2023-06-12 12:25:55.179356', NULL, 'FACULDADE VALE DO PAJEU (FVP)', 1, NULL, 748, false);
INSERT INTO public.empresa VALUES (2564, true, '2023-06-12 12:25:55.186583', NULL, 'FACULDADE VALE DOS CARAJÁS (FVC)', 1, NULL, 281, false);
INSERT INTO public.empresa VALUES (2565, true, '2023-06-12 12:25:55.193687', NULL, 'FACULDADE VALE DO SORRISO (UNIVALE)', 1, NULL, 609, false);
INSERT INTO public.empresa VALUES (2566, true, '2023-06-12 12:25:55.201271', NULL, 'FACULDADE VAN GOGH (FVG)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2567, true, '2023-06-12 12:25:55.208233', NULL, 'FACULDADE VANGUARDA', 1, NULL, 144, false);
INSERT INTO public.empresa VALUES (2568, true, '2023-06-12 12:25:55.21544', NULL, 'FACULDADE VASCONCELLOS & SOUZA', 1, NULL, 749, false);
INSERT INTO public.empresa VALUES (2569, true, '2023-06-12 12:25:55.22263', NULL, 'FACULDADE VENDA NOVA DO IMIGRANTE (FAVENI)', 1, NULL, 750, false);
INSERT INTO public.empresa VALUES (2570, true, '2023-06-12 12:25:55.230166', NULL, 'FACULDADE VERBO EDUCACIONAL (VERBOEDU)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (2571, true, '2023-06-12 12:25:55.237278', NULL, 'FACULDADE VERDE NORTE (FAVENORTE)', 1, NULL, 751, false);
INSERT INTO public.empresa VALUES (2572, true, '2023-06-12 12:25:55.244325', NULL, 'FACULDADE VÉRTIX TRIRRIENSE (FVT)', 1, NULL, 420, false);
INSERT INTO public.empresa VALUES (2573, true, '2023-06-12 12:25:55.251583', NULL, 'FACULDADE VIA SAPIENS (FVS)', 1, NULL, 235, false);
INSERT INTO public.empresa VALUES (2574, true, '2023-06-12 12:25:55.259028', NULL, 'FACULDADE VICENTINA - FAVI (FAVI)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (2575, true, '2023-06-12 12:25:55.265962', NULL, 'FACULDADE VIDAL (FAVILI)', 1, NULL, 726, false);
INSERT INTO public.empresa VALUES (2576, true, '2023-06-12 12:25:55.272812', NULL, 'FACULDADE VINCIT (VINCIT)', 1, NULL, 76, false);
INSERT INTO public.empresa VALUES (2577, true, '2023-06-12 12:25:55.279971', NULL, 'FACULDADE VIRTUAL DO BRASIL (FVB)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2578, true, '2023-06-12 12:25:55.292103', NULL, 'FACULDADE VISCONDE DE CAIRÚ (FAVIC)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (2579, true, '2023-06-12 12:25:55.299114', NULL, 'FACULDADE VITÓRIA EM CRISTO (FVC)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2580, true, '2023-06-12 12:25:55.306124', NULL, 'FACULDADE VIVA VITÓRIA (FAVIVA)', 1, NULL, 25, false);
INSERT INTO public.empresa VALUES (2581, true, '2023-06-12 12:25:55.313287', NULL, 'FACULDADE VOLPE MIELE (FVM)', 1, NULL, 58, false);
INSERT INTO public.empresa VALUES (2582, true, '2023-06-12 12:25:55.320753', NULL, 'FACULDADE VP (VP)', 1, NULL, 41, false);
INSERT INTO public.empresa VALUES (2583, true, '2023-06-12 12:25:55.327595', NULL, 'FACULDADE WENCESLAU BRAZ', 1, NULL, 103, false);
INSERT INTO public.empresa VALUES (2584, true, '2023-06-12 12:25:55.334937', NULL, 'FACULDADE WOLI', 1, NULL, 129, false);
INSERT INTO public.empresa VALUES (2585, true, '2023-06-12 12:25:55.341869', NULL, 'FACULDADE XP EDUCAÇÃO - IGTI (XPE)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (2586, true, '2023-06-12 12:25:55.353008', NULL, 'FACULDADE XV DE AGOSTO (FAQ)', 1, NULL, 752, false);
INSERT INTO public.empresa VALUES (2587, true, '2023-06-12 12:25:55.359989', NULL, 'FACULDADE ZACARIAS DE GÓES (FAZAG)', 1, NULL, 306, false);
INSERT INTO public.empresa VALUES (2588, true, '2023-06-12 12:25:55.36698', NULL, 'FACULDADE ZUMBI DOS PALMARES (FAZP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2589, true, '2023-06-12 12:25:55.374011', NULL, 'FACUMINAS FACULDADE (FACUMINAS)', 1, NULL, 128, false);
INSERT INTO public.empresa VALUES (2590, true, '2023-06-12 12:25:55.38193', NULL, 'FAE CENTRO UNIVERSITÁRIO', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (2591, true, '2023-06-12 12:25:55.389039', NULL, 'FAI - CENTRO DE ENSINO SUPERIOR EM GESTÃO, TECNOLOGIA E EDUCAÇÃO', 1, NULL, 753, false);
INSERT INTO public.empresa VALUES (2592, true, '2023-06-12 12:25:55.396486', NULL, 'FAJOPA - FACULDADE JOÃO PAULO II (FAJOPA)', 1, NULL, 145, false);
INSERT INTO public.empresa VALUES (2593, true, '2023-06-12 12:25:55.403673', NULL, 'FANEESP - FACULDADE NACIONAL DE EDUCAÇÃO E ENSINO SUPERIOR DO PARANÁ (FANEESP)', 1, NULL, 206, false);
INSERT INTO public.empresa VALUES (2594, true, '2023-06-12 12:25:55.41126', NULL, 'FASUL EDUCACIONAL EAD (FASUL EDUCACIONAL)', 1, NULL, 511, false);
INSERT INTO public.empresa VALUES (2595, true, '2023-06-12 12:25:55.418823', NULL, 'FATEC ARTHUR AZEVEDO - MOGI MIRIM (FATECMM)', 1, NULL, 642, false);
INSERT INTO public.empresa VALUES (2596, true, '2023-06-12 12:25:55.425832', NULL, 'FATEC CRUZEIRO - PROF. WALDOMIRO MAY', 1, NULL, 229, false);
INSERT INTO public.empresa VALUES (2597, true, '2023-06-12 12:25:55.433103', NULL, 'FATECE - FACULDADE DE TECNOLOGIA, CIÊNCIAS E EDUCAÇÃO (FATECE)', 1, NULL, 754, false);
INSERT INTO public.empresa VALUES (2598, true, '2023-06-12 12:25:55.440606', NULL, 'FATEC - FACULDADE DE TEOLOGIA E CIÊNCIAS DE VOTUPORANGA (FATEC)', 1, NULL, 10, false);
INSERT INTO public.empresa VALUES (2599, true, '2023-06-12 12:25:55.447588', NULL, 'FAVENORTE DE PORTEIRINHA (FAVEPORT)', 1, NULL, 755, false);
INSERT INTO public.empresa VALUES (2600, true, '2023-06-12 12:25:55.454597', NULL, 'FETAC - FACULDADE DE EDUCAÇÃO, TECNOLOGIA E ADMINISTRAÇÃO DE CAARAPÓ (FETAC)', 1, NULL, 756, false);
INSERT INTO public.empresa VALUES (2601, true, '2023-06-12 12:25:55.461764', NULL, 'FG FACULDADE GLOBAL (FG)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (2602, true, '2023-06-12 12:25:55.469374', NULL, 'FGV / ESCOLA DE RELAÇÕES INTERNACIONAIS (FGV/RI)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2603, true, '2023-06-12 12:25:55.480741', NULL, 'FIAM-FAAM - CENTRO UNIVERSITÁRIO (UNIFIAM-FAAM)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2604, true, '2023-06-12 12:25:55.488084', NULL, 'FIAP - CENTRO UNIVERSITÁRIO', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2605, true, '2023-06-12 12:25:55.49561', NULL, 'FIEP - FACULDADE INTERNACIONAL DE EVOLUÇÃO PROFISSIONAL (FIEP)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (2606, true, '2023-06-12 12:25:55.503446', NULL, 'FI - FACULDADE IGUAÇU (FI)', 1, NULL, 757, false);
INSERT INTO public.empresa VALUES (2607, true, '2023-06-12 12:25:55.510492', NULL, 'FIP - FACULDADE DE IPORÃ PARANÁ (FIP)', 1, NULL, 758, false);
INSERT INTO public.empresa VALUES (2608, true, '2023-06-12 12:25:55.522831', NULL, 'FOCCA - FACULDADE DE OLINDA (FOCCA)', 1, NULL, 39, false);
INSERT INTO public.empresa VALUES (2609, true, '2023-06-12 12:25:55.530409', NULL, 'FORMAÇÃO FACULDADE INTEGRADA (FFI)', 1, NULL, 141, false);
INSERT INTO public.empresa VALUES (2610, true, '2023-06-12 12:25:55.5374', NULL, 'FRANKLINCOVEY BUSINESS SCHOOL (FCBS)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2611, true, '2023-06-12 12:25:55.544327', NULL, 'FTRB - FACULDADE TEOLÓGICA REFORMADA DE BRASÍLIA', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (2612, true, '2023-06-12 12:25:55.55144', NULL, 'FUNDAÇÃO DOM CABRAL', 1, NULL, 481, false);
INSERT INTO public.empresa VALUES (2613, true, '2023-06-12 12:25:55.559017', NULL, 'FUNDAÇÃO DOM CABRAL - ENSINO SUPERIOR (FDC)', 1, NULL, 481, false);
INSERT INTO public.empresa VALUES (2614, true, '2023-06-12 12:25:55.566', NULL, 'FUNDAÇÃO ESCOLA LINCE KEMPIM (FELK)', 1, NULL, 759, false);
INSERT INTO public.empresa VALUES (2615, true, '2023-06-12 12:25:55.573293', NULL, 'FUNDAÇÃO FACULDADE DE FILOSOFIA, CIÊNCIAS E LETRAS DE MANDAGUARI (FAFIMAN)', 1, NULL, 760, false);
INSERT INTO public.empresa VALUES (2616, true, '2023-06-12 12:25:55.581072', NULL, 'FUNDAÇÃO FACULDADE PARA AS ARTES, EDUCAÇÃO E COMUNICAÇÃO (FUNDAEC)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2617, true, '2023-06-12 12:25:55.58881', NULL, 'FUNDAÇÃO OSWALDO CRUZ (FIOCRUZ)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2618, true, '2023-06-12 12:25:55.595958', NULL, 'FUNDAÇÃO UNIVERSIDADE DO ESTADO DE SANTA CATARINA (UDESC)', 1, NULL, 3, false);
INSERT INTO public.empresa VALUES (2619, true, '2023-06-12 12:25:55.603195', NULL, 'FUNDAÇÃO UNIVERSIDADE FEDERAL DA GRANDE DOURADOS (UFGD)', 1, NULL, 84, false);
INSERT INTO public.empresa VALUES (2620, true, '2023-06-12 12:25:55.610201', NULL, 'FUNDAÇÃO UNIVERSIDADE FEDERAL DE CIÊNCIAS DA SAÚDE DE PORTO ALEGRE (UFCSPA)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (2621, true, '2023-06-12 12:25:55.617874', NULL, 'FUNDAÇÃO UNIVERSIDADE FEDERAL DE RONDÔNIA (UNIR)', 1, NULL, 51, false);
INSERT INTO public.empresa VALUES (2622, true, '2023-06-12 12:25:55.625174', NULL, 'FUNDAÇÃO UNIVERSIDADE FEDERAL DO ABC (UFABC)', 1, NULL, 47, false);
INSERT INTO public.empresa VALUES (2623, true, '2023-06-12 12:25:55.632522', NULL, 'FUNDAÇÃO UNIVERSIDADE FEDERAL DO PAMPA - UNIPAMPA (UNIPAMPA)', 1, NULL, 86, false);
INSERT INTO public.empresa VALUES (2624, true, '2023-06-12 12:25:55.639764', NULL, 'FUNDAÇÃO UNIVERSIDADE FEDERAL DO TOCANTINS (UFT)', 1, NULL, 23, false);
INSERT INTO public.empresa VALUES (2625, true, '2023-06-12 12:25:55.64814', NULL, 'FUNDAÇÃO UNIVERSIDADE FEDERAL DO VALE DO SÃO FRANCISCO (UNIVASF)', 1, NULL, 445, false);
INSERT INTO public.empresa VALUES (2626, true, '2023-06-12 12:25:55.655527', NULL, 'FUNDAÇÃO UNIVERSIDADE VIRTUAL DO ESTADO DE SÃO PAULO (UNIVESP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2627, true, '2023-06-12 12:25:55.663039', NULL, 'FUNVIC - FACULDADE FUNVIC DE MOCOCA', 1, NULL, 528, false);
INSERT INTO public.empresa VALUES (2628, true, '2023-06-12 12:25:55.670336', NULL, 'GAIA (GAIA)', 1, NULL, 146, false);
INSERT INTO public.empresa VALUES (2629, true, '2023-06-12 12:25:55.683676', NULL, 'GRAN CENTRO UNIVERSITÁRIO (GRAN)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (2630, true, '2023-06-12 12:25:55.6917', NULL, 'GRUPO DE NUTRIÇÃO HUMANA (GANEP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2631, true, '2023-06-12 12:25:55.705181', NULL, 'IBPTECH FACULDADE DE CIÊNCIAS FORENSES E TECNOLOGIA', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2632, true, '2023-06-12 12:25:55.713286', NULL, 'ICEV - INSTITUTO DE ENSINO SUPERIOR', 1, NULL, 27, false);
INSERT INTO public.empresa VALUES (2633, true, '2023-06-12 12:25:55.727338', NULL, 'ILUM ESCOLA DE CIÊNCIA', 1, NULL, 177, false);
INSERT INTO public.empresa VALUES (2634, true, '2023-06-12 12:25:55.736309', NULL, 'INSIDE - INSTITUTO SUPERIOR PARA INTEGRAÇÃO, DESENVOLVIMENTO E EDUCAÇÃO (INSIDE)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (2635, true, '2023-06-12 12:25:55.749142', NULL, 'INSPER INSTITUTO DE ENSINO E PESQUISA', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2636, true, '2023-06-12 12:25:55.759771', NULL, 'INSTITUIÇÃO DE ENSINO SUPERIOR DE CACOAL (FANORTE CACOAL)', 1, NULL, 115, false);
INSERT INTO public.empresa VALUES (2637, true, '2023-06-12 12:25:55.769327', NULL, 'INSTITUTO AMAZÔNICO DE ENSINO SUPERIOR (IAMES)', 1, NULL, 75, false);
INSERT INTO public.empresa VALUES (2638, true, '2023-06-12 12:25:55.778514', NULL, 'INSTITUTO APHONSIANO DE ENSINO SUPERIOR (IAESUP)', 1, NULL, 164, false);
INSERT INTO public.empresa VALUES (2639, true, '2023-06-12 12:25:55.786445', NULL, 'INSTITUTO ARIA', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (2640, true, '2023-06-12 12:25:55.796229', NULL, 'INSTITUTO BELO HORIZONTE DE ENSINO SUPERIOR (IBHES)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (2641, true, '2023-06-12 12:25:55.816899', NULL, 'INSTITUTO BRASIL DE ENSINO SUPERIOR (IBRAS)', 1, NULL, 188, false);
INSERT INTO public.empresa VALUES (2642, true, '2023-06-12 12:25:55.839962', NULL, 'INSTITUTO BRASILEIRO DE COACHING (IBC)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (2643, true, '2023-06-12 12:25:55.849694', NULL, 'INSTITUTO BRASILEIRO DE ENSINO, DESENVOLVIMENTO E PESQUISA DE BRASÍLIA (IDP-BSB)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (2644, true, '2023-06-12 12:25:55.858362', NULL, 'INSTITUTO BRASILEIRO DE ENSINO, DESENVOLVIMENTO E PESQUISA DE SÃO PAULO (IDP-SP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2645, true, '2023-06-12 12:25:55.870693', NULL, 'INSTITUTO CATÓLICO DE ESTUDOS SUPERIORES DO PIAUÍ (ICESPI)', 1, NULL, 27, false);
INSERT INTO public.empresa VALUES (2646, true, '2023-06-12 12:25:55.882252', NULL, 'INSTITUTO CUIABÁ DE ENSINO E CULTURA (ICEC)', 1, NULL, 203, false);
INSERT INTO public.empresa VALUES (2647, true, '2023-06-12 12:25:55.895179', NULL, 'INSTITUTO DE ASSISTÊNCIA MÉDICA AO SERVIDOR PÚBLICO ESTADUAL (IAMSPE)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2648, true, '2023-06-12 12:25:55.903244', NULL, 'INSTITUTO DE CIÊNCIAS SOCIAIS E HUMANAS (ICSH)', 1, NULL, 297, false);
INSERT INTO public.empresa VALUES (2649, true, '2023-06-12 12:25:55.911686', NULL, 'INSTITUTO DE DESENVOLVIMENTO E APRENDIZAGEM - IDEA DIREITO (IDEA DIREITO)', 1, NULL, 141, false);
INSERT INTO public.empresa VALUES (2650, true, '2023-06-12 12:25:55.91905', NULL, 'INSTITUTO DE DESENVOLVIMENTO E APRENDIZAGEM - IDEA SÃO LUIZ (IDEA SÃO LUIZ)', 1, NULL, 141, false);
INSERT INTO public.empresa VALUES (2651, true, '2023-06-12 12:25:55.930263', NULL, 'INSTITUTO DE DESENVOLVIMENTO EDUCACIONAL (IDE)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (2652, true, '2023-06-12 12:25:55.946945', NULL, 'INSTITUTO DE DESENVOLVIMENTO EDUCACIONAL DA AMAZÔNIA (IDEA)', 1, NULL, 267, false);
INSERT INTO public.empresa VALUES (2653, true, '2023-06-12 12:25:55.964975', NULL, 'INSTITUTO DE DESENVOLVIMENTO TECNOLÓGICO DA FGV (FGV/IDT)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2654, true, '2023-06-12 12:25:55.972366', NULL, 'INSTITUTO DE DIREITO DO NORTE - IDN MANAUS (IDN MANAUS)', 1, NULL, 75, false);
INSERT INTO public.empresa VALUES (2655, true, '2023-06-12 12:25:55.983506', NULL, 'INSTITUTO DE EDUCAÇÃO E ENSINO SUPERIOR DE CAMPINAS (IESCAMP)', 1, NULL, 177, false);
INSERT INTO public.empresa VALUES (2656, true, '2023-06-12 12:25:55.990831', NULL, 'INSTITUTO DE EDUCAÇÃO E INOVAÇÃO (IEDI)', 1, NULL, 138, false);
INSERT INTO public.empresa VALUES (2657, true, '2023-06-12 12:25:55.998696', NULL, 'INSTITUTO DE EDUCAÇÃO SUPERIOR DE POUSO ALEGRE', 1, NULL, 230, false);
INSERT INTO public.empresa VALUES (2658, true, '2023-06-12 12:25:56.009434', NULL, 'INSTITUTO DE EDUCAÇÃO SUPERIOR E INOVAÇÃO INVENIO (INVENIO)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2659, true, '2023-06-12 12:25:56.019604', NULL, 'INSTITUTO DE EDUCAÇÃO SUPERIOR E INOVAÇÃO PERSONA', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2660, true, '2023-06-12 12:25:56.027177', NULL, 'INSTITUTO DE EDUCACAO SUPERIOR LATINOAMERICANO (SIGLA IESLA)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (2661, true, '2023-06-12 12:25:56.034297', NULL, 'INSTITUTO DE EDUCAÇÃO SUPERIOR PRESIDENTE KENNEDY - CENTRO DE FORMAÇÃO DE PROFISSIONAIS DE EDUCAÇÃO (IFESP)', 1, NULL, 130, false);
INSERT INTO public.empresa VALUES (2662, true, '2023-06-12 12:25:56.046495', NULL, 'INSTITUTO DE EDUCAÇÃO SUPERIOR RAIMUNDO SÁ (IESRSA)', 1, NULL, 643, false);
INSERT INTO public.empresa VALUES (2663, true, '2023-06-12 12:25:56.055354', NULL, 'INSTITUTO DE EDUCAÇÃO SUPERIOR UNISUL DE ITAJAÍ', 1, NULL, 345, false);
INSERT INTO public.empresa VALUES (2664, true, '2023-06-12 12:25:56.063439', NULL, 'INSTITUTO DE EDUCAÇÃO SUPERIOR UNYAHNA DE SALVADOR (IESUS)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (2665, true, '2023-06-12 12:25:56.071052', NULL, 'INSTITUTO DE EDUCAÇÃO TECNOLÓGICA EIRELI (IETEC)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (2666, true, '2023-06-12 12:25:56.080916', NULL, 'INSTITUTO DE ENSINO E PESQUISA DO HOSPITAL SÍRIO-LIBANÊS (IEP/HSL)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2667, true, '2023-06-12 12:25:56.088901', NULL, 'INSTITUTO DE ENSINO SUPERIOR AGOSTINIANO CASA GAIA', 1, NULL, 200, false);
INSERT INTO public.empresa VALUES (2668, true, '2023-06-12 12:25:56.096882', NULL, 'INSTITUTO DE ENSINO SUPERIOR BLAURO CARDOSO DE MATTOS (FASERRA)', 1, NULL, 290, false);
INSERT INTO public.empresa VALUES (2669, true, '2023-06-12 12:25:56.105831', NULL, 'INSTITUTO DE ENSINO SUPERIOR BRASILEIRO (ESB)', 1, NULL, 75, false);
INSERT INTO public.empresa VALUES (2670, true, '2023-06-12 12:25:56.115392', NULL, 'INSTITUTO DE ENSINO SUPERIOR CAPIXABA (IESCAPI)', 1, NULL, 290, false);
INSERT INTO public.empresa VALUES (2671, true, '2023-06-12 12:25:56.123389', NULL, 'INSTITUTO DE ENSINO SUPERIOR DA FUPESP (IESF)', 1, NULL, 113, false);
INSERT INTO public.empresa VALUES (2672, true, '2023-06-12 12:25:56.131184', NULL, 'INSTITUTO DE ENSINO SUPERIOR DA GRANDE FLORIANÓPOLIS (IESGF)', 1, NULL, 140, false);
INSERT INTO public.empresa VALUES (2673, true, '2023-06-12 12:25:56.138874', NULL, 'INSTITUTO DE ENSINO SUPERIOR DE ALAGOAS (IESA)', 1, NULL, 73, false);
INSERT INTO public.empresa VALUES (2674, true, '2023-06-12 12:25:56.146035', NULL, 'INSTITUTO DE ENSINO SUPERIOR DE AMERICANA (IESA)', 1, NULL, 187, false);
INSERT INTO public.empresa VALUES (2675, true, '2023-06-12 12:25:56.153703', NULL, 'INSTITUTO DE ENSINO SUPERIOR DE BAURU (IESB)', 1, NULL, 93, false);
INSERT INTO public.empresa VALUES (2676, true, '2023-06-12 12:25:56.160937', NULL, 'INSTITUTO DE ENSINO SUPERIOR DE CUIABÁ', 1, NULL, 203, false);
INSERT INTO public.empresa VALUES (2677, true, '2023-06-12 12:25:56.168263', NULL, 'INSTITUTO DE ENSINO SUPERIOR DE FORTALEZA (IESF)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (2678, true, '2023-06-12 12:25:56.176071', NULL, 'INSTITUTO DE ENSINO SUPERIOR DE FOZ DO IGUAÇU (IESFI)', 1, NULL, 124, false);
INSERT INTO public.empresa VALUES (2679, true, '2023-06-12 12:25:56.188273', NULL, 'INSTITUTO DE ENSINO SUPERIOR DE LONDRINA - INESUL (INESUL)', 1, NULL, 159, false);
INSERT INTO public.empresa VALUES (2680, true, '2023-06-12 12:25:56.195618', NULL, 'INSTITUTO DE ENSINO SUPERIOR DE MINAS GERAIS (IESMIG)', 1, NULL, 761, false);
INSERT INTO public.empresa VALUES (2681, true, '2023-06-12 12:25:56.203034', NULL, 'INSTITUTO DE ENSINO SUPERIOR DE OLINDA (IESO)', 1, NULL, 39, false);
INSERT INTO public.empresa VALUES (2682, true, '2023-06-12 12:25:56.210753', NULL, 'INSTITUTO DE ENSINO SUPERIOR DE RONDÔNIA (IESUR)', 1, NULL, 151, false);
INSERT INTO public.empresa VALUES (2683, true, '2023-06-12 12:25:56.218059', NULL, 'INSTITUTO DE ENSINO SUPERIOR DE TERESINA (IEST)', 1, NULL, 27, false);
INSERT INTO public.empresa VALUES (2684, true, '2023-06-12 12:25:56.225402', NULL, 'INSTITUTO DE ENSINO SUPERIOR DO AMAPÁ (IESAP)', 1, NULL, 26, false);
INSERT INTO public.empresa VALUES (2685, true, '2023-06-12 12:25:56.232669', NULL, 'INSTITUTO DE ENSINO SUPERIOR DO SUL DO MARANHÃO (IESMA)', 1, NULL, 267, false);
INSERT INTO public.empresa VALUES (2686, true, '2023-06-12 12:25:56.240462', NULL, 'INSTITUTO DE ENSINO SUPERIOR E FORMAÇÃO AVANÇADA DE VITÓRIA (IESFAVI)', 1, NULL, 25, false);
INSERT INTO public.empresa VALUES (2687, true, '2023-06-12 12:25:56.248031', NULL, 'INSTITUTO DE ENSINO SUPERIOR FRANCISCANO (IESF)', 1, NULL, 762, false);
INSERT INTO public.empresa VALUES (2688, true, '2023-06-12 12:25:56.255383', NULL, 'INSTITUTO DE ENSINO SUPERIOR FUCAPI (CESF)', 1, NULL, 75, false);
INSERT INTO public.empresa VALUES (2689, true, '2023-06-12 12:25:56.262689', NULL, 'INSTITUTO DE ENSINO SUPERIOR INTEGRADO-IESI (FENORD)', 1, NULL, 7, false);
INSERT INTO public.empresa VALUES (2690, true, '2023-06-12 12:25:56.270538', NULL, 'INSTITUTO DE ENSINO SUPERIOR MATERDEI (IES-MATERDEI)', 1, NULL, 75, false);
INSERT INTO public.empresa VALUES (2691, true, '2023-06-12 12:25:56.278319', NULL, 'INSTITUTO DE ENSINO SUPERIOR MÚLTIPLO (IESM)', 1, NULL, 456, false);
INSERT INTO public.empresa VALUES (2692, true, '2023-06-12 12:25:56.285658', NULL, 'INSTITUTO DE ENSINO SUPERIOR PLANALTO (IESPLAN)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (2693, true, '2023-06-12 12:25:56.29292', NULL, 'INSTITUTO DE ENSINO SUPERIOR SANTA CECÍLIA (IESC)', 1, NULL, 333, false);
INSERT INTO public.empresa VALUES (2694, true, '2023-06-12 12:25:56.300837', NULL, 'INSTITUTO DE ENSINO SUPERIOR SANTO ANTÔNIO (INESA)', 1, NULL, 68, false);
INSERT INTO public.empresa VALUES (2695, true, '2023-06-12 12:25:56.308342', NULL, 'INSTITUTO DE ESTUDOS SUPERIORES DO MARANHÃO (IESMA)', 1, NULL, 141, false);
INSERT INTO public.empresa VALUES (2696, true, '2023-06-12 12:25:56.31569', NULL, 'INSTITUTO DE FILOSOFIA E TEOLOGIA DE GOIÁS (IFITEG)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (2697, true, '2023-06-12 12:25:56.323611', NULL, 'INSTITUTO DE PESQUISAS, ENSINO E GESTÃO EM SAÚDE (IPGS)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (2698, true, '2023-06-12 12:25:56.33179', NULL, 'INSTITUTO DE PÓS-GRADUAÇÃO E ATUALIZAÇÃO EM ODONTOLOGIA (IPENO)', 1, NULL, 3, false);
INSERT INTO public.empresa VALUES (2699, true, '2023-06-12 12:25:56.343936', NULL, 'INSTITUTO DE SERRA DOURADA', 1, NULL, 22, false);
INSERT INTO public.empresa VALUES (2700, true, '2023-06-12 12:25:56.351233', NULL, 'INSTITUTO DE TECNOLOGIA E LIDERANÇA (INTELI)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2701, true, '2023-06-12 12:25:56.358502', NULL, 'INSTITUTO DO SUL DE SANTA CATARINA', 1, NULL, 192, false);
INSERT INTO public.empresa VALUES (2702, true, '2023-06-12 12:25:56.366398', NULL, 'INSTITUTO EDUCACIONAL DAS AMÉRICAS (IEA EDUCACIONAL)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (2703, true, '2023-06-12 12:25:56.374232', NULL, 'INSTITUTO EDUCACIONAL MONTE PASCOAL', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (2704, true, '2023-06-12 12:25:56.381861', NULL, 'INSTITUTO ESPERANÇA DE ENSINO SUPERIOR (IESPES)', 1, NULL, 78, false);
INSERT INTO public.empresa VALUES (2705, true, '2023-06-12 12:25:56.389148', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA BAIANO (IFBAIANO)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (2706, true, '2023-06-12 12:25:56.397056', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA CATARINENSE (IF CATARINENSE)', 1, NULL, 193, false);
INSERT INTO public.empresa VALUES (2707, true, '2023-06-12 12:25:56.404411', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DA BAHIA (IFBA)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (2708, true, '2023-06-12 12:25:56.411865', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DA PARAÍBA (IFPB)', 1, NULL, 107, false);
INSERT INTO public.empresa VALUES (2709, true, '2023-06-12 12:25:56.419042', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DE ALAGOAS (IFAL)', 1, NULL, 73, false);
INSERT INTO public.empresa VALUES (2710, true, '2023-06-12 12:25:56.42767', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIENCIA E TECNOLOGIA DE BRASILIA (IFB)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (2711, true, '2023-06-12 12:25:56.434939', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DE GOIÁS (IFG)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (2712, true, '2023-06-12 12:25:56.44219', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DE MATO GROSSO (IFMT)', 1, NULL, 203, false);
INSERT INTO public.empresa VALUES (2713, true, '2023-06-12 12:25:56.449519', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DE MATO GROSSO DO SUL (IFMS)', 1, NULL, 48, false);
INSERT INTO public.empresa VALUES (2714, true, '2023-06-12 12:25:56.457242', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DE MINAS GERAIS (IFMG)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (2715, true, '2023-06-12 12:25:56.464778', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DE PERNAMBUCO (IFPE)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (2716, true, '2023-06-12 12:25:56.472138', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO CIÊNCIA E TECNOLOGIA DE RONDÔNIA (IFRO)', 1, NULL, 51, false);
INSERT INTO public.empresa VALUES (2717, true, '2023-06-12 12:25:56.479337', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DE RORAIMA (IFRR)', 1, NULL, 138, false);
INSERT INTO public.empresa VALUES (2718, true, '2023-06-12 12:25:56.487159', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DE SANTA CATARINA (IFSC)', 1, NULL, 3, false);
INSERT INTO public.empresa VALUES (2719, true, '2023-06-12 12:25:56.494533', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DE SÃO PAULO (IFSP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2720, true, '2023-06-12 12:25:56.506012', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DE SERGIPE (IFS)', 1, NULL, 142, false);
INSERT INTO public.empresa VALUES (2721, true, '2023-06-12 12:25:56.519734', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DO ACRE (IFAC)', 1, NULL, 143, false);
INSERT INTO public.empresa VALUES (2722, true, '2023-06-12 12:25:56.527265', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DO AMAPÁ (IFAP)', 1, NULL, 26, false);
INSERT INTO public.empresa VALUES (2723, true, '2023-06-12 12:25:56.53463', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DO AMAZONAS (IFAM)', 1, NULL, 75, false);
INSERT INTO public.empresa VALUES (2724, true, '2023-06-12 12:25:56.541893', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DO CEARÁ (IFCE)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (2725, true, '2023-06-12 12:25:56.549932', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DO ESPÍRITO SANTO (IFES)', 1, NULL, 25, false);
INSERT INTO public.empresa VALUES (2726, true, '2023-06-12 12:25:56.557223', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DO MARANHÃO (IFMA)', 1, NULL, 141, false);
INSERT INTO public.empresa VALUES (2727, true, '2023-06-12 12:25:56.56467', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DO NORTE DE MINAS GERAIS (IFNMG)', 1, NULL, 128, false);
INSERT INTO public.empresa VALUES (2728, true, '2023-06-12 12:25:56.571928', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DO PARÁ (IFPA)', 1, NULL, 79, false);
INSERT INTO public.empresa VALUES (2729, true, '2023-06-12 12:25:56.579724', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DO PARANÁ (IFPR)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (2730, true, '2023-06-12 12:25:56.587179', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DO PIAUÍ (IFPI)', 1, NULL, 27, false);
INSERT INTO public.empresa VALUES (2731, true, '2023-06-12 12:25:56.594549', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DO RIO DE JANEIRO (IFRJ)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2732, true, '2023-06-12 12:25:56.601733', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DO RIO GRANDE DO NORTE (IFRN)', 1, NULL, 130, false);
INSERT INTO public.empresa VALUES (2733, true, '2023-06-12 12:25:56.609578', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DO RIO GRANDE DO SUL (IFRS)', 1, NULL, 77, false);
INSERT INTO public.empresa VALUES (2734, true, '2023-06-12 12:25:56.617008', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DO SERTÃO PERNAMBUCANO (IF SERTÃO)', 1, NULL, 445, false);
INSERT INTO public.empresa VALUES (2735, true, '2023-06-12 12:25:56.629822', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DO SUDESTE DE MINAS GERAIS (IFSEMG)', 1, NULL, 38, false);
INSERT INTO public.empresa VALUES (2736, true, '2023-06-12 12:25:56.643599', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DO SUL DE MINAS GERAIS (IF SUL DE MINAS)', 1, NULL, 230, false);
INSERT INTO public.empresa VALUES (2737, true, '2023-06-12 12:25:56.656979', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DO TOCANTINS (IFTO)', 1, NULL, 23, false);
INSERT INTO public.empresa VALUES (2738, true, '2023-06-12 12:25:56.669707', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DO TRIÂNGULO MINEIRO (IFTM)', 1, NULL, 118, false);
INSERT INTO public.empresa VALUES (2739, true, '2023-06-12 12:25:56.676995', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA FARROUPILHA (IFFARROUPILHA)', 1, NULL, 417, false);
INSERT INTO public.empresa VALUES (2740, true, '2023-06-12 12:25:56.684346', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA FLUMINENSE (IF FLUMINENSE)', 1, NULL, 160, false);
INSERT INTO public.empresa VALUES (2741, true, '2023-06-12 12:25:56.691532', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA GOIANO (IF GOIANO)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (2742, true, '2023-06-12 12:25:56.699314', NULL, 'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA SUL-RIO-GRANDENSE (IFSUL)', 1, NULL, 283, false);
INSERT INTO public.empresa VALUES (2743, true, '2023-06-12 12:25:56.706451', NULL, 'INSTITUTO FLORENCE DE ENSINO SUPERIOR (IFES)', 1, NULL, 141, false);
INSERT INTO public.empresa VALUES (2744, true, '2023-06-12 12:25:56.713736', NULL, 'INSTITUTO FRIBURGO DE ENSINO SUPERIOR (IFES)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2745, true, '2023-06-12 12:25:56.721018', NULL, 'INSTITUTO GOIANO DE DIREITO (IGD)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (2746, true, '2023-06-12 12:25:56.728751', NULL, 'INSTITUTO INFNET RIO DE JANEIRO (INFNET)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2747, true, '2023-06-12 12:25:56.736553', NULL, 'INSTITUTO INTERNACIONAL DE ESTUDOS EM SAUDE (IIESAU)', 1, NULL, 58, false);
INSERT INTO public.empresa VALUES (2748, true, '2023-06-12 12:25:56.743857', NULL, 'INSTITUTO ITAPETININGANO DE ENSINO SUPERIOR (IIES)', 1, NULL, 271, false);
INSERT INTO public.empresa VALUES (2749, true, '2023-06-12 12:25:56.756791', NULL, 'INSTITUTO LEGISLATIVO BRASILEIRO (ILB)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (2750, true, '2023-06-12 12:25:56.764281', NULL, 'INSTITUTO LEYA DE EDUCAÇÃO SUPERIOR (LEYA)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (2751, true, '2023-06-12 12:25:56.771601', NULL, 'INSTITUTO LUTERANO DE ENSINO SUPERIOR DE ITUMBIARA (ILES)', 1, NULL, 234, false);
INSERT INTO public.empresa VALUES (2752, true, '2023-06-12 12:25:56.779089', NULL, 'INSTITUTO MACAPAENSE DE ENSINO SUPERIOR (IMMES)', 1, NULL, 26, false);
INSERT INTO public.empresa VALUES (2753, true, '2023-06-12 12:25:56.786897', NULL, 'INSTITUTO MACHADENSE DE ENSINO SUPERIOR (IMES)', 1, NULL, 35, false);
INSERT INTO public.empresa VALUES (2754, true, '2023-06-12 12:25:56.794086', NULL, 'INSTITUTO MARANHENSE DE ENSINO E CULTURA (IMEC)', 1, NULL, 141, false);
INSERT INTO public.empresa VALUES (2755, true, '2023-06-12 12:25:56.801254', NULL, 'INSTITUTO MATONENSE MUNICIPAL DE ENSINO SUPERIOR (IMMES)', 1, NULL, 278, false);
INSERT INTO public.empresa VALUES (2756, true, '2023-06-12 12:25:56.808459', NULL, 'INSTITUTO METROPOLITANO DE ENSINO SUPERIOR (IMES)', 1, NULL, 268, false);
INSERT INTO public.empresa VALUES (2757, true, '2023-06-12 12:25:56.816528', NULL, 'INSTITUTO MILITAR DE ENGENHARIA (IME)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2758, true, '2023-06-12 12:25:56.823919', NULL, 'INSTITUTO MOINHOS DE VENTO', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (2759, true, '2023-06-12 12:25:56.83143', NULL, 'INSTITUTO MUNICIPAL DE ENSINO SUPERIOR DE ASSIS (IMESA)', 1, NULL, 379, false);
INSERT INTO public.empresa VALUES (2760, true, '2023-06-12 12:25:56.838991', NULL, 'INSTITUTO MUNICIPAL DE ENSINO SUPERIOR DE BEBEDOURO VICTÓRIO CARDASSI (IMESB)', 1, NULL, 208, false);
INSERT INTO public.empresa VALUES (2761, true, '2023-06-12 12:25:56.846875', NULL, 'INSTITUTO MUNICIPAL DE ENSINO SUPERIOR DE CATANDUVA (IMES CATANDUVA)', 1, NULL, 181, false);
INSERT INTO public.empresa VALUES (2762, true, '2023-06-12 12:25:56.854117', NULL, 'INSTITUTO MUNICIPAL DE ENSINO SUPERIOR DE SÃO MANUEL (IMESSM)', 1, NULL, 631, false);
INSERT INTO public.empresa VALUES (2763, true, '2023-06-12 12:25:56.861474', NULL, 'INSTITUTO NACIONAL DE EDUCAÇÃO DE SURDOS (INES)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2764, true, '2023-06-12 12:25:56.868849', NULL, 'INSTITUTO NACIONAL DE ENSINO SUPERIOR E PÓS-GRADUAÇÃO PADRE GERVÁSIO (INAPÓS)', 1, NULL, 230, false);
INSERT INTO public.empresa VALUES (2765, true, '2023-06-12 12:25:56.877389', NULL, 'INSTITUTO NACIONAL DE TELECOMUNICAÇÕES (INATEL)', 1, NULL, 753, false);
INSERT INTO public.empresa VALUES (2766, true, '2023-06-12 12:25:56.88463', NULL, 'INSTITUTO PARAIBANO DE ENSINO RENOVADO (INPER)', 1, NULL, 107, false);
INSERT INTO public.empresa VALUES (2767, true, '2023-06-12 12:25:56.897004', NULL, 'INSTITUTO PLENITUDE EDUCAÇÃO (IPLENI)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2768, true, '2023-06-12 12:25:56.904531', NULL, 'INSTITUTO POLITÉCNICO DOCTUM DE VITÓRIA', 1, NULL, 25, false);
INSERT INTO public.empresa VALUES (2769, true, '2023-06-12 12:25:56.912456', NULL, 'INSTITUTO PROFESSOR FLÁVIO VELLINI', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2770, true, '2023-06-12 12:25:56.919817', NULL, 'INSTITUTO RACINE DE EDUCAÇÃO SUPERIOR (RACINE)', 1, NULL, 278, false);
INSERT INTO public.empresa VALUES (2771, true, '2023-06-12 12:25:56.927127', NULL, 'INSTITUTO SALVADOR DE ENSINO E CULTURA (ISEC)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (2772, true, '2023-06-12 12:25:56.934446', NULL, 'INSTITUTO SANTO TOMÁS DE AQUINO (ISTA)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (2773, true, '2023-06-12 12:25:56.942265', NULL, 'INSTITUTO SÃO PAULO DE ESTUDOS SUPERIORES (ITESP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2774, true, '2023-06-12 12:25:56.949582', NULL, 'INSTITUTO SERRA DOURADA', 1, NULL, 14, false);
INSERT INTO public.empresa VALUES (2775, true, '2023-06-12 12:25:56.956822', NULL, 'INSTITUTO SERZEDELLO CORRÊA (ISC-TCU)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (2776, true, '2023-06-12 12:25:56.964568', NULL, 'INSTITUTO SOCIESC DE JARAGUÁ DO SUL (SOCIESC)', 1, NULL, 31, false);
INSERT INTO public.empresa VALUES (2777, true, '2023-06-12 12:25:56.97257', NULL, 'INSTITUTO SUPERIOR DA AFAC (ISAFAC)', 1, NULL, 49, false);
INSERT INTO public.empresa VALUES (2778, true, '2023-06-12 12:25:56.979931', NULL, 'INSTITUTO SUPERIOR DA CONVENÇÃO NAC. DAS ASSEMBLEIAS DE DEUS (ISCON)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (2779, true, '2023-06-12 12:25:56.987355', NULL, 'INSTITUTO SUPERIOR DE CIÊNCIAS APLICADAS - ISCA (ISCA)', 1, NULL, 276, false);
INSERT INTO public.empresa VALUES (2780, true, '2023-06-12 12:25:56.995589', NULL, 'INSTITUTO SUPERIOR DE CIÊNCIAS DA SAÚDE CARLOS CHAGAS (IPGMCC)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2781, true, '2023-06-12 12:25:57.00883', NULL, 'INSTITUTO SUPERIOR DE CIÊNCIAS HUMANAS E SOCIAIS ANÍSIO TEIXEIRA (ISAT)', 1, NULL, 623, false);
INSERT INTO public.empresa VALUES (2782, true, '2023-06-12 12:25:57.023008', NULL, 'INSTITUTO SUPERIOR DE CIENCIAS POLICIAIS (ISCP)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (2783, true, '2023-06-12 12:25:57.036025', NULL, 'INSTITUTO SUPERIOR DE EDUCAÇÃO ALBERT EINSTEIN (ISALBE)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (2784, true, '2023-06-12 12:25:57.043369', NULL, 'INSTITUTO SUPERIOR DE EDUCAÇÃO ALMEIDA RODRIGUES (ISEAR)', 1, NULL, 202, false);
INSERT INTO public.empresa VALUES (2785, true, '2023-06-12 12:25:57.050643', NULL, 'INSTITUTO SUPERIOR DE EDUCAÇÃO ANTONINO FREIRE - ISEAF (ISEAF)', 1, NULL, 27, false);
INSERT INTO public.empresa VALUES (2786, true, '2023-06-12 12:25:57.058093', NULL, 'INSTITUTO SUPERIOR DE EDUCAÇÃO ATENEU (ISEAT)', 1, NULL, 226, false);
INSERT INTO public.empresa VALUES (2787, true, '2023-06-12 12:25:57.06603', NULL, 'INSTITUTO SUPERIOR DE EDUCAÇÃO CERES (ISE-CERES)', 1, NULL, 114, false);
INSERT INTO public.empresa VALUES (2788, true, '2023-06-12 12:25:57.073312', NULL, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DA ZONA OESTE (ISE ZONA OESTE)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2789, true, '2023-06-12 12:25:57.08114', NULL, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DE BARRETOS (ISEB)', 1, NULL, 80, false);
INSERT INTO public.empresa VALUES (2790, true, '2023-06-12 12:25:57.088482', NULL, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DE CAXIAS (ISEC)', 1, NULL, 97, false);
INSERT INTO public.empresa VALUES (2791, true, '2023-06-12 12:25:57.096539', NULL, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DE GOIANA (I.S.E.G.)', 1, NULL, 400, false);
INSERT INTO public.empresa VALUES (2792, true, '2023-06-12 12:25:57.104004', NULL, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DE GUARATUBA (ISEPE GUARATUBA)', 1, NULL, 559, false);
INSERT INTO public.empresa VALUES (2793, true, '2023-06-12 12:25:57.111393', NULL, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DE SÃO PAULO (SINGULARIDADES/ISESP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2794, true, '2023-06-12 12:25:57.118687', NULL, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DO CECAP (ISCECAP)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (2795, true, '2023-06-12 12:25:57.126508', NULL, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DO CENTRO EDUCACIONAL NOSSA SENHORA AUXILIADORA (ISECENSA)', 1, NULL, 160, false);
INSERT INTO public.empresa VALUES (2796, true, '2023-06-12 12:25:57.13387', NULL, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DO MUNICÍPIO DE ITAPERUNA (ISEMI)', 1, NULL, 186, false);
INSERT INTO public.empresa VALUES (2797, true, '2023-06-12 12:25:57.141274', NULL, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DO RIO DE JANEIRO (ISERJ)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2798, true, '2023-06-12 12:25:57.153559', NULL, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DO SERTÃO DO PAJEÚ (ISESP)', 1, NULL, 574, false);
INSERT INTO public.empresa VALUES (2799, true, '2023-06-12 12:25:57.161463', NULL, 'INSTITUTO SUPERIOR DE EDUCAÇÃO DO SUL DO PIAUÍ (ISESPI)', 1, NULL, 763, false);
INSERT INTO public.empresa VALUES (2800, true, '2023-06-12 12:25:57.168749', NULL, 'INSTITUTO SUPERIOR DE EDUCAÇÃO ELVIRA DAYRELL (ISEED)', 1, NULL, 578, false);
INSERT INTO public.empresa VALUES (2801, true, '2023-06-12 12:25:57.175992', NULL, 'INSTITUTO SUPERIOR DE EDUCAÇÃO IBITURUNA', 1, NULL, 128, false);
INSERT INTO public.empresa VALUES (2802, true, '2023-06-12 12:25:57.183872', NULL, 'INSTITUTO SUPERIOR DE EDUCAÇÃO IVOTI (ISEI)', 1, NULL, 764, false);
INSERT INTO public.empresa VALUES (2803, true, '2023-06-12 12:25:57.191754', NULL, 'INSTITUTO SUPERIOR DE EDUCAÇÃO OCIDENTE (OCIDEMNTE)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (2804, true, '2023-06-12 12:25:57.198897', NULL, 'INSTITUTO SUPERIOR DE EDUCAÇÃO PROFESSOR ALDO MUYLAERT (ISEPAM)', 1, NULL, 160, false);
INSERT INTO public.empresa VALUES (2805, true, '2023-06-12 12:25:57.206084', NULL, 'INSTITUTO SUPERIOR DE EDUCAÇÃO PROFESSORA NAIR FORTES ABU-MERHY (ISEFOR)', 1, NULL, 397, false);
INSERT INTO public.empresa VALUES (2806, true, '2023-06-12 12:25:57.213438', NULL, 'INSTITUTO SUPERIOR DE EDUCAÇÃO PRÓ-SABER (ISEPS)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2807, true, '2023-06-12 12:25:57.221247', NULL, 'INSTITUTO SUPERIOR DE EDUCAÇÃO SANTA CRUZ (ISED)', 1, NULL, 687, false);
INSERT INTO public.empresa VALUES (2808, true, '2023-06-12 12:25:57.228519', NULL, 'INSTITUTO SUPERIOR DE EDUCAÇÃO VERA CRUZ (ISE VERA CRUZ)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2809, true, '2023-06-12 12:25:57.235902', NULL, 'INSTITUTO SUPERIOR DE FILOSOFIA BERTHIER (IFIBE)', 1, NULL, 282, false);
INSERT INTO public.empresa VALUES (2810, true, '2023-06-12 12:25:57.243265', NULL, 'INSTITUTO SUPERIOR DE TECNOLOGIA EM HORTICULTURA (ISTHORTICULTURA)', 1, NULL, 160, false);
INSERT INTO public.empresa VALUES (2811, true, '2023-06-12 12:25:57.251333', NULL, 'INSTITUTO SUPERIOR DO LITORAL DO PARANÁ (ISULPAR)', 1, NULL, 661, false);
INSERT INTO public.empresa VALUES (2812, true, '2023-06-12 12:25:57.260082', NULL, 'INSTITUTO SUPERIOR DO MINISTERIO PUBLICO (ISMP)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2813, true, '2023-06-12 12:25:57.270473', NULL, 'INSTITUTO SUPERIOR E CENTRO EDUCACIONAL LUTERANO - BOM JESUS - IELUSC (BOM JESUS/IELUSC)', 1, NULL, 68, false);
INSERT INTO public.empresa VALUES (2814, true, '2023-06-12 12:25:57.287756', NULL, 'INSTITUTO TAQUARITINGUENSE DE ENSINO SUPERIOR DR. ARISTIDES DE CARVALHO SCHLOBACH (ITES)', 1, NULL, 517, false);
INSERT INTO public.empresa VALUES (2815, true, '2023-06-12 12:25:57.295266', NULL, 'INSTITUTO TAUBATÉ DE ENSINO SUPERIOR (I.T.E.S.)', 1, NULL, 33, false);
INSERT INTO public.empresa VALUES (2816, true, '2023-06-12 12:25:57.302634', NULL, 'INSTITUTO TECNOLÓGICO DE AERONÁUTICA (ITA)', 1, NULL, 144, false);
INSERT INTO public.empresa VALUES (2817, true, '2023-06-12 12:25:57.309947', NULL, 'INSTITUTO TECNOLÓGICO E DAS CIÊNCIAS SOCIAIS APLICADAS E DA SAÚDE DO CENTRO EDUC. N. SRª AUXILIADORA (ITCSAS/CENSA)', 1, NULL, 160, false);
INSERT INTO public.empresa VALUES (2818, true, '2023-06-12 12:25:57.318069', NULL, 'INSTITUTO TEOLÓGICO FRANCISCANO (ITF)', 1, NULL, 53, false);
INSERT INTO public.empresa VALUES (2819, true, '2023-06-12 12:25:57.325315', NULL, 'INSTITUTO TOCANTINENSE PRESIDENTE ANTONIO CARLOS (ITPAC)', 1, NULL, 23, false);
INSERT INTO public.empresa VALUES (2820, true, '2023-06-12 12:25:57.332869', NULL, 'INSTITUTO UNA DE ITABIRA (UNA)', 1, NULL, 161, false);
INSERT INTO public.empresa VALUES (2821, true, '2023-06-12 12:25:57.340236', NULL, 'INSTITUTO UNIVERSITÁRIO SÃO JUDAS DE GUARULHOS', 1, NULL, 100, false);
INSERT INTO public.empresa VALUES (2822, true, '2023-06-12 12:25:57.348319', NULL, 'INSTITUTO UNIVERSITÁRIO SÃO JUDAS DE SÃO BERNARDO DO CAMPO', 1, NULL, 82, false);
INSERT INTO public.empresa VALUES (2823, true, '2023-06-12 12:25:57.355676', NULL, 'INSTITUTO UNIVERSITÁRIO UNA DE CATALÃO (CATALANA)', 1, NULL, 17, false);
INSERT INTO public.empresa VALUES (2824, true, '2023-06-12 12:25:57.363175', NULL, 'INSTITUTO UNIVERSITÁRIO UNA DE CONSELHEIRO LAFAIETE', 1, NULL, 18, false);
INSERT INTO public.empresa VALUES (2825, true, '2023-06-12 12:25:57.370581', NULL, 'INTERNATIONAL OROFACIAL ACADEMY RP (IOA RP)', 1, NULL, 58, false);
INSERT INTO public.empresa VALUES (2826, true, '2023-06-12 12:25:57.378924', NULL, 'IPD INSTITUTO DE PROFISSIONALIZAÇÃO DIGITAL (IPD)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2827, true, '2023-06-12 12:25:57.386461', NULL, 'IPOG - INSTITUTO DE PÓS-GRADUAÇÃO & GRADUAÇÃO (IPOG)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (2828, true, '2023-06-12 12:25:57.397618', NULL, 'ISTITUTO EUROPEO DI DESIGN (IED SP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2829, true, '2023-06-12 12:25:57.405078', NULL, 'ITPAC CRUZEIRO DO SUL (ITPAC - CZ)', 1, NULL, 431, false);
INSERT INTO public.empresa VALUES (2830, true, '2023-06-12 12:25:57.413006', NULL, 'ITPAC ITACOATIARA (ITPAC ITA)', 1, NULL, 637, false);
INSERT INTO public.empresa VALUES (2831, true, '2023-06-12 12:25:57.420475', NULL, 'ITPAC MANACAPURU (ITPAC MANACA)', 1, NULL, 262, false);
INSERT INTO public.empresa VALUES (2832, true, '2023-06-12 12:25:57.427961', NULL, 'L2 LABOR (L2 LABOR)', 1, NULL, 765, false);
INSERT INTO public.empresa VALUES (2833, true, '2023-06-12 12:25:57.435499', NULL, 'LIBERTAS - FACULDADES INTEGRADAS (LIBERTAS)', 1, NULL, 316, false);
INSERT INTO public.empresa VALUES (2834, true, '2023-06-12 12:25:57.443577', NULL, 'LINK SCHOOL OF BUSINESS (LSB)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2835, true, '2023-06-12 12:25:57.451071', NULL, 'NOVA FACULDADE (NF)', 1, NULL, 200, false);
INSERT INTO public.empresa VALUES (2836, true, '2023-06-12 12:25:57.458552', NULL, 'PONTIFÍCIA UNIVERSIDADE CATÓLICA DE CAMPINAS (PUC-CAMPINAS)', 1, NULL, 177, false);
INSERT INTO public.empresa VALUES (2837, true, '2023-06-12 12:25:57.466113', NULL, 'PONTIFÍCIA UNIVERSIDADE CATÓLICA DE GOIÁS (PUC GOIÁS)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (2838, true, '2023-06-12 12:25:57.479645', NULL, 'PONTIFÍCIA UNIVERSIDADE CATÓLICA DE MINAS GERAIS (PUC MINAS)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (2839, true, '2023-06-12 12:25:57.487672', NULL, 'PONTIFÍCIA UNIVERSIDADE CATÓLICA DE SÃO PAULO (PUCSP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2840, true, '2023-06-12 12:25:57.495087', NULL, 'PONTIFÍCIA UNIVERSIDADE CATÓLICA DO PARANÁ (PUCPR)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (2841, true, '2023-06-12 12:25:57.508444', NULL, 'PONTIFÍCIA UNIVERSIDADE CATÓLICA DO RIO DE JANEIRO (PUC-RIO)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2842, true, '2023-06-12 12:25:57.516298', NULL, 'PONTIFÍCIA UNIVERSIDADE CATÓLICA DO RIO GRANDE DO SUL (PUCRS)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (2843, true, '2023-06-12 12:25:57.524462', NULL, 'PROFESSOR EDSON ANTÔNIO VELANO (UNIFENAS)', 1, NULL, 674, false);
INSERT INTO public.empresa VALUES (2844, true, '2023-06-12 12:25:57.531793', NULL, 'RATIO - FACULDADE TEOLÓGICA E FILOSÓFICA (RATIO)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (2845, true, '2023-06-12 12:25:57.539322', NULL, 'REAL FACULDADE DE BRASÍLIA (FU)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (2846, true, '2023-06-12 12:25:57.547424', NULL, 'SINAL FACULDADE DE CIÊNCIAS HUMANAS E SOCIAIS (SINAL)', 1, NULL, 143, false);
INSERT INTO public.empresa VALUES (2847, true, '2023-06-12 12:25:57.554847', NULL, 'SIRIUS ESCOLA SUPERIOR DE TECNOLOGIA (SIRIUS)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (2848, true, '2023-06-12 12:25:57.562071', NULL, 'SISTEMA EDUCACIONAL CORPORATIVO DA PETROBRAS', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2849, true, '2023-06-12 12:25:57.569259', NULL, 'SISTEMAS DE ENSINO EM CIÊNCIAS E TECNOLOGIAS (SECTRAS)', 1, NULL, 107, false);
INSERT INTO public.empresa VALUES (2850, true, '2023-06-12 12:25:57.57722', NULL, 'SOBERANA FACULDADE DE SAÚDE DE PETROLINA (SOBERANA)', 1, NULL, 445, false);
INSERT INTO public.empresa VALUES (2851, true, '2023-06-12 12:25:57.58464', NULL, 'SOBRESP - FACULDADE DE CIÊNCIAS DA SAÚDE (SOBRESP)', 1, NULL, 417, false);
INSERT INTO public.empresa VALUES (2852, true, '2023-06-12 12:25:57.592074', NULL, 'STRONG BUSINESS SCHOOL', 1, NULL, 47, false);
INSERT INTO public.empresa VALUES (2853, true, '2023-06-12 12:25:57.59941', NULL, 'STRONG BUSINESS SCHOOL BS', 1, NULL, 171, false);
INSERT INTO public.empresa VALUES (2854, true, '2023-06-12 12:25:57.606969', NULL, 'SUSTENTARE ESCOLA DE NEGÓCIOS (SUSTENTARE)', 1, NULL, 68, false);
INSERT INTO public.empresa VALUES (2855, true, '2023-06-12 12:25:57.618875', NULL, 'SVT FACULDADE DE ENSINO SUPERIOR (SVT)', 1, NULL, 141, false);
INSERT INTO public.empresa VALUES (2856, true, '2023-06-12 12:25:57.626161', NULL, 'TREVISAN ESCOLA SUPERIOR DE NEGÓCIOS (TREVISAN)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2857, true, '2023-06-12 12:25:57.63347', NULL, 'TREVISAN ESCOLA SUPERIOR DE NEGÓCIOS', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2858, true, '2023-06-12 12:25:57.641413', NULL, 'TREVISAN ESCOLA SUPERIOR DE NEGÓCIOS- (TEN)', 1, NULL, 766, false);
INSERT INTO public.empresa VALUES (2859, true, '2023-06-12 12:25:57.648663', NULL, 'UGV CENTRO UNIVERSITÁRIO', 1, NULL, 119, false);
INSERT INTO public.empresa VALUES (2860, true, '2023-06-12 12:25:57.655772', NULL, 'UNAMA FACULDADE DA AMAZÔNIA DE BOA VISTA (UNAMA)', 1, NULL, 138, false);
INSERT INTO public.empresa VALUES (2861, true, '2023-06-12 12:25:57.663037', NULL, 'UNAMA FACULDADE DA AMAZÔNIA DE MACAPÁ', 1, NULL, 26, false);
INSERT INTO public.empresa VALUES (2862, true, '2023-06-12 12:25:57.670828', NULL, 'UNAMA FACULDADE DA AMAZÔNIA DE RIO BRANCO (FMN RIO BRANCO)', 1, NULL, 143, false);
INSERT INTO public.empresa VALUES (2863, true, '2023-06-12 12:25:57.678165', NULL, 'UNETRI FACULDADES (UNETRI)', 1, NULL, 767, false);
INSERT INTO public.empresa VALUES (2864, true, '2023-06-12 12:25:57.685561', NULL, 'UNIÃO DAS FACULDADES DOS GRANDES LAGOS (UNILAGO)', 1, NULL, 114, false);
INSERT INTO public.empresa VALUES (2865, true, '2023-06-12 12:25:57.692949', NULL, 'UNICORP FACULDADES (UNICORP)', 1, NULL, 107, false);
INSERT INTO public.empresa VALUES (2866, true, '2023-06-12 12:25:57.724997', NULL, 'UNIVERSIDADE ALTO VALE DO RIO DO PEIXE (UNIARP)', 1, NULL, 699, false);
INSERT INTO public.empresa VALUES (2867, true, '2023-06-12 12:25:57.732379', NULL, 'UNIVERSIDADE ANHANGUERA (UNIDERP)', 1, NULL, 48, false);
INSERT INTO public.empresa VALUES (2868, true, '2023-06-12 12:25:57.739851', NULL, 'UNIVERSIDADE ANHANGUERA DE SÃO PAULO (UNIAN - SP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2869, true, '2023-06-12 12:25:57.747235', NULL, 'UNIVERSIDADE ANHEMBI MORUMBI (UAM)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2870, true, '2023-06-12 12:25:57.755054', NULL, 'UNIVERSIDADE BRASIL (UB)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2871, true, '2023-06-12 12:25:57.762975', NULL, 'UNIVERSIDADE CÂNDIDO MENDES (UCAM)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2872, true, '2023-06-12 12:25:57.770317', NULL, 'UNIVERSIDADE CASTELO BRANCO (UCB)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2873, true, '2023-06-12 12:25:57.777709', NULL, 'UNIVERSIDADE CATÓLICA DE BRASÍLIA (UCB)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (2874, true, '2023-06-12 12:25:57.785519', NULL, 'UNIVERSIDADE CATÓLICA DE PELOTAS (UCPEL)', 1, NULL, 283, false);
INSERT INTO public.empresa VALUES (2875, true, '2023-06-12 12:25:57.797656', NULL, 'UNIVERSIDADE CATÓLICA DE PERNAMBUCO (UNICAP)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (2876, true, '2023-06-12 12:25:57.805178', NULL, 'UNIVERSIDADE CATÓLICA DE PETRÓPOLIS (UCP)', 1, NULL, 53, false);
INSERT INTO public.empresa VALUES (2877, true, '2023-06-12 12:25:57.813034', NULL, 'UNIVERSIDADE CATÓLICA DE SANTOS (UNISANTOS)', 1, NULL, 171, false);
INSERT INTO public.empresa VALUES (2878, true, '2023-06-12 12:25:57.820561', NULL, 'UNIVERSIDADE CATÓLICA DOM BOSCO (UCDB)', 1, NULL, 48, false);
INSERT INTO public.empresa VALUES (2879, true, '2023-06-12 12:25:57.828101', NULL, 'UNIVERSIDADE CESUMAR (UNICESUMAR)', 1, NULL, 76, false);
INSERT INTO public.empresa VALUES (2880, true, '2023-06-12 12:25:57.835574', NULL, 'UNIVERSIDADE CEUMA (UNICEUMA)', 1, NULL, 141, false);
INSERT INTO public.empresa VALUES (2881, true, '2023-06-12 12:25:57.843349', NULL, 'UNIVERSIDADE CIDADE DE SÃO PAULO (UNICID)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2882, true, '2023-06-12 12:25:57.85088', NULL, 'UNIVERSIDADE COMUNITÁRIA DA REGIÃO DE CHAPECÓ (UNOCHAPECÓ)', 1, NULL, 406, false);
INSERT INTO public.empresa VALUES (2883, true, '2023-06-12 12:25:57.858409', NULL, 'UNIVERSIDADE CRUZEIRO DO SUL (UNICSUL)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2884, true, '2023-06-12 12:25:57.86643', NULL, 'UNIVERSIDADE DA AMAZÔNIA (UNAMA)', 1, NULL, 79, false);
INSERT INTO public.empresa VALUES (2885, true, '2023-06-12 12:25:57.874455', NULL, 'UNIVERSIDADE DA INTEGRAÇÃO INTERNACIONAL DA LUSOFONIA AFRO-BRASILEIRA (UNILAB)', 1, NULL, 768, false);
INSERT INTO public.empresa VALUES (2886, true, '2023-06-12 12:25:57.881894', NULL, 'UNIVERSIDADE DA REGIÃO DE JOINVILLE (UNIVILLE)', 1, NULL, 68, false);
INSERT INTO public.empresa VALUES (2887, true, '2023-06-12 12:25:57.889273', NULL, 'UNIVERSIDADE DE ARARAQUARA (UNIARA)', 1, NULL, 378, false);
INSERT INTO public.empresa VALUES (2888, true, '2023-06-12 12:25:57.896794', NULL, 'UNIVERSIDADE DE BRASÍLIA (UNB)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (2889, true, '2023-06-12 12:25:57.904621', NULL, 'UNIVERSIDADE DE CAXIAS DO SUL (UCS)', 1, NULL, 87, false);
INSERT INTO public.empresa VALUES (2890, true, '2023-06-12 12:25:57.916964', NULL, 'UNIVERSIDADE DE CRUZ ALTA (UNICRUZ)', 1, NULL, 769, false);
INSERT INTO public.empresa VALUES (2891, true, '2023-06-12 12:25:57.924259', NULL, 'UNIVERSIDADE DE CUIABÁ (UNIC/UNIME)', 1, NULL, 203, false);
INSERT INTO public.empresa VALUES (2892, true, '2023-06-12 12:25:57.931518', NULL, 'UNIVERSIDADE DE FORTALEZA (UNIFOR)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (2893, true, '2023-06-12 12:25:57.939268', NULL, 'UNIVERSIDADE DE FRANCA (UNIFRAN)', 1, NULL, 179, false);
INSERT INTO public.empresa VALUES (2894, true, '2023-06-12 12:25:57.946513', NULL, 'UNIVERSIDADE DE GURUPI (UNIRG)', 1, NULL, 770, false);
INSERT INTO public.empresa VALUES (2895, true, '2023-06-12 12:25:57.95353', NULL, 'UNIVERSIDADE DE ITAÚNA (UI)', 1, NULL, 598, false);
INSERT INTO public.empresa VALUES (2896, true, '2023-06-12 12:25:57.960801', NULL, 'UNIVERSIDADE DE MARÍLIA (UNIMAR)', 1, NULL, 145, false);
INSERT INTO public.empresa VALUES (2897, true, '2023-06-12 12:25:57.968523', NULL, 'UNIVERSIDADE DE MOGI DAS CRUZES (UMC)', 1, NULL, 62, false);
INSERT INTO public.empresa VALUES (2898, true, '2023-06-12 12:25:57.975835', NULL, 'UNIVERSIDADE DE PASSO FUNDO (UPF)', 1, NULL, 282, false);
INSERT INTO public.empresa VALUES (2899, true, '2023-06-12 12:25:57.983021', NULL, 'UNIVERSIDADE DE PERNAMBUCO (UPE)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (2900, true, '2023-06-12 12:25:57.991048', NULL, 'UNIVERSIDADE DE RIBEIRÃO PRETO (UNAERP)', 1, NULL, 58, false);
INSERT INTO public.empresa VALUES (2901, true, '2023-06-12 12:25:57.998845', NULL, 'UNIVERSIDADE DE RIO VERDE (FESURV)', 1, NULL, 202, false);
INSERT INTO public.empresa VALUES (2902, true, '2023-06-12 12:25:58.006063', NULL, 'UNIVERSIDADE DE SANTA CRUZ DO SUL (UNISC)', 1, NULL, 561, false);
INSERT INTO public.empresa VALUES (2903, true, '2023-06-12 12:25:58.013718', NULL, 'UNIVERSIDADE DE SÃO PAULO (USP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2904, true, '2023-06-12 12:25:58.020991', NULL, 'UNIVERSIDADE DE SOROCABA (UNISO)', 1, NULL, 146, false);
INSERT INTO public.empresa VALUES (2905, true, '2023-06-12 12:25:58.03282', NULL, 'UNIVERSIDADE DE TAUBATÉ (UNITAU)', 1, NULL, 33, false);
INSERT INTO public.empresa VALUES (2906, true, '2023-06-12 12:25:58.040183', NULL, 'UNIVERSIDADE DE UBERABA (UNIUBE)', 1, NULL, 118, false);
INSERT INTO public.empresa VALUES (2907, true, '2023-06-12 12:25:58.047721', NULL, 'UNIVERSIDADE DE VASSOURAS (UNIVASSOURAS)', 1, NULL, 771, false);
INSERT INTO public.empresa VALUES (2908, true, '2023-06-12 12:25:58.054858', NULL, 'UNIVERSIDADE DO CONTESTADO (UNC)', 1, NULL, 772, false);
INSERT INTO public.empresa VALUES (2909, true, '2023-06-12 12:25:58.062693', NULL, 'UNIVERSIDADE DO DISTRITO FEDERAL (UNDF)', 1, NULL, 5, false);
INSERT INTO public.empresa VALUES (2910, true, '2023-06-12 12:25:58.070296', NULL, 'UNIVERSIDADE DO ESTADO DA BAHIA (UNEB)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (2911, true, '2023-06-12 12:25:58.077573', NULL, 'UNIVERSIDADE DO ESTADO DE MATO GROSSO CARLOS ALBERTO REYES MALDONADO - UNEMAT (UNEMAT)', 1, NULL, 590, false);
INSERT INTO public.empresa VALUES (2912, true, '2023-06-12 12:25:58.084952', NULL, 'UNIVERSIDADE DO ESTADO DE MINAS GERAIS (UEMG)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (2913, true, '2023-06-12 12:25:58.092758', NULL, 'UNIVERSIDADE DO ESTADO DO AMAPÁ (UEAP)', 1, NULL, 26, false);
INSERT INTO public.empresa VALUES (2914, true, '2023-06-12 12:25:58.100025', NULL, 'UNIVERSIDADE DO ESTADO DO AMAZONAS (UEA)', 1, NULL, 75, false);
INSERT INTO public.empresa VALUES (2915, true, '2023-06-12 12:25:58.107257', NULL, 'UNIVERSIDADE DO ESTADO DO PARÁ (UEPA)', 1, NULL, 79, false);
INSERT INTO public.empresa VALUES (2916, true, '2023-06-12 12:25:58.114721', NULL, 'UNIVERSIDADE DO ESTADO DO RIO DE JANEIRO (UERJ)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2917, true, '2023-06-12 12:25:58.122407', NULL, 'UNIVERSIDADE DO ESTADO DO RIO GRANDE DO NORTE (UERN)', 1, NULL, 323, false);
INSERT INTO public.empresa VALUES (2918, true, '2023-06-12 12:25:58.129634', NULL, 'UNIVERSIDADE DO EXTREMO SUL CATARINENSE (UNESC)', 1, NULL, 192, false);
INSERT INTO public.empresa VALUES (2919, true, '2023-06-12 12:25:58.13686', NULL, 'UNIVERSIDADE DO GRANDE RIO PROFESSOR JOSÉ DE SOUZA HERDY (UNIGRANRIO)', 1, NULL, 436, false);
INSERT INTO public.empresa VALUES (2920, true, '2023-06-12 12:25:58.144176', NULL, 'UNIVERSIDADE DO OESTE DE SANTA CATARINA (UNOESC)', 1, NULL, 773, false);
INSERT INTO public.empresa VALUES (2921, true, '2023-06-12 12:25:58.151954', NULL, 'UNIVERSIDADE DO OESTE PAULISTA (UNOESTE)', 1, NULL, 50, false);
INSERT INTO public.empresa VALUES (2922, true, '2023-06-12 12:25:58.162325', NULL, 'UNIVERSIDADE DO PLANALTO CATARINENSE (UNIPLAC)', 1, NULL, 148, false);
INSERT INTO public.empresa VALUES (2923, true, '2023-06-12 12:25:58.18858', NULL, 'UNIVERSIDADE DO SUL DE SANTA CATARINA (UNISUL)', 1, NULL, 701, false);
INSERT INTO public.empresa VALUES (2924, true, '2023-06-12 12:25:58.196018', NULL, 'UNIVERSIDADE DO VALE DO ITAJAÍ (UNIVALI)', 1, NULL, 345, false);
INSERT INTO public.empresa VALUES (2925, true, '2023-06-12 12:25:58.204053', NULL, 'UNIVERSIDADE DO VALE DO PARAÍBA (UNIVAP)', 1, NULL, 144, false);
INSERT INTO public.empresa VALUES (2926, true, '2023-06-12 12:25:58.211303', NULL, 'UNIVERSIDADE DO VALE DO RIO DOS SINOS (UNISINOS)', 1, NULL, 703, false);
INSERT INTO public.empresa VALUES (2927, true, '2023-06-12 12:25:58.223257', NULL, 'UNIVERSIDADE DO VALE DO SAPUCAÍ (UNIVÁS)', 1, NULL, 230, false);
INSERT INTO public.empresa VALUES (2928, true, '2023-06-12 12:25:58.230627', NULL, 'UNIVERSIDADE DO VALE DO TAQUARI (UNIVATES)', 1, NULL, 774, false);
INSERT INTO public.empresa VALUES (2929, true, '2023-06-12 12:25:58.238518', NULL, 'UNIVERSIDADE ESTÁCIO DE SÁ (UNESA)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2930, true, '2023-06-12 12:25:58.246059', NULL, 'UNIVERSIDADE ESTADUAL DA PARAÍBA (UEPB)', 1, NULL, 147, false);
INSERT INTO public.empresa VALUES (2931, true, '2023-06-12 12:25:58.253425', NULL, 'UNIVERSIDADE ESTADUAL DA REGIÃO TOCANTINA DO MARANHÃO (UEMASUL)', 1, NULL, 267, false);
INSERT INTO public.empresa VALUES (2932, true, '2023-06-12 12:25:58.260775', NULL, 'UNIVERSIDADE ESTADUAL DE ALAGOAS - UNEAL (UNEAL)', 1, NULL, 333, false);
INSERT INTO public.empresa VALUES (2933, true, '2023-06-12 12:25:58.268458', NULL, 'UNIVERSIDADE ESTADUAL DE CAMPINAS (UNICAMP)', 1, NULL, 177, false);
INSERT INTO public.empresa VALUES (2934, true, '2023-06-12 12:25:58.275762', NULL, 'UNIVERSIDADE ESTADUAL DE CIÊNCIAS DA SAÚDE DE ALAGOAS - UNCISAL (UNCISAL)', 1, NULL, 73, false);
INSERT INTO public.empresa VALUES (2935, true, '2023-06-12 12:25:58.283556', NULL, 'UNIVERSIDADE ESTADUAL DE FEIRA DE SANTANA (UEFS)', 1, NULL, 99, false);
INSERT INTO public.empresa VALUES (2936, true, '2023-06-12 12:25:58.29076', NULL, 'UNIVERSIDADE ESTADUAL DE GOIÁS (UEG)', 1, NULL, 264, false);
INSERT INTO public.empresa VALUES (2937, true, '2023-06-12 12:25:58.298641', NULL, 'UNIVERSIDADE ESTADUAL DE LONDRINA (UEL)', 1, NULL, 159, false);
INSERT INTO public.empresa VALUES (2938, true, '2023-06-12 12:25:58.305934', NULL, 'UNIVERSIDADE ESTADUAL DE MARINGÁ (UEM)', 1, NULL, 76, false);
INSERT INTO public.empresa VALUES (2939, true, '2023-06-12 12:25:58.313242', NULL, 'UNIVERSIDADE ESTADUAL DE MATO GROSSO DO SUL (UEMS)', 1, NULL, 84, false);
INSERT INTO public.empresa VALUES (2940, true, '2023-06-12 12:25:58.320649', NULL, 'UNIVERSIDADE ESTADUAL DE MONTES CLAROS (UNIMONTES)', 1, NULL, 128, false);
INSERT INTO public.empresa VALUES (2941, true, '2023-06-12 12:25:58.328386', NULL, 'UNIVERSIDADE ESTADUAL DE PONTA GROSSA (UEPG)', 1, NULL, 188, false);
INSERT INTO public.empresa VALUES (2942, true, '2023-06-12 12:25:58.335621', NULL, 'UNIVERSIDADE ESTADUAL DE RORAIMA (UERR)', 1, NULL, 138, false);
INSERT INTO public.empresa VALUES (2943, true, '2023-06-12 12:25:58.342799', NULL, 'UNIVERSIDADE ESTADUAL DE SANTA CRUZ (UESC)', 1, NULL, 20, false);
INSERT INTO public.empresa VALUES (2944, true, '2023-06-12 12:25:58.350003', NULL, 'UNIVERSIDADE ESTADUAL DO CEARÁ (UECE)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (2945, true, '2023-06-12 12:25:58.357855', NULL, 'UNIVERSIDADE ESTADUAL DO CENTRO OESTE (UNICENTRO)', 1, NULL, 64, false);
INSERT INTO public.empresa VALUES (2946, true, '2023-06-12 12:25:58.365256', NULL, 'UNIVERSIDADE ESTADUAL DO MARANHÃO (UEMA)', 1, NULL, 141, false);
INSERT INTO public.empresa VALUES (2947, true, '2023-06-12 12:25:58.372406', NULL, 'UNIVERSIDADE ESTADUAL DO NORTE DO PARANÁ (UENP)', 1, NULL, 775, false);
INSERT INTO public.empresa VALUES (2948, true, '2023-06-12 12:25:58.380213', NULL, 'UNIVERSIDADE ESTADUAL DO NORTE FLUMINENSE DARCY RIBEIRO (UENF)', 1, NULL, 160, false);
INSERT INTO public.empresa VALUES (2949, true, '2023-06-12 12:25:58.392975', NULL, 'UNIVERSIDADE ESTADUAL DO OESTE DO PARANÁ (UNIOESTE)', 1, NULL, 54, false);
INSERT INTO public.empresa VALUES (2950, true, '2023-06-12 12:25:58.400398', NULL, 'UNIVERSIDADE ESTADUAL DO PARANÁ (UNESPAR)', 1, NULL, 211, false);
INSERT INTO public.empresa VALUES (2951, true, '2023-06-12 12:25:58.407572', NULL, 'UNIVERSIDADE ESTADUAL DO PIAUÍ (UESPI)', 1, NULL, 27, false);
INSERT INTO public.empresa VALUES (2952, true, '2023-06-12 12:25:58.41567', NULL, 'UNIVERSIDADE ESTADUAL DO RIO GRANDE DO SUL (UERGS)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (2953, true, '2023-06-12 12:25:58.422984', NULL, 'UNIVERSIDADE ESTADUAL DO SUDOESTE DA BAHIA (UESB)', 1, NULL, 37, false);
INSERT INTO public.empresa VALUES (2954, true, '2023-06-12 12:25:58.430671', NULL, 'UNIVERSIDADE ESTADUAL DO TOCANTINS (UNITINS)', 1, NULL, 23, false);
INSERT INTO public.empresa VALUES (2955, true, '2023-06-12 12:25:58.438049', NULL, 'UNIVERSIDADE ESTADUAL PAULISTA JÚLIO DE MESQUITA FILHO (UNESP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2956, true, '2023-06-12 12:25:58.446075', NULL, 'UNIVERSIDADE ESTADUAL VALE DO ACARAÚ (UVA)', 1, NULL, 167, false);
INSERT INTO public.empresa VALUES (2957, true, '2023-06-12 12:25:58.45338', NULL, 'UNIVERSIDADE EVANGÉLICA DE GOIÁS (UNIEVANGÉLICA)', 1, NULL, 264, false);
INSERT INTO public.empresa VALUES (2958, true, '2023-06-12 12:25:58.460612', NULL, 'UNIVERSIDADE FEDERAL DA BAHIA (UFBA)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (2959, true, '2023-06-12 12:25:58.467782', NULL, 'UNIVERSIDADE FEDERAL DA FRONTEIRA SUL (UFFS)', 1, NULL, 406, false);
INSERT INTO public.empresa VALUES (2960, true, '2023-06-12 12:25:58.475944', NULL, 'UNIVERSIDADE FEDERAL DA INTEGRAÇÃO LATINO-AMERICANA (UNILA)', 1, NULL, 124, false);
INSERT INTO public.empresa VALUES (2961, true, '2023-06-12 12:25:58.483188', NULL, 'UNIVERSIDADE FEDERAL DA PARAÍBA (UFPB)', 1, NULL, 107, false);
INSERT INTO public.empresa VALUES (2962, true, '2023-06-12 12:25:58.490434', NULL, 'UNIVERSIDADE FEDERAL DE ALAGOAS (UFAL)', 1, NULL, 73, false);
INSERT INTO public.empresa VALUES (2963, true, '2023-06-12 12:25:58.498056', NULL, 'UNIVERSIDADE FEDERAL DE ALFENAS (UNIFAL-MG)', 1, NULL, 674, false);
INSERT INTO public.empresa VALUES (2964, true, '2023-06-12 12:25:58.505878', NULL, 'UNIVERSIDADE FEDERAL DE CAMPINA GRANDE (UFCG)', 1, NULL, 147, false);
INSERT INTO public.empresa VALUES (2965, true, '2023-06-12 12:25:58.513178', NULL, 'UNIVERSIDADE FEDERAL DE CATALÃO (UFCAT)', 1, NULL, 17, false);
INSERT INTO public.empresa VALUES (2966, true, '2023-06-12 12:25:58.520547', NULL, 'UNIVERSIDADE FEDERAL DE GOIÁS (UFG)', 1, NULL, 42, false);
INSERT INTO public.empresa VALUES (2967, true, '2023-06-12 12:25:58.52839', NULL, 'UNIVERSIDADE FEDERAL DE ITAJUBÁ - UNIFEI (UNIFEI)', 1, NULL, 103, false);
INSERT INTO public.empresa VALUES (2968, true, '2023-06-12 12:25:58.536138', NULL, 'UNIVERSIDADE FEDERAL DE JATAÍ (UFJ)', 1, NULL, 21, false);
INSERT INTO public.empresa VALUES (2969, true, '2023-06-12 12:25:58.543399', NULL, 'UNIVERSIDADE FEDERAL DE JUIZ DE FORA (UFJF)', 1, NULL, 38, false);
INSERT INTO public.empresa VALUES (2970, true, '2023-06-12 12:25:58.555141', NULL, 'UNIVERSIDADE FEDERAL DE LAVRAS (UFLA)', 1, NULL, 108, false);
INSERT INTO public.empresa VALUES (2971, true, '2023-06-12 12:25:58.562661', NULL, 'UNIVERSIDADE FEDERAL DE MATO GROSSO (UFMT)', 1, NULL, 203, false);
INSERT INTO public.empresa VALUES (2972, true, '2023-06-12 12:25:58.570572', NULL, 'UNIVERSIDADE FEDERAL DE MATO GROSSO DO SUL (UFMS)', 1, NULL, 48, false);
INSERT INTO public.empresa VALUES (2973, true, '2023-06-12 12:25:58.578056', NULL, 'UNIVERSIDADE FEDERAL DE MINAS GERAIS (UFMG)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (2974, true, '2023-06-12 12:25:58.58555', NULL, 'UNIVERSIDADE FEDERAL DE OURO PRETO (UFOP)', 1, NULL, 776, false);
INSERT INTO public.empresa VALUES (2975, true, '2023-06-12 12:25:58.592731', NULL, 'UNIVERSIDADE FEDERAL DE PELOTAS (UFPEL)', 1, NULL, 283, false);
INSERT INTO public.empresa VALUES (2976, true, '2023-06-12 12:25:58.600618', NULL, 'UNIVERSIDADE FEDERAL DE PERNAMBUCO (UFPE)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (2977, true, '2023-06-12 12:25:58.607909', NULL, 'UNIVERSIDADE FEDERAL DE RONDONÓPOLIS (UFR)', 1, NULL, 287, false);
INSERT INTO public.empresa VALUES (2978, true, '2023-06-12 12:25:58.615162', NULL, 'UNIVERSIDADE FEDERAL DE RORAIMA (UFRR)', 1, NULL, 138, false);
INSERT INTO public.empresa VALUES (2979, true, '2023-06-12 12:25:58.622265', NULL, 'UNIVERSIDADE FEDERAL DE SANTA CATARINA (UFSC)', 1, NULL, 3, false);
INSERT INTO public.empresa VALUES (2980, true, '2023-06-12 12:25:58.630032', NULL, 'UNIVERSIDADE FEDERAL DE SANTA MARIA (UFSM)', 1, NULL, 417, false);
INSERT INTO public.empresa VALUES (2981, true, '2023-06-12 12:25:58.637609', NULL, 'UNIVERSIDADE FEDERAL DE SÃO CARLOS (UFSCAR)', 1, NULL, 72, false);
INSERT INTO public.empresa VALUES (2982, true, '2023-06-12 12:25:58.645111', NULL, 'UNIVERSIDADE FEDERAL DE SÃO JOÃO DEL REI (UFSJ)', 1, NULL, 185, false);
INSERT INTO public.empresa VALUES (2983, true, '2023-06-12 12:25:58.652469', NULL, 'UNIVERSIDADE FEDERAL DE SÃO PAULO (UNIFESP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (2984, true, '2023-06-12 12:25:58.660341', NULL, 'UNIVERSIDADE FEDERAL DE SERGIPE (UFS)', 1, NULL, 777, false);
INSERT INTO public.empresa VALUES (2985, true, '2023-06-12 12:25:58.667677', NULL, 'UNIVERSIDADE FEDERAL DE UBERLÂNDIA (UFU)', 1, NULL, 134, false);
INSERT INTO public.empresa VALUES (2986, true, '2023-06-12 12:25:58.675096', NULL, 'UNIVERSIDADE FEDERAL DE VIÇOSA (UFV)', 1, NULL, 122, false);
INSERT INTO public.empresa VALUES (2987, true, '2023-06-12 12:25:58.682396', NULL, 'UNIVERSIDADE FEDERAL DO ACRE (UFAC)', 1, NULL, 143, false);
INSERT INTO public.empresa VALUES (2988, true, '2023-06-12 12:25:58.690192', NULL, 'UNIVERSIDADE FEDERAL DO AGRESTE DE PERNAMBUCO (UFAPE )', 1, NULL, 483, false);
INSERT INTO public.empresa VALUES (2989, true, '2023-06-12 12:25:58.697407', NULL, 'UNIVERSIDADE FEDERAL DO AMAPÁ (UNIFAP)', 1, NULL, 26, false);
INSERT INTO public.empresa VALUES (2990, true, '2023-06-12 12:25:58.705308', NULL, 'UNIVERSIDADE FEDERAL DO AMAZONAS (UFAM)', 1, NULL, 75, false);
INSERT INTO public.empresa VALUES (2991, true, '2023-06-12 12:25:58.712675', NULL, 'UNIVERSIDADE FEDERAL DO CARIRI (UFCA)', 1, NULL, 135, false);
INSERT INTO public.empresa VALUES (2992, true, '2023-06-12 12:25:58.725752', NULL, 'UNIVERSIDADE FEDERAL DO CEARÁ (UFC)', 1, NULL, 45, false);
INSERT INTO public.empresa VALUES (2993, true, '2023-06-12 12:25:58.733069', NULL, 'UNIVERSIDADE FEDERAL DO DELTA DO PARNAIBA (UFDPAR)', 1, NULL, 176, false);
INSERT INTO public.empresa VALUES (2994, true, '2023-06-12 12:25:58.740329', NULL, 'UNIVERSIDADE FEDERAL DO ESPÍRITO SANTO (UFES)', 1, NULL, 25, false);
INSERT INTO public.empresa VALUES (2995, true, '2023-06-12 12:25:58.748025', NULL, 'UNIVERSIDADE FEDERAL DO ESTADO DO RIO DE JANEIRO (UNIRIO)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (2996, true, '2023-06-12 12:25:58.756076', NULL, 'UNIVERSIDADE FEDERAL DO MARANHÃO (UFMA)', 1, NULL, 141, false);
INSERT INTO public.empresa VALUES (2997, true, '2023-06-12 12:25:58.763399', NULL, 'UNIVERSIDADE FEDERAL DO OESTE DA BAHIA (UFOB)', 1, NULL, 174, false);
INSERT INTO public.empresa VALUES (2998, true, '2023-06-12 12:25:58.770779', NULL, 'UNIVERSIDADE FEDERAL DO OESTE DO PARÁ (UFOPA)', 1, NULL, 78, false);
INSERT INTO public.empresa VALUES (2999, true, '2023-06-12 12:25:58.778589', NULL, 'UNIVERSIDADE FEDERAL DO PARÁ (UFPA)', 1, NULL, 79, false);
INSERT INTO public.empresa VALUES (3000, true, '2023-06-12 12:25:58.78656', NULL, 'UNIVERSIDADE FEDERAL DO PARANÁ (UFPR)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (3001, true, '2023-06-12 12:25:58.793826', NULL, 'UNIVERSIDADE FEDERAL DO PIAUÍ (UFPI)', 1, NULL, 27, false);
INSERT INTO public.empresa VALUES (3002, true, '2023-06-12 12:25:58.801173', NULL, 'UNIVERSIDADE FEDERAL DO RECÔNCAVO DA BAHIA (UFRB)', 1, NULL, 172, false);
INSERT INTO public.empresa VALUES (3003, true, '2023-06-12 12:25:58.808474', NULL, 'UNIVERSIDADE FEDERAL DO RIO DE JANEIRO (UFRJ)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (3004, true, '2023-06-12 12:25:58.816398', NULL, 'UNIVERSIDADE FEDERAL DO RIO GRANDE (FURG)', 1, NULL, 298, false);
INSERT INTO public.empresa VALUES (3005, true, '2023-06-12 12:25:58.823638', NULL, 'UNIVERSIDADE FEDERAL DO RIO GRANDE DO NORTE (UFRN)', 1, NULL, 130, false);
INSERT INTO public.empresa VALUES (3006, true, '2023-06-12 12:25:58.831082', NULL, 'UNIVERSIDADE FEDERAL DO RIO GRANDE DO SUL (UFRGS)', 1, NULL, 149, false);
INSERT INTO public.empresa VALUES (3007, true, '2023-06-12 12:25:58.838414', NULL, 'UNIVERSIDADE FEDERAL DO SUL DA BAHIA (UFSB)', 1, NULL, 269, false);
INSERT INTO public.empresa VALUES (3008, true, '2023-06-12 12:25:58.846387', NULL, 'UNIVERSIDADE FEDERAL DO SUL E SUDESTE DO PARÁ (UNIFESSPA)', 1, NULL, 46, false);
INSERT INTO public.empresa VALUES (3009, true, '2023-06-12 12:25:58.853559', NULL, 'UNIVERSIDADE FEDERAL DOS VALES DO JEQUITINHONHA E MUCURI (UFVJM)', 1, NULL, 778, false);
INSERT INTO public.empresa VALUES (3010, true, '2023-06-12 12:25:58.860899', NULL, 'UNIVERSIDADE FEDERAL DO TRIÂNGULO MINEIRO (UFTM)', 1, NULL, 118, false);
INSERT INTO public.empresa VALUES (3011, true, '2023-06-12 12:25:58.873177', NULL, 'UNIVERSIDADE FEDERAL FLUMINENSE (UFF)', 1, NULL, 49, false);
INSERT INTO public.empresa VALUES (3012, true, '2023-06-12 12:25:58.880951', NULL, 'UNIVERSIDADE FEDERAL RURAL DA AMAZÔNIA (UFRA)', 1, NULL, 79, false);
INSERT INTO public.empresa VALUES (3013, true, '2023-06-12 12:25:58.888212', NULL, 'UNIVERSIDADE FEDERAL RURAL DE PERNAMBUCO (UFRPE)', 1, NULL, 60, false);
INSERT INTO public.empresa VALUES (3014, true, '2023-06-12 12:25:58.895446', NULL, 'UNIVERSIDADE FEDERAL RURAL DO RIO DE JANEIRO (UFRRJ)', 1, NULL, 779, false);
INSERT INTO public.empresa VALUES (3015, true, '2023-06-12 12:25:58.902889', NULL, 'UNIVERSIDADE FEDERAL RURAL DO SEMI-ÁRIDO (UFERSA)', 1, NULL, 323, false);
INSERT INTO public.empresa VALUES (3016, true, '2023-06-12 12:25:58.910634', NULL, 'UNIVERSIDADE FEEVALE (FEEVALE)', 1, NULL, 541, false);
INSERT INTO public.empresa VALUES (3017, true, '2023-06-12 12:25:58.917816', NULL, 'UNIVERSIDADE FRANCISCANA (UFN)', 1, NULL, 417, false);
INSERT INTO public.empresa VALUES (3018, true, '2023-06-12 12:25:58.925151', NULL, 'UNIVERSIDADE FUMEC (FUMEC)', 1, NULL, 2, false);
INSERT INTO public.empresa VALUES (3019, true, '2023-06-12 12:25:58.932632', NULL, 'UNIVERSIDADE IBIRAPUERA (UNIB)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (3020, true, '2023-06-12 12:25:58.940386', NULL, 'UNIVERSIDADE IGUAÇU (UNIG)', 1, NULL, 780, false);
INSERT INTO public.empresa VALUES (3021, true, '2023-06-12 12:25:58.94768', NULL, 'UNIVERSIDADE LA SALLE (UNILASALLE)', 1, NULL, 542, false);
INSERT INTO public.empresa VALUES (3022, true, '2023-06-12 12:25:58.95495', NULL, 'UNIVERSIDADE LUTERANA DO BRASIL (ULBRA)', 1, NULL, 542, false);
INSERT INTO public.empresa VALUES (3023, true, '2023-06-12 12:25:58.962085', NULL, 'UNIVERSIDADE METODISTA DE PIRACICABA (UNIMEP)', 1, NULL, 224, false);
INSERT INTO public.empresa VALUES (3024, true, '2023-06-12 12:25:58.969924', NULL, 'UNIVERSIDADE METODISTA DE SÃO PAULO (UMESP)', 1, NULL, 82, false);
INSERT INTO public.empresa VALUES (3025, true, '2023-06-12 12:25:58.977332', NULL, 'UNIVERSIDADE METROPOLITANA DE SANTOS (UNIMES)', 1, NULL, 171, false);
INSERT INTO public.empresa VALUES (3026, true, '2023-06-12 12:25:58.984526', NULL, 'UNIVERSIDADE MUNICIPAL DE SÃO CAETANO DO SUL (USCS)', 1, NULL, 126, false);
INSERT INTO public.empresa VALUES (3027, true, '2023-06-12 12:25:58.991752', NULL, 'UNIVERSIDADE NILTON LINS (UNINILTONLINS)', 1, NULL, 75, false);
INSERT INTO public.empresa VALUES (3028, true, '2023-06-12 12:25:58.999401', NULL, 'UNIVERSIDADE NOVE DE JULHO (UNINOVE)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (3029, true, '2023-06-12 12:25:59.006554', NULL, 'UNIVERSIDADE PARANAENSE (UNIPAR)', 1, NULL, 251, false);
INSERT INTO public.empresa VALUES (3030, true, '2023-06-12 12:25:59.013916', NULL, 'UNIVERSIDADE PAULISTA (UNIP)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (3031, true, '2023-06-12 12:25:59.021721', NULL, 'UNIVERSIDADE PITÁGORAS UNOPAR ANHANGUERA', 1, NULL, 159, false);
INSERT INTO public.empresa VALUES (3032, true, '2023-06-12 12:25:59.029552', NULL, 'UNIVERSIDADE POSITIVO (UP)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (3033, true, '2023-06-12 12:25:59.036679', NULL, 'UNIVERSIDADE POTIGUAR (UNP)', 1, NULL, 130, false);
INSERT INTO public.empresa VALUES (3034, true, '2023-06-12 12:25:59.045077', NULL, 'UNIVERSIDADE PRESBITERIANA MACKENZIE (MACKENZIE)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (3035, true, '2023-06-12 12:25:59.058152', NULL, 'UNIVERSIDADE REGIONAL DE BLUMENAU (FURB)', 1, NULL, 193, false);
INSERT INTO public.empresa VALUES (3036, true, '2023-06-12 12:25:59.065414', NULL, 'UNIVERSIDADE REGIONAL DO CARIRI (URCA)', 1, NULL, 310, false);
INSERT INTO public.empresa VALUES (3037, true, '2023-06-12 12:25:59.07259', NULL, 'UNIVERSIDADE REGIONAL DO NOROESTE DO ESTADO DO RIO GRANDE DO SUL (UNIJUI)', 1, NULL, 311, false);
INSERT INTO public.empresa VALUES (3038, true, '2023-06-12 12:25:59.079798', NULL, 'UNIVERSIDADE REGIONAL INTEGRADA DO ALTO URUGUAI E DAS MISSÕES (URI)', 1, NULL, 415, false);
INSERT INTO public.empresa VALUES (3039, true, '2023-06-12 12:25:59.08752', NULL, 'UNIVERSIDADE SALGADO DE OLIVEIRA (UNIVERSO)', 1, NULL, 623, false);
INSERT INTO public.empresa VALUES (3040, true, '2023-06-12 12:25:59.094817', NULL, 'UNIVERSIDADE SALVADOR (UNIFACS)', 1, NULL, 116, false);
INSERT INTO public.empresa VALUES (3041, true, '2023-06-12 12:25:59.102081', NULL, 'UNIVERSIDADE SANTA CECÍLIA (UNISANTA)', 1, NULL, 171, false);
INSERT INTO public.empresa VALUES (3042, true, '2023-06-12 12:25:59.109278', NULL, 'UNIVERSIDADE SANTA ÚRSULA (USU)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (3043, true, '2023-06-12 12:25:59.116959', NULL, 'UNIVERSIDADE SANTO AMARO (UNISA)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (3044, true, '2023-06-12 12:25:59.124558', NULL, 'UNIVERSIDADE SÃO FRANCISCO (USF)', 1, NULL, 404, false);
INSERT INTO public.empresa VALUES (3045, true, '2023-06-12 12:25:59.131799', NULL, 'UNIVERSIDADE SÃO JUDAS TADEU (USJT)', 1, NULL, 8, false);
INSERT INTO public.empresa VALUES (3046, true, '2023-06-12 12:25:59.13909', NULL, 'UNIVERSIDADE TECNOLÓGICA FEDERAL DO PARANÁ (UTFPR)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (3047, true, '2023-06-12 12:25:59.146929', NULL, 'UNIVERSIDADE TIRADENTES (UNIT)', 1, NULL, 142, false);
INSERT INTO public.empresa VALUES (3048, true, '2023-06-12 12:25:59.154255', NULL, 'UNIVERSIDADE TUIUTI DO PARANÁ (UTP)', 1, NULL, 56, false);
INSERT INTO public.empresa VALUES (3049, true, '2023-06-12 12:25:59.161607', NULL, 'UNIVERSIDADE UNIVERSUS VERITAS GUARULHOS (UNIVERITAS UNG)', 1, NULL, 100, false);
INSERT INTO public.empresa VALUES (3050, true, '2023-06-12 12:25:59.169026', NULL, 'UNIVERSIDADE VALE DO RIO DOCE (UNIVALE)', 1, NULL, 265, false);
INSERT INTO public.empresa VALUES (3051, true, '2023-06-12 12:25:59.18039', NULL, 'UNIVERSIDADE VEIGA DE ALMEIDA (UVA)', 1, NULL, 12, false);
INSERT INTO public.empresa VALUES (3052, true, '2023-06-12 12:25:59.18776', NULL, 'UNIVERSIDADE VILA VELHA (UVV)', 1, NULL, 226, false);
INSERT INTO public.empresa VALUES (3053, true, '2023-06-12 12:25:59.19491', NULL, 'UNIVERSIDADE VIRTUAL DO ESTADO DO MARANHÃO (UNIVIMA)', 1, NULL, 141, false);
INSERT INTO public.empresa VALUES (3054, true, '2023-06-12 12:25:59.202228', NULL, 'VOAS - INSTITUTO DE APRENDIZAGEM SUPERIOR (VOAS)', 1, NULL, 116, false);


--
-- TOC entry 3680 (class 0 OID 16468)
-- Dependencies: 239
-- Data for Name: endereco; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.endereco VALUES (1, true, '2023-06-12 12:25:27.57193', NULL, 'BELFORD ROXO', 'RJ', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (2, true, '2023-06-12 12:25:27.579837', NULL, 'BELO HORIZONTE', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (3, true, '2023-06-12 12:25:27.589799', NULL, 'FLORIANÓPOLIS', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (4, true, '2023-06-12 12:25:27.597392', NULL, 'RESENDE', 'RJ', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (5, true, '2023-06-12 12:25:27.605578', NULL, 'BRASÍLIA', 'DF', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (6, true, '2023-06-12 12:25:27.613382', NULL, 'JUÍNA', 'MT', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (7, true, '2023-06-12 12:25:27.620957', NULL, 'TEÓFILO OTONI', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (8, true, '2023-06-12 12:25:27.628396', NULL, 'SÃO PAULO', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (9, true, '2023-06-12 12:25:27.639513', NULL, 'CACIMBINHAS', 'AL', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (10, true, '2023-06-12 12:25:27.647024', NULL, 'VOTUPORANGA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (11, true, '2023-06-12 12:25:27.654747', NULL, 'INDAIATUBA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (12, true, '2023-06-12 12:25:27.662793', NULL, 'RIO DE JANEIRO', 'RJ', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (13, true, '2023-06-12 12:25:27.670975', NULL, 'FRANCISCO BELTRÃO', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (14, true, '2023-06-12 12:25:27.678422', NULL, 'ALTAMIRA', 'PA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (15, true, '2023-06-12 12:25:27.686322', NULL, 'ARCOVERDE', 'PE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (16, true, '2023-06-12 12:25:27.699232', NULL, 'BACABEIRA', 'MA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (17, true, '2023-06-12 12:25:27.707342', NULL, 'CATALÃO', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (18, true, '2023-06-12 12:25:27.714796', NULL, 'CONSELHEIRO LAFAIETE', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (19, true, '2023-06-12 12:25:27.72251', NULL, 'DIVINÓPOLIS', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (20, true, '2023-06-12 12:25:27.729881', NULL, 'ILHÉUS', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (21, true, '2023-06-12 12:25:27.738288', NULL, 'JATAÍ', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (22, true, '2023-06-12 12:25:27.745885', NULL, 'LORENA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (23, true, '2023-06-12 12:25:27.753461', NULL, 'PALMAS', 'TO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (24, true, '2023-06-12 12:25:27.760983', NULL, 'SETE LAGOAS', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (25, true, '2023-06-12 12:25:27.769742', NULL, 'VITÓRIA', 'ES', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (26, true, '2023-06-12 12:25:27.777314', NULL, 'MACAPÁ', 'AP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (27, true, '2023-06-12 12:25:27.784922', NULL, 'TERESINA', 'PI', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (28, true, '2023-06-12 12:25:27.79259', NULL, 'BELÉM DE SÃO FRANCISCO', 'PE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (29, true, '2023-06-12 12:25:27.80107', NULL, 'SARANDI', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (30, true, '2023-06-12 12:25:27.808647', NULL, 'GUAPORÉ', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (31, true, '2023-06-12 12:25:27.816783', NULL, 'JARAGUÁ DO SUL', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (32, true, '2023-06-12 12:25:27.82936', NULL, 'BARBACENA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (33, true, '2023-06-12 12:25:27.837453', NULL, 'TAUBATÉ', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (34, true, '2023-06-12 12:25:27.844994', NULL, 'ESPÍRITO SANTO DO PINHAL', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (35, true, '2023-06-12 12:25:27.853171', NULL, 'MACHADO', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (36, true, '2023-06-12 12:25:27.860995', NULL, 'ASSIS CHATEAUBRIAND', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (37, true, '2023-06-12 12:25:27.869436', NULL, 'VITÓRIA DA CONQUISTA', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (38, true, '2023-06-12 12:25:27.877363', NULL, 'JUIZ DE FORA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (39, true, '2023-06-12 12:25:27.88541', NULL, 'OLINDA', 'PE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (40, true, '2023-06-12 12:25:27.893056', NULL, 'PARIPIRANGA', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (41, true, '2023-06-12 12:25:27.901247', NULL, 'APARECIDA DE GOIÂNIA', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (42, true, '2023-06-12 12:25:27.908738', NULL, 'GOIÂNIA', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (43, true, '2023-06-12 12:25:27.916441', NULL, 'AMPARO', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (44, true, '2023-06-12 12:25:27.924301', NULL, 'LEME', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (45, true, '2023-06-12 12:25:27.932762', NULL, 'FORTALEZA', 'CE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (46, true, '2023-06-12 12:25:27.940567', NULL, 'MARABÁ', 'PA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (47, true, '2023-06-12 12:25:27.948447', NULL, 'SANTO ANDRÉ', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (48, true, '2023-06-12 12:25:27.956201', NULL, 'CAMPO GRANDE', 'MS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (49, true, '2023-06-12 12:25:27.964007', NULL, 'NITERÓI', 'RJ', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (50, true, '2023-06-12 12:25:27.97147', NULL, 'PRESIDENTE PRUDENTE', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (51, true, '2023-06-12 12:25:27.983945', NULL, 'PORTO VELHO', 'RO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (52, true, '2023-06-12 12:25:27.991809', NULL, 'LUÍS EDUARDO MAGALHÃES', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (53, true, '2023-06-12 12:25:27.999749', NULL, 'PETRÓPOLIS', 'RJ', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (54, true, '2023-06-12 12:25:28.00716', NULL, 'CASCAVEL', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (55, true, '2023-06-12 12:25:28.014666', NULL, 'PARACATU', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (56, true, '2023-06-12 12:25:28.022561', NULL, 'CURITIBA', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (57, true, '2023-06-12 12:25:28.030695', NULL, 'BALNEÁRIO CAMBORIÚ', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (58, true, '2023-06-12 12:25:28.038118', NULL, 'RIBEIRÃO PRETO', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (59, true, '2023-06-12 12:25:28.045647', NULL, 'ORLEANS', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (60, true, '2023-06-12 12:25:28.053835', NULL, 'RECIFE', 'PE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (61, true, '2023-06-12 12:25:28.061581', NULL, 'SÃO LUÍS DE MONTES BELOS', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (62, true, '2023-06-12 12:25:28.0691', NULL, 'MOGI DAS CRUZES', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (63, true, '2023-06-12 12:25:28.076619', NULL, 'CAMPO LIMPO PAULISTA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (64, true, '2023-06-12 12:25:28.08476', NULL, 'GUARAPUAVA', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (65, true, '2023-06-12 12:25:28.097099', NULL, 'COLATINA', 'ES', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (66, true, '2023-06-12 12:25:28.104482', NULL, 'BARRA DO GARÇAS', 'MT', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (67, true, '2023-06-12 12:25:28.111968', NULL, 'QUIXADÁ', 'CE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (68, true, '2023-06-12 12:25:28.1202', NULL, 'JOINVILLE', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (69, true, '2023-06-12 12:25:28.127668', NULL, 'CORONEL FABRICIANO', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (70, true, '2023-06-12 12:25:28.135378', NULL, 'LINS', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (71, true, '2023-06-12 12:25:28.142753', NULL, 'OSÓRIO', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (72, true, '2023-06-12 12:25:28.150824', NULL, 'SÃO CARLOS', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (73, true, '2023-06-12 12:25:28.158257', NULL, 'MACEIÓ', 'AL', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (74, true, '2023-06-12 12:25:28.165733', NULL, 'CACHOEIRINHA', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (75, true, '2023-06-12 12:25:28.173446', NULL, 'MANAUS', 'AM', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (76, true, '2023-06-12 12:25:28.18197', NULL, 'MARINGÁ', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (77, true, '2023-06-12 12:25:28.189772', NULL, 'BENTO GONÇALVES', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (78, true, '2023-06-12 12:25:28.197418', NULL, 'SANTARÉM', 'PA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (79, true, '2023-06-12 12:25:28.209575', NULL, 'BELÉM', 'PA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (80, true, '2023-06-12 12:25:28.217584', NULL, 'BARRETOS', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (81, true, '2023-06-12 12:25:28.225205', NULL, 'GUAXUPÉ', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (82, true, '2023-06-12 12:25:28.23272', NULL, 'SÃO BERNARDO DO CAMPO', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (83, true, '2023-06-12 12:25:28.240478', NULL, 'ARARAS', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (84, true, '2023-06-12 12:25:28.248481', NULL, 'DOURADOS', 'MS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (85, true, '2023-06-12 12:25:28.256049', NULL, 'SÃO JOSÉ DOS PINHAIS', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (86, true, '2023-06-12 12:25:28.263585', NULL, 'BAGÉ', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (87, true, '2023-06-12 12:25:28.271256', NULL, 'CAXIAS DO SUL', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (88, true, '2023-06-12 12:25:28.279493', NULL, 'SÃO JOÃO DA BOA VISTA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (89, true, '2023-06-12 12:25:28.287528', NULL, 'OURINHOS', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (90, true, '2023-06-12 12:25:28.295038', NULL, 'VITÓRIA DE SANTO ANTÃO', 'PE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (91, true, '2023-06-12 12:25:28.302482', NULL, 'ADAMANTINA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (92, true, '2023-06-12 12:25:28.310462', NULL, 'BARRA MANSA', 'RJ', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (93, true, '2023-06-12 12:25:28.317907', NULL, 'BAURU', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (94, true, '2023-06-12 12:25:28.325307', NULL, 'BRUSQUE', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (95, true, '2023-06-12 12:25:28.332681', NULL, 'CARATINGA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (96, true, '2023-06-12 12:25:28.341518', NULL, 'SANTO ANTÔNIO DE JESUS', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (97, true, '2023-06-12 12:25:28.354248', NULL, 'CAXIAS', 'MA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (98, true, '2023-06-12 12:25:28.361767', NULL, 'LUZIÂNIA', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (99, true, '2023-06-12 12:25:28.369251', NULL, 'FEIRA DE SANTANA', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (100, true, '2023-06-12 12:25:28.377257', NULL, 'GUARULHOS', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (101, true, '2023-06-12 12:25:28.384687', NULL, 'FORMIGA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (102, true, '2023-06-12 12:25:28.39274', NULL, 'GOIATUBA', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (103, true, '2023-06-12 12:25:28.400453', NULL, 'ITAJUBÁ', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (104, true, '2023-06-12 12:25:28.40915', NULL, 'ITAPIRA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (105, true, '2023-06-12 12:25:28.416858', NULL, 'JAGUARIÚNA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (106, true, '2023-06-12 12:25:28.424485', NULL, 'JALES', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (107, true, '2023-06-12 12:25:28.432545', NULL, 'JOÃO PESSOA', 'PB', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (108, true, '2023-06-12 12:25:28.440853', NULL, 'LAVRAS', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (109, true, '2023-06-12 12:25:28.448632', NULL, 'MINEIROS', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (110, true, '2023-06-12 12:25:28.456381', NULL, 'PATO BRANCO', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (111, true, '2023-06-12 12:25:28.467188', NULL, 'PATOS', 'PB', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (112, true, '2023-06-12 12:25:28.475368', NULL, 'PATOS DE MINAS', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (113, true, '2023-06-12 12:25:28.483215', NULL, 'PAULÍNIA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (114, true, '2023-06-12 12:25:28.491437', NULL, 'SÃO JOSÉ DO RIO PRETO', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (115, true, '2023-06-12 12:25:28.49891', NULL, 'CACOAL', 'RO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (116, true, '2023-06-12 12:25:28.508036', NULL, 'SALVADOR', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (117, true, '2023-06-12 12:25:28.515579', NULL, 'SANTA FÉ DO SUL', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (118, true, '2023-06-12 12:25:28.528211', NULL, 'UBERABA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (119, true, '2023-06-12 12:25:28.53602', NULL, 'UNIÃO DA VITÓRIA', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (120, true, '2023-06-12 12:25:28.543546', NULL, 'VALENÇA', 'RJ', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (121, true, '2023-06-12 12:25:28.55158', NULL, 'VÁRZEA GRANDE', 'MT', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (122, true, '2023-06-12 12:25:28.559091', NULL, 'VIÇOSA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (123, true, '2023-06-12 12:25:28.567091', NULL, 'VOLTA REDONDA', 'RJ', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (124, true, '2023-06-12 12:25:28.574812', NULL, 'FOZ DO IGUAÇU', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (125, true, '2023-06-12 12:25:28.582427', NULL, 'PATROCÍNIO', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (126, true, '2023-06-12 12:25:28.590863', NULL, 'SÃO CAETANO DO SUL', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (127, true, '2023-06-12 12:25:28.598829', NULL, 'GUARUJÁ', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (128, true, '2023-06-12 12:25:28.606466', NULL, 'MONTES CLAROS', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (129, true, '2023-06-12 12:25:28.614014', NULL, 'ARAXÁ', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (130, true, '2023-06-12 12:25:28.621433', NULL, 'NATAL', 'RN', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (131, true, '2023-06-12 12:25:28.629518', NULL, 'PAULO AFONSO', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (132, true, '2023-06-12 12:25:28.63724', NULL, 'JABOATÃO DOS GUARARAPES', 'PE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (133, true, '2023-06-12 12:25:28.645151', NULL, 'VARGINHA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (134, true, '2023-06-12 12:25:28.652692', NULL, 'UBERLÂNDIA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (135, true, '2023-06-12 12:25:28.664551', NULL, 'JUAZEIRO DO NORTE', 'CE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (136, true, '2023-06-12 12:25:28.672109', NULL, 'ARACATI', 'CE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (137, true, '2023-06-12 12:25:28.679699', NULL, 'REGISTRO', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (138, true, '2023-06-12 12:25:28.69603', NULL, 'BOA VISTA', 'RR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (139, true, '2023-06-12 12:25:28.70398', NULL, 'JI-PARANÁ', 'RO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (140, true, '2023-06-12 12:25:28.711407', NULL, 'SÃO JOSÉ', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (141, true, '2023-06-12 12:25:28.719004', NULL, 'SÃO LUÍS', 'MA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (142, true, '2023-06-12 12:25:28.726497', NULL, 'ARACAJU', 'SE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (143, true, '2023-06-12 12:25:28.734381', NULL, 'RIO BRANCO', 'AC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (144, true, '2023-06-12 12:25:28.741686', NULL, 'SÃO JOSÉ DOS CAMPOS', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (145, true, '2023-06-12 12:25:28.749335', NULL, 'MARÍLIA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (146, true, '2023-06-12 12:25:28.757348', NULL, 'SOROCABA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (147, true, '2023-06-12 12:25:28.765281', NULL, 'CAMPINA GRANDE', 'PB', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (148, true, '2023-06-12 12:25:28.772516', NULL, 'LAGES', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (149, true, '2023-06-12 12:25:28.779742', NULL, 'PORTO ALEGRE', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (150, true, '2023-06-12 12:25:28.787013', NULL, 'LAPA', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (151, true, '2023-06-12 12:25:28.795142', NULL, 'ARIQUEMES', 'RO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (152, true, '2023-06-12 12:25:28.803155', NULL, 'ITAPIRANGA', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (153, true, '2023-06-12 12:25:28.810603', NULL, 'CAMAÇARI', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (154, true, '2023-06-12 12:25:28.81805', NULL, 'MURIAÉ', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (155, true, '2023-06-12 12:25:28.826085', NULL, 'SINOP', 'MT', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (156, true, '2023-06-12 12:25:28.833574', NULL, 'CARUARU', 'PE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (157, true, '2023-06-12 12:25:28.84142', NULL, 'GUANAMBI', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (158, true, '2023-06-12 12:25:28.848968', NULL, 'OSASCO', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (159, true, '2023-06-12 12:25:28.856843', NULL, 'LONDRINA', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (160, true, '2023-06-12 12:25:28.864446', NULL, 'CAMPOS DOS GOYTACAZES', 'RJ', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (161, true, '2023-06-12 12:25:28.871975', NULL, 'ITABIRA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (162, true, '2023-06-12 12:25:28.884521', NULL, 'PINDAMONHANGABA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (163, true, '2023-06-12 12:25:28.89257', NULL, 'UBÁ', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (164, true, '2023-06-12 12:25:28.90017', NULL, 'TRINDADE', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (165, true, '2023-06-12 12:25:28.909285', NULL, 'GETÚLIO VARGAS', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (166, true, '2023-06-12 12:25:28.919924', NULL, 'ARAGUARI', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (167, true, '2023-06-12 12:25:28.928204', NULL, 'SOBRAL', 'CE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (168, true, '2023-06-12 12:25:28.935822', NULL, 'CAMPO MOURÃO', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (169, true, '2023-06-12 12:25:28.943315', NULL, 'LUCAS DO RIO VERDE', 'MT', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (170, true, '2023-06-12 12:25:28.950956', NULL, 'INDAIAL', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (171, true, '2023-06-12 12:25:28.95904', NULL, 'SANTOS', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (172, true, '2023-06-12 12:25:28.96646', NULL, 'CRUZ DAS ALMAS', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (173, true, '2023-06-12 12:25:28.974087', NULL, 'MONTE CARMELO', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (174, true, '2023-06-12 12:25:28.981399', NULL, 'BARREIRAS', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (175, true, '2023-06-12 12:25:28.989307', NULL, 'PAULISTA', 'PE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (176, true, '2023-06-12 12:25:28.996845', NULL, 'PARNAÍBA', 'PI', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (177, true, '2023-06-12 12:25:29.004537', NULL, 'CAMPINAS', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (178, true, '2023-06-12 12:25:29.012378', NULL, 'CARAGUATATUBA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (179, true, '2023-06-12 12:25:29.02088', NULL, 'FRANCA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (180, true, '2023-06-12 12:25:29.028434', NULL, 'ITU', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (181, true, '2023-06-12 12:25:29.036101', NULL, 'CATANDUVA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (182, true, '2023-06-12 12:25:29.048714', NULL, 'JUNDIAÍ', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (183, true, '2023-06-12 12:25:29.057924', NULL, 'RIO DO SUL', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (184, true, '2023-06-12 12:25:29.066189', NULL, 'SUZANO', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (185, true, '2023-06-12 12:25:29.073774', NULL, 'SÃO JOÃO DEL REI', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (186, true, '2023-06-12 12:25:29.081185', NULL, 'ITAPERUNA', 'RJ', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (187, true, '2023-06-12 12:25:29.089347', NULL, 'AMERICANA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (188, true, '2023-06-12 12:25:29.096883', NULL, 'PONTA GROSSA', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (189, true, '2023-06-12 12:25:29.104684', NULL, 'CAJAZEIRAS', 'PB', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (190, true, '2023-06-12 12:25:29.112286', NULL, 'CACHOEIRO DE ITAPEMIRIM', 'ES', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (191, true, '2023-06-12 12:25:29.120382', NULL, 'SÃO ROQUE', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (192, true, '2023-06-12 12:25:29.12791', NULL, 'CRICIÚMA', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (193, true, '2023-06-12 12:25:29.135495', NULL, 'BLUMENAU', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (194, true, '2023-06-12 12:25:29.143061', NULL, 'TERESÓPOLIS', 'RJ', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (195, true, '2023-06-12 12:25:29.151174', NULL, 'AVARÉ', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (196, true, '2023-06-12 12:25:29.158585', NULL, 'ARAGUAÍNA', 'TO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (197, true, '2023-06-12 12:25:29.166759', NULL, 'ARAÇATUBA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (198, true, '2023-06-12 12:25:29.17897', NULL, 'BETIM', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (199, true, '2023-06-12 12:25:29.186643', NULL, 'BOM DESPACHO', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (200, true, '2023-06-12 12:25:29.194314', NULL, 'CONTAGEM', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (201, true, '2023-06-12 12:25:29.202107', NULL, 'GUARAMIRIM', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (202, true, '2023-06-12 12:25:29.210421', NULL, 'RIO VERDE', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (203, true, '2023-06-12 12:25:29.218388', NULL, 'CUIABÁ', 'MT', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (204, true, '2023-06-12 12:25:29.225941', NULL, 'CABEDELO', 'PB', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (205, true, '2023-06-12 12:25:29.233759', NULL, 'ATIBAIA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (206, true, '2023-06-12 12:25:29.242087', NULL, 'ARAUCÁRIA', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (207, true, '2023-06-12 12:25:29.249867', NULL, 'MANHUAÇU', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (208, true, '2023-06-12 12:25:29.258074', NULL, 'BEBEDOURO', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (209, true, '2023-06-12 12:25:29.265643', NULL, 'LAURO DE FREITAS', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (210, true, '2023-06-12 12:25:29.273743', NULL, 'TELÊMACO BORBA', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (211, true, '2023-06-12 12:25:29.281297', NULL, 'PARANAVAÍ', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (212, true, '2023-06-12 12:25:29.289007', NULL, 'TABOÃO DA SERRA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (213, true, '2023-06-12 12:25:29.296685', NULL, 'ALAGOINHAS', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (214, true, '2023-06-12 12:25:29.304852', NULL, 'DOIS VIZINHOS', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (215, true, '2023-06-12 12:25:29.312412', NULL, 'CAPIVARI DE BAIXO', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (216, true, '2023-06-12 12:25:29.320541', NULL, 'SÃO MATEUS', 'ES', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (217, true, '2023-06-12 12:25:29.332887', NULL, 'TRÊS CORAÇÕES', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (218, true, '2023-06-12 12:25:29.340871', NULL, 'ICÓ', 'CE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (219, true, '2023-06-12 12:25:29.348649', NULL, 'MATIPÓ', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (220, true, '2023-06-12 12:25:29.356238', NULL, 'PIRIPIRI', 'PI', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (221, true, '2023-06-12 12:25:29.363677', NULL, 'BATATAIS', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (222, true, '2023-06-12 12:25:29.371729', NULL, 'RIO CLARO', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (223, true, '2023-06-12 12:25:29.379165', NULL, 'ITÁPOLIS', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (224, true, '2023-06-12 12:25:29.386692', NULL, 'PIRACICABA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (225, true, '2023-06-12 12:25:29.394121', NULL, 'GUARABIRA', 'PB', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (226, true, '2023-06-12 12:25:29.402223', NULL, 'VILA VELHA', 'ES', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (227, true, '2023-06-12 12:25:29.409682', NULL, 'ABAETETUBA', 'PA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (228, true, '2023-06-12 12:25:29.417082', NULL, 'PARAGUAÇU PAULISTA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (229, true, '2023-06-12 12:25:29.425235', NULL, 'CRUZEIRO', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (230, true, '2023-06-12 12:25:29.433276', NULL, 'POUSO ALEGRE', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (231, true, '2023-06-12 12:25:29.441375', NULL, 'IGUATAMA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (232, true, '2023-06-12 12:25:29.448793', NULL, 'ANANINDEUA', 'PA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (233, true, '2023-06-12 12:25:29.457076', NULL, 'SANTA TERESA', 'ES', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (234, true, '2023-06-12 12:25:29.465049', NULL, 'ITUMBIARA', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (235, true, '2023-06-12 12:25:29.47805', NULL, 'TIANGUÁ', 'CE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (236, true, '2023-06-12 12:25:29.485525', NULL, 'ARAGUATINS', 'TO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (237, true, '2023-06-12 12:25:29.495182', NULL, 'BURITICUPU', 'MA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (238, true, '2023-06-12 12:25:29.503348', NULL, 'MARIANA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (239, true, '2023-06-12 12:25:29.511034', NULL, 'BENEVIDES', 'PA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (240, true, '2023-06-12 12:25:29.518742', NULL, 'CACHOEIRA', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (241, true, '2023-06-12 12:25:29.526371', NULL, 'IVATUBA', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (242, true, '2023-06-12 12:25:29.535312', NULL, 'SÃO RAIMUNDO NONATO', 'PI', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (243, true, '2023-06-12 12:25:29.545858', NULL, 'SÃO FÉLIX DO XINGU', 'PA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (244, true, '2023-06-12 12:25:29.553927', NULL, 'JACOBINA', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (245, true, '2023-06-12 12:25:29.562256', NULL, 'IRECÊ', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (246, true, '2023-06-12 12:25:29.576644', NULL, 'SENHOR DO BONFIM', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (247, true, '2023-06-12 12:25:29.584408', NULL, 'TUCANO', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (248, true, '2023-06-12 12:25:29.598952', NULL, 'CAMPO NOVO DO PARECIS', 'MT', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (249, true, '2023-06-12 12:25:29.606799', NULL, 'ITURAMA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (250, true, '2023-06-12 12:25:29.64025', NULL, 'PRAIA GRANDE', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (251, true, '2023-06-12 12:25:29.648118', NULL, 'UMUARAMA', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (252, true, '2023-06-12 12:25:29.661402', NULL, 'ALMENARA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (253, true, '2023-06-12 12:25:29.668866', NULL, 'ARAÇUAÍ', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (254, true, '2023-06-12 12:25:29.676762', NULL, 'CAPELINHA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (255, true, '2023-06-12 12:25:29.684223', NULL, 'GUANHÃES', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (256, true, '2023-06-12 12:25:29.691516', NULL, 'CASA NOVA', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (257, true, '2023-06-12 12:25:29.699049', NULL, 'PONTALINA', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (258, true, '2023-06-12 12:25:29.706764', NULL, 'REMANSO', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (259, true, '2023-06-12 12:25:29.714239', NULL, 'ITABERAÍ', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (260, true, '2023-06-12 12:25:29.721565', NULL, 'ITAPEVI', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (261, true, '2023-06-12 12:25:29.729242', NULL, 'ITABIRITO', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (262, true, '2023-06-12 12:25:29.736968', NULL, 'MANACAPURU', 'AM', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (263, true, '2023-06-12 12:25:29.744398', NULL, 'ALVORADA', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (264, true, '2023-06-12 12:25:29.751799', NULL, 'ANÁPOLIS', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (265, true, '2023-06-12 12:25:29.759133', NULL, 'GOVERNADOR VALADARES', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (266, true, '2023-06-12 12:25:29.767115', NULL, 'GUARAPARI', 'ES', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (267, true, '2023-06-12 12:25:29.77468', NULL, 'IMPERATRIZ', 'MA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (268, true, '2023-06-12 12:25:29.782101', NULL, 'IPATINGA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (269, true, '2023-06-12 12:25:29.789625', NULL, 'ITABUNA', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (270, true, '2023-06-12 12:25:29.797658', NULL, 'ITAPECERICA DA SERRA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (271, true, '2023-06-12 12:25:29.806586', NULL, 'ITAPETININGA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (272, true, '2023-06-12 12:25:29.814679', NULL, 'ITAPEVA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (273, true, '2023-06-12 12:25:29.822307', NULL, 'JACAREÍ', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (274, true, '2023-06-12 12:25:29.835385', NULL, 'JAÚ', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (275, true, '2023-06-12 12:25:29.842892', NULL, 'JEQUIÉ', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (276, true, '2023-06-12 12:25:29.850422', NULL, 'LIMEIRA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (277, true, '2023-06-12 12:25:29.859091', NULL, 'LINHARES', 'ES', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (278, true, '2023-06-12 12:25:29.866657', NULL, 'MATÃO', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (279, true, '2023-06-12 12:25:29.874107', NULL, 'MOGI GUAÇU', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (280, true, '2023-06-12 12:25:29.882196', NULL, 'PARAGOMINAS', 'PA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (281, true, '2023-06-12 12:25:29.890321', NULL, 'PARAUAPEBAS', 'PA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (282, true, '2023-06-12 12:25:29.897875', NULL, 'PASSO FUNDO', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (283, true, '2023-06-12 12:25:29.905458', NULL, 'PELOTAS', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (284, true, '2023-06-12 12:25:29.912868', NULL, 'POÇOS DE CALDAS', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (285, true, '2023-06-12 12:25:29.921194', NULL, 'PRIMAVERA DO LESTE', 'MT', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (286, true, '2023-06-12 12:25:29.928747', NULL, 'RIBEIRÃO DAS NEVES', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (287, true, '2023-06-12 12:25:29.936238', NULL, 'RONDONÓPOLIS', 'MT', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (288, true, '2023-06-12 12:25:29.943598', NULL, 'SANTA BÁRBARA D''OESTE', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (289, true, '2023-06-12 12:25:29.951945', NULL, 'SÃO JOÃO DE MERITI', 'RJ', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (290, true, '2023-06-12 12:25:29.959404', NULL, 'SERRA', 'ES', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (291, true, '2023-06-12 12:25:29.971433', NULL, 'SERTÃOZINHO', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (292, true, '2023-06-12 12:25:29.978983', NULL, 'SORRISO', 'MT', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (293, true, '2023-06-12 12:25:29.987368', NULL, 'SUMARÉ', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (294, true, '2023-06-12 12:25:29.994759', NULL, 'TANGARÁ DA SERRA', 'MT', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (295, true, '2023-06-12 12:25:30.002362', NULL, 'TEIXEIRA DE FREITAS', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (296, true, '2023-06-12 12:25:30.010075', NULL, 'VALINHOS', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (297, true, '2023-06-12 12:25:30.018269', NULL, 'VALPARAÍSO DE GOIÁS', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (298, true, '2023-06-12 12:25:30.025907', NULL, 'RIO GRANDE', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (299, true, '2023-06-12 12:25:30.033797', NULL, 'VOTORANTIM', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (300, true, '2023-06-12 12:25:30.044354', NULL, 'RESTINGA SECA', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (301, true, '2023-06-12 12:25:30.056733', NULL, 'CURVELO', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (302, true, '2023-06-12 12:25:30.064415', NULL, 'PIRAPORA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (303, true, '2023-06-12 12:25:30.071993', NULL, 'BRUMADINHO', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (304, true, '2023-06-12 12:25:30.079633', NULL, 'TOLEDO', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (305, true, '2023-06-12 12:25:30.087825', NULL, 'ASTORGA', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (306, true, '2023-06-12 12:25:30.095283', NULL, 'VALENÇA', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (307, true, '2023-06-12 12:25:30.105664', NULL, 'PASSOS', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (308, true, '2023-06-12 12:25:30.11368', NULL, 'PORTO SEGURO', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (309, true, '2023-06-12 12:25:30.121675', NULL, 'FERNANDÓPOLIS', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (310, true, '2023-06-12 12:25:30.129202', NULL, 'CRATO', 'CE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (311, true, '2023-06-12 12:25:30.136731', NULL, 'IJUÍ', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (312, true, '2023-06-12 12:25:30.144257', NULL, 'BERTIOGA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (313, true, '2023-06-12 12:25:30.157096', NULL, 'BIRIGUI', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (314, true, '2023-06-12 12:25:30.164577', NULL, 'BOA ESPERANÇA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (315, true, '2023-06-12 12:25:30.172076', NULL, 'JABOTICABAL', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (316, true, '2023-06-12 12:25:30.17974', NULL, 'SÃO SEBASTIÃO DO PARAÍSO', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (317, true, '2023-06-12 12:25:30.187651', NULL, 'CAMAQUÃ', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (318, true, '2023-06-12 12:25:30.195587', NULL, 'CAMPO ERÊ', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (319, true, '2023-06-12 12:25:30.202944', NULL, 'CACHOEIRA PAULISTA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (320, true, '2023-06-12 12:25:30.210386', NULL, 'CASA BRANCA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (321, true, '2023-06-12 12:25:30.218237', NULL, 'ARACRUZ', 'ES', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (322, true, '2023-06-12 12:25:30.225572', NULL, 'NOVO PROGRESSO', 'PA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (323, true, '2023-06-12 12:25:30.232953', NULL, 'MOSSORÓ', 'RN', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (324, true, '2023-06-12 12:25:30.240436', NULL, 'ARAPUTANGA', 'MT', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (325, true, '2023-06-12 12:25:30.248656', NULL, 'MACAÉ', 'RJ', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (326, true, '2023-06-12 12:25:30.255941', NULL, 'CAICÓ', 'RN', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (327, true, '2023-06-12 12:25:30.263459', NULL, 'CAMBÉ', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (328, true, '2023-06-12 12:25:30.27108', NULL, 'CAPIVARI', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (329, true, '2023-06-12 12:25:30.27896', NULL, 'RIO BONITO', 'RJ', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (330, true, '2023-06-12 12:25:30.286492', NULL, 'CRISTALINA', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (331, true, '2023-06-12 12:25:30.294211', NULL, 'CATANDUVAS', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (332, true, '2023-06-12 12:25:30.30165', NULL, 'IGUATU', 'CE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (333, true, '2023-06-12 12:25:30.314388', NULL, 'ARAPIRACA', 'AL', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (334, true, '2023-06-12 12:25:30.322003', NULL, 'PALMEIRA DOS ÍNDIOS', 'AL', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (335, true, '2023-06-12 12:25:30.329534', NULL, 'MARACANAÚ', 'CE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (336, true, '2023-06-12 12:25:30.336989', NULL, 'MARAU', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (337, true, '2023-06-12 12:25:30.345379', NULL, 'EUSÉBIO', 'CE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (338, true, '2023-06-12 12:25:30.35297', NULL, 'COROMANDEL', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (339, true, '2023-06-12 12:25:30.360446', NULL, 'JOÃO PINHEIRO', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (340, true, '2023-06-12 12:25:30.368026', NULL, 'ILHA SOLTEIRA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (341, true, '2023-06-12 12:25:30.375986', NULL, 'ITABORAÍ', 'RJ', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (342, true, '2023-06-12 12:25:30.383441', NULL, 'CAMPO LARGO', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (343, true, '2023-06-12 12:25:30.390922', NULL, 'FARROUPILHA', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (344, true, '2023-06-12 12:25:30.398493', NULL, 'GRAVATAÍ', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (345, true, '2023-06-12 12:25:30.406495', NULL, 'ITAJAÍ', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (346, true, '2023-06-12 12:25:30.413882', NULL, 'NOVA PETRÓPOLIS', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (347, true, '2023-06-12 12:25:30.421278', NULL, 'RIO DAS OSTRAS', 'RJ', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (348, true, '2023-06-12 12:25:30.42869', NULL, 'SANTO ÂNGELO', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (349, true, '2023-06-12 12:25:30.436561', NULL, 'UNAÍ', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (350, true, '2023-06-12 12:25:30.444561', NULL, 'CONCÓRDIA', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (351, true, '2023-06-12 12:25:30.456586', NULL, 'CONCHAS', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (352, true, '2023-06-12 12:25:30.464569', NULL, 'TIMÓTEO', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (353, true, '2023-06-12 12:25:30.472017', NULL, 'CORNÉLIO PROCÓPIO', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (354, true, '2023-06-12 12:25:30.47961', NULL, 'TUPÃ', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (355, true, '2023-06-12 12:25:30.487064', NULL, 'VILHENA', 'RO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (356, true, '2023-06-12 12:25:30.49499', NULL, 'COLÍDER', 'MT', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (357, true, '2023-06-12 12:25:30.502428', NULL, 'ESCADA', 'PE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (358, true, '2023-06-12 12:25:30.509789', NULL, 'CANOINHAS', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (359, true, '2023-06-12 12:25:30.517197', NULL, 'CABO FRIO', 'RJ', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (360, true, '2023-06-12 12:25:30.525091', NULL, 'SANTA MARIA DE JETIBÁ', 'ES', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (361, true, '2023-06-12 12:25:30.532417', NULL, 'CONCEIÇÃO DO COITÉ', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (362, true, '2023-06-12 12:25:30.539866', NULL, 'VESPASIANO', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (363, true, '2023-06-12 12:25:30.547599', NULL, 'GUARATINGUETÁ', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (364, true, '2023-06-12 12:25:30.555508', NULL, 'SIDROLÂNDIA', 'MS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (365, true, '2023-06-12 12:25:30.562999', NULL, 'CAMPO BELO', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (366, true, '2023-06-12 12:25:30.57041', NULL, 'CATAGUASES', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (367, true, '2023-06-12 12:25:30.57776', NULL, 'CHAPADÃO DO SUL', 'MS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (368, true, '2023-06-12 12:25:30.590316', NULL, 'FÁTIMA DO SUL', 'MS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (369, true, '2023-06-12 12:25:30.61487', NULL, 'NOVA ANDRADINA', 'MS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (370, true, '2023-06-12 12:25:30.622494', NULL, 'SANTA CRUZ DO RIO PARDO', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (371, true, '2023-06-12 12:25:30.630015', NULL, 'HOLAMBRA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (372, true, '2023-06-12 12:25:30.638116', NULL, 'AGUDOS', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (373, true, '2023-06-12 12:25:30.645638', NULL, 'ALTA FLORESTA', 'MT', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (374, true, '2023-06-12 12:25:30.653205', NULL, 'AMAMBAÍ', 'MS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (375, true, '2023-06-12 12:25:30.660657', NULL, 'AMPÉRE', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (376, true, '2023-06-12 12:25:30.668711', NULL, 'ANICUNS', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (377, true, '2023-06-12 12:25:30.67627', NULL, 'APUCARANA', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (378, true, '2023-06-12 12:25:30.683744', NULL, 'ARARAQUARA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (379, true, '2023-06-12 12:25:30.691177', NULL, 'ASSIS', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (380, true, '2023-06-12 12:25:30.6991', NULL, 'BALSAS', 'MA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (381, true, '2023-06-12 12:25:30.706773', NULL, 'BARUERI', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (382, true, '2023-06-12 12:25:30.714773', NULL, 'BOITUVA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (383, true, '2023-06-12 12:25:30.722238', NULL, 'BOTUCATU', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (384, true, '2023-06-12 12:25:30.73023', NULL, 'BRAGANÇA', 'PA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (385, true, '2023-06-12 12:25:30.737716', NULL, 'CAFELÂNDIA', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (386, true, '2023-06-12 12:25:30.745298', NULL, 'CAIEIRAS', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (387, true, '2023-06-12 12:25:30.752961', NULL, 'CALDAS NOVAS', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (388, true, '2023-06-12 12:25:30.761065', NULL, 'CAMPINA GRANDE DO SUL', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (389, true, '2023-06-12 12:25:30.773863', NULL, 'CARIACICA', 'ES', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (390, true, '2023-06-12 12:25:30.781174', NULL, 'CASTELO', 'ES', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (391, true, '2023-06-12 12:25:30.788583', NULL, 'GUAÇUÍ', 'ES', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (392, true, '2023-06-12 12:25:30.796594', NULL, 'ANDRADINA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (393, true, '2023-06-12 12:25:30.804589', NULL, 'ARARIPINA', 'PE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (394, true, '2023-06-12 12:25:30.812103', NULL, 'LIMOEIRO', 'PE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (395, true, '2023-06-12 12:25:30.820811', NULL, 'BELO JARDIM', 'PE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (396, true, '2023-06-12 12:25:30.828799', NULL, 'CAMPO MAIOR', 'PI', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (397, true, '2023-06-12 12:25:30.836287', NULL, 'ALÉM PARAÍBA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (398, true, '2023-06-12 12:25:30.843776', NULL, 'SERRA TALHADA', 'PE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (399, true, '2023-06-12 12:25:30.851444', NULL, 'CODÓ', 'MA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (400, true, '2023-06-12 12:25:30.859462', NULL, 'GOIANA', 'PE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (401, true, '2023-06-12 12:25:30.867252', NULL, 'TIMBAÚBA', 'PE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (402, true, '2023-06-12 12:25:30.874631', NULL, 'SÃO FIDÉLIS', 'RJ', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (403, true, '2023-06-12 12:25:30.88261', NULL, 'CAPIM GROSSO', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (404, true, '2023-06-12 12:25:30.89082', NULL, 'BRAGANÇA PAULISTA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (405, true, '2023-06-12 12:25:30.89848', NULL, 'SANTA MARIA DA VITÓRIA', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (406, true, '2023-06-12 12:25:30.91044', NULL, 'CHAPECÓ', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (407, true, '2023-06-12 12:25:30.91806', NULL, 'JANAÚBA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (408, true, '2023-06-12 12:25:30.926556', NULL, 'CAMPOS GERAIS', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (409, true, '2023-06-12 12:25:30.93415', NULL, 'SÃO GOTARDO', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (410, true, '2023-06-12 12:25:30.94162', NULL, 'MAIRIPORÃ', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (411, true, '2023-06-12 12:25:30.949158', NULL, 'SALGUEIRO', 'PE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (412, true, '2023-06-12 12:25:30.957069', NULL, 'CABO DE SANTO AGOSTINHO', 'PE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (413, true, '2023-06-12 12:25:30.964377', NULL, 'IGARASSU', 'PE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (414, true, '2023-06-12 12:25:30.972339', NULL, 'BOM JESUS DA LAPA', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (415, true, '2023-06-12 12:25:30.979847', NULL, 'ERECHIM', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (416, true, '2023-06-12 12:25:30.98779', NULL, 'PARAÍSO DO TOCANTINS', 'TO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (417, true, '2023-06-12 12:25:30.995332', NULL, 'SANTA MARIA', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (418, true, '2023-06-12 12:25:31.002833', NULL, 'TUCURUÍ', 'PA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (419, true, '2023-06-12 12:25:31.010276', NULL, 'MARICÁ', 'RJ', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (420, true, '2023-06-12 12:25:31.018295', NULL, 'TRÊS RIOS', 'RJ', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (421, true, '2023-06-12 12:25:31.025844', NULL, 'AUGUSTINÓPOLIS', 'TO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (422, true, '2023-06-12 12:25:31.033264', NULL, 'ITAMARAJU', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (423, true, '2023-06-12 12:25:31.045609', NULL, 'XAXIM', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (424, true, '2023-06-12 12:25:31.053027', NULL, 'EXTREMA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (425, true, '2023-06-12 12:25:31.060397', NULL, 'JUATUBA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (426, true, '2023-06-12 12:25:31.067807', NULL, 'JACIARA', 'MT', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (427, true, '2023-06-12 12:25:31.075929', NULL, 'ÁGUA BOA', 'MT', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (428, true, '2023-06-12 12:25:31.083327', NULL, 'PALMARES', 'PE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (429, true, '2023-06-12 12:25:31.091058', NULL, 'COLINAS DO TOCANTINS', 'TO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (430, true, '2023-06-12 12:25:31.098514', NULL, 'SÃO FRANCISCO', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (431, true, '2023-06-12 12:25:31.106424', NULL, 'CRUZEIRO DO SUL', 'AC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (432, true, '2023-06-12 12:25:31.113948', NULL, 'ITAPEMA', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (433, true, '2023-06-12 12:25:31.121765', NULL, 'URUGUAIANA', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (434, true, '2023-06-12 12:25:31.129388', NULL, 'REDUTO', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (435, true, '2023-06-12 12:25:31.137151', NULL, 'DRACENA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (436, true, '2023-06-12 12:25:31.144514', NULL, 'DUQUE DE CAXIAS', 'RJ', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (437, true, '2023-06-12 12:25:31.151958', NULL, 'MONTE APRAZÍVEL', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (438, true, '2023-06-12 12:25:31.159359', NULL, 'IPU', 'CE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (439, true, '2023-06-12 12:25:31.167636', NULL, 'COSTA RICA', 'MS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (440, true, '2023-06-12 12:25:31.175021', NULL, 'JARU', 'RO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (441, true, '2023-06-12 12:25:31.182386', NULL, 'SÃO MATEUS DO MARANHÃO', 'MA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (442, true, '2023-06-12 12:25:31.189616', NULL, 'TAILÂNDIA', 'PA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (443, true, '2023-06-12 12:25:31.197427', NULL, 'PEDREIRAS', 'MA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (444, true, '2023-06-12 12:25:31.204588', NULL, 'SÃO JOÃO DO PIAUÍ', 'PI', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (445, true, '2023-06-12 12:25:31.217258', NULL, 'PETROLINA', 'PE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (446, true, '2023-06-12 12:25:31.225156', NULL, 'PARACAMBI', 'RJ', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (447, true, '2023-06-12 12:25:31.233048', NULL, 'SANTO ANTÔNIO DE PÁDUA', 'RJ', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (448, true, '2023-06-12 12:25:31.240448', NULL, 'BOM JESUS DO ITABAPOANA', 'RJ', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (449, true, '2023-06-12 12:25:31.24785', NULL, 'BEZERROS', 'PE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (450, true, '2023-06-12 12:25:31.255211', NULL, 'ELESBÃO VELOSO', 'PI', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (451, true, '2023-06-12 12:25:31.263328', NULL, 'PACAJUS', 'CE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (452, true, '2023-06-12 12:25:31.270682', NULL, 'REDENÇÃO', 'PA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (453, true, '2023-06-12 12:25:31.278086', NULL, 'FLORIANO', 'PI', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (454, true, '2023-06-12 12:25:31.285455', NULL, 'MARECHAL CÂNDIDO RONDON', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (455, true, '2023-06-12 12:25:31.293304', NULL, 'PITANGA', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (456, true, '2023-06-12 12:25:31.300612', NULL, 'TIMON', 'MA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (457, true, '2023-06-12 12:25:31.307872', NULL, 'GARÇA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (458, true, '2023-06-12 12:25:31.315424', NULL, 'TATUÍ', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (459, true, '2023-06-12 12:25:31.323658', NULL, 'VIANA', 'ES', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (460, true, '2023-06-12 12:25:31.330932', NULL, 'ALEGRE', 'ES', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (461, true, '2023-06-12 12:25:31.338317', NULL, 'IBITINGA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (462, true, '2023-06-12 12:25:31.345669', NULL, 'ITUVERAVA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (463, true, '2023-06-12 12:25:31.353669', NULL, 'PENÁPOLIS', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (464, true, '2023-06-12 12:25:31.361054', NULL, 'SÃO JOSÉ DO RIO PARDO', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (465, true, '2023-06-12 12:25:31.368757', NULL, 'LUZ', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (466, true, '2023-06-12 12:25:31.376109', NULL, 'FRUTAL', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (467, true, '2023-06-12 12:25:31.388609', NULL, 'GUARANTÃ DO NORTE', 'MT', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (468, true, '2023-06-12 12:25:31.396023', NULL, 'HORTOLÂNDIA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (469, true, '2023-06-12 12:25:31.403569', NULL, 'IBAITI', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (470, true, '2023-06-12 12:25:31.410964', NULL, 'INDIARA', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (471, true, '2023-06-12 12:25:31.418917', NULL, 'OURO PRETO DO OESTE', 'RO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (472, true, '2023-06-12 12:25:31.426581', NULL, 'INHUMAS', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (473, true, '2023-06-12 12:25:31.433995', NULL, 'GARIBALDI', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (474, true, '2023-06-12 12:25:31.442477', NULL, 'IPORÁ', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (475, true, '2023-06-12 12:25:31.450519', NULL, 'ITAITUBA', 'PA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (476, true, '2023-06-12 12:25:31.457983', NULL, 'JANDAIA DO SUL', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (477, true, '2023-06-12 12:25:31.465778', NULL, 'JUSSARA', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (478, true, '2023-06-12 12:25:31.473849', NULL, 'MARTINÓPOLIS', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (479, true, '2023-06-12 12:25:31.481755', NULL, 'MATUPÁ', 'MT', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (480, true, '2023-06-12 12:25:31.488999', NULL, 'MAUÁ', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (481, true, '2023-06-12 12:25:31.49652', NULL, 'NOVA LIMA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (482, true, '2023-06-12 12:25:31.508788', NULL, 'AÇAILÂNDIA', 'MA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (483, true, '2023-06-12 12:25:31.516803', NULL, 'GARANHUNS', 'PE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (484, true, '2023-06-12 12:25:31.524255', NULL, 'CASTANHAL', 'PA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (485, true, '2023-06-12 12:25:31.531593', NULL, 'MIGUEL PEREIRA', 'RJ', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (486, true, '2023-06-12 12:25:31.538939', NULL, 'MIRASSOL', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (487, true, '2023-06-12 12:25:31.550458', NULL, 'NOVA MUTUM', 'MT', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (488, true, '2023-06-12 12:25:31.557945', NULL, 'NOVA SERRANA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (489, true, '2023-06-12 12:25:31.565417', NULL, 'OLÍMPIA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (490, true, '2023-06-12 12:25:31.572762', NULL, 'PALMEIRAS DE GOIÁS', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (491, true, '2023-06-12 12:25:31.58116', NULL, 'PARÁ DE MINAS', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (492, true, '2023-06-12 12:25:31.588596', NULL, 'PENEDO', 'AL', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (493, true, '2023-06-12 12:25:31.596098', NULL, 'PINHAIS', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (494, true, '2023-06-12 12:25:31.603506', NULL, 'PIRACANJUBA', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (495, true, '2023-06-12 12:25:31.611431', NULL, 'PONTA PORÃ', 'MS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (496, true, '2023-06-12 12:25:31.618797', NULL, 'PORTO FELIZ', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (497, true, '2023-06-12 12:25:31.626409', NULL, 'PRESIDENTE EPITÁCIO', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (498, true, '2023-06-12 12:25:31.633794', NULL, 'PRESIDENTE VENCESLAU', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (499, true, '2023-06-12 12:25:31.641647', NULL, 'ROSANA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (500, true, '2023-06-12 12:25:31.648788', NULL, 'QUIXERAMOBIM', 'CE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (501, true, '2023-06-12 12:25:31.660811', NULL, 'RANCHARIA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (502, true, '2023-06-12 12:25:31.668725', NULL, 'RIBEIRÃO PIRES', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (503, true, '2023-06-12 12:25:31.676243', NULL, 'ROLIM DE MOURA', 'RO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (504, true, '2023-06-12 12:25:31.683648', NULL, 'ROSEIRA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (505, true, '2023-06-12 12:25:31.690998', NULL, 'SABARÁ', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (506, true, '2023-06-12 12:25:31.699113', NULL, 'ITABERABA', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (507, true, '2023-06-12 12:25:31.706434', NULL, 'SANTA INÊS', 'MA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (508, true, '2023-06-12 12:25:31.713846', NULL, 'SANTA LUZIA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (509, true, '2023-06-12 12:25:31.72128', NULL, 'SANTANA DE PARNAÍBA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (510, true, '2023-06-12 12:25:31.729795', NULL, 'SANTO ANTÔNIO DA PLATINA', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (511, true, '2023-06-12 12:25:31.737167', NULL, 'SÃO LOURENÇO', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (512, true, '2023-06-12 12:25:31.744503', NULL, 'SÃO MARCOS', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (513, true, '2023-06-12 12:25:31.751915', NULL, 'SÃO VICENTE', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (514, true, '2023-06-12 12:25:31.759771', NULL, 'SÃO JOAQUIM DA BARRA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (515, true, '2023-06-12 12:25:31.767126', NULL, 'FLORESTA', 'PE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (516, true, '2023-06-12 12:25:31.774464', NULL, 'TAPEJARA', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (517, true, '2023-06-12 12:25:31.78195', NULL, 'TAQUARITINGA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (518, true, '2023-06-12 12:25:31.78976', NULL, 'CAPÃO BONITO', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (519, true, '2023-06-12 12:25:31.797188', NULL, 'CARAPICUÍBA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (520, true, '2023-06-12 12:25:31.804634', NULL, 'COTIA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (521, true, '2023-06-12 12:25:31.816842', NULL, 'CRUZEIRO DO OESTE', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (522, true, '2023-06-12 12:25:31.824766', NULL, 'DIADEMA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (523, true, '2023-06-12 12:25:31.832577', NULL, 'FERRAZ DE VASCONCELOS', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (524, true, '2023-06-12 12:25:31.83991', NULL, 'FRANCO DA ROCHA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (525, true, '2023-06-12 12:25:31.847349', NULL, 'HORIZONTE', 'CE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (526, true, '2023-06-12 12:25:31.855629', NULL, 'ITAQUAQUECETUBA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (527, true, '2023-06-12 12:25:31.86305', NULL, 'ITATIBA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (528, true, '2023-06-12 12:25:31.870476', NULL, 'MOCOCA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (529, true, '2023-06-12 12:25:31.87804', NULL, 'POMPÉIA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (530, true, '2023-06-12 12:25:31.885883', NULL, 'SÃO SEBASTIÃO', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (531, true, '2023-06-12 12:25:31.893065', NULL, 'BARRA BONITA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (532, true, '2023-06-12 12:25:31.900444', NULL, 'IVAIPORÃ', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (533, true, '2023-06-12 12:25:31.907836', NULL, 'JUAZEIRO', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (534, true, '2023-06-12 12:25:31.915698', NULL, 'CAUCAIA', 'CE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (535, true, '2023-06-12 12:25:31.923076', NULL, 'ITAPIPOCA', 'CE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (536, true, '2023-06-12 12:25:31.930595', NULL, 'NOSSA SENHORA DO SOCORRO', 'SE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (537, true, '2023-06-12 12:25:31.937963', NULL, 'PARNAMIRIM', 'RN', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (538, true, '2023-06-12 12:25:31.945955', NULL, 'SENADOR CANEDO', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (539, true, '2023-06-12 12:25:31.953393', NULL, 'FORMOSA', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (540, true, '2023-06-12 12:25:31.960823', NULL, 'FRANCISCO MORATO', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (541, true, '2023-06-12 12:25:31.968326', NULL, 'NOVO HAMBURGO', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (542, true, '2023-06-12 12:25:31.976721', NULL, 'CANOAS', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (543, true, '2023-06-12 12:25:31.984308', NULL, 'ESTRELA', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (544, true, '2023-06-12 12:25:31.991591', NULL, 'PALHOÇA', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (545, true, '2023-06-12 12:25:32.003531', NULL, 'LUPÉRCIO', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (546, true, '2023-06-12 12:25:32.01131', NULL, 'SÃO BENTO DO SUL', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (547, true, '2023-06-12 12:25:32.018739', NULL, 'TEODORO SAMPAIO', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (548, true, '2023-06-12 12:25:32.026037', NULL, 'TIETÊ', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (549, true, '2023-06-12 12:25:32.033247', NULL, 'SANTA TEREZINHA DE GOIÁS', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (550, true, '2023-06-12 12:25:32.041196', NULL, 'PONTE NOVA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (551, true, '2023-06-12 12:25:32.048876', NULL, 'CHAPADINHA', 'MA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (552, true, '2023-06-12 12:25:32.056125', NULL, 'SUMÉ', 'PB', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (553, true, '2023-06-12 12:25:32.063582', NULL, 'VIAMÃO', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (554, true, '2023-06-12 12:25:32.071482', NULL, 'BARRA DO CORDA', 'MA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (555, true, '2023-06-12 12:25:32.079219', NULL, 'PIRATININGA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (556, true, '2023-06-12 12:25:32.086752', NULL, 'AÇU', 'RN', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (557, true, '2023-06-12 12:25:32.094343', NULL, 'CARANGOLA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (558, true, '2023-06-12 12:25:32.102424', NULL, 'JOÃO MONLEVADE', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (559, true, '2023-06-12 12:25:32.109846', NULL, 'GUARATUBA', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (560, true, '2023-06-12 12:25:32.117253', NULL, 'BATURITÉ', 'CE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (561, true, '2023-06-12 12:25:32.124785', NULL, 'SANTA CRUZ DO SUL', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (562, true, '2023-06-12 12:25:32.132604', NULL, 'CAPITÃO LEÔNIDAS MARQUES', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (563, true, '2023-06-12 12:25:32.139921', NULL, 'GOIOERÊ', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (564, true, '2023-06-12 12:25:32.147774', NULL, 'UBIRATÃ', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (565, true, '2023-06-12 12:25:32.155401', NULL, 'RIBEIRA DO POMBAL', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (566, true, '2023-06-12 12:25:32.163246', NULL, 'LAGARTO', 'SE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (567, true, '2023-06-12 12:25:32.170615', NULL, 'CORONEL JOÃO SÁ', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (568, true, '2023-06-12 12:25:32.177895', NULL, 'SÃO MIGUEL', 'RN', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (569, true, '2023-06-12 12:25:32.190102', NULL, 'CORRENTE', 'PI', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (570, true, '2023-06-12 12:25:32.198615', NULL, 'CURRAIS NOVOS', 'RN', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (571, true, '2023-06-12 12:25:32.206238', NULL, 'MONTE SANTO', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (572, true, '2023-06-12 12:25:32.213677', NULL, 'MILHÃ', 'CE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (573, true, '2023-06-12 12:25:32.221316', NULL, 'TRINDADE', 'PE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (574, true, '2023-06-12 12:25:32.229749', NULL, 'AFOGADOS DA INGAZEIRA', 'PE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (575, true, '2023-06-12 12:25:32.237082', NULL, 'CABROBÓ', 'PE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (576, true, '2023-06-12 12:25:32.244432', NULL, 'PIRES DO RIO', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (577, true, '2023-06-12 12:25:32.251942', NULL, 'JUARA', 'MT', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (578, true, '2023-06-12 12:25:32.259887', NULL, 'VIRGINÓPOLIS', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (579, true, '2023-06-12 12:25:32.267298', NULL, 'SURUBIM', 'PE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (580, true, '2023-06-12 12:25:32.274609', NULL, 'ITAGUAÍ', 'RJ', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (581, true, '2023-06-12 12:25:32.282139', NULL, 'FAZENDA RIO GRANDE', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (582, true, '2023-06-12 12:25:32.290031', NULL, 'COLOMBO', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (583, true, '2023-06-12 12:25:32.297657', NULL, 'MEDIANEIRA', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (584, true, '2023-06-12 12:25:32.305004', NULL, 'OLIVEIRA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (585, true, '2023-06-12 12:25:32.312409', NULL, 'EMBU', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (586, true, '2023-06-12 12:25:32.320426', NULL, 'GUAIÚBA', 'CE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (587, true, '2023-06-12 12:25:32.327953', NULL, 'EUNÁPOLIS', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (588, true, '2023-06-12 12:25:32.339948', NULL, 'CANINDÉ', 'CE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (589, true, '2023-06-12 12:25:32.348183', NULL, 'PIMENTA BUENO', 'RO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (590, true, '2023-06-12 12:25:32.355689', NULL, 'CÁCERES', 'MT', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (591, true, '2023-06-12 12:25:32.363595', NULL, 'IPIRÁ', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (592, true, '2023-06-12 12:25:32.371592', NULL, 'CERES', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (593, true, '2023-06-12 12:25:32.380495', NULL, 'GOIANÉSIA', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (594, true, '2023-06-12 12:25:32.388083', NULL, 'JARAGUÁ', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (595, true, '2023-06-12 12:25:32.395611', NULL, 'RUBIATABA', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (596, true, '2023-06-12 12:25:32.402935', NULL, 'COROATÁ', 'MA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (597, true, '2023-06-12 12:25:32.410822', NULL, 'PAU DOS FERROS', 'RN', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (598, true, '2023-06-12 12:25:32.418119', NULL, 'ITAÚNA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (599, true, '2023-06-12 12:25:32.425467', NULL, 'PARAMBU', 'CE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (600, true, '2023-06-12 12:25:32.432904', NULL, 'BANDEIRANTES', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (601, true, '2023-06-12 12:25:32.440716', NULL, 'PIUM', 'TO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (602, true, '2023-06-12 12:25:32.448451', NULL, 'JAGUARIAÍVA', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (603, true, '2023-06-12 12:25:32.455839', NULL, 'ÁGUAS LINDAS DE GOIÁS', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (604, true, '2023-06-12 12:25:32.463281', NULL, 'CERQUILHO', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (605, true, '2023-06-12 12:25:32.472652', NULL, 'CIDADE OCIDENTAL', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (606, true, '2023-06-12 12:25:32.480268', NULL, 'JANUÁRIA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (607, true, '2023-06-12 12:25:32.487611', NULL, 'PEDERNEIRAS', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (608, true, '2023-06-12 12:25:32.495578', NULL, 'CAMOCIM', 'CE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (609, true, '2023-06-12 12:25:32.503552', NULL, 'SOUSA', 'PB', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (610, true, '2023-06-12 12:25:32.515572', NULL, 'GUARAÍ', 'TO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (611, true, '2023-06-12 12:25:32.522965', NULL, 'ARAPONGAS', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (612, true, '2023-06-12 12:25:32.53066', NULL, 'HORIZONTINA', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (613, true, '2023-06-12 12:25:32.538407', NULL, 'PIRAJU', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (614, true, '2023-06-12 12:25:32.545837', NULL, 'PORANGATU', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (615, true, '2023-06-12 12:25:32.553245', NULL, 'LOANDA', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (616, true, '2023-06-12 12:25:32.560619', NULL, 'MANTENA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (617, true, '2023-06-12 12:25:32.568488', NULL, 'IPAUSSU', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (618, true, '2023-06-12 12:25:32.575856', NULL, 'ITANHAÉM', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (619, true, '2023-06-12 12:25:32.583383', NULL, 'ITAPURANGA', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (620, true, '2023-06-12 12:25:32.590859', NULL, 'SANTA QUITÉRIA', 'CE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (621, true, '2023-06-12 12:25:32.598665', NULL, 'QUIRINÓPOLIS', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (622, true, '2023-06-12 12:25:32.60612', NULL, 'ARUJÁ', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (623, true, '2023-06-12 12:25:32.613611', NULL, 'SÃO GONÇALO', 'RJ', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (624, true, '2023-06-12 12:25:32.621386', NULL, 'TIMBÓ', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (625, true, '2023-06-12 12:25:32.629749', NULL, 'PADRE BERNARDO', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (626, true, '2023-06-12 12:25:32.637248', NULL, 'NOVO GAMA', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (627, true, '2023-06-12 12:25:32.644626', NULL, 'CARPINA', 'PE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (628, true, '2023-06-12 12:25:32.651987', NULL, 'SANTANA', 'AP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (629, true, '2023-06-12 12:25:32.659673', NULL, 'ITUIUTABA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (630, true, '2023-06-12 12:25:32.667025', NULL, 'PARNARAMA', 'MA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (631, true, '2023-06-12 12:25:32.674328', NULL, 'SÃO MANUEL', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (632, true, '2023-06-12 12:25:32.681825', NULL, 'TUCUMÃ', 'PA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (633, true, '2023-06-12 12:25:32.689512', NULL, 'XINGUARA', 'PA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (634, true, '2023-06-12 12:25:32.696818', NULL, 'CROATÁ', 'CE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (635, true, '2023-06-12 12:25:32.704392', NULL, 'COARI', 'AM', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (636, true, '2023-06-12 12:25:32.715523', NULL, 'DIAS D''ÁVILA', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (637, true, '2023-06-12 12:25:32.723332', NULL, 'ITACOATIARA', 'AM', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (638, true, '2023-06-12 12:25:32.730983', NULL, 'PARINTINS', 'AM', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (639, true, '2023-06-12 12:25:32.738438', NULL, 'TEFÉ', 'AM', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (640, true, '2023-06-12 12:25:32.745702', NULL, 'BREVES', 'PA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (641, true, '2023-06-12 12:25:32.75384', NULL, 'IGARAPÉ-MIRI', 'PA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (642, true, '2023-06-12 12:25:32.761218', NULL, 'MOJI MIRIM', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (643, true, '2023-06-12 12:25:32.768515', NULL, 'PICOS', 'PI', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (644, true, '2023-06-12 12:25:32.776177', NULL, 'CANELA', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (645, true, '2023-06-12 12:25:32.784426', NULL, 'PALOTINA', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (646, true, '2023-06-12 12:25:32.791764', NULL, 'NOVA VENÉCIA', 'ES', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (647, true, '2023-06-12 12:25:32.799022', NULL, 'CLEVELÂNDIA', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (648, true, '2023-06-12 12:25:32.806288', NULL, 'NOVA ODESSA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (649, true, '2023-06-12 12:25:32.814278', NULL, 'ITINGA DO MARANHÃO', 'MA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (650, true, '2023-06-12 12:25:32.821654', NULL, 'IPOJUCA', 'PE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (651, true, '2023-06-12 12:25:32.828969', NULL, 'LENÇÓIS PAULISTA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (652, true, '2023-06-12 12:25:32.836537', NULL, 'CAPANEMA', 'PA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (653, true, '2023-06-12 12:25:32.844504', NULL, 'ROLÂNDIA', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (654, true, '2023-06-12 12:25:32.851716', NULL, 'PEDRO LEOPOLDO', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (655, true, '2023-06-12 12:25:32.859046', NULL, 'PERUÍBE', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (656, true, '2023-06-12 12:25:32.86637', NULL, 'PINHALZINHO', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (657, true, '2023-06-12 12:25:32.874623', NULL, 'CANINDÉ DE SÃO FRANCISCO', 'SE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (658, true, '2023-06-12 12:25:32.882007', NULL, 'TRÊS LAGOAS', 'MS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (659, true, '2023-06-12 12:25:32.893994', NULL, 'BACABAL', 'MA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (660, true, '2023-06-12 12:25:32.901329', NULL, 'BRUMADO', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (661, true, '2023-06-12 12:25:32.909226', NULL, 'PARANAGUÁ', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (662, true, '2023-06-12 12:25:32.916481', NULL, 'PORTO BELO', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (663, true, '2023-06-12 12:25:32.92389', NULL, 'PORTO NACIONAL', 'TO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (664, true, '2023-06-12 12:25:32.93126', NULL, 'AIMORÉS', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (665, true, '2023-06-12 12:25:32.939116', NULL, 'BAEPENDI', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (666, true, '2023-06-12 12:25:32.946604', NULL, 'BARÃO DE COCAIS', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (667, true, '2023-06-12 12:25:32.953991', NULL, 'ITANHANDU', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (668, true, '2023-06-12 12:25:32.961325', NULL, 'LAMBARI', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (669, true, '2023-06-12 12:25:32.969075', NULL, 'LEOPOLDINA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (670, true, '2023-06-12 12:25:32.976566', NULL, 'SÃO JOÃO NEPOMUCENO', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (671, true, '2023-06-12 12:25:32.98395', NULL, 'VISCONDE DO RIO BRANCO', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (672, true, '2023-06-12 12:25:32.99123', NULL, 'PRESIDENTE DUTRA', 'MA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (673, true, '2023-06-12 12:25:32.999099', NULL, 'CRATEÚS', 'CE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (674, true, '2023-06-12 12:25:33.006341', NULL, 'ALFENAS', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (675, true, '2023-06-12 12:25:33.013703', NULL, 'JUNQUEIRÓPOLIS', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (676, true, '2023-06-12 12:25:33.02133', NULL, 'OSVALDO CRUZ', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (677, true, '2023-06-12 12:25:33.029393', NULL, 'REALEZA', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (678, true, '2023-06-12 12:25:33.036779', NULL, 'TUPI PAULISTA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (679, true, '2023-06-12 12:25:33.044057', NULL, 'CANDEIAS', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (680, true, '2023-06-12 12:25:33.051493', NULL, 'BERTÓPOLIS', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (681, true, '2023-06-12 12:25:33.059325', NULL, 'RIACHÃO DO JACUÍPE', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (682, true, '2023-06-12 12:25:33.071541', NULL, 'UMBAÚBA', 'SE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (683, true, '2023-06-12 12:25:33.079004', NULL, 'ALTO SANTO', 'CE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (684, true, '2023-06-12 12:25:33.087077', NULL, 'PALMITOS', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (685, true, '2023-06-12 12:25:33.09453', NULL, 'PEDRO AFONSO', 'TO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (686, true, '2023-06-12 12:25:33.10182', NULL, 'CORUMBÁ', 'MS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (687, true, '2023-06-12 12:25:33.109177', NULL, 'SANTA CRUZ DO CAPIBARIBE', 'PE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (688, true, '2023-06-12 12:25:33.116877', NULL, 'PINHEIRO', 'MA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (689, true, '2023-06-12 12:25:33.12467', NULL, 'NOVO HORIZONTE', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (690, true, '2023-06-12 12:25:33.131983', NULL, 'NAZARÉ DA MATA', 'PE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (691, true, '2023-06-12 12:25:33.139488', NULL, 'IPIAÚ', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (692, true, '2023-06-12 12:25:33.147284', NULL, 'CAÇAPAVA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (693, true, '2023-06-12 12:25:33.15459', NULL, 'QUEIMADAS', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (694, true, '2023-06-12 12:25:33.161913', NULL, 'SANTOS DUMONT', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (695, true, '2023-06-12 12:25:33.169355', NULL, 'TERRA BOA', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (696, true, '2023-06-12 12:25:33.177125', NULL, 'PÃO DE AÇÚCAR', 'AL', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (697, true, '2023-06-12 12:25:33.184471', NULL, 'IRATI', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (698, true, '2023-06-12 12:25:33.192451', NULL, 'ARARANGUÁ', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (699, true, '2023-06-12 12:25:33.21466', NULL, 'CAÇADOR', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (700, true, '2023-06-12 12:25:33.226468', NULL, 'SÃO MIGUEL DO OESTE', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (701, true, '2023-06-12 12:25:33.23374', NULL, 'TUBARÃO', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (702, true, '2023-06-12 12:25:33.241083', NULL, 'URUAÇU', 'GO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (703, true, '2023-06-12 12:25:33.248437', NULL, 'SÃO LEOPOLDO', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (704, true, '2023-06-12 12:25:33.256292', NULL, 'SÃO PEDRO DO PIAUÍ', 'PI', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (705, true, '2023-06-12 12:25:33.263861', NULL, 'EUCLIDES DA CUNHA', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (706, true, '2023-06-12 12:25:33.271253', NULL, 'IRARÁ', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (707, true, '2023-06-12 12:25:33.279141', NULL, 'LAGO DA PEDRA', 'MA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (708, true, '2023-06-12 12:25:33.287209', NULL, 'URUÇUÍ', 'PI', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (709, true, '2023-06-12 12:25:33.294588', NULL, 'ARAPOTI', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (710, true, '2023-06-12 12:25:33.306889', NULL, 'IBICARAÍ', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (711, true, '2023-06-12 12:25:33.314326', NULL, 'NAVEGANTES', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (712, true, '2023-06-12 12:25:33.322261', NULL, 'OURO FINO', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (713, true, '2023-06-12 12:25:33.330065', NULL, 'CASSILÂNDIA', 'MS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (714, true, '2023-06-12 12:25:33.337458', NULL, 'DIAMANTINO', 'MT', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (715, true, '2023-06-12 12:25:33.344624', NULL, 'NAVIRAÍ', 'MS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (716, true, '2023-06-12 12:25:33.352655', NULL, 'PARANAÍBA', 'MS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (717, true, '2023-06-12 12:25:33.359957', NULL, 'TAGUAÍ', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (718, true, '2023-06-12 12:25:33.367662', NULL, 'TAQUARA', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (719, true, '2023-06-12 12:25:33.37494', NULL, 'SANTA ROSA', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (720, true, '2023-06-12 12:25:33.383057', NULL, 'PEREIRA BARRETO', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (721, true, '2023-06-12 12:25:33.390464', NULL, 'ITARARÉ', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (722, true, '2023-06-12 12:25:33.397919', NULL, 'ÁGUA BRANCA', 'PI', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (723, true, '2023-06-12 12:25:33.405462', NULL, 'SÃO BENTO', 'PB', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (724, true, '2023-06-12 12:25:33.413374', NULL, 'IÚNA', 'ES', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (725, true, '2023-06-12 12:25:33.420739', NULL, 'ITAPORANGA', 'PB', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (726, true, '2023-06-12 12:25:33.428609', NULL, 'LIMOEIRO DO NORTE', 'CE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (727, true, '2023-06-12 12:25:33.441426', NULL, 'IGREJINHA', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (728, true, '2023-06-12 12:25:33.449358', NULL, 'ALTO BOA VISTA', 'MT', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (729, true, '2023-06-12 12:25:33.456692', NULL, 'TRÊS DE MAIO', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (730, true, '2023-06-12 12:25:33.464083', NULL, 'TRÊS PONTAS', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (731, true, '2023-06-12 12:25:33.47144', NULL, 'CAMBUQUIRA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (732, true, '2023-06-12 12:25:33.479225', NULL, 'CIANORTE', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (733, true, '2023-06-12 12:25:33.489764', NULL, 'ARARUAMA', 'RJ', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (734, true, '2023-06-12 12:25:33.49721', NULL, 'SÃO GONÇALO DO AMARANTE', 'CE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (735, true, '2023-06-12 12:25:33.504673', NULL, 'PARAÍSO DO NORTE', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (736, true, '2023-06-12 12:25:33.512698', NULL, 'SÃO JOSÉ DOS QUATRO MARCOS', 'MT', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (737, true, '2023-06-12 12:25:33.520304', NULL, 'OURILÂNDIA DO NORTE', 'PA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (738, true, '2023-06-12 12:25:33.527799', NULL, 'SÃO GABRIEL DA PALHA', 'ES', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (739, true, '2023-06-12 12:25:33.535576', NULL, 'CAMPO VERDE', 'MT', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (740, true, '2023-06-12 12:25:33.543657', NULL, 'MUNDO NOVO', 'MS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (741, true, '2023-06-12 12:25:33.551237', NULL, 'CASCAVEL', 'CE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (742, true, '2023-06-12 12:25:33.559184', NULL, 'TOBIAS BARRETO', 'SE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (743, true, '2023-06-12 12:25:33.567097', NULL, 'SÃO MIGUEL DO IGUAÇU', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (744, true, '2023-06-12 12:25:33.579585', NULL, 'SÃO LOURENÇO DA MATA', 'PE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (745, true, '2023-06-12 12:25:33.587269', NULL, 'BARCARENA', 'PA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (746, true, '2023-06-12 12:25:33.594689', NULL, 'SERRINHA', 'BA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (747, true, '2023-06-12 12:25:33.602188', NULL, 'NOVA PORTEIRINHA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (748, true, '2023-06-12 12:25:33.610226', NULL, 'SÃO JOSÉ DO EGITO', 'PE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (749, true, '2023-06-12 12:25:33.617608', NULL, 'ANCHIETA', 'ES', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (750, true, '2023-06-12 12:25:33.625187', NULL, 'VENDA NOVA DO IMIGRANTE', 'ES', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (751, true, '2023-06-12 12:25:33.632521', NULL, 'MATO VERDE', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (752, true, '2023-06-12 12:25:33.640642', NULL, 'SOCORRO', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (753, true, '2023-06-12 12:25:33.64802', NULL, 'SANTA RITA DO SAPUCAÍ', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (754, true, '2023-06-12 12:25:33.655477', NULL, 'PIRASSUNUNGA', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (755, true, '2023-06-12 12:25:33.668167', NULL, 'PORTEIRINHA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (756, true, '2023-06-12 12:25:33.676091', NULL, 'CAARAPÓ', 'MS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (757, true, '2023-06-12 12:25:33.683616', NULL, 'CAPANEMA', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (758, true, '2023-06-12 12:25:33.691555', NULL, 'IPORÃ', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (759, true, '2023-06-12 12:25:33.698882', NULL, 'SERINGUEIRAS', 'RO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (760, true, '2023-06-12 12:25:33.70688', NULL, 'MANDAGUARI', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (761, true, '2023-06-12 12:25:33.714589', NULL, 'SABINÓPOLIS', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (762, true, '2023-06-12 12:25:33.722003', NULL, 'PAÇO DO LUMIAR', 'MA', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (763, true, '2023-06-12 12:25:33.729559', NULL, 'CANTO DO BURITI', 'PI', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (764, true, '2023-06-12 12:25:33.737619', NULL, 'IVOTI', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (765, true, '2023-06-12 12:25:33.745108', NULL, 'SANTANA DO IPANEMA', 'AL', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (766, true, '2023-06-12 12:25:33.752494', NULL, 'RIBEIRÃO BONITO', 'SP', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (767, true, '2023-06-12 12:25:33.759856', NULL, 'BARRACÃO', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (768, true, '2023-06-12 12:25:33.767786', NULL, 'REDENÇÃO', 'CE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (769, true, '2023-06-12 12:25:33.77512', NULL, 'CRUZ ALTA', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (770, true, '2023-06-12 12:25:33.782552', NULL, 'GURUPI', 'TO', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (771, true, '2023-06-12 12:25:33.795573', NULL, 'VASSOURAS', 'RJ', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (772, true, '2023-06-12 12:25:33.80303', NULL, 'MAFRA', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (773, true, '2023-06-12 12:25:33.810389', NULL, 'JOAÇABA', 'SC', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (774, true, '2023-06-12 12:25:33.817791', NULL, 'LAJEADO', 'RS', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (775, true, '2023-06-12 12:25:33.825704', NULL, 'JACAREZINHO', 'PR', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (776, true, '2023-06-12 12:25:33.832962', NULL, 'OURO PRETO', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (777, true, '2023-06-12 12:25:33.840602', NULL, 'SÃO CRISTÓVÃO', 'SE', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (778, true, '2023-06-12 12:25:33.848823', NULL, 'DIAMANTINA', 'MG', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (779, true, '2023-06-12 12:25:33.856677', NULL, 'SEROPÉDICA', 'RJ', 'BRASIL', 1, NULL);
INSERT INTO public.endereco VALUES (780, true, '2023-06-12 12:25:33.864552', NULL, 'NOVA IGUAÇU', 'RJ', 'BRASIL', 1, NULL);


--
-- TOC entry 3682 (class 0 OID 16476)
-- Dependencies: 241
-- Data for Name: faixa_salarial; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.faixa_salarial VALUES (1, true, '2023-06-12 12:25:59.209878', NULL, '1 salário mínimo', 1, NULL);
INSERT INTO public.faixa_salarial VALUES (2, true, '2023-06-12 12:25:59.217769', NULL, 'de 2 a 4 salários mínimos', 1, NULL);
INSERT INTO public.faixa_salarial VALUES (3, true, '2023-06-12 12:25:59.225008', NULL, '5 a 10 salários mínimos', 1, NULL);
INSERT INTO public.faixa_salarial VALUES (4, true, '2023-06-12 12:25:59.232294', NULL, '11 ou mais salários mínimos', 1, NULL);


--
-- TOC entry 3684 (class 0 OID 16482)
-- Dependencies: 243
-- Data for Name: genero; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.genero VALUES (1, true, '2023-06-12 12:25:59.23985', NULL, 'Masculino', 1, NULL);
INSERT INTO public.genero VALUES (2, true, '2023-06-12 12:25:59.247582', NULL, 'Feminino', 1, NULL);
INSERT INTO public.genero VALUES (3, true, '2023-06-12 12:25:59.254847', NULL, 'Não-binário', 1, NULL);
INSERT INTO public.genero VALUES (4, true, '2023-06-12 12:25:59.262001', NULL, 'Transsexual', 1, NULL);
INSERT INTO public.genero VALUES (5, true, '2023-06-12 12:25:59.287663', NULL, 'Não quero declarar', 1, NULL);
INSERT INTO public.genero VALUES (6, true, '2023-06-12 12:25:59.29491', NULL, 'Outros', 1, NULL);


--
-- TOC entry 3686 (class 0 OID 16488)
-- Dependencies: 245
-- Data for Name: grupo; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.grupo VALUES (1, true, '2023-06-12 12:25:27.378274', NULL, 'ADMIN', 1, NULL);
INSERT INTO public.grupo VALUES (2, true, '2023-06-12 12:25:27.386186', NULL, 'SECRETARIO', 1, NULL);
INSERT INTO public.grupo VALUES (3, true, '2023-06-12 12:25:27.394339', NULL, 'EGRESSO', 1, NULL);


--
-- TOC entry 3688 (class 0 OID 16494)
-- Dependencies: 247
-- Data for Name: palestra; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3690 (class 0 OID 16500)
-- Dependencies: 249
-- Data for Name: setor_atuacao; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.setor_atuacao VALUES (1, true, '2023-06-12 12:25:27.477583', NULL, 'Empresarial', 1, NULL);
INSERT INTO public.setor_atuacao VALUES (2, true, '2023-06-12 12:25:27.485348', NULL, 'Público', 1, NULL);
INSERT INTO public.setor_atuacao VALUES (3, true, '2023-06-12 12:25:27.492867', NULL, 'Terceiro setor', 1, NULL);
INSERT INTO public.setor_atuacao VALUES (4, true, '2023-06-12 12:25:27.501408', NULL, 'Magistério/Docência', 1, NULL);
INSERT INTO public.setor_atuacao VALUES (5, true, '2023-06-12 12:25:27.51307', NULL, 'Outros', 1, NULL);


--
-- TOC entry 3692 (class 0 OID 16506)
-- Dependencies: 251
-- Data for Name: tipo_bolsa; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tipo_bolsa VALUES (1, true, '2023-06-12 12:25:59.30216', NULL, 'PIBIC', 1, NULL);
INSERT INTO public.tipo_bolsa VALUES (2, true, '2023-06-12 12:25:59.309687', NULL, 'PROAD', 1, NULL);
INSERT INTO public.tipo_bolsa VALUES (3, true, '2023-06-12 12:25:59.322088', NULL, 'PROEX', 1, NULL);
INSERT INTO public.tipo_bolsa VALUES (4, true, '2023-06-12 12:25:59.329407', NULL, 'PROBAC', 1, NULL);
INSERT INTO public.tipo_bolsa VALUES (5, true, '2023-06-12 12:25:59.337063', NULL, 'PERMANENCIA', 1, NULL);
INSERT INTO public.tipo_bolsa VALUES (6, true, '2023-06-12 12:25:59.344277', NULL, 'CAPES/CNPQ', 1, NULL);
INSERT INTO public.tipo_bolsa VALUES (7, true, '2023-06-12 12:25:59.351984', NULL, 'OUTROS', 1, NULL);


--
-- TOC entry 3694 (class 0 OID 16512)
-- Dependencies: 253
-- Data for Name: titulacao; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.titulacao VALUES (1, true, '2023-06-12 12:25:59.359183', NULL, 'GRADUAÇÃO', 1, NULL);
INSERT INTO public.titulacao VALUES (2, true, '2023-06-12 12:25:59.366851', NULL, 'PÓS-GRADUAÇÃO', 1, NULL);


--
-- TOC entry 3696 (class 0 OID 16518)
-- Dependencies: 255
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.usuario VALUES (1, true, '2023-06-12 12:25:27.346931', NULL, 'admin@admin.com', 'ADMIN ADMIN', '{bcrypt}$2a$10$vh9/MkL4XQyd.fqkQdnWSelTUxPBpDb6qL5W2uWLxLUN0JR9vwRZm', 'ADMIN', NULL, NULL);
INSERT INTO public.usuario VALUES (2, true, '2023-06-12 12:25:27.356572', NULL, 'secretario@secretario.com', 'SECRETARIO SECRETARIO', '{bcrypt}$2a$10$biZwxymZqQDevuqWzB/wCe0jfC6Idr.SJRYO9oXBFPuusp9oA9hAy', 'SECRETARIO', NULL, NULL);
INSERT INTO public.usuario VALUES (3, true, '2023-06-12 12:25:27.370191', NULL, 'egresso@egresso.com', 'EGRESSO EGRESSO', '{bcrypt}$2a$10$Tas4Xjqxogotz3bSL08nHOZRUNF9WJZuPthj2qn3maJMjwI2/uHtO', 'EGRESSO', NULL, NULL);


--
-- TOC entry 3697 (class 0 OID 16523)
-- Dependencies: 256
-- Data for Name: usuario_grupo; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.usuario_grupo VALUES (1, 1);
INSERT INTO public.usuario_grupo VALUES (2, 2);
INSERT INTO public.usuario_grupo VALUES (3, 3);


--
-- TOC entry 3725 (class 0 OID 0)
-- Dependencies: 215
-- Name: anuncio_id_anuncio_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.anuncio_id_anuncio_seq', 1, false);


--
-- TOC entry 3726 (class 0 OID 0)
-- Dependencies: 217
-- Name: area_atuacao_id_area_atuacao_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.area_atuacao_id_area_atuacao_seq', 6, true);


--
-- TOC entry 3727 (class 0 OID 0)
-- Dependencies: 219
-- Name: area_emprego_id_area_emprego_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.area_emprego_id_area_emprego_seq', 28, true);


--
-- TOC entry 3728 (class 0 OID 0)
-- Dependencies: 221
-- Name: comentario_id_comentario_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.comentario_id_comentario_seq', 1, false);


--
-- TOC entry 3729 (class 0 OID 0)
-- Dependencies: 223
-- Name: contribuicao_id_contribuicao_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.contribuicao_id_contribuicao_seq', 1, false);


--
-- TOC entry 3730 (class 0 OID 0)
-- Dependencies: 225
-- Name: cota_id_cota_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.cota_id_cota_seq', 5, true);


--
-- TOC entry 3731 (class 0 OID 0)
-- Dependencies: 227
-- Name: curso_id_curso_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.curso_id_curso_seq', 1, true);


--
-- TOC entry 3732 (class 0 OID 0)
-- Dependencies: 229
-- Name: depoimento_id_depoimento_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.depoimento_id_depoimento_seq', 1, false);


--
-- TOC entry 3733 (class 0 OID 0)
-- Dependencies: 233
-- Name: egresso_id_egresso_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.egresso_id_egresso_seq', 1, false);


--
-- TOC entry 3734 (class 0 OID 0)
-- Dependencies: 236
-- Name: egresso_valido_id_egresso_valido_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.egresso_valido_id_egresso_valido_seq', 1120, true);


--
-- TOC entry 3735 (class 0 OID 0)
-- Dependencies: 238
-- Name: empresa_id_empresa_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.empresa_id_empresa_seq', 3054, true);


--
-- TOC entry 3736 (class 0 OID 0)
-- Dependencies: 240
-- Name: endereco_id_endereco_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.endereco_id_endereco_seq', 780, true);


--
-- TOC entry 3737 (class 0 OID 0)
-- Dependencies: 242
-- Name: faixa_salarial_id_faixa_salarial_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.faixa_salarial_id_faixa_salarial_seq', 4, true);


--
-- TOC entry 3738 (class 0 OID 0)
-- Dependencies: 244
-- Name: genero_id_genero_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.genero_id_genero_seq', 6, true);


--
-- TOC entry 3739 (class 0 OID 0)
-- Dependencies: 246
-- Name: grupo_id_grupo_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.grupo_id_grupo_seq', 3, true);


--
-- TOC entry 3740 (class 0 OID 0)
-- Dependencies: 248
-- Name: palestra_id_palestra_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.palestra_id_palestra_seq', 1, false);


--
-- TOC entry 3741 (class 0 OID 0)
-- Dependencies: 250
-- Name: setor_atuacao_id_setor_atuacao_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.setor_atuacao_id_setor_atuacao_seq', 5, true);


--
-- TOC entry 3742 (class 0 OID 0)
-- Dependencies: 252
-- Name: tipo_bolsa_id_tipo_bolsa_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tipo_bolsa_id_tipo_bolsa_seq', 7, true);


--
-- TOC entry 3743 (class 0 OID 0)
-- Dependencies: 254
-- Name: titulacao_id_titulacao_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.titulacao_id_titulacao_seq', 2, true);


--
-- TOC entry 3744 (class 0 OID 0)
-- Dependencies: 257
-- Name: usuario_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 3, true);


--
-- TOC entry 3352 (class 2606 OID 16548)
-- Name: anuncio anuncio_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.anuncio
    ADD CONSTRAINT anuncio_pkey PRIMARY KEY (id_anuncio);


--
-- TOC entry 3354 (class 2606 OID 16550)
-- Name: area_atuacao area_atuacao_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.area_atuacao
    ADD CONSTRAINT area_atuacao_pkey PRIMARY KEY (id_area_atuacao);


--
-- TOC entry 3358 (class 2606 OID 16552)
-- Name: area_emprego area_emprego_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.area_emprego
    ADD CONSTRAINT area_emprego_pkey PRIMARY KEY (id_area_emprego);


--
-- TOC entry 3362 (class 2606 OID 16554)
-- Name: comentario comentario_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comentario
    ADD CONSTRAINT comentario_pkey PRIMARY KEY (id_comentario);


--
-- TOC entry 3364 (class 2606 OID 16556)
-- Name: contribuicao contribuicao_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contribuicao
    ADD CONSTRAINT contribuicao_pkey PRIMARY KEY (id_contribuicao);


--
-- TOC entry 3368 (class 2606 OID 16558)
-- Name: cota cota_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cota
    ADD CONSTRAINT cota_pkey PRIMARY KEY (id_cota);


--
-- TOC entry 3372 (class 2606 OID 16560)
-- Name: curso curso_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.curso
    ADD CONSTRAINT curso_pkey PRIMARY KEY (id_curso);


--
-- TOC entry 3376 (class 2606 OID 16562)
-- Name: depoimento depoimento_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.depoimento
    ADD CONSTRAINT depoimento_pkey PRIMARY KEY (id_depoimento);


--
-- TOC entry 3390 (class 2606 OID 16564)
-- Name: egresso_cota egresso_cota_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso_cota
    ADD CONSTRAINT egresso_cota_pkey PRIMARY KEY (id_egresso, id_cota);


--
-- TOC entry 3392 (class 2606 OID 16566)
-- Name: egresso_empresa egresso_empresa_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso_empresa
    ADD CONSTRAINT egresso_empresa_pkey PRIMARY KEY (egresso_id_egresso, empresa_id_empresa);


--
-- TOC entry 3380 (class 2606 OID 16568)
-- Name: egresso egresso_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso
    ADD CONSTRAINT egresso_pkey PRIMARY KEY (id_egresso);


--
-- TOC entry 3396 (class 2606 OID 16570)
-- Name: egresso_titulacao egresso_titulacao_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso_titulacao
    ADD CONSTRAINT egresso_titulacao_pkey PRIMARY KEY (egresso_id_egresso, titulacao_id_titulacao);


--
-- TOC entry 3400 (class 2606 OID 16572)
-- Name: egresso_valido egresso_valido_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso_valido
    ADD CONSTRAINT egresso_valido_pkey PRIMARY KEY (id_egresso_valido);


--
-- TOC entry 3406 (class 2606 OID 16574)
-- Name: empresa empresa_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.empresa
    ADD CONSTRAINT empresa_pkey PRIMARY KEY (id_empresa);


--
-- TOC entry 3410 (class 2606 OID 16576)
-- Name: endereco endereco_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT endereco_pkey PRIMARY KEY (id_endereco);


--
-- TOC entry 3412 (class 2606 OID 16578)
-- Name: endereco enderecosunicos; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT enderecosunicos UNIQUE (cidade_endereco, estado_endereco, pais_endereco);


--
-- TOC entry 3414 (class 2606 OID 16580)
-- Name: faixa_salarial faixa_salarial_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.faixa_salarial
    ADD CONSTRAINT faixa_salarial_pkey PRIMARY KEY (id_faixa_salarial);


--
-- TOC entry 3418 (class 2606 OID 16582)
-- Name: genero genero_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genero
    ADD CONSTRAINT genero_pkey PRIMARY KEY (id_genero);


--
-- TOC entry 3422 (class 2606 OID 16584)
-- Name: grupo grupo_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grupo
    ADD CONSTRAINT grupo_pkey PRIMARY KEY (id_grupo);


--
-- TOC entry 3426 (class 2606 OID 16586)
-- Name: palestra palestra_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.palestra
    ADD CONSTRAINT palestra_pkey PRIMARY KEY (id_palestra);


--
-- TOC entry 3430 (class 2606 OID 16588)
-- Name: setor_atuacao setor_atuacao_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.setor_atuacao
    ADD CONSTRAINT setor_atuacao_pkey PRIMARY KEY (id_setor_atuacao);


--
-- TOC entry 3434 (class 2606 OID 16590)
-- Name: tipo_bolsa tipo_bolsa_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tipo_bolsa
    ADD CONSTRAINT tipo_bolsa_pkey PRIMARY KEY (id_tipo_bolsa);


--
-- TOC entry 3438 (class 2606 OID 16592)
-- Name: titulacao titulacao_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.titulacao
    ADD CONSTRAINT titulacao_pkey PRIMARY KEY (id_titulacao);


--
-- TOC entry 3416 (class 2606 OID 16594)
-- Name: faixa_salarial uk_2bn1lsqed44xqtrtq17s7tjue; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.faixa_salarial
    ADD CONSTRAINT uk_2bn1lsqed44xqtrtq17s7tjue UNIQUE (faixa_faixa_salarial);


--
-- TOC entry 3428 (class 2606 OID 16596)
-- Name: palestra uk_2h2mxjetrwvc8sg1wx5ttyq07; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.palestra
    ADD CONSTRAINT uk_2h2mxjetrwvc8sg1wx5ttyq07 UNIQUE (egresso_id);


--
-- TOC entry 3402 (class 2606 OID 16598)
-- Name: egresso_valido uk_2jwojv1fccodf62r2wa6st1i1; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso_valido
    ADD CONSTRAINT uk_2jwojv1fccodf62r2wa6st1i1 UNIQUE (matricula_egresso_valido);


--
-- TOC entry 3382 (class 2606 OID 16600)
-- Name: egresso uk_3tmslc9ltmjdyy2mbstgpf1un; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso
    ADD CONSTRAINT uk_3tmslc9ltmjdyy2mbstgpf1un UNIQUE (usuario_id);


--
-- TOC entry 3384 (class 2606 OID 16602)
-- Name: egresso uk_4datilmpr40t15bnmxyve5t0y; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso
    ADD CONSTRAINT uk_4datilmpr40t15bnmxyve5t0y UNIQUE (matricula_egresso);


--
-- TOC entry 3442 (class 2606 OID 16604)
-- Name: usuario uk_5171l57faosmj8myawaucatdw; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT uk_5171l57faosmj8myawaucatdw UNIQUE (email);


--
-- TOC entry 3420 (class 2606 OID 16606)
-- Name: genero uk_6xfypuejpx9h55hdouj112ocw; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genero
    ADD CONSTRAINT uk_6xfypuejpx9h55hdouj112ocw UNIQUE (nome_genero);


--
-- TOC entry 3386 (class 2606 OID 16608)
-- Name: egresso uk_7wtwbdgn55nu31nx24ib5revf; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso
    ADD CONSTRAINT uk_7wtwbdgn55nu31nx24ib5revf UNIQUE (linkedin_egresso);


--
-- TOC entry 3444 (class 2606 OID 16610)
-- Name: usuario uk_8efax56av7vfdquauh0gyl9cx; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT uk_8efax56av7vfdquauh0gyl9cx UNIQUE (login_usuario);


--
-- TOC entry 3388 (class 2606 OID 16612)
-- Name: egresso uk_919oulldbx88ntvtrq5r6sdkt; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso
    ADD CONSTRAINT uk_919oulldbx88ntvtrq5r6sdkt UNIQUE (lattes_egresso);


--
-- TOC entry 3370 (class 2606 OID 16614)
-- Name: cota uk_9k3kf2b9f2mjv11ksekdha97k; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cota
    ADD CONSTRAINT uk_9k3kf2b9f2mjv11ksekdha97k UNIQUE (nome_cota);


--
-- TOC entry 3408 (class 2606 OID 16616)
-- Name: empresa uk_bwgigp9epp6elsfohco9fetet; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.empresa
    ADD CONSTRAINT uk_bwgigp9epp6elsfohco9fetet UNIQUE (nome_empresa);


--
-- TOC entry 3398 (class 2606 OID 16618)
-- Name: egresso_titulacao uk_du19rk6x1k7pg5tmh7k2xphgd; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso_titulacao
    ADD CONSTRAINT uk_du19rk6x1k7pg5tmh7k2xphgd UNIQUE (egresso_id_egresso);


--
-- TOC entry 3360 (class 2606 OID 16620)
-- Name: area_emprego uk_hjp1enuotfpdwx9utf5n12iqc; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.area_emprego
    ADD CONSTRAINT uk_hjp1enuotfpdwx9utf5n12iqc UNIQUE (nome_area_emprego);


--
-- TOC entry 3374 (class 2606 OID 16622)
-- Name: curso uk_i35k8uavr3s5cxr12aefe00e; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.curso
    ADD CONSTRAINT uk_i35k8uavr3s5cxr12aefe00e UNIQUE (nome_curso);


--
-- TOC entry 3424 (class 2606 OID 16624)
-- Name: grupo uk_is0kvc71ivi2o1nhe7h19m47p; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grupo
    ADD CONSTRAINT uk_is0kvc71ivi2o1nhe7h19m47p UNIQUE (nome_grupo);


--
-- TOC entry 3432 (class 2606 OID 16626)
-- Name: setor_atuacao uk_j59f23omfkincud4bx0f8x3vp; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.setor_atuacao
    ADD CONSTRAINT uk_j59f23omfkincud4bx0f8x3vp UNIQUE (nome_setor_atuacao);


--
-- TOC entry 3436 (class 2606 OID 16628)
-- Name: tipo_bolsa uk_j6yqoqsrpie5ipmlh6c5jbrx1; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tipo_bolsa
    ADD CONSTRAINT uk_j6yqoqsrpie5ipmlh6c5jbrx1 UNIQUE (nome_tipo_bolsa);


--
-- TOC entry 3356 (class 2606 OID 16630)
-- Name: area_atuacao uk_mu4kvuf03rl6w7vpqgvtt78pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.area_atuacao
    ADD CONSTRAINT uk_mu4kvuf03rl6w7vpqgvtt78pk UNIQUE (nome_area_atuacao);


--
-- TOC entry 3394 (class 2606 OID 16632)
-- Name: egresso_empresa uk_r0sm8hpv921bqw3nrmnnjt99x; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso_empresa
    ADD CONSTRAINT uk_r0sm8hpv921bqw3nrmnnjt99x UNIQUE (egresso_id_egresso);


--
-- TOC entry 3378 (class 2606 OID 16634)
-- Name: depoimento uk_rpha5d7rfphcjvj0nbjb1nvxs; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.depoimento
    ADD CONSTRAINT uk_rpha5d7rfphcjvj0nbjb1nvxs UNIQUE (egresso_id);


--
-- TOC entry 3366 (class 2606 OID 16636)
-- Name: contribuicao uk_rpvny7ejlpmi3fk8mbwva6qjy; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contribuicao
    ADD CONSTRAINT uk_rpvny7ejlpmi3fk8mbwva6qjy UNIQUE (egresso_id);


--
-- TOC entry 3440 (class 2606 OID 16638)
-- Name: titulacao uk_rvnwm2n5juoh0aj3qnssh52nm; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.titulacao
    ADD CONSTRAINT uk_rvnwm2n5juoh0aj3qnssh52nm UNIQUE (nome_titulacao);


--
-- TOC entry 3404 (class 2606 OID 16640)
-- Name: egresso_valido uk_snrp717wd5d36lg78t56wefwt; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso_valido
    ADD CONSTRAINT uk_snrp717wd5d36lg78t56wefwt UNIQUE (email_egresso_valido);


--
-- TOC entry 3448 (class 2606 OID 16642)
-- Name: usuario_grupo usuario_grupo_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usuario_grupo
    ADD CONSTRAINT usuario_grupo_pkey PRIMARY KEY (id_usuario, id_grupo);


--
-- TOC entry 3446 (class 2606 OID 16644)
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);


--
-- TOC entry 3489 (class 2606 OID 16645)
-- Name: empresa fk1252u5xj526ufsf5c3c9fcic2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.empresa
    ADD CONSTRAINT fk1252u5xj526ufsf5c3c9fcic2 FOREIGN KEY (created_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3494 (class 2606 OID 16650)
-- Name: faixa_salarial fk12fuee7y4kjstxd7xwk3fageo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.faixa_salarial
    ADD CONSTRAINT fk12fuee7y4kjstxd7xwk3fageo FOREIGN KEY (last_modified_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3483 (class 2606 OID 16655)
-- Name: egresso_titulacao fk1bu3y46jwvfc24y707b8hr57s; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso_titulacao
    ADD CONSTRAINT fk1bu3y46jwvfc24y707b8hr57s FOREIGN KEY (curso_id) REFERENCES public.curso(id_curso);


--
-- TOC entry 3462 (class 2606 OID 16660)
-- Name: cota fk1lve8o0jw4i8ksl2dxp0lm8; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cota
    ADD CONSTRAINT fk1lve8o0jw4i8ksl2dxp0lm8 FOREIGN KEY (last_modified_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3459 (class 2606 OID 16665)
-- Name: contribuicao fk2ccawuj4bpvj1vk6mhrb6b0op; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contribuicao
    ADD CONSTRAINT fk2ccawuj4bpvj1vk6mhrb6b0op FOREIGN KEY (egresso_id) REFERENCES public.egresso(id_egresso);


--
-- TOC entry 3484 (class 2606 OID 16670)
-- Name: egresso_titulacao fk2pj0kns83aqiewk5pf2wxj1n9; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso_titulacao
    ADD CONSTRAINT fk2pj0kns83aqiewk5pf2wxj1n9 FOREIGN KEY (egresso_id_egresso) REFERENCES public.egresso(id_egresso);


--
-- TOC entry 3474 (class 2606 OID 16675)
-- Name: egresso_cota fk2rs3m3oq3ujpj3nvgbyaqwata; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso_cota
    ADD CONSTRAINT fk2rs3m3oq3ujpj3nvgbyaqwata FOREIGN KEY (id_egresso) REFERENCES public.egresso(id_egresso);


--
-- TOC entry 3505 (class 2606 OID 16680)
-- Name: tipo_bolsa fk3c5grr0qggvj0dw2fada2xhyv; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tipo_bolsa
    ADD CONSTRAINT fk3c5grr0qggvj0dw2fada2xhyv FOREIGN KEY (last_modified_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3469 (class 2606 OID 16685)
-- Name: egresso fk3lb1ai4t6bvvsu9jc9qm0fisi; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso
    ADD CONSTRAINT fk3lb1ai4t6bvvsu9jc9qm0fisi FOREIGN KEY (usuario_id) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3464 (class 2606 OID 16690)
-- Name: curso fk3tu6gxj4fe3b8vgyhhr17p5d1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.curso
    ADD CONSTRAINT fk3tu6gxj4fe3b8vgyhhr17p5d1 FOREIGN KEY (created_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3466 (class 2606 OID 16695)
-- Name: depoimento fk4282xxihuiq8nqknlkrlmn6k7; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.depoimento
    ADD CONSTRAINT fk4282xxihuiq8nqknlkrlmn6k7 FOREIGN KEY (last_modified_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3496 (class 2606 OID 16700)
-- Name: genero fk4hmk8te4ct41ket6gewknyld3; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genero
    ADD CONSTRAINT fk4hmk8te4ct41ket6gewknyld3 FOREIGN KEY (created_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3503 (class 2606 OID 16705)
-- Name: setor_atuacao fk4qba75lalso4wg21v2lldr81c; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.setor_atuacao
    ADD CONSTRAINT fk4qba75lalso4wg21v2lldr81c FOREIGN KEY (created_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3498 (class 2606 OID 16710)
-- Name: grupo fk4x87bpegbq5yd4awx0jpyl7rf; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grupo
    ADD CONSTRAINT fk4x87bpegbq5yd4awx0jpyl7rf FOREIGN KEY (last_modified_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3456 (class 2606 OID 16715)
-- Name: comentario fk5k6dqdx9kn983dj5jx5orhss0; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comentario
    ADD CONSTRAINT fk5k6dqdx9kn983dj5jx5orhss0 FOREIGN KEY (last_modified_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3452 (class 2606 OID 16720)
-- Name: area_atuacao fk5oqxk24ttn7xfiqojcd3hrxqp; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.area_atuacao
    ADD CONSTRAINT fk5oqxk24ttn7xfiqojcd3hrxqp FOREIGN KEY (last_modified_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3454 (class 2606 OID 16725)
-- Name: area_emprego fk6dqvi2vb0skrayrqveq835gto; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.area_emprego
    ADD CONSTRAINT fk6dqvi2vb0skrayrqveq835gto FOREIGN KEY (created_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3460 (class 2606 OID 16730)
-- Name: contribuicao fk7x5ccymo3mvys7sdoar4w27jy; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contribuicao
    ADD CONSTRAINT fk7x5ccymo3mvys7sdoar4w27jy FOREIGN KEY (created_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3495 (class 2606 OID 16735)
-- Name: faixa_salarial fk96o103aeo1xeuhgnn0hhs6bl0; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.faixa_salarial
    ADD CONSTRAINT fk96o103aeo1xeuhgnn0hhs6bl0 FOREIGN KEY (created_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3500 (class 2606 OID 16740)
-- Name: palestra fk9anu4iufajm45jv11goj4swmd; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.palestra
    ADD CONSTRAINT fk9anu4iufajm45jv11goj4swmd FOREIGN KEY (created_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3506 (class 2606 OID 16745)
-- Name: tipo_bolsa fk9brd9pf3m513c4qwotx7j5l5f; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tipo_bolsa
    ADD CONSTRAINT fk9brd9pf3m513c4qwotx7j5l5f FOREIGN KEY (created_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3511 (class 2606 OID 16750)
-- Name: usuario_grupo fk9huj1upwjyabwkwnpnhnernnu; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usuario_grupo
    ADD CONSTRAINT fk9huj1upwjyabwkwnpnhnernnu FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3490 (class 2606 OID 16755)
-- Name: empresa fka0nk763e7luto0itr7it6y5gr; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.empresa
    ADD CONSTRAINT fka0nk763e7luto0itr7it6y5gr FOREIGN KEY (last_modified_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3475 (class 2606 OID 16760)
-- Name: egresso_cota fka58rgwpq37hoof2640cw7j2l1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso_cota
    ADD CONSTRAINT fka58rgwpq37hoof2640cw7j2l1 FOREIGN KEY (id_cota) REFERENCES public.cota(id_cota);


--
-- TOC entry 3457 (class 2606 OID 16765)
-- Name: comentario fkac7bpbirc6r6vcplb0fptftnx; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comentario
    ADD CONSTRAINT fkac7bpbirc6r6vcplb0fptftnx FOREIGN KEY (created_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3467 (class 2606 OID 16770)
-- Name: depoimento fkadydhxggbqc2ahkodd8du6s2t; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.depoimento
    ADD CONSTRAINT fkadydhxggbqc2ahkodd8du6s2t FOREIGN KEY (created_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3485 (class 2606 OID 16775)
-- Name: egresso_titulacao fkb7ankaa93u5fr4nmbmyw46kmc; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso_titulacao
    ADD CONSTRAINT fkb7ankaa93u5fr4nmbmyw46kmc FOREIGN KEY (titulacao_id_titulacao) REFERENCES public.titulacao(id_titulacao);


--
-- TOC entry 3504 (class 2606 OID 16780)
-- Name: setor_atuacao fkb7luqi69van4vdyylsmgv32hn; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.setor_atuacao
    ADD CONSTRAINT fkb7luqi69van4vdyylsmgv32hn FOREIGN KEY (last_modified_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3486 (class 2606 OID 16785)
-- Name: egresso_titulacao fkbympkqdq4ugh9r707xwyxmx0i; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso_titulacao
    ADD CONSTRAINT fkbympkqdq4ugh9r707xwyxmx0i FOREIGN KEY (empresa_id) REFERENCES public.empresa(id_empresa);


--
-- TOC entry 3487 (class 2606 OID 16790)
-- Name: egresso_titulacao fkc2t7d851vn3eko0rgmg8uonqj; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso_titulacao
    ADD CONSTRAINT fkc2t7d851vn3eko0rgmg8uonqj FOREIGN KEY (last_modified_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3463 (class 2606 OID 16795)
-- Name: cota fkcqjq3oy1bo82gon5venmvjw98; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cota
    ADD CONSTRAINT fkcqjq3oy1bo82gon5venmvjw98 FOREIGN KEY (created_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3470 (class 2606 OID 16800)
-- Name: egresso fkcqqxhbp7hpudbb1dcyouyaq79; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso
    ADD CONSTRAINT fkcqqxhbp7hpudbb1dcyouyaq79 FOREIGN KEY (tipo_bolsa_id) REFERENCES public.tipo_bolsa(id_tipo_bolsa);


--
-- TOC entry 3512 (class 2606 OID 16805)
-- Name: usuario_grupo fkcu6om65mvqr6ct95ijgqgx7ww; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usuario_grupo
    ADD CONSTRAINT fkcu6om65mvqr6ct95ijgqgx7ww FOREIGN KEY (id_grupo) REFERENCES public.grupo(id_grupo);


--
-- TOC entry 3476 (class 2606 OID 16810)
-- Name: egresso_empresa fkdsaknoo0x7tq0wfqdwtluix5n; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso_empresa
    ADD CONSTRAINT fkdsaknoo0x7tq0wfqdwtluix5n FOREIGN KEY (setor_atuacao_id) REFERENCES public.setor_atuacao(id_setor_atuacao);


--
-- TOC entry 3477 (class 2606 OID 16815)
-- Name: egresso_empresa fkdut9kbfj1c87myf42xmao3aja; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso_empresa
    ADD CONSTRAINT fkdut9kbfj1c87myf42xmao3aja FOREIGN KEY (faixa_salarial_id) REFERENCES public.faixa_salarial(id_faixa_salarial);


--
-- TOC entry 3501 (class 2606 OID 16820)
-- Name: palestra fkenp70xvpnwmjo0k83k7g49xnq; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.palestra
    ADD CONSTRAINT fkenp70xvpnwmjo0k83k7g49xnq FOREIGN KEY (last_modified_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3449 (class 2606 OID 16825)
-- Name: anuncio fkf2afyb5u9a2g5kv1wce78ur8t; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.anuncio
    ADD CONSTRAINT fkf2afyb5u9a2g5kv1wce78ur8t FOREIGN KEY (last_modified_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3471 (class 2606 OID 16830)
-- Name: egresso fkf322p240i2h2i9sgcn5wjfaot; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso
    ADD CONSTRAINT fkf322p240i2h2i9sgcn5wjfaot FOREIGN KEY (created_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3453 (class 2606 OID 16835)
-- Name: area_atuacao fkfhdbeqpt6ruvdwof7m4acwoup; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.area_atuacao
    ADD CONSTRAINT fkfhdbeqpt6ruvdwof7m4acwoup FOREIGN KEY (created_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3450 (class 2606 OID 16840)
-- Name: anuncio fkgiwie4ydjwi1hi8a5rpwl8aop; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.anuncio
    ADD CONSTRAINT fkgiwie4ydjwi1hi8a5rpwl8aop FOREIGN KEY (area_emprego_anuncio_id) REFERENCES public.area_emprego(id_area_emprego);


--
-- TOC entry 3478 (class 2606 OID 16845)
-- Name: egresso_empresa fkhytqndbt06s83doal9nmgcksj; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso_empresa
    ADD CONSTRAINT fkhytqndbt06s83doal9nmgcksj FOREIGN KEY (created_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3492 (class 2606 OID 16850)
-- Name: endereco fki98kyuu68rp4942s3r9vkko6x; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT fki98kyuu68rp4942s3r9vkko6x FOREIGN KEY (last_modified_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3465 (class 2606 OID 16855)
-- Name: curso fkiiafe2qpikwi45ggt4p8a5mik; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.curso
    ADD CONSTRAINT fkiiafe2qpikwi45ggt4p8a5mik FOREIGN KEY (last_modified_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3479 (class 2606 OID 16860)
-- Name: egresso_empresa fkjj09rwrjadvvdmkdo1ugyprxg; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso_empresa
    ADD CONSTRAINT fkjj09rwrjadvvdmkdo1ugyprxg FOREIGN KEY (area_atuacao_id) REFERENCES public.area_atuacao(id_area_atuacao);


--
-- TOC entry 3451 (class 2606 OID 16865)
-- Name: anuncio fkjw0029cxurvkx45044e65h64x; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.anuncio
    ADD CONSTRAINT fkjw0029cxurvkx45044e65h64x FOREIGN KEY (created_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3472 (class 2606 OID 16870)
-- Name: egresso fkk0wr6p5gu54r773ttv5iira6f; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso
    ADD CONSTRAINT fkk0wr6p5gu54r773ttv5iira6f FOREIGN KEY (genero_id) REFERENCES public.genero(id_genero);


--
-- TOC entry 3509 (class 2606 OID 16875)
-- Name: usuario fkkkymwf8xy047tl0035rhlfpq5; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fkkkymwf8xy047tl0035rhlfpq5 FOREIGN KEY (created_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3502 (class 2606 OID 16880)
-- Name: palestra fkku18fu56mnqdkfwbukwah002; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.palestra
    ADD CONSTRAINT fkku18fu56mnqdkfwbukwah002 FOREIGN KEY (egresso_id) REFERENCES public.egresso(id_egresso);


--
-- TOC entry 3510 (class 2606 OID 16885)
-- Name: usuario fkl4ghr4b3u1vycv960y09ss9a4; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fkl4ghr4b3u1vycv960y09ss9a4 FOREIGN KEY (last_modified_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3458 (class 2606 OID 16890)
-- Name: comentario fkm8q6r8t4jmqia3plcao1pih8r; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.comentario
    ADD CONSTRAINT fkm8q6r8t4jmqia3plcao1pih8r FOREIGN KEY (anuncio_id) REFERENCES public.anuncio(id_anuncio);


--
-- TOC entry 3499 (class 2606 OID 16895)
-- Name: grupo fkmabbfeklclq6kit2wnnkgfak0; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grupo
    ADD CONSTRAINT fkmabbfeklclq6kit2wnnkgfak0 FOREIGN KEY (created_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3468 (class 2606 OID 16900)
-- Name: depoimento fkmh11nyrmuejhtnlbo1tdxp88v; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.depoimento
    ADD CONSTRAINT fkmh11nyrmuejhtnlbo1tdxp88v FOREIGN KEY (egresso_id) REFERENCES public.egresso(id_egresso);


--
-- TOC entry 3473 (class 2606 OID 16905)
-- Name: egresso fkn1xoojso0x5qw602exgvv7v84; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso
    ADD CONSTRAINT fkn1xoojso0x5qw602exgvv7v84 FOREIGN KEY (last_modified_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3507 (class 2606 OID 16910)
-- Name: titulacao fko1m66fdoqs86cucbvl928kes4; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.titulacao
    ADD CONSTRAINT fko1m66fdoqs86cucbvl928kes4 FOREIGN KEY (last_modified_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3488 (class 2606 OID 16915)
-- Name: egresso_titulacao fkp74iffsl9ivplq4gkuhyuvsh8; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso_titulacao
    ADD CONSTRAINT fkp74iffsl9ivplq4gkuhyuvsh8 FOREIGN KEY (created_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3461 (class 2606 OID 16920)
-- Name: contribuicao fkpm3k93anx938a8ab7bnw2ct0u; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contribuicao
    ADD CONSTRAINT fkpm3k93anx938a8ab7bnw2ct0u FOREIGN KEY (last_modified_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3480 (class 2606 OID 16925)
-- Name: egresso_empresa fkqdv2ixbxjn0jihxwra9tadgkb; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso_empresa
    ADD CONSTRAINT fkqdv2ixbxjn0jihxwra9tadgkb FOREIGN KEY (last_modified_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3497 (class 2606 OID 16930)
-- Name: genero fkqpmjfeicduajada8ttfr6fvbn; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.genero
    ADD CONSTRAINT fkqpmjfeicduajada8ttfr6fvbn FOREIGN KEY (last_modified_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3481 (class 2606 OID 16935)
-- Name: egresso_empresa fkrrdwo5y0sss2aq6r989sngy0g; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso_empresa
    ADD CONSTRAINT fkrrdwo5y0sss2aq6r989sngy0g FOREIGN KEY (egresso_id_egresso) REFERENCES public.egresso(id_egresso);


--
-- TOC entry 3482 (class 2606 OID 16940)
-- Name: egresso_empresa fks0wngwsneahqe1p80rh1olamu; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.egresso_empresa
    ADD CONSTRAINT fks0wngwsneahqe1p80rh1olamu FOREIGN KEY (empresa_id_empresa) REFERENCES public.empresa(id_empresa);


--
-- TOC entry 3491 (class 2606 OID 16945)
-- Name: empresa fks5bj6jkkca1s0d3jgw4wioi9g; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.empresa
    ADD CONSTRAINT fks5bj6jkkca1s0d3jgw4wioi9g FOREIGN KEY (endereco_empresa) REFERENCES public.endereco(id_endereco);


--
-- TOC entry 3493 (class 2606 OID 16950)
-- Name: endereco fkse5padocuj89r79jwdeif1l5i; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.endereco
    ADD CONSTRAINT fkse5padocuj89r79jwdeif1l5i FOREIGN KEY (created_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3508 (class 2606 OID 16955)
-- Name: titulacao fkt7h0tods16trs2x26gd6fkmca; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.titulacao
    ADD CONSTRAINT fkt7h0tods16trs2x26gd6fkmca FOREIGN KEY (created_by) REFERENCES public.usuario(id_usuario);


--
-- TOC entry 3455 (class 2606 OID 16960)
-- Name: area_emprego fktujp3yxoocfmk1j3plgv3rqw; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.area_emprego
    ADD CONSTRAINT fktujp3yxoocfmk1j3plgv3rqw FOREIGN KEY (last_modified_by) REFERENCES public.usuario(id_usuario);


-- Completed on 2023-06-12 12:31:53 -03

--
-- PostgreSQL database dump complete
--

