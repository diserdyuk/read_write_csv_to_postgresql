--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4 (Ubuntu 12.4-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.4 (Ubuntu 12.4-0ubuntu0.20.04.1)

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
-- Name: stock; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stock (
    id integer NOT NULL,
    symbol character varying(255) NOT NULL,
    price character varying(255) NOT NULL,
    url text NOT NULL
);


ALTER TABLE public.stock OWNER TO postgres;

--
-- Name: stock_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stock_id_seq OWNER TO postgres;

--
-- Name: stock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stock_id_seq OWNED BY public.stock.id;


--
-- Name: stock id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stock ALTER COLUMN id SET DEFAULT nextval('public.stock_id_seq'::regclass);


--
-- Data for Name: stock; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stock (id, symbol, price, url) FROM stdin;
1	AAPL	108.86	https://finance.yahoo.com/quote/AAPL?p=AAPL
2	NIO	30.58	https://finance.yahoo.com/quote/NIO?p=NIO
3	GE	7.42	https://finance.yahoo.com/quote/GE?p=GE
4	TWTR	41.36	https://finance.yahoo.com/quote/TWTR?p=TWTR
5	F	7.73	https://finance.yahoo.com/quote/F?p=F
6	CCL	13.71	https://finance.yahoo.com/quote/CCL?p=CCL
7	BAC	23.70	https://finance.yahoo.com/quote/BAC?p=BAC
8	NOK	3.3700	https://finance.yahoo.com/quote/NOK?p=NOK
9	PINS	58.95	https://finance.yahoo.com/quote/PINS?p=PINS
10	SNAP	39.39	https://finance.yahoo.com/quote/SNAP?p=SNAP
11	AMD	75.29	https://finance.yahoo.com/quote/AMD?p=AMD
12	AAL	11.28	https://finance.yahoo.com/quote/AAL?p=AAL
13	T	27.02	https://finance.yahoo.com/quote/T?p=T
14	XOM	32.62	https://finance.yahoo.com/quote/XOM?p=XOM
15	FB	263.11	https://finance.yahoo.com/quote/FB?p=FB
16	TSLA	388.04	https://finance.yahoo.com/quote/TSLA?p=TSLA
17	NCLH	16.63	https://finance.yahoo.com/quote/NCLH?p=NCLH
18	ITUB	4.0900	https://finance.yahoo.com/quote/ITUB?p=ITUB
19	INTC	44.28	https://finance.yahoo.com/quote/INTC?p=INTC
20	MSFT	202.47	https://finance.yahoo.com/quote/MSFT?p=MSFT
21	ABEV	2.1400	https://finance.yahoo.com/quote/ABEV?p=ABEV
22	WFC	21.45	https://finance.yahoo.com/quote/WFC?p=WFC
23	VALE	10.57	https://finance.yahoo.com/quote/VALE?p=VALE
24	CSCO	35.90	https://finance.yahoo.com/quote/CSCO?p=CSCO
25	MRO	3.9600	https://finance.yahoo.com/quote/MRO?p=MRO
26	BBD	3.5000	https://finance.yahoo.com/quote/BBD?p=BBD
27	C	41.42	https://finance.yahoo.com/quote/C?p=C
28	ET	5.15	https://finance.yahoo.com/quote/ET?p=ET
29	DKNG	35.40	https://finance.yahoo.com/quote/DKNG?p=DKNG
30	PFE	35.48	https://finance.yahoo.com/quote/PFE?p=PFE
31	OPK	3.5200	https://finance.yahoo.com/quote/OPK?p=OPK
32	AUY	5.56	https://finance.yahoo.com/quote/AUY?p=AUY
33	OXY	9.13	https://finance.yahoo.com/quote/OXY?p=OXY
34	BP	15.48	https://finance.yahoo.com/quote/BP?p=BP
35	SIRI	5.73	https://finance.yahoo.com/quote/SIRI?p=SIRI
36	CMCSA	42.24	https://finance.yahoo.com/quote/CMCSA?p=CMCSA
37	UAA	13.84	https://finance.yahoo.com/quote/UAA?p=UAA
38	PBR	6.63	https://finance.yahoo.com/quote/PBR?p=PBR
39	PLUG	14.00	https://finance.yahoo.com/quote/PLUG?p=PLUG
40	BSX	34.27	https://finance.yahoo.com/quote/BSX?p=BSX
41	FE	29.72	https://finance.yahoo.com/quote/FE?p=FE
42	ZNGA	8.99	https://finance.yahoo.com/quote/ZNGA?p=ZNGA
43	PLTR	10.13	https://finance.yahoo.com/quote/PLTR?p=PLTR
44	UAL	33.86	https://finance.yahoo.com/quote/UAL?p=UAL
45	ABBV	85.10	https://finance.yahoo.com/quote/ABBV?p=ABBV
46	CX	4.1500	https://finance.yahoo.com/quote/CX?p=CX
47	NLY	7.09	https://finance.yahoo.com/quote/NLY?p=NLY
48	CVX	69.50	https://finance.yahoo.com/quote/CVX?p=CVX
49	KMI	11.90	https://finance.yahoo.com/quote/KMI?p=KMI
50	RCL	56.42	https://finance.yahoo.com/quote/RCL?p=RCL
51	PE	10.01	https://finance.yahoo.com/quote/PE?p=PE
52	FSLY	63.51	https://finance.yahoo.com/quote/FSLY?p=FSLY
53	HAL	12.06	https://finance.yahoo.com/quote/HAL?p=HAL
54	MU	50.34	https://finance.yahoo.com/quote/MU?p=MU
55	MGM	20.57	https://finance.yahoo.com/quote/MGM?p=MGM
56	KO	48.06	https://finance.yahoo.com/quote/KO?p=KO
57	DVN	8.93	https://finance.yahoo.com/quote/DVN?p=DVN
58	COP	28.62	https://finance.yahoo.com/quote/COP?p=COP
59	SLB	14.94	https://finance.yahoo.com/quote/SLB?p=SLB
60	X	9.66	https://finance.yahoo.com/quote/X?p=X
61	DAL	30.64	https://finance.yahoo.com/quote/DAL?p=DAL
62	JPM	98.04	https://finance.yahoo.com/quote/JPM?p=JPM
63	MRVL	37.51	https://finance.yahoo.com/quote/MRVL?p=MRVL
64	PBCT	10.67	https://finance.yahoo.com/quote/PBCT?p=PBCT
65	MS	48.15	https://finance.yahoo.com/quote/MS?p=MS
66	GOLD	26.73	https://finance.yahoo.com/quote/GOLD?p=GOLD
67	BA	144.39	https://finance.yahoo.com/quote/BA?p=BA
68	RTX	54.32	https://finance.yahoo.com/quote/RTX?p=RTX
69	FCX	17.34	https://finance.yahoo.com/quote/FCX?p=FCX
70	SQ	154.88	https://finance.yahoo.com/quote/SQ?p=SQ
71	HL	4.5800	https://finance.yahoo.com/quote/HL?p=HL
72	VZ	56.99	https://finance.yahoo.com/quote/VZ?p=VZ
73	BABA	304.69	https://finance.yahoo.com/quote/BABA?p=BABA
74	UBER	33.41	https://finance.yahoo.com/quote/UBER?p=UBER
75	WPX	4.6100	https://finance.yahoo.com/quote/WPX?p=WPX
76	SCHW	41.11	https://finance.yahoo.com/quote/SCHW?p=SCHW
77	TME	14.92	https://finance.yahoo.com/quote/TME?p=TME
78	GM	34.53	https://finance.yahoo.com/quote/GM?p=GM
79	UA	12.23	https://finance.yahoo.com/quote/UA?p=UA
80	MO	36.08	https://finance.yahoo.com/quote/MO?p=MO
81	ORCL	56.11	https://finance.yahoo.com/quote/ORCL?p=ORCL
82	VIAC	28.57	https://finance.yahoo.com/quote/VIAC?p=VIAC
83	HPE	8.64	https://finance.yahoo.com/quote/HPE?p=HPE
84	PYPL	186.13	https://finance.yahoo.com/quote/PYPL?p=PYPL
85	FLEX	14.15	https://finance.yahoo.com/quote/FLEX?p=FLEX
86	ATVI	75.73	https://finance.yahoo.com/quote/ATVI?p=ATVI
87	GILD	58.15	https://finance.yahoo.com/quote/GILD?p=GILD
88	JBLU	11.97	https://finance.yahoo.com/quote/JBLU?p=JBLU
89	VER	6.20	https://finance.yahoo.com/quote/VER?p=VER
90	WORK	25.58	https://finance.yahoo.com/quote/WORK?p=WORK
91	APA	8.30	https://finance.yahoo.com/quote/APA?p=APA
92	SBUX	86.96	https://finance.yahoo.com/quote/SBUX?p=SBUX
93	LUV	39.53	https://finance.yahoo.com/quote/LUV?p=LUV
94	LI	20.17	https://finance.yahoo.com/quote/LI?p=LI
95	KGC	7.97	https://finance.yahoo.com/quote/KGC?p=KGC
96	BMY	58.45	https://finance.yahoo.com/quote/BMY?p=BMY
97	LUMN	8.62	https://finance.yahoo.com/quote/LUMN?p=LUMN
98	HST	10.48	https://finance.yahoo.com/quote/HST?p=HST
99	PTON	110.21	https://finance.yahoo.com/quote/PTON?p=PTON
100	CVE	3.2800	https://finance.yahoo.com/quote/CVE?p=CVE
101	EBAY	47.63	https://finance.yahoo.com/quote/EBAY?p=EBAY
102	ON	25.09	https://finance.yahoo.com/quote/ON?p=ON
103	TPR	22.23	https://finance.yahoo.com/quote/TPR?p=TPR
104	MRK	75.21	https://finance.yahoo.com/quote/MRK?p=MRK
105	WBA	34.04	https://finance.yahoo.com/quote/WBA?p=WBA
106	KHC	30.59	https://finance.yahoo.com/quote/KHC?p=KHC
107	APPS	28.69	https://finance.yahoo.com/quote/APPS?p=APPS
108	BKR	14.77	https://finance.yahoo.com/quote/BKR?p=BKR
109	V	181.71	https://finance.yahoo.com/quote/V?p=V
110	NKLA	18.31	https://finance.yahoo.com/quote/NKLA?p=NKLA
111	BRFS	2.9600	https://finance.yahoo.com/quote/BRFS?p=BRFS
112	KSS	21.29	https://finance.yahoo.com/quote/KSS?p=KSS
113	RDS-A	25.55	https://finance.yahoo.com/quote/RDS-A?p=RDS-A
114	XPEV	19.38	https://finance.yahoo.com/quote/XPEV?p=XPEV
115	NVDA	501.36	https://finance.yahoo.com/quote/NVDA?p=NVDA
116	MYL	14.54	https://finance.yahoo.com/quote/MYL?p=MYL
117	PCG	9.56	https://finance.yahoo.com/quote/PCG?p=PCG
118	RKT	18.23	https://finance.yahoo.com/quote/RKT?p=RKT
119	HBAN	10.44	https://finance.yahoo.com/quote/HBAN?p=HBAN
120	LVGO	139.77	https://finance.yahoo.com/quote/LVGO?p=LVGO
121	ZM	460.91	https://finance.yahoo.com/quote/ZM?p=ZM
122	CVS	56.09	https://finance.yahoo.com/quote/CVS?p=CVS
123	ATUS	26.95	https://finance.yahoo.com/quote/ATUS?p=ATUS
124	TEVA	8.72	https://finance.yahoo.com/quote/TEVA?p=TEVA
125	KR	32.21	https://finance.yahoo.com/quote/KR?p=KR
126	AMZN	3,036.15	https://finance.yahoo.com/quote/AMZN?p=AMZN
127	JD	81.52	https://finance.yahoo.com/quote/JD?p=JD
128	TJX	50.80	https://finance.yahoo.com/quote/TJX?p=TJX
129	CHWY	61.60	https://finance.yahoo.com/quote/CHWY?p=CHWY
130	INFY	14.27	https://finance.yahoo.com/quote/INFY?p=INFY
131	IBN	10.55	https://finance.yahoo.com/quote/IBN?p=IBN
132	WU	19.44	https://finance.yahoo.com/quote/WU?p=WU
133	DIS	121.25	https://finance.yahoo.com/quote/DIS?p=DIS
134	VIPS	21.40	https://finance.yahoo.com/quote/VIPS?p=VIPS
135	LYFT	22.83	https://finance.yahoo.com/quote/LYFT?p=LYFT
136	PBR-A	6.61	https://finance.yahoo.com/quote/PBR-A?p=PBR-A
137	SDC	8.90	https://finance.yahoo.com/quote/SDC?p=SDC
138	FTI	5.53	https://finance.yahoo.com/quote/FTI?p=FTI
139	QCOM	123.36	https://finance.yahoo.com/quote/QCOM?p=QCOM
140	NFLX	475.74	https://finance.yahoo.com/quote/NFLX?p=NFLX
141	NKE	120.08	https://finance.yahoo.com/quote/NKE?p=NKE
142	AGNC	13.97	https://finance.yahoo.com/quote/AGNC?p=AGNC
143	SPCE	17.42	https://finance.yahoo.com/quote/SPCE?p=SPCE
144	BBBY	19.80	https://finance.yahoo.com/quote/BBBY?p=BBBY
145	OSTK	56.10	https://finance.yahoo.com/quote/OSTK?p=OSTK
146	SU	11.29	https://finance.yahoo.com/quote/SU?p=SU
147	MPC	29.50	https://finance.yahoo.com/quote/MPC?p=MPC
148	GGB	3.8100	https://finance.yahoo.com/quote/GGB?p=GGB
149	NEM	62.84	https://finance.yahoo.com/quote/NEM?p=NEM
150	GPS	19.45	https://finance.yahoo.com/quote/GPS?p=GPS
151	JNJ	137.11	https://finance.yahoo.com/quote/JNJ?p=JNJ
152	CL	78.89	https://finance.yahoo.com/quote/CL?p=CL
153	AMAT	59.23	https://finance.yahoo.com/quote/AMAT?p=AMAT
154	MRNA	67.47	https://finance.yahoo.com/quote/MRNA?p=MRNA
155	NLOK	20.57	https://finance.yahoo.com/quote/NLOK?p=NLOK
156	IQ	24.70	https://finance.yahoo.com/quote/IQ?p=IQ
157	COTY	2.9000	https://finance.yahoo.com/quote/COTY?p=COTY
158	CLF	8.28	https://finance.yahoo.com/quote/CLF?p=CLF
159	EPD	16.57	https://finance.yahoo.com/quote/EPD?p=EPD
160	WMB	19.19	https://finance.yahoo.com/quote/WMB?p=WMB
161	COG	17.79	https://finance.yahoo.com/quote/COG?p=COG
162	DBX	18.26	https://finance.yahoo.com/quote/DBX?p=DBX
163	SAN	2.0100	https://finance.yahoo.com/quote/SAN?p=SAN
164	MA	288.64	https://finance.yahoo.com/quote/MA?p=MA
165	CARR	33.39	https://finance.yahoo.com/quote/CARR?p=CARR
166	FISV	95.47	https://finance.yahoo.com/quote/FISV?p=FISV
167	SABR	6.52	https://finance.yahoo.com/quote/SABR?p=SABR
168	IBM	111.66	https://finance.yahoo.com/quote/IBM?p=IBM
169	NOV	8.40	https://finance.yahoo.com/quote/NOV?p=NOV
170	SPWR	15.99	https://finance.yahoo.com/quote/SPWR?p=SPWR
171	EQT	15.14	https://finance.yahoo.com/quote/EQT?p=EQT
172	MET	37.85	https://finance.yahoo.com/quote/MET?p=MET
173	PG	137.10	https://finance.yahoo.com/quote/PG?p=PG
174	EQNR	12.83	https://finance.yahoo.com/quote/EQNR?p=EQNR
175	AIG	31.49	https://finance.yahoo.com/quote/AIG?p=AIG
176	RUN	52.02	https://finance.yahoo.com/quote/RUN?p=RUN
177	HPQ	17.96	https://finance.yahoo.com/quote/HPQ?p=HPQ
178	WMT	138.75	https://finance.yahoo.com/quote/WMT?p=WMT
179	BTG	6.44	https://finance.yahoo.com/quote/BTG?p=BTG
180	BEN	18.75	https://finance.yahoo.com/quote/BEN?p=BEN
181	PM	71.02	https://finance.yahoo.com/quote/PM?p=PM
182	FITB	23.22	https://finance.yahoo.com/quote/FITB?p=FITB
183	TDOC	196.46	https://finance.yahoo.com/quote/TDOC?p=TDOC
184	WY	27.29	https://finance.yahoo.com/quote/WY?p=WY
185	AES	19.50	https://finance.yahoo.com/quote/AES?p=AES
186	STNE	52.54	https://finance.yahoo.com/quote/STNE?p=STNE
187	CSX	78.94	https://finance.yahoo.com/quote/CSX?p=CSX
188	MDT	100.57	https://finance.yahoo.com/quote/MDT?p=MDT
189	NWL	17.66	https://finance.yahoo.com/quote/NWL?p=NWL
190	ING	6.82	https://finance.yahoo.com/quote/ING?p=ING
191	AEO	13.71	https://finance.yahoo.com/quote/AEO?p=AEO
192	KDP	26.90	https://finance.yahoo.com/quote/KDP?p=KDP
193	LYG	1.4100	https://finance.yahoo.com/quote/LYG?p=LYG
194	BRK-B	201.90	https://finance.yahoo.com/quote/BRK-B?p=BRK-B
195	EV	59.79	https://finance.yahoo.com/quote/EV?p=EV
196	GSK	33.42	https://finance.yahoo.com/quote/GSK?p=GSK
197	FSLR	87.04	https://finance.yahoo.com/quote/FSLR?p=FSLR
198	QRTEA	6.77	https://finance.yahoo.com/quote/QRTEA?p=QRTEA
199	OKE	29.00	https://finance.yahoo.com/quote/OKE?p=OKE
200	NRZ	7.50	https://finance.yahoo.com/quote/NRZ?p=NRZ
201	TAP	35.26	https://finance.yahoo.com/quote/TAP?p=TAP
202	KEY	12.98	https://finance.yahoo.com/quote/KEY?p=KEY
203	RDS-B	24.15	https://finance.yahoo.com/quote/RDS-B?p=RDS-B
204	NEE	73.21	https://finance.yahoo.com/quote/NEE?p=NEE
205	BK	34.36	https://finance.yahoo.com/quote/BK?p=BK
206	BIDU	133.05	https://finance.yahoo.com/quote/BIDU?p=BIDU
207	FIS	124.59	https://finance.yahoo.com/quote/FIS?p=FIS
208	TXN	144.59	https://finance.yahoo.com/quote/TXN?p=TXN
209	TFC	42.12	https://finance.yahoo.com/quote/TFC?p=TFC
210	TEAM	191.62	https://finance.yahoo.com/quote/TEAM?p=TEAM
211	DD	56.88	https://finance.yahoo.com/quote/DD?p=DD
212	AFL	33.96	https://finance.yahoo.com/quote/AFL?p=AFL
213	ETSY	121.59	https://finance.yahoo.com/quote/ETSY?p=ETSY
214	CNX	9.70	https://finance.yahoo.com/quote/CNX?p=CNX
215	RF	13.30	https://finance.yahoo.com/quote/RF?p=RF
216	MTG	10.06	https://finance.yahoo.com/quote/MTG?p=MTG
217	UPS	157.11	https://finance.yahoo.com/quote/UPS?p=UPS
218	LVS	48.06	https://finance.yahoo.com/quote/LVS?p=LVS
219	IVZ	13.11	https://finance.yahoo.com/quote/IVZ?p=IVZ
220	DOW	45.49	https://finance.yahoo.com/quote/DOW?p=DOW
221	PAA	6.25	https://finance.yahoo.com/quote/PAA?p=PAA
222	U	94.88	https://finance.yahoo.com/quote/U?p=U
223	WDC	37.73	https://finance.yahoo.com/quote/WDC?p=WDC
\.


--
-- Name: stock_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stock_id_seq', 223, true);


--
-- Name: stock stock_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

