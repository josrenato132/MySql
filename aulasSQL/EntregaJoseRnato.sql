--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

-- Started on 2020-04-08 15:25:20

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 233 (class 1259 OID 16529)
-- Name: disciplinas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.disciplinas (
    pkdisciplina smallint NOT NULL,
    fkcurso smallint NOT NULL,
    txnome character varying(250) NOT NULL,
    txementa character varying(250) DEFAULT NULL::character varying,
    qthoras smallint NOT NULL,
    dtcaddisciplina date NOT NULL,
    txcriterioavaliacao character varying(500)
);


ALTER TABLE public.disciplinas OWNER TO postgres;

--
-- TOC entry 3119 (class 0 OID 16529)
-- Dependencies: 233
-- Data for Name: disciplinas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.disciplinas (pkdisciplina, fkcurso, txnome, txementa, qthoras, dtcaddisciplina, txcriterioavaliacao) FROM stdin;
1	1	CALCULO I		0	1980-01-01	\N
2	1	CALCULO II		0	1980-01-01	\N
3	1	CALCULO IV		0	1980-01-01	\N
4	1	CALCULO III		0	1980-01-01	\N
5	1	FISICA I	Desenvolvimento dos conceitos fundamentais da Física: Força, ação e reação, inércia, campos de força	100	2010-10-10	\N
6	1	FISICA II		0	1980-01-01	\N
7	1	FISICA III		0	1980-01-01	\N
8	3	FISICA IV	asdfasf	100	2012-10-05	\N
9	1	PORTUGUES I		0	1980-01-01	\N
10	1	PORTUGUES II		0	1980-01-01	\N
11	1	ALGORITMOS DE PROGRAMACAO I		0	1980-01-01	\N
12	1	ALGORITMOS DE PROGRAMACAO II		0	1980-01-01	\N
13	1	LINGUAGEM DE PROGRAMACAO I		0	1980-01-01	\N
14	1	LINGUAGEM DE PROGRAMACAO II		0	1980-01-01	\N
15	1	LINGUAGEM DE PROGRAMACAO III		0	1980-01-01	\N
16	1	LINGUAGEM DE PROGRAMACAO IV		0	1980-01-01	\N
17	1	CALCULO NUMERICO		0	1980-01-01	\N
18	1	APLICACOES DE CALCULO NUMERICO I		0	1980-01-01	\N
19	1	ETICA NA TECNOLOGIA DA INFORMA		0	1980-01-01	\N
20	1	TECNICAS DE APRESENTA		0	1980-01-01	\N
21	1	Avaliação de Qualidade em Fábrica de Software	Apresenta métricas e métodos de avaliação de Qualidade de So	120	2010-10-10	\N
22	1	ENGENHARIA DE SOFTWARE I		0	1980-01-01	\N
27	7	Antropologia moderna	Estudos dos comportamentos humanos no contexto dos séculos 20 e 21.	120	2010-10-10	\N
\.


--
-- TOC entry 2989 (class 2606 OID 16878)
-- Name: disciplinas disciplinas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.disciplinas
    ADD CONSTRAINT disciplinas_pkey PRIMARY KEY (pkdisciplina);


--
-- TOC entry 2990 (class 2606 OID 16879)
-- Name: disciplinas disciplinasfk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.disciplinas
    ADD CONSTRAINT disciplinasfk1 FOREIGN KEY (fkcurso) REFERENCES public.cursos(pkcurso) DEFERRABLE INITIALLY DEFERRED NOT VALID;


-- Completed on 2020-04-08 15:25:21

--
-- PostgreSQL database dump complete
--

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

-- Started on 2020-04-08 15:26:52

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 206 (class 1259 OID 16412)
-- Name: areaestudo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.areaestudo (
    pkareaestudo smallint NOT NULL,
    txnomearea character varying(250) NOT NULL,
    txdescricaoarea text,
    dtcadareaestudo date NOT NULL
);


ALTER TABLE public.areaestudo OWNER TO postgres;

