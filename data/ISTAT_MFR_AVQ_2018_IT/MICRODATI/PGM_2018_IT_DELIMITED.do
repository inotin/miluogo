/* #Declinazione di responsabilità. 
#I file rilasciati in formato testo sono provvisti anche dei programmi di importazione per STATA, SAS e R. 
#L'Istat non garantisce che le funzioni contenute nei suddetti programmi siano esenti da errore e non si assume alcuna responsabilità sull’output ottenuto dal loro utilizzo.       */
/*  I valori delle label nelle variabili categoriche sono commentati a causa della presenza di codici non esclusivamente numerici. Comunque sono completamente documentati.  */
clear all
infile  using  PGM_2018_IT_DELIMITED.dct, clear
/*
label define  relpar_cl4 01   "persona di riferimento PR" 02   "coniuge di PR" 03   "convivente (coniugalmente) di PR" 04   "genitore (coniuge del genitore, convivente del genitore) di PR" 05   "genitore (coniuge del genitore, convivente del genitore) del coniuge o convivente di PR" 06   "figlio di PR nato dall'ultimo matrimonio o convivenza" 07   "figlio di PR o del coniuge nato da precedente matrimonio o convivenza" 08   "coniuge del figlio di PR (o del coniuge o convivente di PR)" 09   "convivente del figlio di PR (o del coniuge o convivente di PR)" 10   "nipote (figlio del figlio/a) di PR (o del coniuge o convivente di PR)" 11   "nipote (figlio del fratello/sorella) di PR (o del coniuge o convivente di PR)" 12   "fratello/sorella di PR" 13   "fratello/sorella del coniuge o convivente di PR" 14   "coniuge del fratello/sorella di PR (o del coniuge o convivente di PR)" 15   "convivente del fratello/sorella di PR (o del coniuge o convivente di PR)" 16   "altro parente di PR (o del coniuge o convivente di PR)" 17   "persona legata da amicizia"  
label define  etam_cl5 001   "da 0 a 2 anni" 002   "da 3 a 5 anni" 003   "da 6 a 10 anni" 004   "da 11 a 13 anni" 005   "da 14 a 15 anni" 006   "da 16 a 17 anni" 007   "da 18 a 19 anni" 008   "da 20 a 24 anni" 009   "da 25 a 29 anni" 010   "da 30 a 34 anni" 011   "da 35 a 39 anni" 012   "da 40 a 44 anni" 013   "da 45 a 49 anni" 014   "da 50 a 54 anni" 015   "da 55 a 59 anni" 016   "da 60 a 64 anni" 017   "da 65 a 74 anni" 018   "75 anni e piu'"  
label define  sesso_cl6 1   "maschio" 2   "femmina"  
label define  stcivm_cl7 1   "celibe/nubile" 2   "coniugato/a coabitante con il coniuge; unito/a civilmente" 3   "separato/a di fatto; separato/a legalmente; divorziato/a; gia' in unione civile (per scioglimento unione)" 6   "vedovo/a; gia' in unione civile (per decesso del partner)"  
label define  stcpm_cl8 1   "celibe/nubile" 2   "coniugato/a coabitante con il coniuge 	" 3   "coniugato/a non coabitante con il coniuge (separato/a di fatto) " 4   "separato/a legalmente" 5   "divorziato/a" 6   "vedovo/a"  
label define  istrm_cl10 01   "laurea e post-laurea" 07   "diploma" 09   "licenza di scuola media" 10   "licenza di scuola elementare" 11   "nessun titolo di studio"  
label define  condm_cl11 1   "occupato" 2   "in cerca di nuova occupazione" 3   "in cerca di prima occupazione" 4   "casalinga" 5   "studente" 7   "ritirato dal lavoro" 8   "altra condizione; inabile al lavoro"  
label define  lavpas_cl12 1   "no" 2   "sì"  
label define  posizm_cl13 01   "dirigente; autonomo come imprenditore; libero professionista" 02   "direttivo, quadro; impiegato" 03   "capo operaio, operaio subalterno e assimilati; apprendista;  lavorante a domicilio per conto d'impresa" 04   "lavoratore in proprio;  socio cooperativa Produzione Beni e/o prestazioni di servizio;  coadiuvante;  collaborazione coordinata e continuativa (con o senza progetto); prestazione d'opera occasionale"  
label define  atecom_cl14 1   "agricoltura, silvicoltura e pesca" 2   "totale industria escluse costruzioni" 3   "costruzioni" 4   "totale servizi"  
label define  tipnu2_cl15 0   "nessun nucleo" 1   "coppie con figli" 2   "coppie senza figli" 3   "monogenitore padre" 4   "monogenitore madre"  
label define  rpnuc2_cl17 0   "membro isolato" 1   "PR nucleo" 2   "coniuge o convivente" 3   "figlio"  
label define  tipfa2m_cl18 01   "persona sola" 02   "genitore con figli non celibi o nubili" 03   "insieme di parenti" 04   "parenti ed altri" 05   "persone non parenti" 06   "coppia coniugata senza figli, senza isolati" 07   "coppia non coniugata senza figli senza isolati" 08   "coppia coniugata con figli senza isolati" 09   "coppia non coniugata con figli senza isolati" 10   "monogenitore maschio celibe senza isolati" 11   "monogenitore maschio separato di fatto senza isolati;  monogenitore maschio separato legalmente senza isolati; monogenitore maschio divorziato senza isolati" 14   "monogenitore maschio vedovo senza isolati" 15   "monogenitore femmina nubile senza isolati" 16   "monogenitore femmina separata di fatto senza isolati; monogenitore femmina separata legalmente senza isolati; monogenitore femmina divorziata senza isolati" 19   "monogenitore femmina vedova senza isolati" 20   "coppia coniugata senza figli con isolati" 21   "coppia non coniugata senza figli con isolati" 22   "coppia coniugata con figli con isolati" 23   "coppia non coniugata con figli con isolati" 24   "monogenitore maschio celibe con isolati" 25   "monogenitore maschio separato di fatto con isolati;  monogenitore maschio separato legalmente con isolati; monogenitore maschio divorziato con isolati" 28   "monogenitore maschio vedovo con isolati" 29   "monogenitore femmina nubile con isolati" 30   "monogenitore femmina separata di fatto con isolati; monogenitore femmina separata legalmente con isolati; monogenitore femmina divorziata con isolati" 33   "monogenitore femmina vedova con isolati" 34   "due nuclei a due generazioni senza isolati" 35   "due nuclei di tipo fraterno senza isolati" 36   "due nuclei di altro tipo senza isolati" 37   "due nuclei a due generazioni con isolati" 38   "due nuclei di tipo fraterno con isolati" 39   "due nuclei di altro tipo con isolati" 40   "tre o pi¿ nuclei senza isolati" 41   "tre o pi¿ nuclei con isolati"  
label define  regmf_cl19 010   "Piemonte" 020   "Valle d'Aosta" 030   "Lombardia" 040   "Trentino-Alto Adige" 050   "Veneto" 060   "Friuli-Venezia Giulia" 070   "Liguria" 080   "Emilia-Romagna" 090   "Toscana" 100   "Umbria" 110   "Marche" 120   "Lazio" 130   "Abruzzo" 140   "Molise" 150   "Campania" 160   "Puglia" 170   "Basilicata" 180   "Calabria" 190   "Sicilia" 200   "Sardegna" 444   "Nord-ovest" 555   "Nord-est" 666   "Centro" 777   "Sud" 888   "Isole" 999   "non disponibile"  
label define  ripmf_cl20 1   "Nord-ovest" 2   "Nord-est" 3   "Centro" 4   "Sud" 5   "Isole" 9   "non disponibile"  
label define  dommf_cl21 1   "Area metropolitana" 3   "Comuni aventi fino a 10.000 abitanti" 5   "Comuni con oltre 10.000 abitanti" 9   "non disponibile"  
label define  redpr_cl23 1   "reddito da lavoro dipendente" 2   "reddito da lavoro autonomo" 3   "pensione" 4   "indennità e provvidenze varie" 5   "redditi patrimoniali" 6   "mantenimento da parte della famiglia"  
label define  citt_cl24 1   "italiana" 3   "straniera"  
label define  frscm_cl25 01   "NO" 02   "Dottorato di ricerca" 03   "Corsi di laurea o AFAM" 06   "Scuola secondaria di secondo grado" 13   "Scuola secondaria di primo grado" 14   "Scuola primaria" 15   "Scuola dell'infanzia e Asilo nido"  
label define  motas_cl26 1   "È importante da un punto di vista educativo" 2   "Per farlo stare in compagnia di altri bambini" 3   "Una baby sitter costerebbe troppo" 4   "Nessun familiare lo può accudire" 5   "Perché ci vanno tutti" 6   "Altro"  
label define  domrif_cl27 01   "presente"  
label define  memfam_cl28 02   "presente"  
label define  nidlon_cl29 03   "presente"  
label define  nodele_cl30 04   "presente"  
label define  malat_cl31 05   "presente"  
label define  abband_cl32 06   "presente"  
label define  nonvuo_cl33 07   "presente"  
label define  nomed_cl34 08   "presente"  
label define  tpicc_cl35 09   "presente"  
label define  ndtroppo_cl36 10   "presente"  
label define  oraris_cl37 11   "presente"  
label define  alnido_cl38 12   "presente"  
label define  divcom_cl43 1   "no" 2   "sì"  
label define  stcom_cl44 1   "presente"  
label define  stprov_cl45 2   "presente"  
label define  streg_cl46 3   "presente"  
label define  altreg_cl47 4   "presente"  
label define  estero_cl48 5   "presente"  
label define  usomt_cl49 1   "no, vado a piedi" 2   "sì, un solo mezzo" 3   "sì, due o più mezzi"  
label define  treno_cl50 01   "presente"  
label define  tram_cl51 02   "presente"  
label define  metro_cl52 03   "presente"  
label define  bus_cl53 04   "presente"  
label define  cor_cl54 05   "presente"  
label define  pazsc_cl55 06   "presente"  
label define  autoc_cl56 07   "presente"  
label define  autop_cl57 08   "presente"  
label define  moto_cl58 09   "presente"  
label define  bici_cl59 10   "presente"  
label define  almez_cl60 11   "presente"  
label define  mtpuso_cl61 01   "treno" 02   "tram" 03   "metropolitana" 04   "autobus, filobus (all'interno del Comune)" 05   "pullman, corriere (tra Comuni diversi)" 06   "pullman aziendale/scolastico" 07   "auto privata(come conducente)" 08   "auto privata(come passeggero)" 09   "motocicletta o ciclomotore" 10   "bicicletta" 11   "altro mezzo"  
label define  carpoo_cl62 1   "Tutti i giorni" 2   "Una o più volte alla settimana" 3   "Più raramente" 4   "Mai"  
label define  prosoc_cl63 1   "no" 2   "sì"  
label define  nprosom_cl64 01   "1" 02   "2" 03   "3" 04   "4" 05   "5 e piu'"  
label define  gumed_cl65 3   "no" 4   "sì"  
label define  ngumedm_cl66 01   "1" 02   "2" 03   "3" 04   "4" 05   "5 e piu'"  
label define  assdo_cl67 5   "no" 6   "sì"  
label define  nassdom_cl68 01   "1" 02   "2" 03   "3" 04   "4" 05   "5" 06   "6" 07   "7" 08   "8" 09   "9" 10   "10" 11   "11" 12   "12" 13   "13" 14   "14" 15   "15" 16   "da 16 a 20" 17   "da 21 a 30" 18   "da 31 a 40" 19   "da 41 a 50" 20   "51 e piu'"  
label define  ricov_cl69 1   "no" 2   "sì"  
label define  nnricam_cl70 01   "1" 02   "2" 03   "3" 04   "4" 05   "5 e piu'"  
label define  ggricam_cl71 01   "1" 02   "2" 03   "3" 04   "4" 05   "5" 06   "6" 07   "7" 08   "8" 09   "9" 10   "10" 11   "11" 12   "12" 13   "13" 14   "14" 15   "15" 16   "da 16 a 20" 17   "da 21 a 30" 18   "da 31 a 40" 19   "da 41 a 50" 20   "51 e piu'"  
label define  lricov_cl72 1   "ospedale o istituto di cura pubblico" 2   "casa di cura privata accreditata (convenzionata)" 3   "casa di cura privata a pagamento intero"  
label define  conspe_cl73 1   "no" 2   "sì"  
label define  condir_cl74 1   "spese sanitarie" 3   "altre spese (stanza, TV, ecc.)" 5   "entrambe"  
label define  conass_cl75 2   "spese sanitarie" 4   "altre spese (stanza, TV, ecc.)" 6   "entrambe"  
label define  qassam_cl76 1   "molto" 2   "abbastanza" 3   "poco" 4   "per niente" 5   "non so"  
label define  qassin_cl77 1   "molto" 2   "abbastanza" 3   "poco" 4   "per niente" 5   "non so"  
label define  qvitto_cl78 1   "molto" 2   "abbastanza" 3   "poco" 4   "per niente" 5   "non so"  
label define  qserig_cl79 1   "molto" 2   "abbastanza" 3   "poco" 4   "per niente" 5   "non so"  
label define  vismed12_cl80 1   "no" 2   "sì"  
label define  vspesa_cl81 1   "non ha pagato nulla" 2   "Ha pagato il ticket (consegnando la ricetta rossa del SSN)" 3   "Ha pagato interamente (senza rimborsi dallassicurazione)" 4   "Ha pagato interamente con rimborso parziale o totale dallassicurazione privata/aziendale"  
label define  vispre_cl82 1   "no" 2   "sì"  
label define  visri1_cl83 1   "no"  
label define  visri2_cl84 2   "presente"  
label define  visri3_cl85 3   "presente"  
label define  visri4_cl86 4   "presente"  
label define  visri5_cl87 5   "presente"  
label define  visri6_cl88 6   "presente"  
label define  visri7_cl89 7   "presente"  
label define  ansang12_cl90 1   "no" 2   "sì"  
label define  accer12_cl91 1   "no" 2   "sì"  
label define  aspesa_cl92 1   "Non ha pagato nulla" 2   "Ha pagato il ticket (consegnando la ricetta rossa del SSN)" 3   "Ha pagato interamente (senza rimborsi dallassicurazione)" 4   "Ha pagato interamente con rimborso parziale o totale dallassicurazione privata/aziendale"  
label define  accpre_cl93 1   "no" 2   "sì"  
label define  accri1_cl94 1   "no"  
label define  accri2_cl95 2   "presente"  
label define  accri3_cl96 3   "presente"  
label define  accri4_cl97 4   "presente"  
label define  accri5_cl98 5   "presente"  
label define  accri6_cl99 6   "presente"  
label define  accri7_cl100 7   "presente"  
label define  mincdo_cl101 1   "no" 2   "sì"  
label define  mnincdm_cl102 01   "1" 02   "2" 03   "3" 04   "4" 05   "5 e piu'"  
label define  spocon_cl103 1   "no" 2   "sì"  
label define  sposal_cl104 1   "no" 2   "sì"  
label define  attfis_cl105 1   "no" 2   "si, una o più volte a settimana" 3   "sì, una o più volte al mese" 4   "sì, più raramente"  
label define  freqspo_cl106 1   "cinque o più volte a settimana" 2   "tre o quattro volte a settimana" 3   "due volte a settimana" 4   "una volta a settimana" 5   "due o tre volte al mese" 6   "una volta al mese" 7   "qualche volta durante l'anno"  
label define  oresetsp_cl107 1   "Nell'ultima settimana non ho praticato" 2   "Fino a 2 ore" 3   "Da più di 2 ore fino a 4 ore" 4   "Da più di 4 ore fino a 6 ore" 5   "Da più di 6 ore fino a 10 ore" 6   "Più di 10 ore"  
label define  sppag_cl108 1   "no" 2   "sì"  
label define  spriv_cl109 1   "no" 2   "sì"  
label define  retta_cl110 1   "no" 2   "sì"  
label define  amici_cl111 1   "tutti i giorni" 2   "più di una volta a settimana" 3   "una volta alla settimana" 4   "qualche volta al mese (meno di 4 volte)" 5   "qualche volta durante l'anno" 6   "mai" 7   "non ho amici"  
label define  parent_cl112 1   "no" 2   "sì"  
label define  amici2_cl113 1   "no" 2   "sì" 3   "non so"  
label define  vicini_cl114 1   "no" 2   "sì, una persona o una famiglia" 3   "sì, alcune persone o famiglie"  
label define  cpeso_cl115 1   "Sì, tutti i giorni" 2   "Sì, almeno una volta a settimana" 3   "Sì, almeno una volta al mese" 4   "Sì, qualche volta durante l'anno" 5   "No"  
label define  farm_cl116 1   "sì" 2   "no" 3   "non ricordo"  
label define  pasto_cl117 1   "prima colazione" 2   "pranzo" 3   "cena"  
label define  colaz_cl118 1   "no" 2   "sì, bevo solo bevande come thè o caffè (escluso latte) senza mangiare niente" 3   "sì, bevo thè o caffè (escluso latte) e mangio qualcosa" 4   "sì, bevo latte, o caffè e latte, o cappuccino senza mangiare niente" 5   "sì, bevo latte, o caffe e latte, o cappuccino e mangio qualcosa" 6   "sì, mangio solo qualcosa (biscotti, fette biscottate, pane, brioches) senza bere nulla" 7   "sì, faccio un altro tipo di colazione (yogurt, cereali, succhi di frutta, ecc.)"  
label define  lpran_cl119 1   "in casa" 2   "in una mensa aziendale" 3   "in una mensa scolastica o dell'asilo" 4   "in un ristorante, trattoria, tavola calda" 5   "in un bar" 6   "sul posto di lavoro" 7   "a casa di genitori, parenti, amici" 8   "in altro luogo" 9   "non consuma pranzo"  
label define  panpas_cl120 1   "più di una volta al giorno" 2   "una volta al giorno" 3   "qualche volta a settimana" 4   "meno di una volta a settimana" 5   "mai"  
label define  salumi_cl121 1   "più di una volta al giorno" 2   "una volta al giorno" 3   "qualche volta a settimana" 4   "meno di una volta a settimana" 5   "mai"  
label define  pollo_cl122 1   "più di una volta al giorno" 2   "una volta al giorno" 3   "qualche volta a settimana" 4   "meno di una volta a settimana" 5   "mai"  
label define  cov_cl123 1   "più di una volta al giorno" 2   "una volta al giorno" 3   "qualche volta a settimana" 4   "meno di una volta a settimana" 5   "mai"  
label define  cbov_cl124 1   "più di una volta al giorno" 2   "una volta al giorno" 3   "qualche volta a settimana" 4   "meno di una volta a settimana" 5   "mai"  
label define  cmaial_cl125 1   "più di una volta al giorno" 2   "una volta al giorno" 3   "qualche volta a settimana" 4   "meno di una volta a settimana" 5   "mai"  
label define  latte_cl126 1   "più di una volta al giorno" 2   "una volta al giorno" 3   "qualche volta a settimana" 4   "meno di una volta a settimana" 5   "mai"  
label define  form_cl127 1   "più di una volta al giorno" 2   "una volta al giorno" 3   "qualche volta a settimana" 4   "meno di una volta a settimana" 5   "mai"  
label define  uova_cl128 1   "più di una volta al giorno" 2   "una volta al giorno" 3   "qualche volta a settimana" 4   "meno di una volta a settimana" 5   "mai"  
label define  pesce_cl129 1   "più di una volta al giorno" 2   "una volta al giorno" 3   "qualche volta a settimana" 4   "meno di una volta a settimana" 5   "mai"  
label define  verd_cl130 1   "più di una volta al giorno" 2   "una volta al giorno" 3   "qualche volta a settimana" 4   "meno di una volta a settimana" 5   "mai"  
label define  pomod_cl131 1   "più di una volta al giorno" 2   "una volta al giorno" 3   "qualche volta a settimana" 4   "meno di una volta a settimana" 5   "mai"  
label define  frutta_cl132 1   "più di una volta al giorno" 2   "una volta al giorno" 3   "qualche volta a settimana" 4   "meno di una volta a settimana" 5   "mai"  
label define  legumi_cl135 1   "più di una volta al giorno" 2   "una volta al giorno" 3   "qualche volta a settimana" 4   "meno di una volta a settimana" 5   "mai"  
label define  patate_cl136 1   "più di una volta al giorno" 2   "una volta al giorno" 3   "qualche volta a settimana" 4   "meno di una volta a settimana" 5   "mai"  
label define  snack_cl137 1   "più di una volta al giorno" 2   "una volta al giorno" 3   "qualche volta a settimana" 4   "meno di una volta a settimana" 5   "mai"  
label define  dolci_cl138 1   "più di una volta al giorno" 2   "una volta al giorno" 3   "qualche volta a settimana" 4   "meno di una volta a settimana" 5   "mai"  
label define  cgras_cl139 1   "olio di oliva" 2   "altri grassi e oli vegetali (olio di semi, margarina ecc.)" 3   "burro o strutto"  
label define  fgras_cl140 1   "olio di oliva" 2   "altri grassi e oli vegetali (olio di semi, margarina ecc.)" 3   "burro o strutto"  
label define  qtsale_cl141 1   "No, non presto attenzione" 2   "Sì, ne ho ridotto l'uso nel tempo" 3   "Sì, ho da sempre fatto attenzione"  
label define  iodio_cl142 1   "no" 2   "sì"  
label define  acmin_cl143 1   "oltre 1 litro al giorno" 2   "da 1/2 litro a 1 litro al giorno" 3   "1-2 bicchieri al giorno (meno di 1/2 litro)" 4   "più raramente" 5   "solo stagionalmente" 6   "non ne consuma"  
label define  bgas_cl144 1   "oltre 1 litro al giorno" 2   "da 1/2 litro a 1 litro al giorno" 3   "1-2 bicchieri al giorno (meno di 1/2 litro)" 4   "più raramente" 5   "solo stagionalmente" 6   "non ne consuma"  
label define  birra_cl145 1   "oltre 1 litro al giorno" 2   "da 1/2 litro a 1 litro al giorno" 3   "1-2 bicchieri al giorno (meno di 1/2 litro)" 4   "più raramente" 5   "solo stagionalmente" 6   "non ne consuma"  
label define  vino_cl146 1   "oltre 1 litro al giorno" 2   "da 1/2 litro a 1 litro al giorno" 3   "1-2 bicchieri al giorno (meno di 1/2 litro)" 4   "più raramente" 5   "solo stagionalmente" 6   "non ne consuma"  
label define  bicbirram_cl147 01   "1" 02   "2" 03   "3" 04   "4" 05   "5" 06   "6 e piu'"  
label define  bicvinom_cl148 01   "1" 02   "2" 03   "3" 04   "4" 05   "5" 06   "6 e piu'"  
label define  bfpas_cl149 1   "tutti i giorni" 2   "qualche volta alla settimana" 3   "più raramente" 4   "mai"  
label define  bicfuorim_cl150 01   "01" 02   "02" 03   "03" 04   "04" 05   "05" 06   "06" 07   "07" 08   "08" 09   "09" 10   "10 - 20" 11   "21 e piu'"  
label define  anal_cl151 1   "più di 2 bicchierini al giorno" 2   "1-2 bicchierini al giorno" 3   "qualche bicchierino alla settimana" 4   "più raramente" 5   "eccezionalmente" 6   "non ne consumo"  
label define  alcol_cl152 1   "più di 2 bicchierini al giorno" 2   "1-2 bicchierini al giorno" 3   "qualche bicchierino alla settimana" 4   "più raramente" 5   "eccezionalmente" 6   "non ne consumo"  
label define  amar_cl153 1   "più di 2 bicchierini al giorno" 2   "1-2 bicchierini al giorno" 3   "qualche bicchierino alla settimana" 4   "più raramente" 5   "eccezionalmente" 6   "non ne consumo"  
label define  liquor_cl154 1   "più di 2 bicchierini al giorno" 2   "1-2 bicchierini al giorno" 3   "qualche bicchierino alla settimana" 4   "più raramente" 5   "eccezionalmente" 6   "non ne consumo"  
label define  bicaltrom_cl155 01   "1" 02   "2" 03   "3" 04   "4 - 5" 05   "6 e piu'"  
label define  alcol12_cl156 1   "Sì" 2   "No, ma ne ho consumato in passato" 3   "No, non ne consumo"  
label define  bicalc_cl157 1   "no" 2   "sì"  
label define  nbicalcm_cl158 001   "001" 002   "002" 003   "003" 004   "004" 005   "005" 006   "006" 007   "007" 008   "008" 009   "009" 010   "010" 011   "011" 012   "012" 013   "013" 014   "014" 015   "015" 016   "016" 018   "018" 020   "020" 021   "21 e pi¿"  
label define  dovcasp_cl159 1   "presente"  
label define  dovampa_cl160 2   "presente"  
label define  dovristo_cl161 3   "presente"  
label define  dovpub_cl162 4   "presente"  
label define  dovdisco_cl163 5   "presente"  
label define  dovstr_cl164 6   "presente"  
label define  dovalt_cl165 7   "presente"  
label define  esig_cl166 1   "sì" 2   "no, ma l'ho usata in passato" 3   "no, non l'ho mai usata"  
label define  fumo_cl167 1   "Sì" 2   "No, ma ho fumato in passato" 3   "No, non ho mai fumato"  
label define  frfumo_cl168 1   "Tutti i giorni" 2   "Occasionalmente"  
label define  tfumo_cl169 1   "pipa" 2   "sigari" 3   "sigarette"  
label define  nsigarm_cl170 01   "01" 02   "02" 03   "03" 04   "04" 05   "05" 06   "06" 07   "07" 08   "08" 09   "09" 10   "10" 11   "11" 12   "12" 13   "13" 14   "14" 15   "15" 16   "16 - 20" 17   "21 e piu'"  
label define  salute_cl171 1   "molto bene" 2   "bene" 3   "né bene né male" 4   "male" 5   "molto male"  
label define  croni_cl172 1   "no" 2   "sì"  
label define  limita_cl173 1   "limitazioni gravi" 2   "limitazioni non gravi" 3   "nessuna limitazione"  
label define  diab_cl174 1   "no" 2   "sì"  
label define  ipar_cl175 3   "no" 4   "sì"  
label define  infar_cl176 5   "no" 6   "sì"  
label define  cuore_cl177 7   "no" 8   "sì"  
label define  bron_cl178 1   "no" 2   "sì"  
label define  asma_cl179 3   "no" 4   "sì"  
label define  aller_cl180 5   "no" 6   "sì"  
label define  tumor_cl181 7   "no" 8   "sì"  
label define  ulcer_cl182 1   "no" 2   "sì"  
label define  fegato_cl183 3   "no" 4   "sì"  
label define  cirro_cl184 5   "no" 6   "sì"  
label define  calre_cl185 7   "no" 8   "sì"  
label define  artro_cl186 1   "no" 2   "sì"  
label define  osteo_cl187 3   "no" 4   "sì"  
label define  neuro_cl188 5   "no" 6   "sì"  
label define  sf9_cl189 1   "Sempre" 2   "Quasi sempre" 3   "Molto tempo" 4   "Una parte del tempo" 5   "Quasi mai" 6   "Mai"  
label define  sf11_cl190 1   "Sempre" 2   "Quasi sempre" 3   "Molto tempo" 4   "Una parte del tempo" 5   "Quasi mai" 6   "Mai"  
label define  sf13_cl191 1   "Sempre" 2   "Quasi sempre" 3   "Molto tempo" 4   "Una parte del tempo" 5   "Quasi mai" 6   "Mai"  
label define  sf14_cl192 1   "Sempre" 2   "Quasi sempre" 3   "Molto tempo" 4   "Una parte del tempo" 5   "Quasi mai" 6   "Mai"  
label define  sf15_cl193 1   "Sempre" 2   "Quasi sempre" 3   "Molto tempo" 4   "Una parte del tempo" 5   "Quasi mai" 6   "Mai"  
label define  radio_cl194 1   "no" 2   "sì, tutti i giorni" 3   "sì, qualche giorno"  
label define  tele_cl197 1   "no" 2   "sì, tutti i giorni" 3   "sì, ogni tanto"  
label define  pctempo_cl200 1   "sì, negli ultimi 3 mesi" 2   "sì, da più di 3 mesi a 1 anno fa" 3   "sì, più di 1 anno fa" 4   "mai"  
label define  freqpc12_cl201 1   "tutti i giorni" 2   "qualche volta alla settimana" 3   "una volta alla settimana" 4   "qualche volta al mese (meno di 4 volte)" 5   "meno di una volta al mese"  
label define  inttempo_cl202 1   "sì, negli ultimi 3 mesi" 2   "sì, da più 3 mesi a 1 anno fa" 3   "sì, più di 1 anno fa" 4   "mai"  
label define  freqin12_cl203 1   "tutti i giorni" 2   "qualche volta alla settimana" 3   "una volta alla settimana" 4   "qualche volta al mese (meno di 4 volte)" 5   "meno di una volta al mese"  
label define  iaipcscri_cl204 1   "presente"  
label define  iaipcport_cl205 2   "presente"  
label define  iaitablet_cl206 3   "presente"  
label define  iaidismob_cl207 4   "presente"  
label define  iaialtro_n_cl208 5   "presente"  
label define  disp_sma_cl209 1   "no" 2   "sì"  
label define  disp_lap_cl210 3   "no" 4   "sì"  
label define  disp_tab_cl211 5   "no" 6   "sì"  
label define  disppda_cl212 7   "no" 8   "Sì"  
label define  incomu5_cl213 1   "no" 2   "sì"  
label define  incomu1b_cl214 3   "no" 4   "sì"  
label define  incomu34_cl215 5   "no" 6   "sì"  
label define  incomu6_cl216 7   "no" 8   "sì"  
label define  incomu7_cl217 1   "no" 2   "sì"  
label define  intatt20_cl218 3   "no" 4   "sì"  
label define  intatt21_cl219 5   "no" 6   "sì"  
label define  intatt26_cl220 7   "no" 8   "sì"  
label define  intatt5_cl221 1   "no" 2   "sì"  
label define  intatt4_cl222 3   "no" 4   "sì"  
label define  intsal3_cl223 5   "no" 6   "sì"  
label define  intatt14_cl224 7   "no" 8   "sì"  
label define  intatt11_cl225 1   "no" 2   "sì"  
label define  intatt33_cl226 3   "no" 4   "sì"  
label define  intatt13_cl227 5   "no" 6   "sì"  
label define  intatt17_cl228 7   "no" 8   "sì"  
label define  intatt16_cl229 1   "no" 2   "sì"  
label define  intatt10_cl230 3   "no" 4   "sì"  
label define  intatt8_cl231 1   "no" 2   "sì"  
label define  intatt31_cl232 3   "no" 4   "sì"  
label define  intatt32_cl233 5   "no" 6   "sì"  
label define  intatt7bn_cl234 7   "no" 8   "sì"  
label define  intatt30a_cl235 1   "no" 2   "sì"  
label define  intatt30b_cl236 3   "no" 4   "sì"  
label define  intatt28a_cl237 5   "no" 6   "sì"  
label define  intatt28b_cl238 7   "no" 8   "sì"  
label define  cloudsal_cl239 1   "no" 2   "sì"  
label define  skl_fre_cl240 1   "no" 2   "sì"  
label define  skl_auto_cl241 3   "no" 4   "sì"  
label define  skl_pub_cl242 5   "no" 6   "sì"  
label define  skl_dat_cl243 7   "no" 8   "sì"  
label define  skl_coll_cl244 1   "no" 2   "sì"  
label define  p2p_acc_cl245 1   "no" 2   "sì"  
label define  p2p_accalt_cl246 3   "no" 4   "sì"  
label define  p2p_tra_cl247 1   "no" 2   "sì"  
label define  p2p_tralt_cl248 3   "no" 4   "sì"  
label define  p2p_food_cl249 1   "no" 2   "sì"  
label define  p2p_wrk_cl250 1   "no" 2   "sì"  
label define  cosint9a_cl251 1   "no" 2   "sì"  
label define  cosint9b_cl252 3   "no" 4   "sì"  
label define  cosint9c_cl253 5   "no" 6   "sì"  
label define  pr_up_cl254 1   "no" 2   "sì"  
label define  pr_sm_cl255 3   "no" 4   "sì"  
label define  pr_st_cl256 5   "no" 6   "sì"  
label define  pr_card_cl257 7   "no" 8   "sì"  
label define  pr_cod_cl258 1   "no" 2   "sì"  
label define  pr_pin_cl259 3   "no" 4   "sì"  
label define  pr_alt_cl260 5   "no" 6   "sì"  
label define  intuso1_cl261 1   "no" 2   "sì, negli ultimi 3 mesi" 3   "sì, da 3 mesi a 1 anno fa"  
label define  intuso2_cl262 1   "no" 2   "sì, negli ultimi 3 mesi" 3   "sì, da 3 mesi a 1 anno fa"  
label define  intuso3_cl263 1   "no" 2   "sì negli ultimi 3 mesi" 3   "sì da 3 mesi a 1 anno fa"  
label define  intcom_cl264 1   "sì, negli ultimi 3 mesi" 2   "sì, da 3 mesi a 1 anno fa" 3   "sì, più di 1 anno fa" 4   "mai"  
label define  nordini_cl265 1   "1-2 volte" 2   "3-5 volte" 3   "6-10 volte" 4   "11 o più volte" 5   "Non so"  
label define  spintcom_cl266 1   "Meno di 50 euro" 2   "Da 50 a meno di 100 euro" 3   "Da 100 a meno di 500 euro" 4   "Da 500 a meno di 1.000 euro" 5   "1.000 euro o più" 6   "Non so"  
label define  cosint1_cl267 01   "presente"  
label define  cosint2_cl268 02   "presente"  
label define  cosint19_cl269 03   "presente"  
label define  cosint5_cl270 04   "presente"  
label define  cosint3_cl271 05   "presente"  
label define  cosint22a_cl272 06   "presente"  
label define  cosint22b_cl273 07   "presente"  
label define  cosint21_cl274 08   "presente"  
label define  cosint15_cl275 09   "presente"  
label define  cosint16_cl276 10   "presente"  
label define  cosint7_cl277 11   "presente"  
label define  cosint8_cl278 12   "presente"  
label define  cosint20_cl279 13   "presente"  
label define  cosint18_cl280 14   "presente"  
label define  cosint17_cl281 15   "presente"  
label define  cosint11_cl282 16   "presente"  
label define  cosint12_cl283 17   "presente"  
label define  cosint14_cl284 18   "presente"  
label define  vendi1_cl285 1   "no" 2   "sì"  
label define  vendi2_cl286 3   "no" 4   "sì"  
label define  vendi3_cl287 5   "no" 6   "sì"  
label define  vendi4_cl288 7   "no" 8   "sì"  
label define  ct_work_cl289 1   "presente"  
label define  mac_work_cl290 2   "presente"  
label define  no_ictw_cl291 3   "presente"  
label define  wrk_ema_cl292 1   "no" 2   "sì"  
label define  wrk_doc_cl293 3   "no" 4   "sì"  
label define  wrk_sm_cl294 5   "no" 6   "sì"  
label define  wrk_inc_cl295 7   "no" 8   "sì"  
label define  wrk_sof_cl296 1   "no" 2   "sì"  
label define  wrk_it_cl297 3   "no" 4   "sì"  
label define  wrk_camb_cl298 1   "no" 2   "sì"  
label define  wrk_ns_cl299 1   "no" 2   "sì"  
label define  giud_skl_cl300 1   "avrei bisogno di ulteriore formazione per svolgere al meglio il mio lavoro" 2   "le mie competenze sono adeguate al lavoro che svolgo" 3   "ho le compentenze necessarie per far fronte ad incarichi/mansioni più impegnative"  
label define  teatro_cl301 1   "mai" 2   "1-3 volte" 3   "4-6 volte" 4   "7-12 volte" 5   "più di 12 volte"  
label define  cine_cl302 1   "mai" 2   "1-3 volte" 3   "4-6 volte" 4   "7-12 volte" 5   "più di 12 volte"  
label define  museo_cl303 1   "mai" 2   "1-3 volte" 3   "4-6 volte" 4   "7-12 volte" 5   "più di 12 volte"  
label define  music_cl304 1   "mai" 2   "1-3 volte" 3   "4-6 volte" 4   "7-12 volte" 5   "più di 12 volte"  
label define  acmus_cl305 1   "mai" 2   "1-3 volte" 3   "4-6 volte" 4   "7-12 volte" 5   "più di 12 volte"  
label define  spspo_cl306 1   "mai" 2   "1-3 volte" 3   "4-6 volte" 4   "7-12 volte" 5   "più di 12 volte"  
label define  disco_cl307 1   "mai" 2   "1-3 volte" 3   "4-6 volte" 4   "7-12 volte" 5   "più di 12 volte"  
label define  monum_cl308 1   "mai" 2   "1-3 volte" 3   "4-6 volte" 4   "7-12 volte" 5   "più di 12 volte"  
label define  lquot_cl309 1   "no" 2   "sì, 1 o 2 giorni" 3   "sì, 3 o 4 giorni" 4   "sì, 5 o 6 giorni" 5   "sì, tutti i giorni"  
label define  libri_cl310 1   "no" 2   "sì"  
label define  nlibrim_cl311 01   "01" 02   "02" 03   "03" 04   "04" 05   "05" 06   "06" 07   "07" 08   "08" 09   "09" 10   "10" 11   "11" 12   "12" 13   "13" 14   "14" 15   "15" 16   "16" 17   "17" 18   "18" 19   "19" 20   "20" 21   "21-25" 22   "26-30" 23   "31-40" 24   "41-50" 25   "51 e piu'"  
label define  nlibri_carm_cl312 01   "01" 02   "02" 03   "03" 04   "04" 05   "05" 06   "06" 07   "07" 08   "08" 09   "09" 10   "10" 11   "11" 12   "12" 13   "13" 14   "14" 15   "15" 16   "16" 17   "17" 18   "18" 19   "19" 20   "20" 21   "21-25" 22   "26-30" 23   "31-40" 24   "41-50" 25   "51 e piu'"  
label define  nleboom_cl313 00   "00" 01   "01" 02   "02" 03   "03" 04   "04" 05   "05" 06   "06" 07   "07" 08   "08" 09   "09" 10   "10" 11   "11" 12   "12" 13   "13" 14   "14" 15   "15" 16   "16" 17   "17" 18   "18" 19   "19" 20   "20" 21   "21-25" 22   "26-30" 23   "31-40" 24   "41-50" 25   "51 e piu'"  
label define  nlaudiom_cl314 00   "00" 01   "01" 02   "02" 03   "03" 04   "4 e piu'"  
label define  rivset_cl315 1   "no" 2   "sì, una o più volte a settimana" 3   "sì, qualche volta al mese" 4   "sì, più raramente"  
label define  nosett_cl316 1   "no" 2   "sì"  
label define  chies_cl317 1   "tutti i giorni" 2   "qualche volta alla settimana" 3   "una volta alla settimana" 4   "qualche volta al mese (meno di 4 volte)" 5   "qualche volta l'anno" 6   "mai"  
label define  sitec_cl318 1   "molto" 2   "abbastanza" 3   "poco" 4   "per niente"  
label define  salut_cl319 1   "molto" 2   "abbastanza" 3   "poco" 4   "per niente"  
label define  relfam_cl320 1   "molto" 2   "abbastanza" 3   "poco" 4   "per niente"  
label define  relam_cl321 1   "molto" 2   "abbastanza" 3   "poco" 4   "per niente"  
label define  temlib_cl322 1   "molto" 2   "abbastanza" 3   "poco" 4   "per niente"  
label define  ambiente_cl323 1   "molto" 2   "abbastanza" 3   "poco" 4   "per niente"  
label define  paesaggio_cl324 1   "No" 2   "Sì"  
label define  sodlav2_cl325 1   "molto" 2   "abbastanza" 3   "poco" 4   "per niente"  
label define  polit_cl326 1   "tutti i giorni" 2   "qualche volta alla settimana" 3   "una volta alla settimana" 4   "qualche volta al mese" 5   "qualche volta l'anno" 6   "mai"  
label define  ppapo_cl327 1   "no" 2   "sì"  
label define  psind_cl328 3   "no" 4   "sì"  
label define  pgrvo_cl329 5   "no" 6   "sì"  
label define  paeco_cl330 1   "no" 2   "sì"  
label define  pcult_cl331 3   "no" 4   "sì"  
label define  paspro_cl332 5   "no" 6   "sì"  
label define  comiz_cl333 1   "no" 2   "sì"  
label define  cortei_cl334 3   "no" 4   "sì"  
label define  dibpo_cl335 5   "no" 6   "sì"  
label define  finpa_cl336 7   "no" 8   "sì"  
label define  finas_cl337 1   "no" 2   "sì"  
label define  volon_cl338 3   "no" 4   "sì"  
label define  atgra_cl339 5   "no" 6   "sì"  
label define  volpa_cl340 7   "no" 8   "sì"  
label define  volsi_cl341 1   "no" 2   "sì"  
label define  politi_cl342 1   "tutti i giorni" 2   "qualche volta alla settimana" 3   "una volta alla settimana" 4   "qualche volta al mese" 5   "qualche volta l'anno" 6   "mai"  
label define  pradio_cl343 01   "presente"  
label define  ptelev_cl344 02   "presente"  
label define  pquot_cl345 03   "presente"  
label define  psett_cl346 04   "presente"  
label define  pariv_cl347 05   "presente"  
label define  pamici_cl348 06   "presente"  
label define  pparen_cl349 07   "presente"  
label define  pconos_cl350 08   "presente"  
label define  pcolav_cl351 09   "presente"  
label define  orgpol_cl352 10   "presente"  
label define  orgsin_cl353 11   "presente"  
label define  altpol_cl354 12   "presente"  
label define  pweb_cl355 1   "no" 2   "sì"  
label define  pwebm1_cl356 1   "presente"  
label define  pwebm2_cl357 2   "presente"  
label define  pwebm3_cl358 3   "presente"  
label define  pwebm4_cl359 4   "presente"  
label define  pwebm5_cl360 5   "presente"  
label define  pwebm6_cl361 6   "presente"  
label define  npoli_cl362 1   "presente"  
label define  ntpoli_cl363 2   "presente"  
label define  polcom_cl364 3   "presente"  
label define  sfipol_cl365 4   "presente"  
label define  naltpo_cl366 5   "presente"  
label define  uffan_cl367 1   "no" 2   "sì"  
label define  tufan_cl368 1   "fino a 10 minuti" 2   "da 11 a 20 minuti" 3   "da 21 a 30 minuti" 4   "da 31 a 45 minuti" 5   "piu di 45 minuti"  
label define  gorar_cl369 1   "molto comodo" 2   "abbastanza comodo" 3   "poco comodo" 4   "per niente comodo" 5   "non so"  
label define  corar_cl370 1   "l'orario va bene così com'è" 2   "orario continuato fino alle 16/17 almeno in alcuni giorni" 3   "due aperture (mattina e pomeriggio) dal lunedì al venerdì" 4   "possibilità di lunga apertura (es. 8/20) in alcuni periodi fissi (es. 1 volta alla settimana)" 5   "altro orario" 6   "mi è indifferente" 7   "non so"  
label define  autoce_cl371 1   "no" 2   "sì"  
label define  canag_cl372 01   "no" 02   "sì, rivolgendomi direttamente all'ufficio competente" 03   "sì, rivolgendomi ad agenzia o privati" 23   "sì, rivolgendomi sia all'ufficio competente sia ad agenzia o privati"  
label define  praut_cl373 01   "no" 02   "sì, rivolgendomi direttamente all'ufficio competente" 03   "sì, rivolgendomi ad agenzia o privati" 23   "sì, rivolgendomi sia all'ufficio competente sia ad agenzia o privati"  
label define  cersc_cl374 01   "no" 02   "sì, rivolgendomi direttamente all'ufficio competente" 03   "sì, rivolgendomi ad agenzia o privati" 23   "sì, rivolgendomi sia all'ufficio competente sia ad agenzia o privati"  
label define  catas_cl375 01   "no" 02   "sì, rivolgendomi direttamente all'ufficio competente" 03   "sì, rivolgendomi ad agenzia o privati" 23   "sì, rivolgendomi sia all'ufficio competente sia ad agenzia o privati"  
label define  caltro_cl376 01   "no" 02   "sì, rivolgendomi direttamente all'ufficio competente" 03   "sì, rivolgendomi ad agenzia o privati" 23   "sì, rivolgendomi sia all'ufficio competente sia ad agenzia o privati"  
label define  usoss_cl377 1   "no" 2   "sì"  
label define  temss_cl378 1   "fino a 10 minuti" 2   "da 11 a 20 minuti" 3   "da 21 a 30 minuti" 4   "da 31 a 45 minuti" 5   "più di 45 minuti"  
label define  gousl_cl379 1   "molto comodo" 2   "abbastanza comodo" 3   "poco comodo" 4   "per niente comodo" 5   "non so"  
label define  cousl_cl380 1   "l'orario va bene così com'è" 2   "orario continuato fino alle 16/17 almeno in alcuni giorni" 3   "due aperture (mattina e pomeriggio) dal lunedì al venerdì" 4   "possibilità di lunga apertura (es. 8/20) in alcuni periodi fissi (es. 1 volta alla settimana)" 5   "altro orario" 6   "mi è indifferente" 7   "non so"  
label define  uffpos_cl381 1   "no" 2   "sì"  
label define  racco_cl382 1   "una o più volte al mese" 2   "una o più volte ogni due mesi" 3   "qualche volta l'anno" 4   "mai"  
label define  vaglia_cl383 1   "una o più volte al mese" 2   "una o più volte ogni due mesi" 3   "qualche volta l'anno" 4   "mai"  
label define  vcoc_cl384 1   "una o più volte al mese" 2   "una o più volte ogni due mesi" 3   "qualche volta l'anno" 4   "mai"  
label define  rpens_cl385 1   "una o più volte al mese" 2   "una o più volte ogni due mesi" 3   "qualche volta l'anno" 4   "mai"  
label define  rpara_cl386 1   "una o più volte al mese" 2   "una o più volte ogni due mesi" 3   "qualche volta l'anno" 4   "mai"  
label define  tracc_cl387 1   "fino a 10 minuti" 2   "da 11 a 20 minuti" 3   "da 21 a 30 minuti" 4   "da 31 a 45 minuti" 5   "più di 45 minuti"  
label define  tvagl_cl388 1   "fino a 10 minuti" 2   "da 11 a 20 minuti" 3   "da 21 a 30 minuti" 4   "da 31 a 45 minuti" 5   "più di 45 minuti"  
label define  tccp_cl389 1   "fino a 10 minuti" 2   "da 11 a 20 minuti" 3   "da 21 a 30 minuti" 4   "da 31 a 45 minuti" 5   "più di 45 minuti"  
label define  trpen_cl390 1   "fino a 10 minuti" 2   "da 11 a 20 minuti" 3   "da 21 a 30 minuti" 4   "da 31 a 45 minuti" 5   "più di 45 minuti"  
label define  tpara_cl391 1   "fino a 10 minuti" 2   "da 11 a 20 minuti" 3   "da 21 a 30 minuti" 4   "da 31 a 45 minuti" 5   "più di 45 minuti"  
label define  gospo_cl392 1   "molto comodo" 2   "abbastanza comodo" 3   "poco comodo" 4   "per niente comodo" 5   "non so"  
label define  cospo_cl393 1   "l'orario va bene così com'è" 2   "orario continuato fino alle 16/17 almeno in alcuni giorni" 3   "due aperture (mattina e pomeriggio) dal lunedì al venerdì" 4   "possibilità di lunga apertura (es. 8/20) in alcuni periodi fissi (es. 1 volta alla settimana)" 5   "altro orario" 6   "mi è indifferente" 7   "non so"  
label define  banca_cl394 1   "no" 2   "sì"  
label define  taban_cl395 1   "fino a 10 minuti" 2   "da 11 a 20 minuti" 3   "da 21 a 30 minuti" 4   "da 31 a 45 minuti" 5   "piu di 45 minuti"  
label define  bancm_cl396 1   "no" 2   "sì"  
label define  ccred_cl397 1   "no" 2   "sì"  
label define  nccredm_cl398 01   "1" 02   "2" 03   "3" 04   "4 e piu'"  
label define  usotram_cl399 1   "tutti i giorni" 2   "qualche volta alla settimana" 3   "qualche volta al mese" 4   "qualche volta l'anno" 5   "mai" 6   "non esiste il servizio"  
label define  fcors_cl400 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  punt_cl401 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  posse_cl402 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  velco_cl403 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  puliz_cl404 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  comof_cl405 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  colleg_cl406 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  comor_cl407 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  cpsbi_cl408 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  usopul_cl410 1   "tutti i giorni" 2   "qualche volta alla settimana" 3   "qualche volta al mese" 4   "qualche volta l'anno" 5   "mai"  
label define  frcmt_cl411 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  punmt_cl412 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  sedmt_cl413 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  velmt_cl414 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  pulmt_cl415 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  attmt_cl416 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  colco_cl417 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  oramt_cl418 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  cbmt_cl419 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  infmt_cl420 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  ustre_cl422 1   "tutti i giorni" 2   "qualche volta alla settimana" 3   "qualche volta al mese" 4   "qualche volta l'anno" 5   "mai"  
label define  frtre_cl423 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  putre_cl424 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  pstre_cl425 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  vetre_cl426 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  pulstr_cl427 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  comat_cl428 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  colcom_cl429 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  comora_cl430 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  cobig_cl431 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  inftr_cl432 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  usoaut_cl434 1   "tutti i giorni" 2   "qualche volta alla settimana" 3   "qualche volta al mese" 4   "qualche volta l'anno" 5   "mai"  
label define  serra_cl435 01   "presente"  
label define  estinz_cl436 02   "presente"  
label define  camcli_cl437 03   "presente"  
label define  smarif_cl438 04   "presente"  
label define  amrum_cl439 05   "presente"  
label define  iaria_cl440 06   "presente"  
label define  inqsu_cl441 07   "presente"  
label define  inqfiu_cl442 08   "presente"  
label define  disdr_cl443 09   "presente"  
label define  catastr_cl444 10   "presente"  
label define  fores2_cl445 11   "presente"  
label define  inqelet2_cl446 12   "presente"  
label define  paesag2_cl447 13   "presente"  
label define  esriso2_cl448 14   "presente"  
label define  altamb2_cl449 15   "presente"  
label define  gcarte_cl450 1   "abitualmente" 2   "qualche volta" 3   "raramente" 4   "mai"  
label define  dopfil_cl451 1   "abitualmente" 2   "qualche volta" 3   "raramente" 4   "mai"  
label define  arumor_cl452 1   "abitualmente" 2   "qualche volta" 3   "raramente" 4   "mai"  
label define  futuasp_cl454 1   "migliorerà" 2   "resterà la stessa" 3   "peggiorerà" 4   "non so"  
label define  fiducia_cl455 1   "gran parte della gente è degna di fiducia" 2   "bisogna stare molto attenti"  
label define  fidu1_cl456 1   "molto probabile" 2   "abbastanza probabile" 3   "poco probabile" 4   "per niente probabile"  
label define  fidu2_cl457 1   "molto probabile" 2   "abbastanza probabile" 3   "poco probabile" 4   "per niente probabile"  
label define  fidu3_cl458 1   "molto probabile" 2   "abbastanza probabile" 3   "poco probabile" 4   "per niente probabile"  
label define  bmimin_cl470 1   "Sottopeso" 2   "Normopeso" 3   "Sovrappeso" 4   "Obeso"  
label define  senele_cl471 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  gcont_cl472 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  gasbal_cl473 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  gdispl_cl474 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  gcbol_cl475 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  ginf_cl476 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  gas5_cl477 1   "l'abitazione è allacciata alla rete di distribuzione di gas naturale (metano)" 2   "l'abitazione è allacciata alla rete di distribuzione di gas diverso da gas metano (gpl)" 3   "il gas viene acquistato in bombole" 4   "è istallato un bombolone all'esterno con rifornimento periodico" 5   "l'abitazione non dispone nè di gas, nè di bombola, nè di bombolone esterno"  
label define  sgas_cl478 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  gaspr2_cl479 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  flgas_cl480 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  combol_cl481 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  serinf_cl482 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  sicuret_cl483 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  scefo2_cl484 1   "no" 2   "sì"  
label define  camfo2_cl485 1   "no, non ha mai cambiato" 2   "sì, il fornitore di energia elettrica" 3   "sì, il fornitore di gas" 4   "sì, entrambi"  
label define  nmotnfe1_cl486 1   "presente"  
label define  nmotnfe2_cl487 3   "presente"  
label define  nmotnfe3_cl488 5   "presente"  
label define  nmotnfe4_cl489 7   "presente"  
label define  nmotnfe5_cl490 1   "presente"  
label define  nmotnfg1_cl491 2   "presente"  
label define  nmotnfg2_cl492 4   "presente"  
label define  nmotnfg3_cl493 6   "presente"  
label define  nmotnfg4_cl494 8   "presente"  
label define  nmotnfg5_cl495 2   "presente"  
label define  callelga_cl496 1   "no" 2   "sì, solo dell'azienda fornitrice di energia elettrica" 3   "sì, solo dell'azienda fornitrice del gas" 4   "sì, di entrambe"  
label define  sodcall_cl497 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  proint_cl498 1   "no" 2   "sì, il numero per i guasti elettrici" 3   "sì, il numero per il pronto intervento gas" 4   "sì, entrambi"  
label define  sodint_cl499 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  sporco_cl500 1   "molto" 2   "abbastanza" 3   "poco" 4   "per niente" 5   "non so"  
label define  parch_cl501 1   "molto" 2   "abbastanza" 3   "poco" 4   "per niente" 5   "non so"  
label define  colmp_cl502 1   "molto" 2   "abbastanza" 3   "poco" 4   "per niente" 5   "non so"  
label define  traf_cl503 1   "molto" 2   "abbastanza" 3   "poco" 4   "per niente" 5   "non so"  
label define  inqar_cl504 1   "molto" 2   "abbastanza" 3   "poco" 4   "per niente" 5   "non so"  
label define  rumore_cl505 1   "molto" 2   "abbastanza" 3   "poco" 4   "per niente" 5   "non so"  
label define  crim_cl506 1   "molto" 2   "abbastanza" 3   "poco" 4   "per niente" 5   "non so"  
label define  odsgr_cl507 1   "molto" 2   "abbastanza" 3   "poco" 4   "per niente" 5   "non so"  
label define  illstr_cl508 1   "molto" 2   "abbastanza" 3   "poco" 4   "per niente" 5   "non so"  
label define  conpav_cl509 1   "molto" 2   "abbastanza" 3   "poco" 4   "per niente" 5   "non so"  
label define  parchi_cl510 1   "no" 2   "sì"  
label define  terraz_cl512 1   "no" 2   "sì"  
label define  garden_cl513 3   "no" 4   "sì"  
label define  telef_cl514 1   "no" 2   "sì"  
label define  nelenc_cl515 1   "no" 2   "sì"  
label define  riscal_cl516 1   "no" 2   "sì"  
label define  trisc_cl517 1   "centralizzato" 2   "autonomo" 3   "solo apparecchi singoli (compresi camini e stufe)"  
label define  reacq1_cl518 1   "presente"  
label define  reacq2_cl519 2   "presente"  
label define  reacq3_cl520 3   "presente"  
label define  reacq4_cl521 4   "presente"  
label define  reacq5_cl522 5   "presente"  
label define  sodacqua_cl523 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  agforn_cl524 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  agpress_cl525 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  agodor_cl526 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  aglettur_cl527 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  agfattur_cl528 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  agbollet_cl529 1   "molto soddisfatto" 2   "abbastanza soddisfatto" 3   "poco soddisfatto" 4   "per niente soddisfatto"  
label define  fogna_cl530 1   "no" 2   "sì"  
label define  speab_cl531 1   "no" 2   "sì"  
label define  abipic_cl532 3   "no" 4   "sì"  
label define  ablonf_cl533 5   "no" 6   "sì"  
label define  acqua_cl534 7   "no" 8   "sì"  
label define  abicc_cl535 1   "no" 2   "sì"  
label define  eracq_cl536 1   "sporadicamente" 2   "solo nel periodo estivo" 3   "durante tutto l'anno" 4   "altro"  
label define  siacq_cl537 1   "presente"  
label define  acqbru_cl538 2   "presente"  
label define  noacq_cl539 3   "presente"  
label define  godab_cl540 1   "affitto o subaffitto" 2   "proprietà" 3   "usufrutto" 4   "titolo gratuito" 5   "altro"  
label define  farma_cl541 1   "nessuna difficoltà" 2   "un po' di difficoltà" 3   "molta difficoltà" 4   "non so"  
label define  prsoc_cl542 1   "nessuna difficoltà" 2   "un po' di difficoltà" 3   "molta difficoltà" 4   "non so"  
label define  uffpo_cl543 1   "nessuna difficoltà" 2   "un po' di difficoltà" 3   "molta difficoltà" 4   "non so"  
label define  police_cl544 1   "nessuna difficoltà" 2   "un po' di difficoltà" 3   "molta difficoltà" 4   "non so"  
label define  uffcom_cl545 1   "nessuna difficoltà" 2   "un po' di difficoltà" 3   "molta difficoltà" 4   "non so"  
label define  nido_cl546 1   "nessuna difficoltà" 2   "un po' di difficoltà" 3   "molta difficoltà" 4   "non so"  
label define  smater_cl547 1   "nessuna difficoltà" 2   "un po' di difficoltà" 3   "molta difficoltà" 4   "non so"  
label define  selem_cl548 1   "nessuna difficoltà" 2   "un po' di difficoltà" 3   "molta difficoltà" 4   "non so"  
label define  sminf_cl549 1   "nessuna difficoltà" 2   "un po' di difficoltà" 3   "molta difficoltà" 4   "non so"  
label define  mercat_cl550 1   "nessuna difficoltà" 2   "un po' di difficoltà" 3   "molta difficoltà" 4   "non so"  
label define  smerc_cl551 1   "nessuna difficoltà" 2   "un po' di difficoltà" 3   "molta difficoltà" 4   "non so"  
label define  cass_cl552 1   "nessuna difficoltà" 2   "un po' di difficoltà" 3   "molta difficoltà" 4   "non so"  
label define  segas_cl553 1   "nessuna difficoltà" 2   "un po' di difficoltà" 3   "molta difficoltà" 4   "non so"  
label define  sluce_cl554 1   "nessuna difficoltà" 2   "un po' di difficoltà" 3   "molta difficoltà" 4   "non so"  
label define  crarif_cl555 1   "elevato" 2   "adeguato" 3   "basso" 4   "non so"  
label define  ceracq_cl556 1   "elevato" 2   "adeguato" 3   "basso" 4   "non so"  
label define  ccarta_cl557 1   "sì, e sono facilmente raggiungibili" 2   "sì, ma sono difficilmente raggiungibili" 3   "no" 4   "non so"  
label define  cvetro_cl558 1   "sì, e sono facilmente raggiungibili" 2   "sì, ma sono difficilmente raggiungibili" 3   "no" 4   "non so"  
label define  cfarm_cl559 1   "sì, e sono facilmente raggiungibili" 2   "sì, ma sono difficilmente raggiungibili" 3   "no" 4   "non so"  
label define  cbat_cl560 1   "sì, e sono facilmente raggiungibili" 2   "sì, ma sono difficilmente raggiungibili" 3   "no" 4   "non so"  
label define  clatal_cl561 1   "sì, e sono facilmente raggiungibili" 2   "sì, ma sono difficilmente raggiungibili" 3   "no" 4   "non so"  
label define  cplas_cl562 1   "sì, e sono facilmente raggiungibili" 2   "sì, ma sono difficilmente raggiungibili" 3   "no" 4   "non so"  
label define  crorg_cl563 1   "sì, e sono facilmente raggiungibili" 2   "sì, ma sono difficilmente raggiungibili" 3   "no" 4   "non so"  
label define  ctessili_cl564 1   "sì, e sono facilmente raggiungibili" 2   "sì, ma sono difficilmente raggiungibili" 3   "no" 4   "non so"  
label define  calt_cl565 1   "sì, e sono facilmente raggiungibili" 2   "sì, ma sono difficilmente raggiungibili" 3   "no" 4   "non so"  
label define  poapo_cl566 1   "no" 2   "sì"  
label define  r_carta_cl567 1   "cassonetti, sempre" 2   "cassonetti, qualche volta" 3   "porta a porta, sempre" 4   "porta a porta, qualche volta" 5   "no" 24   "cassonetti e porta a porta, qualche volta"  
label define  r_vetro_cl568 1   "cassonetti, sempre" 2   "cassonetti, qualche volta" 3   "porta a porta, sempre" 4   "porta a porta, qualche volta" 5   "no" 24   "cassonetti e porta a porta, qualche volta"  
label define  r_farm_cl569 1   "cassonetti, sempre" 2   "cassonetti, qualche volta" 3   "porta a porta, sempre" 4   "porta a porta, qualche volta" 5   "no" 24   "cassonetti e porta a porta, qualche volta"  
label define  r_bat_cl570 1   "cassonetti, sempre" 2   "cassonetti, qualche volta" 3   "porta a porta, sempre" 4   "porta a porta, qualche volta" 5   "no" 24   "cassonetti e porta a porta, qualche volta"  
label define  r_latal_cl571 1   "cassonetti, sempre" 2   "cassonetti, qualche volta" 3   "porta a porta, sempre" 4   "porta a porta, qualche volta" 5   "no" 24   "cassonetti e porta a porta, qualche volta"  
label define  r_plas_cl572 1   "cassonetti, sempre" 2   "cassonetti, qualche volta" 3   "porta a porta, sempre" 4   "porta a porta, qualche volta" 5   "no" 24   "cassonetti e porta a porta, qualche volta"  
label define  r_rorg_cl573 1   "cassonetti, sempre" 2   "cassonetti, qualche volta" 3   "porta a porta, sempre" 4   "porta a porta, qualche volta" 5   "no" 24   "cassonetti e porta a porta, qualche volta"  
label define  r_tessili_cl574 1   "cassonetti, sempre" 2   "cassonetti, qualche volta" 3   "porta a porta, sempre" 4   "porta a porta, qualche volta" 5   "no" 24   "cassonetti e porta a porta, qualche volta"  
label define  r_alt_cl575 1   "cassonetti, sempre" 2   "cassonetti, qualche volta" 3   "porta a porta, sempre" 4   "porta a porta, qualche volta" 5   "no" 24   "cassonetti e porta a porta, qualche volta"  
label define  sodpoapo_cl576 1   "molto soddisfatta" 2   "abbastanza soddisfatta" 3   "poco soddisfatta" 4   "per niente soddisfatta"  
label define  nospo1_cl577 1   "presente"  
label define  nospo7_cl578 2   "presente"  
label define  nospo2_cl579 3   "presente"  
label define  nospo3_cl580 4   "presente"  
label define  nospo4_cl581 5   "presente"  
label define  nospo5_cl582 6   "presente"  
label define  nospo8_cl583 7   "presente"  
label define  nospo6_cl584 8   "presente"  
label define  ecostaz_cl585 1   "no" 2   "sì" 3   "non so"  
label define  usoeco2_cl586 1   "No" 2   "sì, negli ultimi 12 mesi" 3   "sì, più di 1 anno fa"  
label define  ecocar_cl587 01   "presente"  
label define  ecovet_cl588 02   "presente"  
label define  ecopla_cl589 03   "presente"  
label define  ecopne_cl590 04   "presente"  
label define  ecomet_cl591 05   "presente"  
label define  ecoleg_cl592 06   "presente"  
label define  ecofar_cl593 07   "presente"  
label define  ecobat_cl594 08   "presente"  
label define  ecoing_cl595 09   "presente"  
label define  ecoine_cl596 10   "presente"  
label define  ecoele_cl597 11   "presente"  
label define  ecooli_cl598 12   "presente"  
label define  ecoinf_cl599 13   "presente"  
label define  ecopot_cl600 14   "presente"  
label define  ecotess_cl601 15   "presente"  
label define  ecoalt_cl602 16   "presente"  
label define  noeco_cl603 1   "Non ne abbiamo avuto bisogno" 2   "Sono troppo lontane dalla nostra abitazione" 3   "Non abbiamo un mezzo adeguato a trasportare questo tipo di rifiuti" 4   "Abbiamo utilizzato un servizio pubblico o privato a domicilio" 5   "Li abbiamo lasciati in appositi cassonetti" 6   "Altro"  
label define  spidif1_cl604 1   "no" 2   "sì"  
label define  spidif2_cl605 3   "no" 4   "sì"  
label define  spidif3_cl606 5   "no" 6   "sì"  
label define  spidif4_cl607 7   "no" 8   "sì"  
label define  spidif5_cl608 1   "no" 2   "sì"  
label define  spidif6_cl609 3   "no" 4   "sì"  
label define  spidif7_cl610 5   "no" 6   "sì"  
label define  spidif8_cl611 7   "no" 8   "sì"  
label define  camab_cl612 1   "no" 2   "sì"  
label define  pcamab_cl613 1   "no" 2   "sì"  
label define  assca_cl614 1   "no" 2   "sì"  
label define  colfagg_cl615 01   "no" 02   "sì, italiano o sia italiano sia straniero o sì, straniero"  
label define  babysagg_cl616 01   "no" 02   "sì, italiano o sia italiano sia straniero o sì, straniero"  
label define  assanzagg_cl617 01   "no" 02   "sì, italiano o sia italiano sia straniero o sì, straniero"  
label define  avvoc_cl621 1   "no" 2   "sì"  
label define  notaio_cl622 3   "no" 4   "sì"  
label define  commer_cl623 5   "no" 6   "sì"  
label define  nomod_cl624 1   "presente"  
label define  comfam_cl625 2   "presente"  
label define  nonpag_cl626 3   "presente"  
label define  pagam_cl627 4   "presente"  
label define  pinser_cl628 1   "sì, più volte nel corso dell'anno" 2   "sì, una volta" 3   "no"  
label define  lavst_cl629 1   "No" 2   "Sì"  
label define  lavatr_cl631 3   "No" 4   "Sì"  
label define  vider_cl633 5   "No" 6   "Sì"  
label define  video_cl635 7   "No" 8   "Sì"  
label define  dvd_cl637 1   "No" 2   "Sì"  
label define  hifi_cl639 3   "No" 4   "Sì"  
label define  segtel_cl641 5   "No" 6   "Sì"  
label define  nsegtm_cl642 1   "1" 2   "2 e piu'"  
label define  fax_cl643 7   "No" 8   "Sì"  
label define  telcol_cl645 1   "No" 2   "Sì"  
label define  antepa_cl647 3   "No" 4   "Sì"  
label define  climat_cl649 5   "No" 6   "Sì"  
label define  bic_cl651 7   "No" 8   "Sì"  
label define  motor_cl653 1   "No" 2   "Sì"  
label define  nmotorm_cl654 1   "1" 2   "2" 3   "3" 4   "4 e piu'"  
label define  amoto_cl655 3   "No" 4   "Sì"  
label define  nmotom_cl656 1   "1" 2   "2" 3   "3" 4   "4 e piu'"  
label define  abbtv_cl657 1   "Sì, un abbonamento" 2   "Sì, una carta prepagata senza abbonamento" 3   "No"  
label define  smartv_cl658 1   "no" 2   "sì"  
label define  auto_cl659 1   "no" 2   "sì"  
label define  nautom_cl660 1   "1" 2   "2" 3   "3" 4   "4" 5   "5 e piu'"  
label define  libfam_cl661 1   "nessuno" 2   "da 1 a 10" 3   "da 11 a 25" 4   "da 26 a 50" 5   "da 51 a 100" 6   "da 101 a 200" 7   "da 201 a 400" 8   "oltre 400"  
label define  telcel_cl662 1   "no" 2   "sì"  
label define  telcin_cl664 1   "no" 2   "sì"  
label define  pc_cl665 1   "no" 2   "sì"  
label define  modem_cl666 1   "no" 2   "sì"  
label define  vgioc_cl667 3   "no" 4   "sì"  
label define  ebook_cl669 5   "no" 6   "sì"  
label define  mp3_cl671 7   "no" 8   "sì"  
label define  fotodig_cl673 1   "no" 2   "sì"  
label define  navsat_cl675 3   "no" 4   "sì"  
label define  aintern_cl677 1   "no" 2   "sì"  
label define  cidslwifi_cl678 1   "presente"  
label define  cisfpal_cl679 2   "presente"  
label define  cisfmod_cl680 3   "presente"  
label define  cibastr_cl681 4   "presente"  
label define  motnoai1_cl682 1   "presente"  
label define  motnoai3_cl683 2   "presente"  
label define  motnoai4_cl684 3   "presente"  
label define  motnoai5_cl685 4   "presente"  
label define  motnoai6_cl686 5   "presente"  
label define  motnoai8_cl687 6   "presente"  
label define  motnoai10_cl688 7   "presente"  
label define  motnoai9_cl689 8   "presente"  
label define  site_cl690 1   "molto migliorata" 2   "un po' migliorata" 3   "rimasta più o meno la stessa" 4   "un po' peggiorata" 5   "molto peggiorata"  
label define  risec_cl691 1   "ottime" 2   "adeguate" 3   "scarse" 4   "assolutamente insufficienti"  
label define  bmi_cl692 1   "Sottopeso" 2   "Normopeso" 3   "Sovrappeso" 4   "Obeso"  
label values  relpar relpar_cl4
label values  etam etam_cl5
label values  sesso sesso_cl6
label values  stcivm stcivm_cl7
label values  stcpm stcpm_cl8
label values  istrm istrm_cl10
label values  condm condm_cl11
label values  lavpas lavpas_cl12
label values  posizm posizm_cl13
label values  atecom atecom_cl14
label values  tipnu2 tipnu2_cl15
label values  rpnuc2 rpnuc2_cl17
label values  tipfa2m tipfa2m_cl18
label values  regmf regmf_cl19
label values  ripmf ripmf_cl20
label values  dommf dommf_cl21
label values  redpr redpr_cl23
label values  citt citt_cl24
label values  frscm frscm_cl25
label values  motas motas_cl26
label values  domrif domrif_cl27
label values  memfam memfam_cl28
label values  nidlon nidlon_cl29
label values  nodele nodele_cl30
label values  malat malat_cl31
label values  abband abband_cl32
label values  nonvuo nonvuo_cl33
label values  nomed nomed_cl34
label values  tpicc tpicc_cl35
label values  ndtroppo ndtroppo_cl36
label values  oraris oraris_cl37
label values  alnido alnido_cl38
label values  divcom divcom_cl43
label values  stcom stcom_cl44
label values  stprov stprov_cl45
label values  streg streg_cl46
label values  altreg altreg_cl47
label values  estero estero_cl48
label values  usomt usomt_cl49
label values  treno treno_cl50
label values  tram tram_cl51
label values  metro metro_cl52
label values  bus bus_cl53
label values  cor cor_cl54
label values  pazsc pazsc_cl55
label values  autoc autoc_cl56
label values  autop autop_cl57
label values  moto moto_cl58
label values  bici bici_cl59
label values  almez almez_cl60
label values  mtpuso mtpuso_cl61
label values  carpoo carpoo_cl62
label values  prosoc prosoc_cl63
label values  nprosom nprosom_cl64
label values  gumed gumed_cl65
label values  ngumedm ngumedm_cl66
label values  assdo assdo_cl67
label values  nassdom nassdom_cl68
label values  ricov ricov_cl69
label values  nnricam nnricam_cl70
label values  ggricam ggricam_cl71
label values  lricov lricov_cl72
label values  conspe conspe_cl73
label values  condir condir_cl74
label values  conass conass_cl75
label values  qassam qassam_cl76
label values  qassin qassin_cl77
label values  qvitto qvitto_cl78
label values  qserig qserig_cl79
label values  vismed12 vismed12_cl80
label values  vspesa vspesa_cl81
label values  vispre vispre_cl82
label values  visri1 visri1_cl83
label values  visri2 visri2_cl84
label values  visri3 visri3_cl85
label values  visri4 visri4_cl86
label values  visri5 visri5_cl87
label values  visri6 visri6_cl88
label values  visri7 visri7_cl89
label values  ansang12 ansang12_cl90
label values  accer12 accer12_cl91
label values  aspesa aspesa_cl92
label values  accpre accpre_cl93
label values  accri1 accri1_cl94
label values  accri2 accri2_cl95
label values  accri3 accri3_cl96
label values  accri4 accri4_cl97
label values  accri5 accri5_cl98
label values  accri6 accri6_cl99
label values  accri7 accri7_cl100
label values  mincdo mincdo_cl101
label values  mnincdm mnincdm_cl102
label values  spocon spocon_cl103
label values  sposal sposal_cl104
label values  attfis attfis_cl105
label values  freqspo freqspo_cl106
label values  oresetsp oresetsp_cl107
label values  sppag sppag_cl108
label values  spriv spriv_cl109
label values  retta retta_cl110
label values  amici amici_cl111
label values  parent parent_cl112
label values  amici2 amici2_cl113
label values  vicini vicini_cl114
label values  cpeso cpeso_cl115
label values  farm farm_cl116
label values  pasto pasto_cl117
label values  colaz colaz_cl118
label values  lpran lpran_cl119
label values  panpas panpas_cl120
label values  salumi salumi_cl121
label values  pollo pollo_cl122
label values  cov cov_cl123
label values  cbov cbov_cl124
label values  cmaial cmaial_cl125
label values  latte latte_cl126
label values  form form_cl127
label values  uova uova_cl128
label values  pesce pesce_cl129
label values  verd verd_cl130
label values  pomod pomod_cl131
label values  frutta frutta_cl132
label values  legumi legumi_cl135
label values  patate patate_cl136
label values  snack snack_cl137
label values  dolci dolci_cl138
label values  cgras cgras_cl139
label values  fgras fgras_cl140
label values  qtsale qtsale_cl141
label values  iodio iodio_cl142
label values  acmin acmin_cl143
label values  bgas bgas_cl144
label values  birra birra_cl145
label values  vino vino_cl146
label values  bicbirram bicbirram_cl147
label values  bicvinom bicvinom_cl148
label values  bfpas bfpas_cl149
label values  bicfuorim bicfuorim_cl150
label values  anal anal_cl151
label values  alcol alcol_cl152
label values  amar amar_cl153
label values  liquor liquor_cl154
label values  bicaltrom bicaltrom_cl155
label values  alcol12 alcol12_cl156
label values  bicalc bicalc_cl157
label values  nbicalcm nbicalcm_cl158
label values  dovcasp dovcasp_cl159
label values  dovampa dovampa_cl160
label values  dovristo dovristo_cl161
label values  dovpub dovpub_cl162
label values  dovdisco dovdisco_cl163
label values  dovstr dovstr_cl164
label values  dovalt dovalt_cl165
label values  esig esig_cl166
label values  fumo fumo_cl167
label values  frfumo frfumo_cl168
label values  tfumo tfumo_cl169
label values  nsigarm nsigarm_cl170
label values  salute salute_cl171
label values  croni croni_cl172
label values  limita limita_cl173
label values  diab diab_cl174
label values  ipar ipar_cl175
label values  infar infar_cl176
label values  cuore cuore_cl177
label values  bron bron_cl178
label values  asma asma_cl179
label values  aller aller_cl180
label values  tumor tumor_cl181
label values  ulcer ulcer_cl182
label values  fegato fegato_cl183
label values  cirro cirro_cl184
label values  calre calre_cl185
label values  artro artro_cl186
label values  osteo osteo_cl187
label values  neuro neuro_cl188
label values  sf9 sf9_cl189
label values  sf11 sf11_cl190
label values  sf13 sf13_cl191
label values  sf14 sf14_cl192
label values  sf15 sf15_cl193
label values  radio radio_cl194
label values  tele tele_cl197
label values  pctempo pctempo_cl200
label values  freqpc12 freqpc12_cl201
label values  inttempo inttempo_cl202
label values  freqin12 freqin12_cl203
label values  iaipcscri iaipcscri_cl204
label values  iaipcport iaipcport_cl205
label values  iaitablet iaitablet_cl206
label values  iaidismob iaidismob_cl207
label values  iaialtro_n iaialtro_n_cl208
label values  disp_sma disp_sma_cl209
label values  disp_lap disp_lap_cl210
label values  disp_tab disp_tab_cl211
label values  disppda disppda_cl212
label values  incomu5 incomu5_cl213
label values  incomu1b incomu1b_cl214
label values  incomu34 incomu34_cl215
label values  incomu6 incomu6_cl216
label values  incomu7 incomu7_cl217
label values  intatt20 intatt20_cl218
label values  intatt21 intatt21_cl219
label values  intatt26 intatt26_cl220
label values  intatt5 intatt5_cl221
label values  intatt4 intatt4_cl222
label values  intsal3 intsal3_cl223
label values  intatt14 intatt14_cl224
label values  intatt11 intatt11_cl225
label values  intatt33 intatt33_cl226
label values  intatt13 intatt13_cl227
label values  intatt17 intatt17_cl228
label values  intatt16 intatt16_cl229
label values  intatt10 intatt10_cl230
label values  intatt8 intatt8_cl231
label values  intatt31 intatt31_cl232
label values  intatt32 intatt32_cl233
label values  intatt7bn intatt7bn_cl234
label values  intatt30a intatt30a_cl235
label values  intatt30b intatt30b_cl236
label values  intatt28a intatt28a_cl237
label values  intatt28b intatt28b_cl238
label values  cloudsal cloudsal_cl239
label values  skl_fre skl_fre_cl240
label values  skl_auto skl_auto_cl241
label values  skl_pub skl_pub_cl242
label values  skl_dat skl_dat_cl243
label values  skl_coll skl_coll_cl244
label values  p2p_acc p2p_acc_cl245
label values  p2p_accalt p2p_accalt_cl246
label values  p2p_tra p2p_tra_cl247
label values  p2p_tralt p2p_tralt_cl248
label values  p2p_food p2p_food_cl249
label values  p2p_wrk p2p_wrk_cl250
label values  cosint9a cosint9a_cl251
label values  cosint9b cosint9b_cl252
label values  cosint9c cosint9c_cl253
label values  pr_up pr_up_cl254
label values  pr_sm pr_sm_cl255
label values  pr_st pr_st_cl256
label values  pr_card pr_card_cl257
label values  pr_cod pr_cod_cl258
label values  pr_pin pr_pin_cl259
label values  pr_alt pr_alt_cl260
label values  intuso1 intuso1_cl261
label values  intuso2 intuso2_cl262
label values  intuso3 intuso3_cl263
label values  intcom intcom_cl264
label values  nordini nordini_cl265
label values  spintcom spintcom_cl266
label values  cosint1 cosint1_cl267
label values  cosint2 cosint2_cl268
label values  cosint19 cosint19_cl269
label values  cosint5 cosint5_cl270
label values  cosint3 cosint3_cl271
label values  cosint22a cosint22a_cl272
label values  cosint22b cosint22b_cl273
label values  cosint21 cosint21_cl274
label values  cosint15 cosint15_cl275
label values  cosint16 cosint16_cl276
label values  cosint7 cosint7_cl277
label values  cosint8 cosint8_cl278
label values  cosint20 cosint20_cl279
label values  cosint18 cosint18_cl280
label values  cosint17 cosint17_cl281
label values  cosint11 cosint11_cl282
label values  cosint12 cosint12_cl283
label values  cosint14 cosint14_cl284
label values  vendi1 vendi1_cl285
label values  vendi2 vendi2_cl286
label values  vendi3 vendi3_cl287
label values  vendi4 vendi4_cl288
label values  ct_work ct_work_cl289
label values  mac_work mac_work_cl290
label values  no_ictw no_ictw_cl291
label values  wrk_ema wrk_ema_cl292
label values  wrk_doc wrk_doc_cl293
label values  wrk_sm wrk_sm_cl294
label values  wrk_inc wrk_inc_cl295
label values  wrk_sof wrk_sof_cl296
label values  wrk_it wrk_it_cl297
label values  wrk_camb wrk_camb_cl298
label values  wrk_ns wrk_ns_cl299
label values  giud_skl giud_skl_cl300
label values  teatro teatro_cl301
label values  cine cine_cl302
label values  museo museo_cl303
label values  music music_cl304
label values  acmus acmus_cl305
label values  spspo spspo_cl306
label values  disco disco_cl307
label values  monum monum_cl308
label values  lquot lquot_cl309
label values  libri libri_cl310
label values  nlibrim nlibrim_cl311
label values  nlibri_carm nlibri_carm_cl312
label values  nleboom nleboom_cl313
label values  nlaudiom nlaudiom_cl314
label values  rivset rivset_cl315
label values  nosett nosett_cl316
label values  chies chies_cl317
label values  sitec sitec_cl318
label values  salut salut_cl319
label values  relfam relfam_cl320
label values  relam relam_cl321
label values  temlib temlib_cl322
label values  ambiente ambiente_cl323
label values  paesaggio paesaggio_cl324
label values  sodlav2 sodlav2_cl325
label values  polit polit_cl326
label values  ppapo ppapo_cl327
label values  psind psind_cl328
label values  pgrvo pgrvo_cl329
label values  paeco paeco_cl330
label values  pcult pcult_cl331
label values  paspro paspro_cl332
label values  comiz comiz_cl333
label values  cortei cortei_cl334
label values  dibpo dibpo_cl335
label values  finpa finpa_cl336
label values  finas finas_cl337
label values  volon volon_cl338
label values  atgra atgra_cl339
label values  volpa volpa_cl340
label values  volsi volsi_cl341
label values  politi politi_cl342
label values  pradio pradio_cl343
label values  ptelev ptelev_cl344
label values  pquot pquot_cl345
label values  psett psett_cl346
label values  pariv pariv_cl347
label values  pamici pamici_cl348
label values  pparen pparen_cl349
label values  pconos pconos_cl350
label values  pcolav pcolav_cl351
label values  orgpol orgpol_cl352
label values  orgsin orgsin_cl353
label values  altpol altpol_cl354
label values  pweb pweb_cl355
label values  pwebm1 pwebm1_cl356
label values  pwebm2 pwebm2_cl357
label values  pwebm3 pwebm3_cl358
label values  pwebm4 pwebm4_cl359
label values  pwebm5 pwebm5_cl360
label values  pwebm6 pwebm6_cl361
label values  npoli npoli_cl362
label values  ntpoli ntpoli_cl363
label values  polcom polcom_cl364
label values  sfipol sfipol_cl365
label values  naltpo naltpo_cl366
label values  uffan uffan_cl367
label values  tufan tufan_cl368
label values  gorar gorar_cl369
label values  corar corar_cl370
label values  autoce autoce_cl371
label values  canag canag_cl372
label values  praut praut_cl373
label values  cersc cersc_cl374
label values  catas catas_cl375
label values  caltro caltro_cl376
label values  usoss usoss_cl377
label values  temss temss_cl378
label values  gousl gousl_cl379
label values  cousl cousl_cl380
label values  uffpos uffpos_cl381
label values  racco racco_cl382
label values  vaglia vaglia_cl383
label values  vcoc vcoc_cl384
label values  rpens rpens_cl385
label values  rpara rpara_cl386
label values  tracc tracc_cl387
label values  tvagl tvagl_cl388
label values  tccp tccp_cl389
label values  trpen trpen_cl390
label values  tpara tpara_cl391
label values  gospo gospo_cl392
label values  cospo cospo_cl393
label values  banca banca_cl394
label values  taban taban_cl395
label values  bancm bancm_cl396
label values  ccred ccred_cl397
label values  nccredm nccredm_cl398
label values  usotram usotram_cl399
label values  fcors fcors_cl400
label values  punt punt_cl401
label values  posse posse_cl402
label values  velco velco_cl403
label values  puliz puliz_cl404
label values  comof comof_cl405
label values  colleg colleg_cl406
label values  comor comor_cl407
label values  cpsbi cpsbi_cl408
label values  usopul usopul_cl410
label values  frcmt frcmt_cl411
label values  punmt punmt_cl412
label values  sedmt sedmt_cl413
label values  velmt velmt_cl414
label values  pulmt pulmt_cl415
label values  attmt attmt_cl416
label values  colco colco_cl417
label values  oramt oramt_cl418
label values  cbmt cbmt_cl419
label values  infmt infmt_cl420
label values  ustre ustre_cl422
label values  frtre frtre_cl423
label values  putre putre_cl424
label values  pstre pstre_cl425
label values  vetre vetre_cl426
label values  pulstr pulstr_cl427
label values  comat comat_cl428
label values  colcom colcom_cl429
label values  comora comora_cl430
label values  cobig cobig_cl431
label values  inftr inftr_cl432
label values  usoaut usoaut_cl434
label values  serra serra_cl435
label values  estinz estinz_cl436
label values  camcli camcli_cl437
label values  smarif smarif_cl438
label values  amrum amrum_cl439
label values  iaria iaria_cl440
label values  inqsu inqsu_cl441
label values  inqfiu inqfiu_cl442
label values  disdr disdr_cl443
label values  catastr catastr_cl444
label values  fores2 fores2_cl445
label values  inqelet2 inqelet2_cl446
label values  paesag2 paesag2_cl447
label values  esriso2 esriso2_cl448
label values  altamb2 altamb2_cl449
label values  gcarte gcarte_cl450
label values  dopfil dopfil_cl451
label values  arumor arumor_cl452
label values  futuasp futuasp_cl454
label values  fiducia fiducia_cl455
label values  fidu1 fidu1_cl456
label values  fidu2 fidu2_cl457
label values  fidu3 fidu3_cl458
label values  bmimin bmimin_cl470
label values  senele senele_cl471
label values  gcont gcont_cl472
label values  gasbal gasbal_cl473
label values  gdispl gdispl_cl474
label values  gcbol gcbol_cl475
label values  ginf ginf_cl476
label values  gas5 gas5_cl477
label values  sgas sgas_cl478
label values  gaspr2 gaspr2_cl479
label values  flgas flgas_cl480
label values  combol combol_cl481
label values  serinf serinf_cl482
label values  sicuret sicuret_cl483
label values  scefo2 scefo2_cl484
label values  camfo2 camfo2_cl485
label values  nmotnfe1 nmotnfe1_cl486
label values  nmotnfe2 nmotnfe2_cl487
label values  nmotnfe3 nmotnfe3_cl488
label values  nmotnfe4 nmotnfe4_cl489
label values  nmotnfe5 nmotnfe5_cl490
label values  nmotnfg1 nmotnfg1_cl491
label values  nmotnfg2 nmotnfg2_cl492
label values  nmotnfg3 nmotnfg3_cl493
label values  nmotnfg4 nmotnfg4_cl494
label values  nmotnfg5 nmotnfg5_cl495
label values  callelga callelga_cl496
label values  sodcall sodcall_cl497
label values  proint proint_cl498
label values  sodint sodint_cl499
label values  sporco sporco_cl500
label values  parch parch_cl501
label values  colmp colmp_cl502
label values  traf traf_cl503
label values  inqar inqar_cl504
label values  rumore rumore_cl505
label values  crim crim_cl506
label values  odsgr odsgr_cl507
label values  illstr illstr_cl508
label values  conpav conpav_cl509
label values  parchi parchi_cl510
label values  terraz terraz_cl512
label values  garden garden_cl513
label values  telef telef_cl514
label values  nelenc nelenc_cl515
label values  riscal riscal_cl516
label values  trisc trisc_cl517
label values  reacq1 reacq1_cl518
label values  reacq2 reacq2_cl519
label values  reacq3 reacq3_cl520
label values  reacq4 reacq4_cl521
label values  reacq5 reacq5_cl522
label values  sodacqua sodacqua_cl523
label values  agforn agforn_cl524
label values  agpress agpress_cl525
label values  agodor agodor_cl526
label values  aglettur aglettur_cl527
label values  agfattur agfattur_cl528
label values  agbollet agbollet_cl529
label values  fogna fogna_cl530
label values  speab speab_cl531
label values  abipic abipic_cl532
label values  ablonf ablonf_cl533
label values  acqua acqua_cl534
label values  abicc abicc_cl535
label values  eracq eracq_cl536
label values  siacq siacq_cl537
label values  acqbru acqbru_cl538
label values  noacq noacq_cl539
label values  godab godab_cl540
label values  farma farma_cl541
label values  prsoc prsoc_cl542
label values  uffpo uffpo_cl543
label values  police police_cl544
label values  uffcom uffcom_cl545
label values  nido nido_cl546
label values  smater smater_cl547
label values  selem selem_cl548
label values  sminf sminf_cl549
label values  mercat mercat_cl550
label values  smerc smerc_cl551
label values  cass cass_cl552
label values  segas segas_cl553
label values  sluce sluce_cl554
label values  crarif crarif_cl555
label values  ceracq ceracq_cl556
label values  ccarta ccarta_cl557
label values  cvetro cvetro_cl558
label values  cfarm cfarm_cl559
label values  cbat cbat_cl560
label values  clatal clatal_cl561
label values  cplas cplas_cl562
label values  crorg crorg_cl563
label values  ctessili ctessili_cl564
label values  calt calt_cl565
label values  poapo poapo_cl566
label values  r_carta r_carta_cl567
label values  r_vetro r_vetro_cl568
label values  r_farm r_farm_cl569
label values  r_bat r_bat_cl570
label values  r_latal r_latal_cl571
label values  r_plas r_plas_cl572
label values  r_rorg r_rorg_cl573
label values  r_tessili r_tessili_cl574
label values  r_alt r_alt_cl575
label values  sodpoapo sodpoapo_cl576
label values  nospo1 nospo1_cl577
label values  nospo7 nospo7_cl578
label values  nospo2 nospo2_cl579
label values  nospo3 nospo3_cl580
label values  nospo4 nospo4_cl581
label values  nospo5 nospo5_cl582
label values  nospo8 nospo8_cl583
label values  nospo6 nospo6_cl584
label values  ecostaz ecostaz_cl585
label values  usoeco2 usoeco2_cl586
label values  ecocar ecocar_cl587
label values  ecovet ecovet_cl588
label values  ecopla ecopla_cl589
label values  ecopne ecopne_cl590
label values  ecomet ecomet_cl591
label values  ecoleg ecoleg_cl592
label values  ecofar ecofar_cl593
label values  ecobat ecobat_cl594
label values  ecoing ecoing_cl595
label values  ecoine ecoine_cl596
label values  ecoele ecoele_cl597
label values  ecooli ecooli_cl598
label values  ecoinf ecoinf_cl599
label values  ecopot ecopot_cl600
label values  ecotess ecotess_cl601
label values  ecoalt ecoalt_cl602
label values  noeco noeco_cl603
label values  spidif1 spidif1_cl604
label values  spidif2 spidif2_cl605
label values  spidif3 spidif3_cl606
label values  spidif4 spidif4_cl607
label values  spidif5 spidif5_cl608
label values  spidif6 spidif6_cl609
label values  spidif7 spidif7_cl610
label values  spidif8 spidif8_cl611
label values  camab camab_cl612
label values  pcamab pcamab_cl613
label values  assca assca_cl614
label values  colfagg colfagg_cl615
label values  babysagg babysagg_cl616
label values  assanzagg assanzagg_cl617
label values  avvoc avvoc_cl621
label values  notaio notaio_cl622
label values  commer commer_cl623
label values  nomod nomod_cl624
label values  comfam comfam_cl625
label values  nonpag nonpag_cl626
label values  pagam pagam_cl627
label values  pinser pinser_cl628
label values  lavst lavst_cl629
label values  lavatr lavatr_cl631
label values  vider vider_cl633
label values  video video_cl635
label values  dvd dvd_cl637
label values  hifi hifi_cl639
label values  segtel segtel_cl641
label values  nsegtm nsegtm_cl642
label values  fax fax_cl643
label values  telcol telcol_cl645
label values  antepa antepa_cl647
label values  climat climat_cl649
label values  bic bic_cl651
label values  motor motor_cl653
label values  nmotorm nmotorm_cl654
label values  amoto amoto_cl655
label values  nmotom nmotom_cl656
label values  abbtv abbtv_cl657
label values  smartv smartv_cl658
label values  auto auto_cl659
label values  nautom nautom_cl660
label values  libfam libfam_cl661
label values  telcel telcel_cl662
label values  telcin telcin_cl664
label values  pc pc_cl665
label values  modem modem_cl666
label values  vgioc vgioc_cl667
label values  ebook ebook_cl669
label values  mp3 mp3_cl671
label values  fotodig fotodig_cl673
label values  navsat navsat_cl675
label values  aintern aintern_cl677
label values  cidslwifi cidslwifi_cl678
label values  cisfpal cisfpal_cl679
label values  cisfmod cisfmod_cl680
label values  cibastr cibastr_cl681
label values  motnoai1 motnoai1_cl682
label values  motnoai3 motnoai3_cl683
label values  motnoai4 motnoai4_cl684
label values  motnoai5 motnoai5_cl685
label values  motnoai6 motnoai6_cl686
label values  motnoai8 motnoai8_cl687
label values  motnoai10 motnoai10_cl688
label values  motnoai9 motnoai9_cl689
label values  site site_cl690
label values  risec risec_cl691
label values  bmi bmi_cl692
*/
save  AVQ_A2018.dta, replace
