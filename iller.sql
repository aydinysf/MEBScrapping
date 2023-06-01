--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

-- Started on 2023-06-01 13:45:30

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
-- TOC entry 214 (class 1259 OID 16416)
-- Name: iller; Type: TABLE; Schema: public; Owner: ysf
--

CREATE TABLE public.iller (
    id integer,
    iladi text,
    ilguid text
);


ALTER TABLE public.iller OWNER TO ysf;

--
-- TOC entry 3319 (class 0 OID 16416)
-- Dependencies: 214
-- Data for Name: iller; Type: TABLE DATA; Schema: public; Owner: ysf
--

INSERT INTO public.iller (id, iladi, ilguid) VALUES (1, 'ADANA', 'a3ed27b2-730f-4f82-b9b9-d54aa13c68f5');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (2, 'ADIYAMAN', '9b86f9d6-d8bf-4e65-a8cc-0f0f4b132be0');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (3, 'AFYONKARAHİSAR', '05574567-bc8c-440a-bc3e-8223ff0f0313');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (4, 'AĞRI', '6ee96053-aa77-44d4-a6f9-924439c91f26');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (5, 'AMASYA', 'cb495586-0238-4364-a81b-6f6c0040d800');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (6, 'ANKARA', 'c6800099-16c5-4594-981f-d5f75dc77e53');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (7, 'ANTALYA', '77cea94b-ca17-426a-8bd5-f1373ddf8f76');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (8, 'ARTVİN', '180b85be-3254-4b2a-a6f4-0d5cc9e7c5ce');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (9, 'AYDIN', '3f25a549-4d23-47c4-a450-bb443ea2d218');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (10, 'BALIKESİR', 'f07703e5-5635-4fac-8fd0-18299f780861');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (11, 'BİLECİK', '749e0d17-5629-4480-ad40-3f2de08cfc28');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (12, 'BİNGÖL', 'c11a85ba-fc24-44ee-a29c-ccf10a3ea767');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (13, 'BİTLİS', 'b203bd05-ad6c-4e22-a095-832fadeca0ab');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (14, 'BOLU', '1290c889-284e-4d07-a11e-6837767ddfc3');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (15, 'BURDUR', '99abcec9-866f-4343-8baf-a73f36bc98ed');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (16, 'BURSA', 'b546692f-09aa-43a7-b7f9-f6414ea196d6');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (17, 'ÇANAKKALE', 'd9410025-5729-4580-b9f9-253bd3275316');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (18, 'ÇANKIRI', 'bb3b6540-e946-4ec2-a481-84dace71463c');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (19, 'ÇORUM', '677224f3-d100-47bf-bf76-7839be4bf7f2');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (20, 'DENİZLİ', 'f02fec7a-37ee-4df1-999e-e968eda4c8c3');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (21, 'DİYARBAKIR', '8b9316ab-eb8a-472e-9e82-06ca726092e6');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (22, 'EDİRNE', 'd6ecf6be-e251-4095-8e66-8ff27d426d35');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (23, 'ELAZIĞ', '5ab63a4e-aec3-45f3-9346-da225ba5fb9f');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (24, 'ERZİNCAN', '34986006-c7bd-4f76-abde-cb9fae5dcb4d');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (25, 'ERZURUM', 'ed12fabd-f986-47e3-be35-c17a459abbd4');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (26, 'ESKİŞEHİR', '4407501e-fd33-4d5d-9873-9d113cd2551c');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (27, 'GAZİANTEP', '33b57602-3f18-4d72-ae56-80cab4dd6e9b');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (28, 'GİRESUN', 'be3ec85f-2ec9-4e59-82e0-5a81276b372d');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (29, 'GÜMÜŞHANE', '0c2bed1c-260c-4ca9-b4ac-4892e0bdc6ef');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (30, 'HAKKARİ', 'c874c099-48df-4419-8cab-55e150efaa72');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (31, 'HATAY', '38f3b5ba-9190-440b-893b-f035b5459ac0');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (32, 'ISPARTA', 'efad43e5-4bd6-49d7-83b2-235034f67362');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (33, 'MERSİN', '7e79aaa9-b3c6-412d-9871-6d7161ff6178');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (34, 'İSTANBUL', 'e8a0da79-3bdf-45a1-a2b4-cb2854bff626');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (35, 'İZMİR', 'd91c4997-3ddb-4add-a1ba-415c1cde9aeb');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (36, 'KARS', '192fc14b-2bf3-4ec4-a8ca-16f8e32a9881');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (37, 'KASTAMONU', '02d775c7-3af7-4b60-9792-779cad755b26');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (38, 'KAYSERİ', 'e5367727-cb14-459e-8a24-92b7027276f5');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (39, 'KIRKLARELİ', 'd83cefe5-13f0-42d8-beac-18d929cc51f4');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (40, 'KIRŞEHİR', '8c62c40b-7d73-4936-9afc-16ae2df33964');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (41, 'KOCAELİ', 'b97f05ad-b171-4e11-bd3a-c168867edc79');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (42, 'KONYA', '7e0e714a-a609-41ef-a771-32aa75462b5a');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (43, 'KÜTAHYA', 'd5260be5-ad91-45a8-b48f-872a457c3198');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (44, 'MALATYA', 'd48dd177-bf7d-4e0f-86af-edb0d2303377');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (45, 'MANİSA', '3e790bd7-0e02-4006-8702-64d37ff52bc6');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (46, 'KAHRAMANMARAŞ', '6fc619df-ccb1-43cf-98cd-ea6804f9e535');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (47, 'MARDİN', '984dcab0-0238-4e7c-a9eb-06b630872c8d');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (48, 'MUĞLA', '51ad2373-619a-4f10-a320-604183a38600');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (49, 'MUŞ', '58e4d08d-069e-4242-88c2-49dde067ba01');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (50, 'NEVŞEHİR', '95f6e52b-884c-4da0-8031-4dc07e8b12e0');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (51, 'NİĞDE', '61495e17-bed8-4089-879b-6191a7a84244');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (52, 'ORDU', 'bcbdd39b-a928-4a33-9b74-d29df2396cef');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (53, 'RİZE', '3daadc90-66fe-4965-aa3e-dd543a2733d5');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (54, 'SAKARYA', '30ed044a-735f-4ab8-ab43-cfa6f9c8ba91');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (55, 'SAMSUN', '51caf508-6f9f-4fb9-bff6-b41517992600');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (56, 'SİİRT', 'e0e4ae48-c1db-4788-89cf-ce9dac8b6629');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (57, 'SİNOP', 'cf440808-61cf-4fb3-8c19-5a05be90a9ac');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (58, 'SİVAS', 'c8f4d06c-7572-4f22-b59b-2ab5b6bee3ef');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (59, 'TEKİRDAĞ', '64840651-0a9e-4c07-a9ec-dc456b8da484');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (60, 'TOKAT', 'd6eb96ed-2d63-40b1-b989-700ee46124df');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (61, 'TRABZON', '105855b5-1814-42d9-a204-0e55f0ef0fed');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (62, 'TUNCELİ', 'f3493969-a1bb-4705-ab57-18843f759a63');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (63, 'ŞANLIURFA', '8324ceba-0be3-4b3c-a746-9b017b12ba1f');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (64, 'UŞAK', '3aa20a47-c8bc-4100-acd6-d41aa2c80674');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (65, 'VAN', '33b996dc-b3b7-4edf-9c7c-42048b19fdcd');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (66, 'YOZGAT', 'd3196530-98d6-4a56-a143-c5a018ca6aa7');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (67, 'ZONGULDAK', '7a7c47ea-f2cc-4477-9733-f8bb3bc63207');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (68, 'AKSARAY', '4fda5f34-8ced-4c62-af1f-5c054714ce56');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (69, 'BAYBURT', '36f1759a-a9d2-4903-9d5d-ac705bd49846');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (70, 'KARAMAN', '2fc96251-170f-4225-9966-bacbcf4da361');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (71, 'KIRIKKALE', '21fc8424-b3a5-4382-9d1e-f3bd24046344');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (72, 'BATMAN', 'c3c665e7-7ed6-4350-90fc-32b3a3b8661b');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (73, 'ŞIRNAK', '95a5bf9e-d145-4aef-ba73-0c8a0f6c752a');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (74, 'BARTIN', '068a4e96-1ad9-450b-b261-1830d155c068');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (75, 'ARDAHAN', 'edd9dfb6-4199-41b5-9815-d4e83fe8e28d');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (76, 'IĞDIR', '92f6dd79-b392-4b5c-9fe2-40e8484e492b');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (77, 'YALOVA', 'f3a96a95-ade4-43ff-96c7-e78973f641d8');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (78, 'KARABÜK', 'a9a56146-ea55-47ca-9dfc-f8be9778b8b4');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (79, 'KİLİS', '51f2222c-d230-4416-b4a4-b9f29e5703e0');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (80, 'OSMANİYE', '0bfdcf96-4a4f-42eb-a7b5-45a3fdc227c1');
INSERT INTO public.iller (id, iladi, ilguid) VALUES (81, 'DÜZCE', '1108291c-9b78-4589-9023-5720da5a3451');


-- Completed on 2023-06-01 13:45:30

--
-- PostgreSQL database dump complete
--