--
-- TOC entry 3117 (class 0 OID 16412)
-- Dependencies: 206
-- Data for Name: areaestudo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.areaestudo (pkareaestudo, txnomearea, txdescricaoarea, dtcadareaestudo) VALUES (25, 'Gestão e Administração', '', '2010-12-16');
INSERT INTO public.areaestudo (pkareaestudo, txnomearea, txdescricaoarea, dtcadareaestudo) VALUES (30, 'Tecnologias da Informação e Comunicação', '', '2010-12-16');
INSERT INTO public.areaestudo (pkareaestudo, txnomearea, txdescricaoarea, dtcadareaestudo) VALUES (35, 'Astronomia', 'agrupa os estudos de fisica astronomica, geoestatistica quantica aplicada', '2010-10-10');
INSERT INTO public.areaestudo (pkareaestudo, txnomearea, txdescricaoarea, dtcadareaestudo) VALUES (5, 'Exatas', 'Agrupa as áreas de matemática, física, quimica e engenharias', '2001-01-01');
INSERT INTO public.areaestudo (pkareaestudo, txnomearea, txdescricaoarea, dtcadareaestudo) VALUES (10, 'Humanas', '', '2001-01-01');
INSERT INTO public.areaestudo (pkareaestudo, txnomearea, txdescricaoarea, dtcadareaestudo) VALUES (15, 'Biomédicas', '', '2001-01-01');
INSERT INTO public.areaestudo (pkareaestudo, txnomearea, txdescricaoarea, dtcadareaestudo) VALUES (20, 'Ciências Ambientais', '', '2001-01-01');


--
-- TOC entry 2988 (class 2606 OID 16874)
-- Name: areaestudo areaestudopk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.areaestudo
    ADD CONSTRAINT areaestudopk PRIMARY KEY (pkareaestudo);


-- Completed on 2020-04-08 15:26:53

--
-- PostgreSQL database dump complete
--


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

-- Started on 2020-04-08 15:24:16

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 208 (class 1259 OID 16421)
-- Name: areaestudodisciplinas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.areaestudodisciplinas (
    pkareaestdisciplina smallint NOT NULL,
    fkdisciplina smallint NOT NULL,
    fkareaestudo smallint NOT NULL,
    dtcadareaestdisc date NOT NULL
);


ALTER TABLE public.areaestudodisciplinas OWNER TO postgres;

--
-- TOC entry 3119 (class 0 OID 16421)
-- Dependencies: 208
-- Data for Name: areaestudodisciplinas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.areaestudodisciplinas (pkareaestdisciplina, fkdisciplina, fkareaestudo, dtcadareaestdisc) VALUES (20, 1, 25, '2011-05-10');
INSERT INTO public.areaestudodisciplinas (pkareaestdisciplina, fkdisciplina, fkareaestudo, dtcadareaestdisc) VALUES (25, 1, 35, '2005-05-05');
INSERT INTO public.areaestudodisciplinas (pkareaestdisciplina, fkdisciplina, fkareaestudo, dtcadareaestdisc) VALUES (5, 1, 5, '1980-01-01');
INSERT INTO public.areaestudodisciplinas (pkareaestdisciplina, fkdisciplina, fkareaestudo, dtcadareaestdisc) VALUES (30, 2, 5, '1980-01-01');
INSERT INTO public.areaestudodisciplinas (pkareaestdisciplina, fkdisciplina, fkareaestudo, dtcadareaestdisc) VALUES (40, 3, 10, '1980-01-01');
INSERT INTO public.areaestudodisciplinas (pkareaestdisciplina, fkdisciplina, fkareaestudo, dtcadareaestdisc) VALUES (10, 1, 10, '1980-01-01');
INSERT INTO public.areaestudodisciplinas (pkareaestdisciplina, fkdisciplina, fkareaestudo, dtcadareaestdisc) VALUES (35, 2, 10, '2010-10-10');
INSERT INTO public.areaestudodisciplinas (pkareaestdisciplina, fkdisciplina, fkareaestudo, dtcadareaestdisc) VALUES (15, 1, 20, '2004-02-04');


--
-- TOC entry 2988 (class 2606 OID 16871)
-- Name: areaestudodisciplinas areaestudodisciplinaspk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.areaestudodisciplinas
    ADD CONSTRAINT areaestudodisciplinaspk PRIMARY KEY (pkareaestdisciplina) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2989 (class 2606 OID 16884)
-- Name: areaestudodisciplinas areaestudodisciplinasfk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.areaestudodisciplinas
    ADD CONSTRAINT areaestudodisciplinasfk1 FOREIGN KEY (fkdisciplina) REFERENCES public.disciplinas(pkdisciplina) DEFERRABLE INITIALLY DEFERRED NOT VALID;


--
-- TOC entry 2990 (class 2606 OID 16889)
-- Name: areaestudodisciplinas areaestudodisciplinasfk2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.areaestudodisciplinas
    ADD CONSTRAINT areaestudodisciplinasfk2 FOREIGN KEY (fkareaestudo) REFERENCES public.areaestudo(pkareaestudo) DEFERRABLE INITIALLY DEFERRED NOT VALID;


-- Completed on 2020-04-08 15:24:19

--
-- PostgreSQL database dump complete
--


+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++