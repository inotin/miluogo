/* Declinazione di responsabilità. 
I file rilasciati in formato testo sono provvisti anche dei programmi di importazione per STATA, SAS e R. 
L'Istat non garantisce che le funzioni contenute nei suddetti programmi siano esenti da errore e non si assume alcuna responsabilità sull’output ottenuto dal loro utilizzo.                 */
%macro grabpath;
%qsubstr(%sysget(SAS_EXECFILEPATH),1,%length(%sysget(SAS_EXECFILEPATH))-%length(%sysget(SAS_EXECFILEname)))
%mend grabpath;
%let path = %grabpath;
%let nomeFile =ISTAT_MFR_AVQ_Microdati_2018_ESEMPIO_STRUTTURA_FILE.txt;
LIBNAME ISTAT "&path";
DATA ISTAT.AVQ_A2018;

INFILE "&path&nomeFile" DLM='09'x  LRECL=32767 TRUNCOVER FIRSTOBS=2 IGNOREDOSEOF;
INPUT 
PROFAM : $6.   /*  progressivo famiglia */
PROIND : $2.   /*  numero d'ordine del componente */
NCOMP : $2.   /*  n° dei componenti la famiglia attuale */
ANNO : $4.   /*  anno della rilevazione */
RELPAR : $2.   /*  relazione di parentela con la persona di riferimento */
ETAM : $3.   /*  Età in anni compiuti */
SESSO : $1.   /*  Sesso - scheda generale */
STCIVM : $1.   /*  Stato civile */
STCPM : $1.   /*  Stato civile precedente il matrimonio */
AMATR : $4.   /*  Anno del matrimonio */
ISTRM : $2.   /*  Titolo di studio */
CONDM : $1.   /*  Condizione professionale */
LAVPAS : $1.   /*  Ha lavorato in passato */
POSIZM : $2.   /*  posizione nella professione */
ATECOM : $2.   /*  Settore di attività economica */
TIPNU2 : $1.   /*  Tipo nucleo 2 */
NUMNU2 : $2.   /*  Numero progressivo del nucleo nell'ambito della famiglia 2 */
RPNUC2 : $1.   /*  Relazione di parentela nell'ambito del nucleo 2 */
TIPFA2M : $2.   /*  Tipologia familiare 2 */
REGMF : $3.   /*  Regione di residenza dell'intervistato */
RIPMF : $1.   /*  Ripartizione geografica di residenza dell'intervistato */
DOMMF : $1.   /*  Tipologia comunale di residenza */
COEFIN :12.4   /*  Coefficiente di riporto all'universo */
REDPR : $1.   /*  Fonte principale di reddito */
CITT : $1.   /*  Cittadinanza */
FRSCM : $2.   /*  È attualmente iscritto ad una delle scuole, dei corsi o istituti sottoelencati */
MOTAS : $1.   /*  Motivo principale per cui frequenta il nido */
DOMRIF : $2.   /*  Motivo per cui non frequenta il nido: la domanda non è stata accettata */
MEMFAM : $2.   /*  Motivo per cui non frequenta il nido: lo segue un membro della famiglia, non ho problemi di organizzazione familiare */
NIDLON : $2.   /*  Motivo per cui non frequenta il nido: l'asilo è lontano, scomodo */
NODELE : $2.   /*  Motivo per cui non frequenta il nido: non voglio delegare il compito educativo */
MALAT : $2.   /*  Motivo per cui non frequenta il nido: il bambino si ammalava troppo spesso */
ABBAND : $2.   /*  Motivo per cui non frequenta il nido: il bambino può sentirsi abbandonato */
NONVUO : $2.   /*  Motivo per cui non frequenta il nido: il bambino non vuole andare */
NOMED : $2.   /*  Motivo per cui non frequenta il nido: lo ha sconsigliato un medico */
TPICC : $2.   /*  Motivo per cui non frequenta il nido: il bambino è troppo piccolo */
NDTROPPO : $2.   /*  Motivo per cui non frequenta il nido: l'asilo costa troppo */
ORARIS : $2.   /*  Motivo per cui non frequenta il nido: l'asilo ha orari scomodi */
ALNIDO : $2.   /*  Motivo per cui non frequenta il nido: altro */
USORA : $2.   /*  Orario abituale di uscita da casa per andare a lavoro o a scuola (ora) */
USMIN : $2.   /*  Orario abituale di uscita da casa per andare a lavoro o a scuola (minuti) */
HHSCLA : $2.   /*  Tempo impiegato per andare al lavoro/scuola (ora) */
MMSCLA : $2.   /*  Tempo impiegato per andare al lavoro/scuola (minuti) */
DIVCOM : $1.   /*  Per motivi di lavoro o di studio lei vive con una certa regolarità prevalentemente in un comune diverso da questo */
STCOM : $1.   /*  Lavora o studia abitualmente nello stesso comune in cui risiede */
STPROV : $1.   /*  Lavora o studia abitualmente  in un altro comune della stessa provincia */
STREG : $1.   /*  Lavora o studia abitualmente in un'altra provincia della stessa regione */
ALTREG : $1.   /*  Lavora o studia abitualmente  in un'altra regione italiana */
ESTERO : $1.   /*  Lavora o studia abitualmente  all'estero */
USOMT : $1.   /*  Uso di mezzo di trasporto pubblico e/o privato per andare a scuola o al lavoro */
TRENO : $2.   /*  Mezzo di trasporto usato per andare a scuola o al lavoro: treno */
TRAM : $2.   /*  Mezzo di trasporto usato per andare a scuola o al lavoro: tram */
METRO : $2.   /*  Mezzo di trasporto usato per andare a scuola o al lavoro: metropolitana */
BUS : $2.   /*  Mezzo di trasporto usato per andare a scuola o al lavoro: autobus, filobus (all'interno del comune) */
COR : $2.   /*  Mezzo di trasporto usato per andare a scuola o al lavoro: pullman, corriera (tra comuni diversi) */
PAZSC : $2.   /*  Mezzo di trasporto usato per andare a scuola o al lavoro: pullman aziendale o scolastico */
AUTOC : $2.   /*  Mezzo di trasporto usato per andare a scuola o al lavoro: auto privata (come conducente) */
AUTOP : $2.   /*  Mezzo di trasporto usato per andare a scuola o al lavoro: auto privata (come passeggero) */
MOTO : $2.   /*  Mezzo di trasporto usato per andare a scuola o al lavoro: motocicletta o ciclomotore */
BICI : $2.   /*  Mezzo di trasporto usato per andare a scuola o al lavoro: bicicletta */
ALMEZ : $2.   /*  Mezzo di trasporto usato per andare a scuola o al lavoro: altro mezzo */
MTPUSO : $2.   /*  Mezzo di trasporto utilizzato nel  tratto più lungo per andare a scuola o al lavoro */
CARPOO : $1.   /*  Si organizza con colleghi/compagni di studio per andare a lavoro/scuola utilizzando una sola vettura */
PROSOC : $1.   /*  Negli ultimi 3 mesi ha fatto ricorso a pronto soccorso */
NPROSOM : $2.   /*  Quante volte ha fatto ricorso al pronto soccorso */
GUMED : $1.   /*  Negli ultimi 3 mesi ha fatto ricorso a guardia medica */
NGUMEDM : $2.   /*  Quante volte ha fatto ricorso alla guardia medica */
ASSDO : $1.   /*  Negli ultimi 3 mesi ha fatto ricorso a assistenza domiciliare */
NASSDOM : $2.   /*  Quante volte ha fatto ricorso all'assistenza domiciliare */
RICOV : $1.   /*  Negli ultimi 3 mesi è stato ricoverato in un ospedale, in un istituto di cura accreditato (convenzionato) o in una casa di cura privata? */
NNRICAM : $2.   /*  Quante volte è stato ricoverato negli ultimi tre mesi? */
GGRICAM : $2.   /*  Per quante notti complessivamente è stato ricoverato negli ultimi tre mesi? */
LRICOV : $1.   /*  In quale tipo di struttura è avvenuto il ricovero? (con riferimento all'ultimo ricovero) */
CONSPE : $1.   /*  Ha contributo al pagamento delle spese di ricovero */
CONDIR : $1.   /*  Contributo diretto per spese ricovero */
CONASS : $1.   /*  Contributo tramite assicurazione privata per spese ricovero */
QASSAM : $1.   /*  Soddisfazione per ricovero: assistenza medica */
QASSIN : $1.   /*  Soddisfazione per ricovero: assistenza infermieristica */
QVITTO : $1.   /*  Soddisfazione per ricovero: vitto */
QSERIG : $1.   /*  Soddisfazione per ricovero: servizi igienici */
VISMED12 : $1.   /*  negli ultimi 12 mesi ha fatto ricorso a visite presso medici specialisti */
VSPESA : $1.   /*  spesa per ultima visita specialistica (ultimi 12 mesi) */
VISPRE : $1.   /*  l'ultima visita specialistica (ultimi 12 mesi) è stata prescritta da un medico? */
VISRI1 : $1.   /*  rinuncia a visita specialistica ultimi 12 mesi */
VISRI2 : $1.   /*  rinuncia a visita specialistica ultimi 12 mesi: non poteva pagarla, costava troppo */
VISRI3 : $1.   /*  rinuncia a visita specialistica ultimi 12 mesi: lista d'attesa lunga */
VISRI4 : $1.   /*  rinuncia a visita specialistica ultimi 12 mesi:  scomodità */
VISRI5 : $1.   /*  rinuncia a visita specialistica ultimi 12 mesi: non poteva assendarsi dal lavoro */
VISRI6 : $1.   /*  rinuncia a visita specialistica ultimi 12 mesi: doveva accudire figli o altre persone */
VISRI7 : $1.   /*  rinuncia a visita specialistica ultimi 12 mesi: altro */
ANSANG12 : $1.   /*  negli ultimi 12 mesi si è sottoposto a esami del sangue? */
ACCER12 : $1.   /*  negli ultimi 12 mesi si è sottoposto a esami specialistici? */
ASPESA : $1.   /*  spesa per ultimo esame specialistico (ultimi 12 mesi) */
ACCPRE : $1.   /*  l'ultimo esame specialistico (ultimi 12 mesi) le è stato prescritto da un medico? */
ACCRI1 : $1.   /*  rinuncia a accertamento specialistico ultimi 12 mesi */
ACCRI2 : $1.   /*  rinuncia a accertamento specialistico ultimi 12 mesi: non poteva pagarlo, costava troppo */
ACCRI3 : $1.   /*  rinuncia a accertamento specialistico ultimi 12 mesi: lista d'attesa lunga */
ACCRI4 : $1.   /*  rinuncia a accertamento specialistico ultimi 12 mesi: scomodità */
ACCRI5 : $1.   /*  rinuncia a accertamento specialistico ultimi 12 mesi: non poteva assentarsi dal lavoro */
ACCRI6 : $1.   /*  rinuncia a accertamento specialistico ultimi 12 mesi: doveva accudire figli o altre persone */
ACCRI7 : $1.   /*  rinuncia a accertamento specialistico ultimi 12 mesi: altro */
MINCDO : $1.   /*  Incidente domestico subito negli ultimi 3 mesi */
MNINCDM : $2.   /*  Incidente domestico subito negli ultimi 3 mesi: quante volte */
SPOCON : $1.   /*  Nel suo tempo libero pratica con carattere di continuità uno o più sport? */
SPOSAL : $1.   /*  Nel suo tempo libero pratica saltuariamente uno o più sport? */
ATTFIS : $1.   /*  Le capita di svolgere nel tempo libero qualche attività fisica? */
FREQSPO : $1.   /*  Frequenza nell'anno delle attività sportive praticate */
ORESETSP : $1.   /*  Ore di attività sportiva praticate nell'ultima settimana */
SPPAG : $1.   /*  Negli ultimi 12 mesi ha fatto sport in luoghi a pagamento? */
SPRIV : $1.   /*  Negli ultimi 12 mesi ha frequentato lezioni private o corsi di sport a spese sue o della famiglia? */
RETTA : $1.   /*  Paga una retta annua o periodica per un circolo o club sportivo? */
AMICI : $1.   /*  Con che frequenza si vede con amici nel tempo libero? */
PARENT : $1.   /*  Ha altri parenti su cui poter contare (oltre a genitori, figli, fratelli e sorelle, nonni e nipoti) */
AMICI2 : $1.   /*  Ha amici su cui poter contare */
VICINI : $1.   /*  Ha vicini su cui poter contare */
CPESO : $1.   /*  Frequenza con cui usa controllare il suo peso */
FARM : $1.   /*  Negli ultimi due giorni ha fatto uso di farmaci? */
PASTO : $1.   /*  Qual è il suo pasto principale? */
COLAZ : $1.   /*  Ha l'abitudine di fare la prima colazione? (se la fa più di una volta consideri solo la prima) */
LPRAN : $1.   /*  Dove pranza abitualmente nei giorni non festivi? (di scuola o di lavoro) */
PANPAS : $1.   /*  Frequenza consumo: pane, pasta, riso */
SALUMI : $1.   /*  Frequenza consumo: salumi */
POLLO : $1.   /*  Frequenza consumo: carne di pollo, tacchino, coniglio, vitello */
COV : $1.   /*  Frequenza consumo: carni ovine */
CBOV : $1.   /*  Frequenza consumo: carni bovine */
CMAIAL : $1.   /*  Frequenza consumo: carni di maiale (escluso salumi) */
LATTE : $1.   /*  Frequenza consumo: latte */
FORM : $1.   /*  Frequenza consumo: formaggi, latticini */
UOVA : $1.   /*  Frequenza consumo: uova */
PESCE : $1.   /*  Frequenza consumo: pesce */
VERD : $1.   /*  Frequenza consumo: verdure in foglia cotte e crude (spinaci, insalate, cicoria, cavolo, broccoli) */
POMOD : $1.   /*  Frequenza consumo: pomodori (escluse conserve), melanzane, peperoni, finocchi, zucchine, carciofi, carote, zucche, cavolfiore, piselli e altri legumi freschi */
FRUTTA : $1.   /*  Frequenza consumo: frutta */
PZVERD : $1.   /*  Numero di porzioni di insalata oppure ortaggi e/o verdura */
PZFRUTTA : $1.   /*  Numero di porzioni di frutta */
LEGUMI : $1.   /*  Frequenza consumo: legumi secchi o in scatola */
PATATE : $1.   /*  Frequenza consumo: patate */
SNACK : $1.   /*  Frequenza consumo: snack salati (patatine, pop corn, salatini, olive) */
DOLCI : $1.   /*  Frequenza consumo: dolci (torte farcite, merendine, gelati, ecc) */
CGRAS : $1.   /*  Quale dei seguenti grassi usa più frequentemente per la cottura dei cibi? */
FGRAS : $1.   /*  Quale dei seguenti grassi usa più frequentemente per il condimento a crudo dei cibi ( insalate, pasta, ecc.) o per panini, tartine, ecc.? */
QTSALE : $1.   /*  Fa attenzione alla quantità di sale e/o al consumo di cibi salati? */
IODIO : $1.   /*  Usa sale arricchito con iodio */
ACMIN : $1.   /*  Quantità consumata abitualmente di acqua minerale */
BGAS : $1.   /*  Quantità consumata abitualmente di bevande gassate (esclusa l'acqua minerale) */
BIRRA : $1.   /*  Quantità consumata abitualmente di  birra */
VINO : $1.   /*  Quantità consumata abitualmente di  vino */
BICBIRRAM : $2.   /*  Quanti bicchieri di birra consuma abitualmente al giorno? */
BICVINOM : $2.   /*  Quanti bicchieri di vino consuma abitualmente al giorno? */
BFPAS : $1.   /*  Frequenza con cui capita di bere vino o alcolici fuori dai pasti */
BICFUORIM : $2.   /*  Complessivamente in una settimana quanti bicchieri di vino o alcolici consuma abitualmente fuori dai pasti? */
ANAL : $1.   /*  In quale quantità consuma abitualmente: aperitivi analcolici */
ALCOL : $1.   /*  In quale quantità consuma abitualmente: aperitivi alcolici */
AMAR : $1.   /*  In quale quantità consuma abitualmente: amari */
LIQUOR : $1.   /*  In quale quantità consuma abitualmente: superalcolici ( o liquori ) */
BICALTROM : $2.   /*  Numero di bicchieri al giorno di aperitivi alcolici, amari o superalcolici */
ALCOL12 : $1.   /*  Consumo di bevande alcoliche negli ultimi 12 mesi */
BICALC : $1.   /*  Consumo di almeno 6 bicchieri di bevande alcoliche in un'unica occasione negli ultimi 12 mesi */
NBICALCM : $3.   /*  Consumo di almeno 6 bicchieri di bevande alcoliche in un'unica occasione negli ultimi 12 mesi: numero di volte */
DOVCASP : $1.   /*  Luogo di consumo di almeno 6 bicchieri di alcol: a casa propria */
DOVAMPA : $1.   /*  Luogo di consumo di almeno 6 bicchieri di alcol: a casa di parenti o amici */
DOVRISTO : $1.   /*  Luogo di consumo di almeno 6 bicchieri di alcol:al ristorante/trattoria/osteria/pizzeria */
DOVPUB : $1.   /*  Luogo di consumo di almeno 6 bicchieri di alcol:al bar/pub/birreria */
DOVDISCO : $1.   /*  Luogo di consumo di almeno 6 bicchieri di alcol: in discoteca */
DOVSTR : $1.   /*  Luogo di consumo di almeno 6 bicchieri di alcol: all'aperto/per strada */
DOVALT : $1.   /*  Luogo di consumo di almeno 6 bicchieri di alcol: altro luogo */
ESIG : $1.   /*  Uso della sigaretta elettronica */
FUMO : $1.   /*  Attualmente fuma? */
FRFUMO : $1.   /*  Con quale frequenza fuma */
TFUMO : $1.   /*  Che cosa fuma prevalentemente */
NSIGARM : $2.   /*  Quante sigarette fuma in media al giorno */
SALUTE : $1.   /*  Come va in generale la sua salute? */
CRONI : $1.   /*  È affetto da malattie croniche o problemi di salute di lunga durata? */
LIMITA : $1.   /*  A causa di problemi di salute, in che misura lei ha delle limitazioni, che durano da almeno 6 mesi, nelle attività che le persone abitualmente svolgono? */
DIAB : $1.   /*  Affetto da malattia cronica: diabete */
IPAR : $1.   /*  Affetto da malattia cronica: ipertensione arteriosa */
INFAR : $1.   /*  Affetto da malattia cronica: infarto del miocardio */
CUORE : $1.   /*  Affetto da malattia cronica: angina pectoris o altre malattie del cuore */
BRON : $1.   /*  Affetto da malattia cronica: bronchite cronica, enfisema, insufficienza respiratoria */
ASMA : $1.   /*  Affetto da malattia cronica: asma bronchiale */
ALLER : $1.   /*  Affetto da malattia cronica: malattie allergiche */
TUMOR : $1.   /*  Affetto da malattia cronica: tumore (incluso linfoma e leucemia) */
ULCER : $1.   /*  Affetto da malattia cronica: ulcera gastrica e duodenale */
FEGATO : $1.   /*  Affetto da malattia cronica: calcolosi del fegato o delle vie biliari */
CIRRO : $1.   /*  Affetto da malattia cronica: cirrosi epatica */
CALRE : $1.   /*  Affetto da malattia cronica: calcolosi renale */
ARTRO : $1.   /*  Affetto da malattia cronica: artrosi, artrite */
OSTEO : $1.   /*  Affetto da malattia cronica: osteoporosi */
NEURO : $1.   /*  Affetto da malattia cronica: disturbi nervosi */
SF9 : $1.   /*  Per quanto tempo nelle ultime 4 settimane si è sentito calmo e/o sereno */
SF11 : $1.   /*  Per quanto tempo nelle ultime 4 settimane si è sentito scoraggiato e triste */
SF13 : $1.   /*  Per quanto tempo nelle ultime 4 settimane si è sentito molto agitato */
SF14 : $1.   /*  Per quanto tempo nelle ultime 4 settimane si è sentito giù di morale */
SF15 : $1.   /*  Per quanto tempo nelle ultime 4 settimane si è sentito felice */
RADIO : $1.   /*  Ha l'abitudine di ascoltare la radio? */
HHRAD : $2.   /*  Ore di ascolto della radio al giorno */
MMRAD : $2.   /*  Minuti di ascolto della radio al giorno */
TELE : $1.   /*  Ha l'abitudine di guardare la tv? */
HHTEL : $2.   /*  Per quante ore guarda la televisione */
MMTEL : $2.   /*  Per quanti minuti guarda la televisione */
PCTEMPO : $1.   /*  Lei ha mai usato il personal computer? */
FREQPC12 : $1.   /*  Frequenza d'uso del personal computer negli ultimi 12 mesi */
INTTEMPO : $1.   /*  Lei ha mai usato Internet? */
FREQIN12 : $1.   /*  Frequenza d'uso di Internet negli ultimi 12 mesi */
IAIPCSCRI : $1.   /*  negli ultimi 3 mesi strumento per accesso ad Internet: computer fisso da tavolo */
IAIPCPORT : $1.   /*  negli ultimi 3 mesi strumento per accesso ad Internet: laptop, netbook */
IAITABLET : $1.   /*  negli ultimi 3 mesi strumento per accesso ad Internet: tablet */
IAIDISMOB : $1.   /*  negli ultimi 3 mesi strumento per accesso ad Internet: telefono cellulare o smartphone */
IAIALTRO_N : $1.   /*  negli ultimi 3 mesi strumento per accesso ad Internet: altri dispositivi mobili */
DISP_SMA : $1.   /*  strumenti utlilizzati per accedere ad Internet in luoghi diversi da casa o dal posto di lavoro negli ultimi 3 mesi: telefono cellulare o smartphone */
DISP_LAP : $1.   /*  strumenti utlilizzati per accedere ad Internet in luoghi diversi da casa o dal posto di lavoro negli ultimi 3 mesi: laptop, netbook */
DISP_TAB : $1.   /*  strumenti utlilizzati per accedere ad Internet in luoghi diversi da casa o dal posto di lavoro negli ultimi 3 mesi: tablet */
DISPPDA : $1.   /*  strumenti utlilizzati per accedere ad Internet in luoghi diversi da casa o dal posto di lavoro negli ultimi 3 mesi: altro dispositivo portatile */
INCOMU5 : $1.   /*  negli ultimi 3 mesi ha spedito o ricevuto mail */
INCOMU1b : $1.   /*  negli ultimi 3 mesi ha telefonato/effettuato videochiamate */
INCOMU34 : $1.   /*  negli ultimi 3 mesi ha usato messaggeria istantanea (es. WhatsApp), ha inviato messaggi su chat, blog, newsgroup, forum */
INCOMU6 : $1.   /*  negli ultimi 3 mesi ha partecipato a social network (creare un profilo utente, postare messaggi o altro su Facebook, Twitter, ecc.) */
INCOMU7 : $1.   /*  negli ultimi 3 mesi ha espresso opinioni su temi sociali o politici su web (ad esempio tramite blog, social network, ecc.) */
INTATT20 : $1.   /*  negli ultimi 3 mesi ha consultato un wiki per ottenere informazioni (es. wikipedia, altre enciplopedie online) */
INTATT21 : $1.   /*  negli ultimi 3 mesi ha partecipato ad un network professionale (creare un profilo, postare messaggi o altri contributi su Linkedln, Xing, ecc.) */
INTATT26 : $1.   /*  negli ultimi 3 mesi ha caricato contenuti di propria creazione */
INTATT5 : $1.   /*  negli ultimi 3 mesi ha usato servizi relativi a viaggi o soggiorni */
INTATT4 : $1.   /*  negli ultimi 3 mesi ha cercato lavoro o mandato una richiesta di lavoro */
INTSAL3 : $1.   /*  negli ultimi 3 mesi ha preso un appuntamento con un medico */
INTATT14 : $1.   /*  negli ultimi 3 mesi ha cercato informazioni sanitarie */
INTATT11 : $1.   /*  negli ultimi 3 mesi ha usato servizi bancari via Internet */
INTATT33 : $1.   /*  negli ultimi 3 mesi ha usato servizi di pagamento (es paypal, braintree, ecc.) per acquistare beni o servizi su Internet */
INTATT13 : $1.   /*  negli ultimi 3 mesi ha venduto merci o servizi */
INTATT17 : $1.   /*  negli ultimi 3 mesi ha cercato informazioni su attività di istruzione o corsi */
INTATT16 : $1.   /*  negli ultimi 3 mesi ha cercato informazioni su merci o servizi */
INTATT10 : $1.   /*  negli ultimi 3 mesi ha scaricato software (diverso da giochi) */
INTATT8 : $1.   /*  negli ultimi 3 mesi ha letto giornali, informazioni, riviste online */
INTATT31 : $1.   /*  negli ultimi 3 mesi ha letto o scaricato libri online o e_book */
INTATT32 : $1.   /*  negli ultimi 3 mesi ha ascoltato musica */
INTATT7BN : $1.   /*  negli ultimi 3 mesi ha guardato la televisione in streaming */
INTATT30A : $1.   /*  negli ultimi 3 mesi ha guardato video on demand */
INTATT30B : $1.   /*  negli ultimi 3 mesi ha guardato contenuti video da servizi di condivisione (es. Youtube) */
INTATT28A : $1.   /*  negli ultimi 3 mesi ha scaricato immagini, film, musica */
INTATT28B : $1.   /*  negli ultimi 3 mesi ha giocato o scaricato giochi */
CLOUDSAL : $1.   /*  negli ultimi 3 mesi ha usato servizi di archiviazione/condivisione su internet per salvare */
SKL_FRE : $1.   /*  negli ultimi 3 mesi ha fatto un corso di formazione online gratuito */
SKL_AUTO : $1.   /*  negli ultimi 3 mesi ha fatto un corso di formazione a pagamento completamente a proprio carico */
SKL_PUB : $1.   /*  negli ultimi 3 mesi ha fatto un corso di formazione gratuito promosso da organizzazioni diverse dal proprio datore di lavoro */
SKL_DAT : $1.   /*  negli ultimi 3 mesi ha fatto un corso di formazione finanziato o organizzato dal proprio datore di lavoro */
SKL_COLL : $1.   /*  negli ultimi 3 mesi è stato formato sul posto di lavoro (es. colleghi, supervisori) */
P2P_ACC : $1.   /*  negli ultimi 3 mesi ha usato appositi siti web o app per trovare un alloggio contattando direttamente un privato (es. AIRBNB, homeway etc) */
P2P_ACCALT : $1.   /*  negli ultimi 3 mesi ha usato altri siti web o app per trovare un alloggio contattando direttamente un privato (inclusi i siti di  social network) */
P2P_TRA : $1.   /*  negli ultimi 3 mesi ha usato appositi siti web o app per usufruire di un servizio di trasporto contattando direttamente un privato (es. UBER) */
P2P_TRALT : $1.   /*  negli ultimi 3 mesi ha usato altri siti web o app per usufruire di un servizio di trasporto contattando direttamente un privato (inclusi i siti di  social network) */
P2P_FOOD : $1.   /*  negli ultimi 12 mesi ha usato un sito web/app per ordinare alimentari a domicilio o prenotare servizi di ristorazione direttamente da un privato (gruppi d'acquisto, Deliveroo, Foodora, Gnammo, Home Re */
P2P_WRK : $1.   /*  negli ultimi 12 mesi ha usato un sito web/app che le ha permesso di ottenere un lavoro retribuito (es. Freelancer, Upwork, ecc.)? */
COSINT9a : $1.   /*  negli ultimi 12 mesi  ha svolto operazioni finanziarie per uso privato su Internet (escluse e-mail): acquistare/vendere azioni, obbligazioni fondi o altri servizi finanziari */
COSINT9b : $1.   /*  negli ultimi 12 mesi  ha svolto operazioni finanziarie per uso privato su Internet (escluse e-mail): acquistare/rinnovare polizze assicurative */
COSINT9c : $1.   /*  negli ultimi 12 mesi  ha svolto operazioni finanziarie per uso privato su Internet (escluse e-mail): ottenere un prestito/credito da banche o da altri fornitori di servizi finanziari */
PR_UP : $1.   /*  negli ultimi 12 mesi ha utilizzato procedure di identificazione per accesso a servizi online: accesso semplice, username e password */
PR_SM : $1.   /*  negli ultimi 12 mesi ha utilizzato procedure di identificazione per accesso a servizi online: accesso usando credenziali social media */
PR_ST : $1.   /*  negli ultimi 12 mesi ha utilizzato procedure di identificazione per accesso a servizi online: accesso con dispositivo per generare numeri pseudocasuali */
PR_CARD : $1.   /*  negli ultimi 12 mesi ha utilizzato procedure di identificazione per accesso a servizi online: accessi con certificato di identificazione elettronica o con carta tramite lettore magnetico */
PR_COD : $1.   /*  negli ultimi 12 mesi ha utilizzato procedure di identificazione per accesso a servizi online: accesso con codice ricevuto sul cellulare/smartphone mediante messaggio */
PR_PIN : $1.   /*  negli ultimi 12 mesi ha utilizzato procedure di identificazione per accesso a servizi online: accesso con codici PIN  o caratteri di password scelti a caso */
PR_ALT : $1.   /*  negli ultimi 12 mesi ha utilizzato procedure di identificazione per accesso a servizi online:  */
INTUSO1 : $1.   /*  negli ultimi 12 mesi ha usato Internet per ottenere informazioni da siti web della P.A. o dei gestori dei servizi pubblici */
INTUSO2 : $1.   /*  negli ultimi 12 mesi ha usato Internet per scaricare moduli della P.A. o dei gestori dei servizi pubblici */
INTUSO3 : $1.   /*  negli ultimi 12 mesi ha usato Internet per inviare moduli compilati online per uso privato allla P.A. o dei gestori dei servizi pubblici */
INTCOM : $1.   /*  ha mai comprato o ordinato merci e/o servizi per uso privato su internet */
NORDINI : $1.   /*  negli ultimi 3 mesi quante volte ha comprato o ordinato merci e/o servizi per uso privato su internet */
SPINTCOM : $1.   /*  negli ultimi 3 mesi quanto ha speso per beni e/o servizi ordinati o comprati su internet per uso privato */
COSINT1 : $2.   /*  negli ultimi 12 mesi ha comprato o ordinato prodotti alimentari */
COSINT2 : $2.   /*  negli ultimi 12 mesi ha comprato o ordinato articoli per la casa */
COSINT19 : $2.   /*  negli ultimi 12 mesi ha comprato o ordinato farmaci */
COSINT5 : $2.   /*  negli ultimi 12 mesi ha comprato o ordinato abiti, articoli sportivi */
COSINT3 : $2.   /*  negli ultimi 12 mesi ha comprato o ordinato film, musica */
COSINT22A : $2.   /*  negli ultimi 12 mesi ha comprato o ordinato libri (inclusi e-book) */
COSINT22B : $2.   /*  negli ultimi 12 mesi ha comprato o ordinato giornali, riviste */
COSINT21 : $2.   /*  negli ultimi 12 mesi ha comprato o ordinato materiale per la formazione a distanza */
COSINT15 : $2.   /*  negli ultimi 12 mesi ha comprato o ordinato software per computer e/o aggiornamenti (esclusi videogiochi) */
COSINT16 : $2.   /*  negli ultimi 12 mesi ha comprato o ordinato videogiochi e/o loro aggiornamenti */
COSINT7 : $2.   /*  negli ultimi 12 mesi ha comprato o ordinato hardware per computer */
COSINT8 : $2.   /*  negli ultimi 12 mesi ha comprato o ordinato attrezzature elettroniche (es. macchine fotografiche, telecamere, ecc.) */
COSINT20 : $2.   /*  negli ultimi 12 mesi ha comprato o ordinato servizi di telecomunicazione (es. abbonamenti a tv, a telecomunicazioni a banda larga, a telefono fisso o cellulare, ricariche di carte telefoniche prepagat */
COSINT18 : $2.   /*  negli ultimi 12 mesi ha comprato o ordinato pernottamenti per vacanze (alberghi, pensioni) */
COSINT17 : $2.   /*  negli ultimi 12 mesi ha effettuato altre spese di viaggio (biglietti ferroviari, aerei, noleggio auto, ecc.) */
COSINT11 : $2.   /*  negli ultimi 12 mesi ha comprato o ordinato biglietti per spettacoli */
COSINT12 : $2.   /*  negli ultimi 12 mesi ha comprato o ordinato biglietti delle lotterie o scommesse */
COSINT14 : $2.   /*  negli ultimi 12 mesi ha comprato o ordinato altri prodotti: altro */
VENDI1 : $1.   /*  negli ultimi 12 mesi ha ordinato o comprato merci e/o servizi per uso privato su Internet da venditore nazionale */
VENDI2 : $1.   /*  negli ultimi 12 mesi ha ordinato o comprato merci e/o servizi per uso privato su Internet da venditore di altro paese UE */
VENDI3 : $1.   /*  negli ultimi 12 mesi ha ordinato o comprato merci e/o servizi per uso privato su Internet da venditore dal resto del Mondo */
VENDI4 : $1.   /*  negli ultimi 12 mesi ha ordinato o comprato merci e/o servizi per uso privato su Internet senza conoscere il paese di origine del venditore */
CT_WORK : $1.   /*  negli ultimi 12 mesi per lavoro ha usato: computer, tablet, laptop, smartphone, altro dispositivo portatile */
MAC_WORK : $1.   /*  negli ultimi 12 mesi per lavoro ha usato: altre attrezzature o macchine informatizzate */
NO_ICTW : $1.   /*  negli ultimi 12 mesi per lavoro non ha utilizzato computer, smartphone o altri dispositivi portatili né altre attrezzature o macchine informatizzate */
WRK_EMA : $1.   /*  per lavoro ha effettuato almeno una delle seguenti attività almeno una volta a settimana: scambiare e-mail o inserire dati in database */
WRK_DOC : $1.   /*  per lavoro ha effettuato almeno una delle seguenti attività almeno una volta a settimana: creare o modificare documenti elettronici */
WRK_SM : $1.   /*  per lavoro ha effettuato almeno una delle seguenti attività almeno una volta a settimana: creare o modificare documenti elettronici */
WRK_INC : $1.   /*  per lavoro ha effettuato almeno una delle seguenti attività almeno una volta a settimana: usare applicazioni per ricevere incarichi o istruzioni (escluse e-mail) */
WRK_SOF : $1.   /*  per lavoro ha effettuato almeno una delle seguenti attività almeno una volta a settimana: usare specifici software */
WRK_IT : $1.   /*  per lavoro ha effettuato almeno una delle seguenti attività almeno una volta a settimana: sviluppare o mantenere sistemi informatici o software */
WRK_CAMB : $1.   /*  negli ultimi 12 mesi sono cambiate attività/mansioni lavorative a seguito dell'introduzione di nuovi software o di attrezzature computerizzate */
WRK_NS : $1.   /*  negli ultimi 12 mesi ha dovuto imparare a utilizzare un nuovo software/attrezzature computerizzate */
GIUD_SKL : $1.   /*  quali delle seguenti affermazioni descrive meglio le sue competenze/abilità relative all'utilizzo del computer/software/applicazioni */
TEATRO : $1.   /*  Frequenza con cui negli ultimi 12 mesi è andato a teatro? */
CINE : $1.   /*  Frequenza con cui negli ultimi 12 mesi è andato a cinema? */
MUSEO : $1.   /*  Frequenza con cui negli ultimi 12 mesi è andato a musei o mostre? */
MUSIC : $1.   /*  Frequenza con cui negli ultimi 12 mesi è andato a concerti di musica classica? */
ACMUS : $1.   /*  Frequenza con cui negli ultimi 12 mesi è andato ad altri concerti di musica? */
SPSPO : $1.   /*  Frequenza con cui negli ultimi 12 mesi è andato a spettacoli sportivi? */
DISCO : $1.   /*  Frequenza con cui negli ultimi 12 mesi è andato in discoteche, balere, night club o altri luoghi dove ballare? */
MONUM : $1.   /*  Frequenza con cui negli ultimi 12 mesi è andato in siti archeologici, monumenti? */
LQUOT : $1.   /*  Legge quotidiani almeno una volta alla settimana? */
LIBRI : $1.   /*  ha letto libri negli ultimi 12 mesi? */
NLIBRIM :2.   /*  Numero di libri letti negli ultimi 12 mesi (considerare solo i libri letti per motivi non strettamente scolastici o professionali) */
NLIBRI_CARM :2.   /*  numero di libri cartacei letti */
NLEBOOM :2.   /*  Numero di e-book letti negli ultimi 12 mesi */
NLAUDIOM :2.   /*  Numero di audiolibri ascoltati negli ultimi 12 mesi */
RIVSET : $1.   /*  Abitualmente legge qualche rivista settimanale? */
NOSETT : $1.   /*  Abitualmente legge qualche periodico non settimanale? */
CHIES : $1.   /*  Abitualmente con che frequenza si reca in chiesa o in altro luogo di culto? */
SITEC : $1.   /*  Soddisfazione per la situazione economica negli ultimi 12 mesi */
SALUT : $1.   /*  Soddisfazione per la propria salute negli ultimi 12 mesi */
RELFAM : $1.   /*  Soddisfazione per le relazioni familiari negli ultimi 12 mesi */
RELAM : $1.   /*  Soddisfazione per le relazioni con amici negli ultimi 12 mesi */
TEMLIB : $1.   /*  Soddisfazione per il tempo libero negli ultimi 12 mesi */
AMBIENTE : $1.   /*  Soddisfazione per la situazione ambientale (aria, acqua, ecc.) della zona in cui vive */
PAESAGGIO : $1.   /*  Secondo lei, il paesaggio del luogo in cui vive è affetto da evidente degrado? */
SODLAV2 : $1.   /*  Pensi agli ultimi 12 mesi. Lei si ritiene soddisfatto del suo lavoro? */
POLIT : $1.   /*  Con quale frequenza le capita di parlare di politica? */
PPAPO : $1.   /*  Ha partecipato negli ultimi 12 mesi a riunioni di: partiti politici */
PSIND : $1.   /*  Ha partecipato negli ultimi 12 mesi a riunioni di: organizzazioni sindacali ( sindacati confederati, autonomi, sindacati di tutte le categorie, anche dei pensionati ecc.) */
PGRVO : $1.   /*  Ha partecipato negli ultimi 12 mesi a riunioni di: associazioni o gruppi di volontariato */
PAECO : $1.   /*  Ha partecipato negli ultimi 12 mesi a riunioni di: associazioni ecologiche per i diritti civili per la pace */
PCULT : $1.   /*  Ha partecipato negli ultimi 12 mesi a riunioni di: associazioni culturali, ricreative o di altro tipo */
PASPRO : $1.   /*  Ha partecipato negli ultimi 12 mesi a riunioni di: associazioni professionali o di categoria */
COMIZ : $1.   /*  Negli ultimi 12 mesi ha partecipato a un comizio */
CORTEI : $1.   /*  Negli ultimi 12 mesi ha partecipato a un corteo */
DIBPO : $1.   /*  Negli utlimi 12 mesi ha sentito un dibattito politico */
FINPA : $1.   /*  Negli ultimi 12 mesi ha dato soldi a un partito ( per sottoscrizione, sostegno) */
FINAS : $1.   /*  Negli ultimi 12 mesi ha dato soldi ad un'associazione */
VOLON : $1.   /*  Negli ultimi 12 mesi ha svolto attività gratuita per associazioni o gruppi di volontariato */
ATGRA : $1.   /*  Negli ultimi 12 mesi ha svolto attività gratuita per un'associazione non di volontariato */
VOLPA : $1.   /*  Negli ultimi 12 mesi ha svolto attività gratuita per un partito */
VOLSI : $1.   /*  Negli ultimi 12 mesi ha svolto attività gratuita per un sindacato */
POLITI : $1.   /*  Con che frequenza si informa dei fatti della politica italiana? */
PRADIO : $2.   /*  Si informa di politica attraverso: radio */
PTELEV : $2.   /*  Si informa di politica attraverso: televisione */
PQUOT : $2.   /*  Si informa di politica attraverso: quotidiani */
PSETT : $2.   /*  Si informa di politica attraverso: settimanali */
PARIV : $2.   /*  Si informa di politica attraverso: altre riviste non settimanali */
PAMICI : $2.   /*  Si informa di politica attraverso: amici */
PPAREN : $2.   /*  Si informa di politica attraverso: parenti */
PCONOS : $2.   /*  Si informa di politica attraverso: conoscenti */
PCOLAV : $2.   /*  Si informa di politica attraverso: colleghi di lavoro */
ORGPOL : $2.   /*  Si informa di politica attraverso: incontri o riunioni presso organizzazioni politiche */
ORGSIN : $2.   /*  Si informa di politica attraverso: incontri o riunioni presso organizzazioni sindacali */
ALTPOL : $2.   /*  Si informa di politica attraverso: altro */
PWEB : $1.   /*  Si informa dei fatti della politica attraverso Internet? */
PWEBM1 : $1.   /*  In che modo si informa dei fatti della politica attraverso Internet: legge o scarica giornali, news, riviste online */
PWEBM2 : $1.   /*  In che modo si informa dei fatti della politica attraverso Internet: ascolta radio e TV online */
PWEBM3 : $1.   /*  In che modo si informa dei fatti della politica attraverso Internet: tramite siti di partiti politici */
PWEBM4 : $1.   /*  In che modo si informa dei fatti della politica attraverso Internet: tramite i social network (es. facebook, twitter, myspace, ecc.) */
PWEBM5 : $1.   /*  In che modo si informa dei fatti della politica attraverso Internet: tramite blog, newsgroup o forum di discussione online */
PWEBM6 : $1.   /*  In che modo si informa dei fatti della politica attraverso Internet: altro */
NPOLI : $1.   /*  Motivo per cui non si informa mai di politica: non mi interessa */
NTPOLI : $1.   /*  Motivo per cui non si informa mai di politica: non ho tempo */
POLCOM : $1.   /*  Motivo per cui non si informa mai di politica: è un argomento troppo complicato */
SFIPOL : $1.   /*  Motivo per cui non si informa mai di politica: sono sfiduciato della politica italiana */
NALTPO : $1.   /*  Motivo per cui non si informa mai di politica: altro */
UFFAN : $1.   /*  Negli ultimi 12 mesi le è capitato di servirsi degli uffici anagrafici ( comune, circoscrizione, anagrafe), per certificati, documenti, autentiche e altre pratiche */
TUFAN : $1.   /*  In genere quanto aspetta in fila prima di essere servito? */
GORAR : $1.   /*  Trova comodo l'orario? */
CORAR : $1.   /*  Se le si desse l'opportunità di cambiare l'orario di sportello come lo vorrebbe? */
AUTOCE : $1.   /*  è a conoscenza della possibilità di ricorrere all'autocertificazione, cioè di compilare lei stesso una semplice dichiarazione al posto dei certificati (come stato di famiglia, residenza, ecc.)? */
CANAG : $2.   /*  Negli ultimi 12 mesi ha richiesto: certificati anagrafici */
PRAUT : $2.   /*  Negli ultimi 12 mesi ha effettuato: pratiche automobilistiche */
CERSC : $2.   /*  Negli ultimi 12 mesi ha richiesto: documenti o certificati per l'iscrizione a scuola o all'università */
CATAS : $2.   /*  Negli ultimi 12 mesi ha richiesto: documenti o certificati del catasto */
CALTRO : $2.   /*  Negli ultimi 12 mesi ha richiesto: altri certificati o documenti */
USOSS : $1.   /*  Negli ultimi 12 mesi si è recato in una ASL per prenotare una visita o un'analisi o per pratiche amministrative? */
TEMSS : $1.   /*  In genere quanto aspetta in fila prima di essere servito? */
GOUSL : $1.   /*  Trova comodo l'orario? */
COUSL : $1.   /*  Se le si desse l'opportunità di cambiare l'orario di sportello come lo vorrebbe? */
UFFPOS : $1.   /*  Negli ultimi 12 mesi si è recato presso un ufficio postale? */
RACCO : $1.   /*  Frequenza con cui si reca all'ufficio postale per: spedizione raccomandate */
VAGLIA : $1.   /*  Frequenza con cui si reca all'ufficio postale per: spedizione vaglia */
VCOC : $1.   /*  Frequenza con cui si reca all'ufficio postale per: versamenti in conto corrente */
RPENS : $1.   /*  Frequenza con cui si reca all'ufficio postale per: ritiro pensioni */
RPARA : $1.   /*  Frequenza con cui si reca all'ufficio postale per: ritiro pacchi o raccomandate */
TRACC : $1.   /*  Tempo di attesa in fila per spedizione raccomandate */
TVAGL : $1.   /*  Tempo di attesa in fila per spedizione vaglia */
TCCP : $1.   /*  Tempo di attesa in fila per versamenti in conto corrente */
TRPEN : $1.   /*  Tempo di attesa in fila per ritiro pensioni */
TPARA : $1.   /*  Tempo di attesa in fila per ritiro pacchi o raccomandate */
GOSPO : $1.   /*  Trova comodo l'orario? */
COSPO : $1.   /*  se le si desse l'opportunità di cambiare l'orario di sportello come lo vorrebbe? */
BANCA : $1.   /*  Negli ultimi 12 mesi le è capitato di servirsi di una banca per operazioni di sportello come versamenti, assegni circolari, prelievi (escluso il bancomat) ecc.? */
TABAN : $1.   /*  In genere quanto aspetta in fila prima di essere servito? */
BANCM : $1.   /*  Possiede il bancomat? */
CCRED : $1.   /*  Possiede carta di credito? */
NCCREDM : $2.   /*  Quante carte di credito possiede? */
USOTRAM : $1.   /*  Utilizza autobus, filobus, tram all'interno del suo comune? */
FCORS : $1.   /*  Giudizio su: frequenza delle corse */
PUNT : $1.   /*  Giudizio su: puntualità */
POSSE : $1.   /*  Giudizio su: possibilità di trovare posto a sedere */
VELCO : $1.   /*  Giudizio su: velocità della corsa */
PULIZ : $1.   /*  Giudizio su: pulizia delle vetture */
COMOF : $1.   /*  Giudizio su: comodità dell'attesa alle fermate */
COLLEG : $1.   /*  Giudizio su: possibilità di collegamento tra zone del comune */
COMOR : $1.   /*  Giudizio su: comodità di orari */
CPSBI : $1.   /*  Giudizio su: costo del biglietto */
VOTOBU : $2.   /*  Giudizio complessivo sul servizio di autobus, filobus, tram */
USOPUL : $1.   /*  Utilizza pullman, corriere che collegano comuni diversi? */
FRCMT : $1.   /*  Giudizio su: frequenza delle corse */
PUNMT : $1.   /*  Giudizio su: puntualità */
SEDMT : $1.   /*  Giudizio su: possibilità di trovare posto a sedere */
VELMT : $1.   /*  Giudizio su: velocità della corsa */
PULMT : $1.   /*  Giudizio su: pulizia delle vetture */
ATTMT : $1.   /*  Giudizio su: comodità dell'attesa alle fermate */
COLCO : $1.   /*  Giudizio su: possibilità di collegamento con altri comuni */
ORAMT : $1.   /*  Giudizio su: comodità di orari */
CBMT : $1.   /*  Giudizio su: costo del biglietto */
INFMT : $1.   /*  Giudizio su: informazioni sugli orari e sui servizi */
VOTOPU : $2.   /*  Giudizio complessivo del servizio di pullman, corriere tra comuni diversi */
USTRE : $1.   /*  Utilizza il treno? */
FRTRE : $1.   /*  Giudizio su: frequenza delle corse */
PUTRE : $1.   /*  Giudizio su:  puntualità dei treni */
PSTRE : $1.   /*  Giudizio su: possibilità di trovare posto a sedere */
VETRE : $1.   /*  Giudizio su: velocità della corsa */
PULSTR : $1.   /*  Giudizio su: pulizia delle vetture */
COMAT : $1.   /*  Giudizio su: comodità dell'attesa alle fermate */
COLCOM : $1.   /*  Giudizio su:  possibilità di collegamento con altri comuni dei treni */
COMORA : $1.   /*  Giudizio su: comodità di orari */
COBIG : $1.   /*  Giudizio su: costo del biglietto */
INFTR : $1.   /*  Giudizio su: informazioni sul servizio (orari, destinazioni, punti di ristoro) */
VOTOTR : $2.   /*  Giudizio complessivo sui treni */
USOAUT : $1.   /*  Utilizza l'automobile come conducente */
SERRA : $2.   /*  Problemi ambientali che la preoccupano maggiormente: effetto serra, buco nell'ozono */
ESTINZ : $2.   /*  Problemi ambientali che la preoccupano maggiormente: estinzione di alcune specie animali/vegetali */
CAMCLI : $2.   /*  Problemi ambientali che la preoccupano maggiormente: cambiamenti climatici */
SMARIF : $2.   /*  Problemi ambientali che la preoccupano maggiormente: produzione e smaltimento rifiuti */
AMRUM : $2.   /*  Problemi ambientali che la preoccupano maggiormente: rumore */
IARIA : $2.   /*  Problemi ambientali che la preoccupano maggiormente: inquinamento dell'aria */
INQSU : $2.   /*  Problemi ambientali che la preoccupano maggiormente: inquinamento del suolo */
INQFIU : $2.   /*  Problemi ambientali che la preoccupano maggiormente: inquinamento di fiumi, mari */
DISDR : $2.   /*  Problemi ambientali che la preoccupano maggiormente: dissesto idrogeologico (terremoti, alluvioni, ecc.) */
CATASTR : $2.   /*  Problemi ambientali che la preoccupano maggiormente: catastrofi provocate dall'uomo */
FORES2 : $2.   /*  Problemi ambientali che la preoccupano maggiormente: distruzione delle foreste */
INQELET2 : $2.   /*  Problemi ambientali che la preoccupano maggiormente: inquinamento elettromagnetico */
PAESAG2 : $2.   /*  Problemi ambientali che la preoccupano maggiormente: rovina del paesaggio (eccessiva costruzione di edifici) */
ESRISO2 : $2.   /*  Problemi ambientali che la preoccupano maggiormente: esaurimento risorse naturali (acqua, minerali, petrolio, ecc.) */
ALTAMB2 : $2.   /*  Problemi ambientali che la preoccupano maggiormente: altri problemi */
GCARTE : $1.   /*  gettare carte per la strada */
DOPFIL : $1.   /*  parcheggiare l'automobile in doppia fila */
ARUMOR : $1.   /*  fare attenzione a non adottare comportamenti di guida rumorosi */
VOTOVI : $2.   /*  Attualmente quanto si ritiene soddisfatto della sua vita nel complesso? Dia un punteggio da 0 a 10 */
FUTUASP : $1.   /*  Nei prossimi 5 anni lei pensa che la sua situazione personale: migliorerà, resterà la stessa o peggiorerà */
FIDUCIA : $1.   /*  Lei pensa che ci si possa fidare della maggior parte della gente oppure bisogna stare molto attenti? */
FIDU1 : $1.   /*  Immagini di aver perso il suo portafoglio con che probabilità pensa le venga restituito da: un vicino di casa */
FIDU2 : $1.   /*  Immagini di aver perso il suo portafoglio con che probabilità pensa le venga restituito da:  un appartenente alle forze dell'ordine */
FIDU3 : $1.   /*  Immagini di aver perso il suo portafoglio con che probabilità pensa le venga restituito da: un completo sconosciuto */
PUNTIFI1 : $2.   /*  Utilizzando un punteggio da 0 a 10 indichi quanto si fida delle seguenti istituzioni: Parlamento italiano */
PUNTIFI5 : $2.   /*  Utilizzando un punteggio da 0 a 10 indichi quanto si fida delle seguenti istituzioni: Parlamento europeo */
PUNTIFI8 : $2.   /*  Utilizzando un punteggio da 0 a 10 indichi quanto si fida delle seguenti istituzioni: Governo regionale */
PUNTIFI9 : $2.   /*  Utilizzando un punteggio da 0 a 10 indichi quanto si fida delle seguenti istituzioni: Governo provinciale */
PUNTIFI10 : $2.   /*  Utilizzando un punteggio da 0 a 10 indichi quanto si fida delle seguenti istituzioni: Governo comunale */
PUNTIFI4 : $2.   /*  Utilizzando un punteggio da 0 a 10 indichi quanto si fida delle seguenti istituzioni: partiti politici */
PUNTIFI2 : $2.   /*  Utilizzando un punteggio da 0 a 10 indichi quanto si fida delle seguenti istituzioni: sistema giudiziario */
PUNTIFI3 : $2.   /*  Utilizzando un punteggio da 0 a 10 indichi quanto si fida delle seguenti istituzioni: forze dell'ordine */
PUNTIFI12 : $2.   /*  Utilizzando un punteggio da 0 a 10 indichi quanto si fida delle seguenti istituzioni: vigili del fuoco */
PESOMIN : $3.   /*  Peso minorenni in Kg */
STATMIN : $3.   /*  Statura minorenni in cm */
BMIMIN : $1.   /*  Persone di 3-17 anni in eccesso di peso */
SENELE : $1.   /*  Complessivamente, quanto è soddisfatto del servizio dell'energia elettrica? */
GCONT : $1.   /*  Giudizio su: continuità del servizio (assenza di guasti e interruzioni della fornitura) */
GASBAL : $1.   /*  Giudizio su: assenza di sbalzi di tensione */
GDISPL : $1.   /*  Giudizio su: comprensibilità del display */
GCBOL : $1.   /*  Giudizio su: comprensibilità delle bollette */
GINF : $1.   /*  Giudizio su: informazione sul servizio (informazioni su tariffe, condizioni di erogazione, allacciamenti ecc.) */
GAS5 : $1.   /*  Come arriva il gas all'abitazione? */
SGAS : $1.   /*  Complessivamente quanto è soddisfatto del servizio gas? */
GASPR2 : $1.   /*  Giudizio sul servizio del gas: adeguatezza pressione di fornitura */
FLGAS : $1.   /*  Giudizio sul servizio del gas: frequenza di lettura dei contatori */
COMBOL : $1.   /*  Giudizio sul servizio del gas: comprensibilità delle bollette */
SERINF : $1.   /*  Giudizio sul servizio del gas: informazione sul servizio (informazioni su tariffe, condizioni di erogazioni, allacciamenti, ecc.) */
SICURET : $1.   /*  Giudizio sul servizio del gas: sicurezza della rete di distribuzione */
SCEFO2 : $1.   /*  Sa che può scegliere un fornitore diverso dall'azienda che le eroga attualmente l'energia elettrica e/o il gas? */
CAMFO2 : $1.   /*  Ha mai cambiato fornitore di energia elettrica o gas negli ultimi 12 mesi? */
NMOTNFE1 : $1.   /*  Motivo per cui non ha cambiato fornitore di Energia elettrica: soddisfatti del fornitore attuale */
NMOTNFE2 : $1.   /*  Motivo per cui non ha cambiato fornitore di Energia elettrica: mancanza di informazioni */
NMOTNFE3 : $1.   /*  Motivo per cui non ha cambiato fornitore di Energia elettrica: è difficile valutare la convenienza del cambiamento */
NMOTNFE4 : $1.   /*  Motivo per cui non ha cambiato fornitore di Energia elettrica: il risparmio ottenibile non è consistente */
NMOTNFE5 : $1.   /*  Motivo per cui non ha cambiato fornitore di Energia elettrica: teme peggioramento della qualità del servizio */
NMOTNFG1 : $1.   /*  Motivo per cui non ha cambiato fornitore di Gas: soddisfatti del fornitore attuale */
NMOTNFG2 : $1.   /*  Motivo per cui non ha cambiato fornitore di Gas: mancanza di informazioni */
NMOTNFG3 : $1.   /*  Motivo per cui non ha cambiato fornitore di Gas: è difficile valutare la convenienza del cambiamento */
NMOTNFG4 : $1.   /*  Motivo per cui non ha cambiato fornitore di Gas: il risparmio ottenibile non è consistente */
NMOTNFG5 : $1.   /*  Motivo per cui non ha cambiato fornitore di Gas: teme peggioramento della qualità del servizio */
CALLELGA : $1.   /*  Negli ultimi 12 mesi ha utilizzato il servizio di call-center dell'azienda di energia elettrica o gas? */
SODCALL : $1.   /*  Complessivamente quanto è soddisfatto del servizio di call center? */
PROINT : $1.   /*  Negli ultimi 12 mesi lei o qualche componente della famiglia ha mai utilizzato il numero di pronto intervento o segnalazione guasti dell'azienda fornitrice di energia elettrica o di gas? */
SODINT : $1.   /*  Complessivamente quanto è soddisfatto del servizio di pronto intervento o segnalazione guasti? ? */
SPORCO : $1.   /*  La zona in cui abita presenta: sporcizia nelle strade */
PARCH : $1.   /*  La zona in cui abita presenta: difficoltà di parcheggio */
COLMP : $1.   /*  La zona in cui abita presenta: difficoltà di collegamento coi mezzi pubblici */
TRAF : $1.   /*  La zona in cui abita presenta: traffico */
INQAR : $1.   /*  La zona in cui abita presenta: inquinamento dell'aria */
RUMORE : $1.   /*  La zona in cui abita presenta: rumore */
CRIM : $1.   /*  La zona in cui abita presenta: rischio di criminalità */
ODSGR : $1.   /*  La zona in cui abita presenta: odori sgradevoli */
ILLSTR : $1.   /*  La zona in cui abita presenta: scarsa illuminazione delle strade */
CONPAV : $1.   /*  La zona in cui abita presenta: cattive condizioni della pavimentazione stradale */
PARCHI : $1.   /*  Nella zona in cui abita la famiglia ci sono parchi, giardini o altro verde pubblico raggiungibile a piedi in meno di 15 minuti? */
STANZE : $2.   /*  Di quante stanze si compone l'abitazione? */
TERRAZ : $1.   /*  L'abitazione dispone di terrazzo o balcone? */
GARDEN : $1.   /*  L'abitazione dispone di giardino privato? */
TELEF : $1.   /*  L'abitazione dispone di telefono */
NELENC : $1.   /*  Il numero telefonico dell'abitazione principale è riportato nell'elenco telefonico del comune in cui vive? */
RISCAL : $1.   /*  L'abitazione dispone di riscaldamento? */
TRISC : $1.   /*  Tipo di riscaldamento prevalente: */
REACQ1 : $1.   /*  L'acqua arriva all'abitazione attraverso rete comunale */
REACQ2 : $1.   /*  L'acqua arriva all'abitazione attraverso pozzi, sorgenti o altre fonti private */
REACQ3 : $1.   /*  L'acqua arriva all'abitazione attraverso sistemi raccolta acqua piovana */
REACQ4 : $1.   /*  L'acqua arriva all'abitazione attraverso autobotti */
REACQ5 : $1.   /*  L'acqua arriva all'abitazione in altro modo */
SODACQUA : $1.   /*  Complessivamente quanto è soddisfatto del servizio idrico? */
AGFORN : $1.   /*  Giudizio sul servizio idrico: assenza di interruzioni della fornitura */
AGPRESS : $1.   /*  Giudizio sul servizio idrico: livello di pressione dell'acqua */
AGODOR : $1.   /*  Giudizio sul servizio idrico: odore, sapore e limpidezza dell'acqua */
AGLETTUR : $1.   /*  Giudizio sul servizio idrico: frequenza di lettura dei contatori */
AGFATTUR : $1.   /*  Giudizio sul servizio idrico: frequenza della fatturazione */
AGBOLLET : $1.   /*  Giudizio sul servizio idrico: comprensibilità delle bollette */
FOGNA : $1.   /*  L'abitazione è allacciata alla rete fognaria? */
SPEAB : $1.   /*  Si verificano uno o più dei seguenti problemi: le spese per l'abitazione sono troppo alte */
ABIPIC : $1.   /*  Si verificano uno o più dei seguenti problemi:  l'abitazione è troppo piccola */
ABLONF : $1.   /*  Si verificano uno o più dei seguenti problemi:  l'abitazione è troppo distante da altri familiari */
ACQUA : $1.   /*  Si verificano uno o più dei seguenti problemi: irregolarità nella erogazione dell'acqua */
ABICC : $1.   /*  Si verificano uno o più dei seguenti problemi: l'abitazione è in cattive condizioni */
ERACQ : $1.   /*  Frequenza con cui negli ultimi 12 mesi si è verificata l'irregolarità nella erogazione dell'acqua */
SIACQ : $1.   /*  La famiglia o qualche componente beve abitualmente acqua del rubinetto in casa */
ACQBRU : $1.   /*  Nessun componente della famiglia beve acqua di rubinetto perché non è bevibile o non ci fidiamo a berla (inquinata, brutto colore, cattivo sapore, ecc.) */
NOACQ : $1.   /*  Nessun componente della famiglia beve acqua di rubinetto per altro motivo */
GODAB : $1.   /*  A che titolo la famiglia occupa l'abitazione? */
FARMA : $1.   /*  Difficoltà a raggiungere: farmacie */
PRSOC : $1.   /*  Difficoltà a raggiungere: pronto soccorso */
UFFPO : $1.   /*  Difficoltà a raggiungere: ufficio postale */
POLICE : $1.   /*  Difficoltà a raggiungere: polizia, carabinieri */
UFFCOM : $1.   /*  Difficoltà a raggiungere: uffici comunali */
NIDO : $1.   /*  Difficoltà a raggiungere: asilo nido */
SMATER : $1.   /*  Difficoltà a raggiungere: scuola dell'infanzia */
SELEM : $1.   /*  Difficoltà a raggiungere: scuola primaria */
SMINF : $1.   /*  Difficoltà a raggiungere: scuola secondaria di primo grado */
MERCAT : $1.   /*  Difficoltà a raggiungere: negozi di generi alimentari, mercati */
SMERC : $1.   /*  Difficoltà a raggiungere: supermercati */
CASS : $1.   /*  Difficoltà a raggiungere: contenitori rifiuti */
SEGAS : $1.   /*  Difficoltà a raggiungere: sportelli azienda gas */
SLUCE : $1.   /*  Difficoltà a raggiungere: sportelli dell'Enel o dell'azienda elettrica locale */
CRARIF : $1.   /*  Giudizio sul costo sostenuto per: raccolta rifiuti urbani */
CERACQ : $1.   /*  Giudizio sul costo sostenuto per: erogazione dell'acqua */
CCARTA : $1.   /*  Presenza nella zona in cui vive di contenitori per la raccolta differenziata di: carta */
CVETRO : $1.   /*  Presenza nella zona in cui vive di contenitori per la raccolta differenziata di: vetro */
CFARM : $1.   /*  Presenza nella zona in cui vive di contenitori per la raccolta differenziata di: farmaci */
CBAT : $1.   /*  Presenza nella zona in cui vive di contenitori per la raccolta differenziata di: batterie usate */
CLATAL : $1.   /*  Presenza nella zona in cui vive di contenitori per la raccolta differenziata di: lattine di alluminio */
CPLAS : $1.   /*  Presenza nella zona in cui vive di contenitori per la raccolta differenziata di: contenitori in plastica per liquidi */
CRORG : $1.   /*  Presenza nella zona in cui vive di contenitori per la raccolta differenziata di: rifiuti organici */
CTESSILI : $1.   /*  Presenza nella zona in cui vive di contenitori per la raccolta differenziata di: rifiuti tessili */
CALT : $1.   /*  Presenza nella zona in cui vive di contenitori per la raccolta differenziata di: altro */
POAPO : $1.   /*  La zona in cui vive è servita/coinvolta dalla raccolta porta a porta dei rifiuti? */
R_CARTA : $2.   /*  Abitudine a raccogliere i rifiuti in modo separato tramite gli appositi contenitori: carta e cartone */
R_VETRO : $2.   /*  Abitudine a raccogliere i rifiuti in modo separato tramite gli appositi contenitori: vetro */
R_FARM : $2.   /*  Abitudine a raccogliere i rifiuti in modo separato tramite gli appositi contenitori: farmaci */
R_BAT : $2.   /*  Abitudine a raccogliere i rifiuti in modo separato tramite gli appositi contenitori: batterie usate */
R_LATAL : $2.   /*  Abitudine a raccogliere i rifiuti in modo separato tramite gli appositi contenitori: contenitori di alluminio e altri metalli */
R_PLAS : $2.   /*  Abitudine a raccogliere i rifiuti in modo separato tramite gli appositi contenitori: contenitori in plastica */
R_RORG : $2.   /*  Abitudine a raccogliere i rifiuti in modo separato tramite gli appositi contenitori: rifiuti organici/umido */
R_TESSILI : $2.   /*  Abitudine a raccogliere i rifiuti in modo separato tramite gli appositi contenitori: rifiuti tessili */
R_ALT : $2.   /*  Abitudine a raccogliere i rifiuti in modo separato tramite gli appositi contenitori: altro */
SODPOAPO : $1.   /*  Complessivamente la sua famiglia quanto è soddisfatta del servizio di raccolta dei rifiuti porta a porta nella zona in cui vive? */
NOSPO1 : $1.   /*  Famiglia non soddisfatta per il servizio di raccolta dei rifiuti porta a porta per: problemi legati agli orari di ritiro */
NOSPO7 : $1.   /*  Famiglia non soddisfatta per il servizio di raccolta dei rifiuti porta a porta per: problemi legati alla frequenza di ritiro */
NOSPO2 : $1.   /*  Famiglia non soddisfatta per il servizio di raccolta dei rifiuti porta a porta per: problemi legati ai sacchetti/contenitori da utilizzare nella raccolta */
NOSPO3 : $1.   /*  Famiglia non soddisfatta per il servizio di raccolta dei rifiuti porta a porta per: odori causati dall'umido non raccolto quotidianamente */
NOSPO4 : $1.   /*  Famiglia non soddisfatta per il servizio di raccolta dei rifiuti porta a porta per: non ritiene utile raccogliere rifiuti in modo differenziato */
NOSPO5 : $1.   /*  Famiglia non soddisfatta per il servizio di raccolta dei rifiuti porta a porta per: non crede che i rifiuti raccolti vengano recuperati/riciclati */
NOSPO8 : $1.   /*  Famiglia non soddisfatta per il servizio di raccolta dei rifiuti porta a porta per: non sono adeguate le informazioni e l'assistenza agli utenti */
NOSPO6 : $1.   /*  Famiglia non soddisfatta per il servizio di raccolta dei rifiuti porta a porta per: altro motivo */
ECOSTAZ : $1.   /*  Nella zona in cui vive la sua famiglia ci sono stazioni ecologiche, cioè centri dove è possibile portare gratuitamente i rifiuti che non possono essere gettati nei cassonetti? */
USOECO2 : $1.   /*  La sua famiglia ha mai portato rifiuti in questi centri di raccolta? */
ECOCAR : $2.   /*  Tipo di rifiuti portato nelle stazioni ecologiche: carta/cartone di dimensioni ingombranti */
ECOVET : $2.   /*  Tipo di rifiuti portato nelle stazioni ecologiche: vetro */
ECOPLA : $2.   /*  Tipo di rifiuti portato nelle stazioni ecologiche: plastica di dimensioni ingombranti */
ECOPNE : $2.   /*  Tipo di rifiuti portato nelle stazioni ecologiche: pneumatici */
ECOMET : $2.   /*  Tipo di rifiuti portato nelle stazioni ecologiche: metalli */
ECOLEG : $2.   /*  Tipo di rifiuti portato nelle stazioni ecologiche: legno */
ECOFAR : $2.   /*  Tipo di rifiuti portato nelle stazioni ecologiche: farmaci scaduti */
ECOBAT : $2.   /*  Tipo di rifiuti portato nelle stazioni ecologiche: batterie usate */
ECOING : $2.   /*  Tipo di rifiuti portato nelle stazioni ecologiche: rifiuti ingombranti */
ECOINE : $2.   /*  Tipo di rifiuti portato nelle stazioni ecologiche: inerti */
ECOELE : $2.   /*  Tipo di rifiuti portato nelle stazioni ecologiche: apparecchiature elettriche ed elettroniche */
ECOOLI : $2.   /*  Tipo di rifiuti portato nelle stazioni ecologiche: olio esausto */
ECOINF : $2.   /*  Tipo di rifiuti portato nelle stazioni ecologiche: rifiuti tossici e/o infiammabili */
ECOPOT : $2.   /*  Tipo di rifiuti portato nelle stazioni ecologiche: verde e potature */
ECOTESS : $2.   /*  Tipo di rifiuti portato nelle stazioni ecologiche: rifiuti tessili */
ECOALT : $2.   /*  Tipo di rifiuti portato nelle stazioni ecologiche: altro */
NOECO : $1.   /*  Motivo per cui la famiglia non ha mai portato rifiuti nelle stazioni ecologiche */
SPIDIF1 : $1.   /*  Cosa potrebbe spingere la famiglia ad effettuare o fare più spesso la raccolta differenziata: maggiori informazioni su come separare i rifiuti */
SPIDIF2 : $1.   /*  Cosa potrebbe spingere la famiglia ad effettuare o fare più spesso la raccolta differenziata: maggiori informazioni su dove separare i rifiuti */
SPIDIF3 : $1.   /*  Cosa potrebbe spingere la famiglia ad effettuare o fare più spesso la raccolta differenziata: raccolta a domicilio (porta a porta) */
SPIDIF4 : $1.   /*  Cosa potrebbe spingere la famiglia ad effettuare o fare più spesso la raccolta differenziata: disponibilità di appositi contenitori nelle vicinanze dell'abitazione */
SPIDIF5 : $1.   /*  Cosa potrebbe spingere la famiglia ad effettuare o fare più spesso la raccolta differenziata: centri di raccolta migliori e più numerosi */
SPIDIF6 : $1.   /*  Cosa potrebbe spingere la famiglia ad effettuare o fare più spesso la raccolta differenziata: maggiori garanzie che i rifiuti raccolti vengano effettivamente separati */
SPIDIF7 : $1.   /*  Cosa potrebbe spingere la famiglia ad effettuare o fare più spesso la raccolta differenziata: obbligo legale/multe per chi non effettua la raccolta differenziata */
SPIDIF8 : $1.   /*  Cosa potrebbe spingere la famiglia ad effettuare o fare più spesso la raccolta differenziata: detrazioni agevolazioni fiscali o tariffarie per chi effettua regolarmente la raccolta differenziata */
CAMAB : $1.   /*  Negli ultimi 12 mesi uno o più dei componenti della famiglia attuale ha cambiato abitazione? */
PCAMAB : $1.   /*  Negli ultimi 12 mesi la famiglia o qualche componente ha preso seriamente in considerazione la possibilità di cambiare abitazione? */
ASSCA : $1.   /*  La famiglia è assicurata contro i furti nell'abitazione? */
COLFAGG : $2.   /*  La famiglia si avvale di: collaboratore/collaboratrice domestico/a */
BABYSAGG : $2.   /*  La famiglia si avvale di: baby-sitter */
ASSANZAGG : $2.   /*  La famiglia si avvale di: persona che assiste un anziano o un disabile */
HCOLF : $2.   /*  Ore a settimana collaboratore/collaboratrice domestico/a */
HBABYS : $2.   /*  Ore a settimana baby-sitter */
HASANZ : $2.   /*  Ore a settimana persona che assiste un anziano o un disabile */
AVVOC : $1.   /*  Negli ultimi 12 mesi la famiglia è ricorsa alla consulenza di: avvocato */
NOTAIO : $1.   /*  Negli ultimi 12 mesi la famiglia è ricorsa alla consulenza di: notaio */
COMMER : $1.   /*  Negli ultimi 12 mesi la famiglia è ricorsa alla consulenza di: commercialista */
NOMOD : $1.   /*  Organizzazione della famiglia per la compilazione dei modelli per il pagamento delle tasse: la famiglia non deve compilare nessun modulo */
COMFAM : $1.   /*  Organizzazione della famiglia per la compilazione dei modelli per il pagamento delle tasse: se ne occupano uno o più componenti della famiglia */
NONPAG : $1.   /*  Organizzazione della famiglia per la compilazione dei modelli per il pagamento delle tasse: se ne occupano organizzazioni o persone non a pagamento */
PAGAM : $1.   /*  Organizzazione della famiglia per la compilazione dei modelli per il pagamento delle tasse: se ne occupa un commercialista, una organizzazione o altra persona a pagamento */
PINSER : $1.   /*  Qualche componente della famiglia ha effettuato nel corso dell'anno inserzioni a pagamento sui giornali per vari motivi (vendite case, annunci nozze, morti, ecc.)? */
LAVST : $1.   /*  Possesso di: lavastoviglie */
NLAVST : $1.   /*  numero lavastoviglie */
LAVATR : $1.   /*  Possesso di: lavatrice */
NLAVAT : $1.   /*  numero lavatrici */
VIDER : $1.   /*  Possesso di: videoregistratore */
NVIDER : $1.   /*  numero videoregistratore */
VIDEO : $1.   /*  Possesso di: videocamera */
NVIDEO : $1.   /*  numero videocamere */
DVD : $1.   /*  Possesso di: Lettore DVD/Blu Ray */
NDVD : $1.   /*  numero lettori DVD/Blu Ray */
HIFI : $1.   /*  Possesso di: impianto stereo hi-fi per ascoltare musica */
NHIFI : $1.   /*  numero impianto stereo hi-fi per ascoltare musica */
SEGTEL : $1.   /*  Possesso di: segreteria telefonica */
NSEGTM : $1.   /*  numero segreterie telefoniche */
FAX : $1.   /*  Possesso di: fax */
NFAX : $1.   /*  numero di fax */
TELCOL : $1.   /*  Possesso di: televisore */
NTELCO : $1.   /*  numero televisori */
ANTEPA : $1.   /*  Possesso di: antenna parabolica */
NANTEPA : $1.   /*  numero antenna parabolica */
CLIMAT : $1.   /*  Possesso di: condizionatori, climatizzatori */
NCLIMAT : $1.   /*  numero condizionatori, climatizzatori */
BIC : $1.   /*  Possesso di: bicicletta */
NBIC : $1.   /*  numero di biciclette */
MOTOR : $1.   /*  Possesso di: motorino, scooter */
NMOTORM : $1.   /*  numero motorini, scooter */
AMOTO : $1.   /*  Possesso di: motocicletta, moto */
NMOTOM : $1.   /*  numero di motociclette, moto */
ABBTV : $1.   /*  La famiglia possiede abbonamento o carta pre-pagata pay tv? */
SMARTV : $1.   /*  la famiglia possiede una smart TV */
AUTO : $1.   /*  La famiglia possiede l'automobile? */
NAUTOM : $1.   /*  numero automobili */
LIBFAM : $1.   /*  Quanti libri possiede la famiglia? */
TELCEL : $1.   /*  La famiglia possiede il telefono cellulare? */
NTELCEL : $1.   /*  Numero di telefoni cellulari posseduti */
TELCIN : $1.   /*  Il telefono o i telefoni cellulari di cui dispone la famiglia hanno la possibilità di collegarsi ad Internet? */
PC : $1.   /*  La famiglia dispone di personal computer a casa? */
MODEM : $1.   /*  La famiglia possiede: modem */
VGIOC : $1.   /*  La famiglia possiede: consolle per videogiochi */
NVIGIOC : $1.   /*  Numero consolle, videogiochi, altre apparecchiature computerizzate (escluso personal computer) */
EBOOK : $1.   /*  La famiglia possiede: lettore di e-book */
NEBOOK : $1.   /*  Numero di lettori di e-book */
MP3 : $1.   /*  La famiglia possiede: lettore di mp3/mp4 */
NMP3 : $1.   /*  Numero di lettori mp3/mp4 */
FOTODIG : $1.   /*  La famiglia possiede: macchina fotografica digitale */
NFOTODIG : $1.   /*  Numero di macchine fotografiche digitali */
NAVSAT : $1.   /*  La famiglia possiede: navigatore satellitare */
NNAVSAT : $1.   /*  numero di navigatori satellitari */
AINTERN : $1.   /*  La famiglia dispone di un accesso ad Internet da casa? */
CIDSLWIFI : $1.   /*  Connessione usata dalla famiglia: fissa a banda larga (es.DSL, ADSL, VDSL, cavo, fibra ottica, satellite, rete pubblica WIFI, ecc. ) */
CISFPAL : $1.   /*  Connessione usata dalla famiglia: rete di telefonia mobile a banda larga con cellulare o smartphone (minimo con tecnologia 3G) */
CISFMOD : $1.   /*  Connessione usata dalla famiglia: rete di telefonia mobile a banda larga tramite SIM card o chiavetta USB  (minimo con tecnologia 3G) */
CIBASTR : $1.   /*  Connessione fissa o mobile a banda stretta (es.ISDN, 2G, GPRS, ecc.) */
MOTNOAI1 : $1.   /*  Motivo per cui la famiglia non dispone di accesso ad Internet da casa: accede ad Internet da altro luogo */
MOTNOAI3 : $1.   /*  Motivo per cui la famiglia non dispone di accesso ad Internet da casa: Internet non è utile, non è interessante */
MOTNOAI4 : $1.   /*  Motivo per cui la famiglia non dispone di accesso ad Internet da casa: alto costo degli strumenti per connettersi */
MOTNOAI5 : $1.   /*  Motivo per cui la famiglia non dispone di accesso ad Internet da casa: alto costo del collegamento */
MOTNOAI6 : $1.   /*  Motivo per cui la famiglia non dispone di accesso ad Internet da casa: nessuno sa usare internet */
MOTNOAI8 : $1.   /*  Motivo per cui la famiglia non dispone di accesso ad Internet da casa: motivi di privacy, sicurezza */
MOTNOAI10 : $1.   /*  Motivo per cui la famiglia non dispone di accesso ad Internet da casa: mancanza di una connessione a banda larga nella zona */
MOTNOAI9 : $1.   /*  Motivo per cui la famiglia non dispone di accesso ad Internet da casa:  altro motivo (codice) */
SITE : $1.   /*  Valutazione della situazione economica della famiglia confrontata con quella di un anno fa */
RISEC : $1.   /*  Con riferimento agli ultimi 12 mesi e tenendo presente le esigenze di tutti i componenti familiari, come sono state le risorse economiche complessive della famiglia? */
BMI : $1.   /*  Indice di massa corporea per le persone di 18 anni e più */
;
LABEL 
PROFAM = "progressivo famiglia"
PROIND = "numero d'ordine del componente"
NCOMP = "n° dei componenti la famiglia attuale"
ANNO = "anno della rilevazione"
RELPAR = "relazione di parentela con la persona di riferimento"
ETAM = "Età in anni compiuti"
SESSO = "Sesso - scheda generale"
STCIVM = "Stato civile"
STCPM = "Stato civile precedente il matrimonio"
AMATR = "Anno del matrimonio"
ISTRM = "Titolo di studio"
CONDM = "Condizione professionale"
LAVPAS = "Ha lavorato in passato"
POSIZM = "posizione nella professione"
ATECOM = "Settore di attività economica"
TIPNU2 = "Tipo nucleo 2"
NUMNU2 = "Numero progressivo del nucleo nell'ambito della famiglia 2"
RPNUC2 = "Relazione di parentela nell'ambito del nucleo 2"
TIPFA2M = "Tipologia familiare 2"
REGMF = "Regione di residenza dell'intervistato"
RIPMF = "Ripartizione geografica di residenza dell'intervistato"
DOMMF = "Tipologia comunale di residenza"
COEFIN = "Coefficiente di riporto all'universo"
REDPR = "Fonte principale di reddito"
CITT = "Cittadinanza"
FRSCM = "È attualmente iscritto ad una delle scuole, dei corsi o istituti sottoelencati"
MOTAS = "Motivo principale per cui frequenta il nido"
DOMRIF = "Motivo per cui non frequenta il nido: la domanda non è stata accettata"
MEMFAM = "Motivo per cui non frequenta il nido: lo segue un membro della famiglia, non ho problemi di organizzazione familiare"
NIDLON = "Motivo per cui non frequenta il nido: l'asilo è lontano, scomodo"
NODELE = "Motivo per cui non frequenta il nido: non voglio delegare il compito educativo"
MALAT = "Motivo per cui non frequenta il nido: il bambino si ammalava troppo spesso"
ABBAND = "Motivo per cui non frequenta il nido: il bambino può sentirsi abbandonato"
NONVUO = "Motivo per cui non frequenta il nido: il bambino non vuole andare"
NOMED = "Motivo per cui non frequenta il nido: lo ha sconsigliato un medico"
TPICC = "Motivo per cui non frequenta il nido: il bambino è troppo piccolo"
NDTROPPO = "Motivo per cui non frequenta il nido: l'asilo costa troppo"
ORARIS = "Motivo per cui non frequenta il nido: l'asilo ha orari scomodi"
ALNIDO = "Motivo per cui non frequenta il nido: altro"
USORA = "Orario abituale di uscita da casa per andare a lavoro o a scuola (ora)"
USMIN = "Orario abituale di uscita da casa per andare a lavoro o a scuola (minuti)"
HHSCLA = "Tempo impiegato per andare al lavoro/scuola (ora)"
MMSCLA = "Tempo impiegato per andare al lavoro/scuola (minuti)"
DIVCOM = "Per motivi di lavoro o di studio lei vive con una certa regolarità prevalentemente in un comune diverso da questo"
STCOM = "Lavora o studia abitualmente nello stesso comune in cui risiede"
STPROV = "Lavora o studia abitualmente  in un altro comune della stessa provincia"
STREG = "Lavora o studia abitualmente in un'altra provincia della stessa regione"
ALTREG = "Lavora o studia abitualmente  in un'altra regione italiana"
ESTERO = "Lavora o studia abitualmente  all'estero"
USOMT = "Uso di mezzo di trasporto pubblico e/o privato per andare a scuola o al lavoro"
TRENO = "Mezzo di trasporto usato per andare a scuola o al lavoro: treno"
TRAM = "Mezzo di trasporto usato per andare a scuola o al lavoro: tram"
METRO = "Mezzo di trasporto usato per andare a scuola o al lavoro: metropolitana"
BUS = "Mezzo di trasporto usato per andare a scuola o al lavoro: autobus, filobus (all'interno del comune)"
COR = "Mezzo di trasporto usato per andare a scuola o al lavoro: pullman, corriera (tra comuni diversi)"
PAZSC = "Mezzo di trasporto usato per andare a scuola o al lavoro: pullman aziendale o scolastico"
AUTOC = "Mezzo di trasporto usato per andare a scuola o al lavoro: auto privata (come conducente)"
AUTOP = "Mezzo di trasporto usato per andare a scuola o al lavoro: auto privata (come passeggero)"
MOTO = "Mezzo di trasporto usato per andare a scuola o al lavoro: motocicletta o ciclomotore"
BICI = "Mezzo di trasporto usato per andare a scuola o al lavoro: bicicletta"
ALMEZ = "Mezzo di trasporto usato per andare a scuola o al lavoro: altro mezzo"
MTPUSO = "Mezzo di trasporto utilizzato nel  tratto più lungo per andare a scuola o al lavoro"
CARPOO = "Si organizza con colleghi/compagni di studio per andare a lavoro/scuola utilizzando una sola vettura"
PROSOC = "Negli ultimi 3 mesi ha fatto ricorso a pronto soccorso"
NPROSOM = "Quante volte ha fatto ricorso al pronto soccorso"
GUMED = "Negli ultimi 3 mesi ha fatto ricorso a guardia medica"
NGUMEDM = "Quante volte ha fatto ricorso alla guardia medica"
ASSDO = "Negli ultimi 3 mesi ha fatto ricorso a assistenza domiciliare"
NASSDOM = "Quante volte ha fatto ricorso all'assistenza domiciliare"
RICOV = "Negli ultimi 3 mesi è stato ricoverato in un ospedale, in un istituto di cura accreditato (convenzionato) o in una casa di cura privata?"
NNRICAM = "Quante volte è stato ricoverato negli ultimi tre mesi?"
GGRICAM = "Per quante notti complessivamente è stato ricoverato negli ultimi tre mesi?"
LRICOV = "In quale tipo di struttura è avvenuto il ricovero? (con riferimento all'ultimo ricovero)"
CONSPE = "Ha contributo al pagamento delle spese di ricovero"
CONDIR = "Contributo diretto per spese ricovero"
CONASS = "Contributo tramite assicurazione privata per spese ricovero"
QASSAM = "Soddisfazione per ricovero: assistenza medica"
QASSIN = "Soddisfazione per ricovero: assistenza infermieristica"
QVITTO = "Soddisfazione per ricovero: vitto"
QSERIG = "Soddisfazione per ricovero: servizi igienici"
VISMED12 = "negli ultimi 12 mesi ha fatto ricorso a visite presso medici specialisti"
VSPESA = "spesa per ultima visita specialistica (ultimi 12 mesi)"
VISPRE = "l'ultima visita specialistica (ultimi 12 mesi) è stata prescritta da un medico?"
VISRI1 = "rinuncia a visita specialistica ultimi 12 mesi"
VISRI2 = "rinuncia a visita specialistica ultimi 12 mesi: non poteva pagarla, costava troppo"
VISRI3 = "rinuncia a visita specialistica ultimi 12 mesi: lista d'attesa lunga"
VISRI4 = "rinuncia a visita specialistica ultimi 12 mesi:  scomodità"
VISRI5 = "rinuncia a visita specialistica ultimi 12 mesi: non poteva assendarsi dal lavoro"
VISRI6 = "rinuncia a visita specialistica ultimi 12 mesi: doveva accudire figli o altre persone"
VISRI7 = "rinuncia a visita specialistica ultimi 12 mesi: altro"
ANSANG12 = "negli ultimi 12 mesi si è sottoposto a esami del sangue?"
ACCER12 = "negli ultimi 12 mesi si è sottoposto a esami specialistici?"
ASPESA = "spesa per ultimo esame specialistico (ultimi 12 mesi)"
ACCPRE = "l'ultimo esame specialistico (ultimi 12 mesi) le è stato prescritto da un medico?"
ACCRI1 = "rinuncia a accertamento specialistico ultimi 12 mesi"
ACCRI2 = "rinuncia a accertamento specialistico ultimi 12 mesi: non poteva pagarlo, costava troppo"
ACCRI3 = "rinuncia a accertamento specialistico ultimi 12 mesi: lista d'attesa lunga"
ACCRI4 = "rinuncia a accertamento specialistico ultimi 12 mesi: scomodità"
ACCRI5 = "rinuncia a accertamento specialistico ultimi 12 mesi: non poteva assentarsi dal lavoro"
ACCRI6 = "rinuncia a accertamento specialistico ultimi 12 mesi: doveva accudire figli o altre persone"
ACCRI7 = "rinuncia a accertamento specialistico ultimi 12 mesi: altro"
MINCDO = "Incidente domestico subito negli ultimi 3 mesi"
MNINCDM = "Incidente domestico subito negli ultimi 3 mesi: quante volte"
SPOCON = "Nel suo tempo libero pratica con carattere di continuità uno o più sport?"
SPOSAL = "Nel suo tempo libero pratica saltuariamente uno o più sport?"
ATTFIS = "Le capita di svolgere nel tempo libero qualche attività fisica?"
FREQSPO = "Frequenza nell'anno delle attività sportive praticate"
ORESETSP = "Ore di attività sportiva praticate nell'ultima settimana"
SPPAG = "Negli ultimi 12 mesi ha fatto sport in luoghi a pagamento?"
SPRIV = "Negli ultimi 12 mesi ha frequentato lezioni private o corsi di sport a spese sue o della famiglia?"
RETTA = "Paga una retta annua o periodica per un circolo o club sportivo?"
AMICI = "Con che frequenza si vede con amici nel tempo libero?"
PARENT = "Ha altri parenti su cui poter contare (oltre a genitori, figli, fratelli e sorelle, nonni e nipoti)"
AMICI2 = "Ha amici su cui poter contare"
VICINI = "Ha vicini su cui poter contare"
CPESO = "Frequenza con cui usa controllare il suo peso"
FARM = "Negli ultimi due giorni ha fatto uso di farmaci?"
PASTO = "Qual è il suo pasto principale?"
COLAZ = "Ha l'abitudine di fare la prima colazione? (se la fa più di una volta consideri solo la prima)"
LPRAN = "Dove pranza abitualmente nei giorni non festivi? (di scuola o di lavoro)"
PANPAS = "Frequenza consumo: pane, pasta, riso"
SALUMI = "Frequenza consumo: salumi"
POLLO = "Frequenza consumo: carne di pollo, tacchino, coniglio, vitello"
COV = "Frequenza consumo: carni ovine"
CBOV = "Frequenza consumo: carni bovine"
CMAIAL = "Frequenza consumo: carni di maiale (escluso salumi)"
LATTE = "Frequenza consumo: latte"
FORM = "Frequenza consumo: formaggi, latticini"
UOVA = "Frequenza consumo: uova"
PESCE = "Frequenza consumo: pesce"
VERD = "Frequenza consumo: verdure in foglia cotte e crude (spinaci, insalate, cicoria, cavolo, broccoli)"
POMOD = "Frequenza consumo: pomodori (escluse conserve), melanzane, peperoni, finocchi, zucchine, carciofi, carote, zucche, cavolfiore, piselli e altri legumi freschi"
FRUTTA = "Frequenza consumo: frutta"
PZVERD = "Numero di porzioni di insalata oppure ortaggi e/o verdura"
PZFRUTTA = "Numero di porzioni di frutta"
LEGUMI = "Frequenza consumo: legumi secchi o in scatola"
PATATE = "Frequenza consumo: patate"
SNACK = "Frequenza consumo: snack salati (patatine, pop corn, salatini, olive)"
DOLCI = "Frequenza consumo: dolci (torte farcite, merendine, gelati, ecc)"
CGRAS = "Quale dei seguenti grassi usa più frequentemente per la cottura dei cibi?"
FGRAS = "Quale dei seguenti grassi usa più frequentemente per il condimento a crudo dei cibi ( insalate, pasta, ecc.) o per panini, tartine, ecc.?"
QTSALE = "Fa attenzione alla quantità di sale e/o al consumo di cibi salati?"
IODIO = "Usa sale arricchito con iodio"
ACMIN = "Quantità consumata abitualmente di acqua minerale"
BGAS = "Quantità consumata abitualmente di bevande gassate (esclusa l'acqua minerale)"
BIRRA = "Quantità consumata abitualmente di  birra"
VINO = "Quantità consumata abitualmente di  vino"
BICBIRRAM = "Quanti bicchieri di birra consuma abitualmente al giorno?"
BICVINOM = "Quanti bicchieri di vino consuma abitualmente al giorno?"
BFPAS = "Frequenza con cui capita di bere vino o alcolici fuori dai pasti"
BICFUORIM = "Complessivamente in una settimana quanti bicchieri di vino o alcolici consuma abitualmente fuori dai pasti?"
ANAL = "In quale quantità consuma abitualmente: aperitivi analcolici"
ALCOL = "In quale quantità consuma abitualmente: aperitivi alcolici"
AMAR = "In quale quantità consuma abitualmente: amari"
LIQUOR = "In quale quantità consuma abitualmente: superalcolici ( o liquori )"
BICALTROM = "Numero di bicchieri al giorno di aperitivi alcolici, amari o superalcolici"
ALCOL12 = "Consumo di bevande alcoliche negli ultimi 12 mesi"
BICALC = "Consumo di almeno 6 bicchieri di bevande alcoliche in un'unica occasione negli ultimi 12 mesi"
NBICALCM = "Consumo di almeno 6 bicchieri di bevande alcoliche in un'unica occasione negli ultimi 12 mesi: numero di volte"
DOVCASP = "Luogo di consumo di almeno 6 bicchieri di alcol: a casa propria"
DOVAMPA = "Luogo di consumo di almeno 6 bicchieri di alcol: a casa di parenti o amici"
DOVRISTO = "Luogo di consumo di almeno 6 bicchieri di alcol:al ristorante/trattoria/osteria/pizzeria"
DOVPUB = "Luogo di consumo di almeno 6 bicchieri di alcol:al bar/pub/birreria"
DOVDISCO = "Luogo di consumo di almeno 6 bicchieri di alcol: in discoteca"
DOVSTR = "Luogo di consumo di almeno 6 bicchieri di alcol: all'aperto/per strada"
DOVALT = "Luogo di consumo di almeno 6 bicchieri di alcol: altro luogo"
ESIG = "Uso della sigaretta elettronica"
FUMO = "Attualmente fuma?"
FRFUMO = "Con quale frequenza fuma"
TFUMO = "Che cosa fuma prevalentemente"
NSIGARM = "Quante sigarette fuma in media al giorno"
SALUTE = "Come va in generale la sua salute?"
CRONI = "È affetto da malattie croniche o problemi di salute di lunga durata?"
LIMITA = "A causa di problemi di salute, in che misura lei ha delle limitazioni, che durano da almeno 6 mesi, nelle attività che le persone abitualmente svolgono?"
DIAB = "Affetto da malattia cronica: diabete"
IPAR = "Affetto da malattia cronica: ipertensione arteriosa"
INFAR = "Affetto da malattia cronica: infarto del miocardio"
CUORE = "Affetto da malattia cronica: angina pectoris o altre malattie del cuore"
BRON = "Affetto da malattia cronica: bronchite cronica, enfisema, insufficienza respiratoria"
ASMA = "Affetto da malattia cronica: asma bronchiale"
ALLER = "Affetto da malattia cronica: malattie allergiche"
TUMOR = "Affetto da malattia cronica: tumore (incluso linfoma e leucemia)"
ULCER = "Affetto da malattia cronica: ulcera gastrica e duodenale"
FEGATO = "Affetto da malattia cronica: calcolosi del fegato o delle vie biliari"
CIRRO = "Affetto da malattia cronica: cirrosi epatica"
CALRE = "Affetto da malattia cronica: calcolosi renale"
ARTRO = "Affetto da malattia cronica: artrosi, artrite"
OSTEO = "Affetto da malattia cronica: osteoporosi"
NEURO = "Affetto da malattia cronica: disturbi nervosi"
SF9 = "Per quanto tempo nelle ultime 4 settimane si è sentito calmo e/o sereno"
SF11 = "Per quanto tempo nelle ultime 4 settimane si è sentito scoraggiato e triste"
SF13 = "Per quanto tempo nelle ultime 4 settimane si è sentito molto agitato"
SF14 = "Per quanto tempo nelle ultime 4 settimane si è sentito giù di morale"
SF15 = "Per quanto tempo nelle ultime 4 settimane si è sentito felice"
RADIO = "Ha l'abitudine di ascoltare la radio?"
HHRAD = "Ore di ascolto della radio al giorno"
MMRAD = "Minuti di ascolto della radio al giorno"
TELE = "Ha l'abitudine di guardare la tv?"
HHTEL = "Per quante ore guarda la televisione"
MMTEL = "Per quanti minuti guarda la televisione"
PCTEMPO = "Lei ha mai usato il personal computer?"
FREQPC12 = "Frequenza d'uso del personal computer negli ultimi 12 mesi"
INTTEMPO = "Lei ha mai usato Internet?"
FREQIN12 = "Frequenza d'uso di Internet negli ultimi 12 mesi"
IAIPCSCRI = "negli ultimi 3 mesi strumento per accesso ad Internet: computer fisso da tavolo"
IAIPCPORT = "negli ultimi 3 mesi strumento per accesso ad Internet: laptop, netbook"
IAITABLET = "negli ultimi 3 mesi strumento per accesso ad Internet: tablet"
IAIDISMOB = "negli ultimi 3 mesi strumento per accesso ad Internet: telefono cellulare o smartphone"
IAIALTRO_N = "negli ultimi 3 mesi strumento per accesso ad Internet: altri dispositivi mobili"
DISP_SMA = "strumenti utlilizzati per accedere ad Internet in luoghi diversi da casa o dal posto di lavoro negli ultimi 3 mesi: telefono cellulare o smartphone"
DISP_LAP = "strumenti utlilizzati per accedere ad Internet in luoghi diversi da casa o dal posto di lavoro negli ultimi 3 mesi: laptop, netbook"
DISP_TAB = "strumenti utlilizzati per accedere ad Internet in luoghi diversi da casa o dal posto di lavoro negli ultimi 3 mesi: tablet"
DISPPDA = "strumenti utlilizzati per accedere ad Internet in luoghi diversi da casa o dal posto di lavoro negli ultimi 3 mesi: altro dispositivo portatile"
INCOMU5 = "negli ultimi 3 mesi ha spedito o ricevuto mail"
INCOMU1b = "negli ultimi 3 mesi ha telefonato/effettuato videochiamate"
INCOMU34 = "negli ultimi 3 mesi ha usato messaggeria istantanea (es. WhatsApp), ha inviato messaggi su chat, blog, newsgroup, forum"
INCOMU6 = "negli ultimi 3 mesi ha partecipato a social network (creare un profilo utente, postare messaggi o altro su Facebook, Twitter, ecc.)"
INCOMU7 = "negli ultimi 3 mesi ha espresso opinioni su temi sociali o politici su web (ad esempio tramite blog, social network, ecc.)"
INTATT20 = "negli ultimi 3 mesi ha consultato un wiki per ottenere informazioni (es. wikipedia, altre enciplopedie online)"
INTATT21 = "negli ultimi 3 mesi ha partecipato ad un network professionale (creare un profilo, postare messaggi o altri contributi su Linkedln, Xing, ecc.)"
INTATT26 = "negli ultimi 3 mesi ha caricato contenuti di propria creazione"
INTATT5 = "negli ultimi 3 mesi ha usato servizi relativi a viaggi o soggiorni"
INTATT4 = "negli ultimi 3 mesi ha cercato lavoro o mandato una richiesta di lavoro"
INTSAL3 = "negli ultimi 3 mesi ha preso un appuntamento con un medico"
INTATT14 = "negli ultimi 3 mesi ha cercato informazioni sanitarie"
INTATT11 = "negli ultimi 3 mesi ha usato servizi bancari via Internet"
INTATT33 = "negli ultimi 3 mesi ha usato servizi di pagamento (es paypal, braintree, ecc.) per acquistare beni o servizi su Internet"
INTATT13 = "negli ultimi 3 mesi ha venduto merci o servizi"
INTATT17 = "negli ultimi 3 mesi ha cercato informazioni su attività di istruzione o corsi"
INTATT16 = "negli ultimi 3 mesi ha cercato informazioni su merci o servizi"
INTATT10 = "negli ultimi 3 mesi ha scaricato software (diverso da giochi)"
INTATT8 = "negli ultimi 3 mesi ha letto giornali, informazioni, riviste online"
INTATT31 = "negli ultimi 3 mesi ha letto o scaricato libri online o e_book"
INTATT32 = "negli ultimi 3 mesi ha ascoltato musica"
INTATT7BN = "negli ultimi 3 mesi ha guardato la televisione in streaming"
INTATT30A = "negli ultimi 3 mesi ha guardato video on demand"
INTATT30B = "negli ultimi 3 mesi ha guardato contenuti video da servizi di condivisione (es. Youtube)"
INTATT28A = "negli ultimi 3 mesi ha scaricato immagini, film, musica"
INTATT28B = "negli ultimi 3 mesi ha giocato o scaricato giochi"
CLOUDSAL = "negli ultimi 3 mesi ha usato servizi di archiviazione/condivisione su internet per salvare"
SKL_FRE = "negli ultimi 3 mesi ha fatto un corso di formazione online gratuito"
SKL_AUTO = "negli ultimi 3 mesi ha fatto un corso di formazione a pagamento completamente a proprio carico"
SKL_PUB = "negli ultimi 3 mesi ha fatto un corso di formazione gratuito promosso da organizzazioni diverse dal proprio datore di lavoro"
SKL_DAT = "negli ultimi 3 mesi ha fatto un corso di formazione finanziato o organizzato dal proprio datore di lavoro"
SKL_COLL = "negli ultimi 3 mesi è stato formato sul posto di lavoro (es. colleghi, supervisori)"
P2P_ACC = "negli ultimi 3 mesi ha usato appositi siti web o app per trovare un alloggio contattando direttamente un privato (es. AIRBNB, homeway etc)"
P2P_ACCALT = "negli ultimi 3 mesi ha usato altri siti web o app per trovare un alloggio contattando direttamente un privato (inclusi i siti di  social network)"
P2P_TRA = "negli ultimi 3 mesi ha usato appositi siti web o app per usufruire di un servizio di trasporto contattando direttamente un privato (es. UBER)"
P2P_TRALT = "negli ultimi 3 mesi ha usato altri siti web o app per usufruire di un servizio di trasporto contattando direttamente un privato (inclusi i siti di  social network)"
P2P_FOOD = "negli ultimi 12 mesi ha usato un sito web/app per ordinare alimentari a domicilio o prenotare servizi di ristorazione direttamente da un privato (gruppi d'acquisto, Deliveroo, Foodora, Gnammo, Home Re"
P2P_WRK = "negli ultimi 12 mesi ha usato un sito web/app che le ha permesso di ottenere un lavoro retribuito (es. Freelancer, Upwork, ecc.)?"
COSINT9a = "negli ultimi 12 mesi  ha svolto operazioni finanziarie per uso privato su Internet (escluse e-mail): acquistare/vendere azioni, obbligazioni fondi o altri servizi finanziari"
COSINT9b = "negli ultimi 12 mesi  ha svolto operazioni finanziarie per uso privato su Internet (escluse e-mail): acquistare/rinnovare polizze assicurative"
COSINT9c = "negli ultimi 12 mesi  ha svolto operazioni finanziarie per uso privato su Internet (escluse e-mail): ottenere un prestito/credito da banche o da altri fornitori di servizi finanziari"
PR_UP = "negli ultimi 12 mesi ha utilizzato procedure di identificazione per accesso a servizi online: accesso semplice, username e password"
PR_SM = "negli ultimi 12 mesi ha utilizzato procedure di identificazione per accesso a servizi online: accesso usando credenziali social media"
PR_ST = "negli ultimi 12 mesi ha utilizzato procedure di identificazione per accesso a servizi online: accesso con dispositivo per generare numeri pseudocasuali"
PR_CARD = "negli ultimi 12 mesi ha utilizzato procedure di identificazione per accesso a servizi online: accessi con certificato di identificazione elettronica o con carta tramite lettore magnetico"
PR_COD = "negli ultimi 12 mesi ha utilizzato procedure di identificazione per accesso a servizi online: accesso con codice ricevuto sul cellulare/smartphone mediante messaggio"
PR_PIN = "negli ultimi 12 mesi ha utilizzato procedure di identificazione per accesso a servizi online: accesso con codici PIN  o caratteri di password scelti a caso"
PR_ALT = "negli ultimi 12 mesi ha utilizzato procedure di identificazione per accesso a servizi online: "
INTUSO1 = "negli ultimi 12 mesi ha usato Internet per ottenere informazioni da siti web della P.A. o dei gestori dei servizi pubblici"
INTUSO2 = "negli ultimi 12 mesi ha usato Internet per scaricare moduli della P.A. o dei gestori dei servizi pubblici"
INTUSO3 = "negli ultimi 12 mesi ha usato Internet per inviare moduli compilati online per uso privato allla P.A. o dei gestori dei servizi pubblici"
INTCOM = "ha mai comprato o ordinato merci e/o servizi per uso privato su internet"
NORDINI = "negli ultimi 3 mesi quante volte ha comprato o ordinato merci e/o servizi per uso privato su internet"
SPINTCOM = "negli ultimi 3 mesi quanto ha speso per beni e/o servizi ordinati o comprati su internet per uso privato"
COSINT1 = "negli ultimi 12 mesi ha comprato o ordinato prodotti alimentari"
COSINT2 = "negli ultimi 12 mesi ha comprato o ordinato articoli per la casa"
COSINT19 = "negli ultimi 12 mesi ha comprato o ordinato farmaci"
COSINT5 = "negli ultimi 12 mesi ha comprato o ordinato abiti, articoli sportivi"
COSINT3 = "negli ultimi 12 mesi ha comprato o ordinato film, musica"
COSINT22A = "negli ultimi 12 mesi ha comprato o ordinato libri (inclusi e-book)"
COSINT22B = "negli ultimi 12 mesi ha comprato o ordinato giornali, riviste"
COSINT21 = "negli ultimi 12 mesi ha comprato o ordinato materiale per la formazione a distanza"
COSINT15 = "negli ultimi 12 mesi ha comprato o ordinato software per computer e/o aggiornamenti (esclusi videogiochi)"
COSINT16 = "negli ultimi 12 mesi ha comprato o ordinato videogiochi e/o loro aggiornamenti"
COSINT7 = "negli ultimi 12 mesi ha comprato o ordinato hardware per computer"
COSINT8 = "negli ultimi 12 mesi ha comprato o ordinato attrezzature elettroniche (es. macchine fotografiche, telecamere, ecc.)"
COSINT20 = "negli ultimi 12 mesi ha comprato o ordinato servizi di telecomunicazione (es. abbonamenti a tv, a telecomunicazioni a banda larga, a telefono fisso o cellulare, ricariche di carte telefoniche prepagat"
COSINT18 = "negli ultimi 12 mesi ha comprato o ordinato pernottamenti per vacanze (alberghi, pensioni)"
COSINT17 = "negli ultimi 12 mesi ha effettuato altre spese di viaggio (biglietti ferroviari, aerei, noleggio auto, ecc.)"
COSINT11 = "negli ultimi 12 mesi ha comprato o ordinato biglietti per spettacoli"
COSINT12 = "negli ultimi 12 mesi ha comprato o ordinato biglietti delle lotterie o scommesse"
COSINT14 = "negli ultimi 12 mesi ha comprato o ordinato altri prodotti: altro"
VENDI1 = "negli ultimi 12 mesi ha ordinato o comprato merci e/o servizi per uso privato su Internet da venditore nazionale"
VENDI2 = "negli ultimi 12 mesi ha ordinato o comprato merci e/o servizi per uso privato su Internet da venditore di altro paese UE"
VENDI3 = "negli ultimi 12 mesi ha ordinato o comprato merci e/o servizi per uso privato su Internet da venditore dal resto del Mondo"
VENDI4 = "negli ultimi 12 mesi ha ordinato o comprato merci e/o servizi per uso privato su Internet senza conoscere il paese di origine del venditore"
CT_WORK = "negli ultimi 12 mesi per lavoro ha usato: computer, tablet, laptop, smartphone, altro dispositivo portatile"
MAC_WORK = "negli ultimi 12 mesi per lavoro ha usato: altre attrezzature o macchine informatizzate"
NO_ICTW = "negli ultimi 12 mesi per lavoro non ha utilizzato computer, smartphone o altri dispositivi portatili né altre attrezzature o macchine informatizzate"
WRK_EMA = "per lavoro ha effettuato almeno una delle seguenti attività almeno una volta a settimana: scambiare e-mail o inserire dati in database"
WRK_DOC = "per lavoro ha effettuato almeno una delle seguenti attività almeno una volta a settimana: creare o modificare documenti elettronici"
WRK_SM = "per lavoro ha effettuato almeno una delle seguenti attività almeno una volta a settimana: creare o modificare documenti elettronici"
WRK_INC = "per lavoro ha effettuato almeno una delle seguenti attività almeno una volta a settimana: usare applicazioni per ricevere incarichi o istruzioni (escluse e-mail)"
WRK_SOF = "per lavoro ha effettuato almeno una delle seguenti attività almeno una volta a settimana: usare specifici software"
WRK_IT = "per lavoro ha effettuato almeno una delle seguenti attività almeno una volta a settimana: sviluppare o mantenere sistemi informatici o software"
WRK_CAMB = "negli ultimi 12 mesi sono cambiate attività/mansioni lavorative a seguito dell'introduzione di nuovi software o di attrezzature computerizzate"
WRK_NS = "negli ultimi 12 mesi ha dovuto imparare a utilizzare un nuovo software/attrezzature computerizzate"
GIUD_SKL = "quali delle seguenti affermazioni descrive meglio le sue competenze/abilità relative all'utilizzo del computer/software/applicazioni"
TEATRO = "Frequenza con cui negli ultimi 12 mesi è andato a teatro?"
CINE = "Frequenza con cui negli ultimi 12 mesi è andato a cinema?"
MUSEO = "Frequenza con cui negli ultimi 12 mesi è andato a musei o mostre?"
MUSIC = "Frequenza con cui negli ultimi 12 mesi è andato a concerti di musica classica?"
ACMUS = "Frequenza con cui negli ultimi 12 mesi è andato ad altri concerti di musica?"
SPSPO = "Frequenza con cui negli ultimi 12 mesi è andato a spettacoli sportivi?"
DISCO = "Frequenza con cui negli ultimi 12 mesi è andato in discoteche, balere, night club o altri luoghi dove ballare?"
MONUM = "Frequenza con cui negli ultimi 12 mesi è andato in siti archeologici, monumenti?"
LQUOT = "Legge quotidiani almeno una volta alla settimana?"
LIBRI = "ha letto libri negli ultimi 12 mesi?"
NLIBRIM = "Numero di libri letti negli ultimi 12 mesi (considerare solo i libri letti per motivi non strettamente scolastici o professionali)"
NLIBRI_CARM = "numero di libri cartacei letti"
NLEBOOM = "Numero di e-book letti negli ultimi 12 mesi"
NLAUDIOM = "Numero di audiolibri ascoltati negli ultimi 12 mesi"
RIVSET = "Abitualmente legge qualche rivista settimanale?"
NOSETT = "Abitualmente legge qualche periodico non settimanale?"
CHIES = "Abitualmente con che frequenza si reca in chiesa o in altro luogo di culto?"
SITEC = "Soddisfazione per la situazione economica negli ultimi 12 mesi"
SALUT = "Soddisfazione per la propria salute negli ultimi 12 mesi"
RELFAM = "Soddisfazione per le relazioni familiari negli ultimi 12 mesi"
RELAM = "Soddisfazione per le relazioni con amici negli ultimi 12 mesi"
TEMLIB = "Soddisfazione per il tempo libero negli ultimi 12 mesi"
AMBIENTE = "Soddisfazione per la situazione ambientale (aria, acqua, ecc.) della zona in cui vive"
PAESAGGIO = "Secondo lei, il paesaggio del luogo in cui vive è affetto da evidente degrado?"
SODLAV2 = "Pensi agli ultimi 12 mesi. Lei si ritiene soddisfatto del suo lavoro?"
POLIT = "Con quale frequenza le capita di parlare di politica?"
PPAPO = "Ha partecipato negli ultimi 12 mesi a riunioni di: partiti politici"
PSIND = "Ha partecipato negli ultimi 12 mesi a riunioni di: organizzazioni sindacali ( sindacati confederati, autonomi, sindacati di tutte le categorie, anche dei pensionati ecc.)"
PGRVO = "Ha partecipato negli ultimi 12 mesi a riunioni di: associazioni o gruppi di volontariato"
PAECO = "Ha partecipato negli ultimi 12 mesi a riunioni di: associazioni ecologiche per i diritti civili per la pace"
PCULT = "Ha partecipato negli ultimi 12 mesi a riunioni di: associazioni culturali, ricreative o di altro tipo"
PASPRO = "Ha partecipato negli ultimi 12 mesi a riunioni di: associazioni professionali o di categoria"
COMIZ = "Negli ultimi 12 mesi ha partecipato a un comizio"
CORTEI = "Negli ultimi 12 mesi ha partecipato a un corteo"
DIBPO = "Negli utlimi 12 mesi ha sentito un dibattito politico"
FINPA = "Negli ultimi 12 mesi ha dato soldi a un partito ( per sottoscrizione, sostegno)"
FINAS = "Negli ultimi 12 mesi ha dato soldi ad un'associazione"
VOLON = "Negli ultimi 12 mesi ha svolto attività gratuita per associazioni o gruppi di volontariato"
ATGRA = "Negli ultimi 12 mesi ha svolto attività gratuita per un'associazione non di volontariato"
VOLPA = "Negli ultimi 12 mesi ha svolto attività gratuita per un partito"
VOLSI = "Negli ultimi 12 mesi ha svolto attività gratuita per un sindacato"
POLITI = "Con che frequenza si informa dei fatti della politica italiana?"
PRADIO = "Si informa di politica attraverso: radio"
PTELEV = "Si informa di politica attraverso: televisione"
PQUOT = "Si informa di politica attraverso: quotidiani"
PSETT = "Si informa di politica attraverso: settimanali"
PARIV = "Si informa di politica attraverso: altre riviste non settimanali"
PAMICI = "Si informa di politica attraverso: amici"
PPAREN = "Si informa di politica attraverso: parenti"
PCONOS = "Si informa di politica attraverso: conoscenti"
PCOLAV = "Si informa di politica attraverso: colleghi di lavoro"
ORGPOL = "Si informa di politica attraverso: incontri o riunioni presso organizzazioni politiche"
ORGSIN = "Si informa di politica attraverso: incontri o riunioni presso organizzazioni sindacali"
ALTPOL = "Si informa di politica attraverso: altro"
PWEB = "Si informa dei fatti della politica attraverso Internet?"
PWEBM1 = "In che modo si informa dei fatti della politica attraverso Internet: legge o scarica giornali, news, riviste online"
PWEBM2 = "In che modo si informa dei fatti della politica attraverso Internet: ascolta radio e TV online"
PWEBM3 = "In che modo si informa dei fatti della politica attraverso Internet: tramite siti di partiti politici"
PWEBM4 = "In che modo si informa dei fatti della politica attraverso Internet: tramite i social network (es. facebook, twitter, myspace, ecc.)"
PWEBM5 = "In che modo si informa dei fatti della politica attraverso Internet: tramite blog, newsgroup o forum di discussione online"
PWEBM6 = "In che modo si informa dei fatti della politica attraverso Internet: altro"
NPOLI = "Motivo per cui non si informa mai di politica: non mi interessa"
NTPOLI = "Motivo per cui non si informa mai di politica: non ho tempo"
POLCOM = "Motivo per cui non si informa mai di politica: è un argomento troppo complicato"
SFIPOL = "Motivo per cui non si informa mai di politica: sono sfiduciato della politica italiana"
NALTPO = "Motivo per cui non si informa mai di politica: altro"
UFFAN = "Negli ultimi 12 mesi le è capitato di servirsi degli uffici anagrafici ( comune, circoscrizione, anagrafe), per certificati, documenti, autentiche e altre pratiche"
TUFAN = "In genere quanto aspetta in fila prima di essere servito?"
GORAR = "Trova comodo l'orario?"
CORAR = "Se le si desse l'opportunità di cambiare l'orario di sportello come lo vorrebbe?"
AUTOCE = "è a conoscenza della possibilità di ricorrere all'autocertificazione, cioè di compilare lei stesso una semplice dichiarazione al posto dei certificati (come stato di famiglia, residenza, ecc.)?"
CANAG = "Negli ultimi 12 mesi ha richiesto: certificati anagrafici"
PRAUT = "Negli ultimi 12 mesi ha effettuato: pratiche automobilistiche"
CERSC = "Negli ultimi 12 mesi ha richiesto: documenti o certificati per l'iscrizione a scuola o all'università"
CATAS = "Negli ultimi 12 mesi ha richiesto: documenti o certificati del catasto"
CALTRO = "Negli ultimi 12 mesi ha richiesto: altri certificati o documenti"
USOSS = "Negli ultimi 12 mesi si è recato in una ASL per prenotare una visita o un'analisi o per pratiche amministrative?"
TEMSS = "In genere quanto aspetta in fila prima di essere servito?"
GOUSL = "Trova comodo l'orario?"
COUSL = "Se le si desse l'opportunità di cambiare l'orario di sportello come lo vorrebbe?"
UFFPOS = "Negli ultimi 12 mesi si è recato presso un ufficio postale?"
RACCO = "Frequenza con cui si reca all'ufficio postale per: spedizione raccomandate"
VAGLIA = "Frequenza con cui si reca all'ufficio postale per: spedizione vaglia"
VCOC = "Frequenza con cui si reca all'ufficio postale per: versamenti in conto corrente"
RPENS = "Frequenza con cui si reca all'ufficio postale per: ritiro pensioni"
RPARA = "Frequenza con cui si reca all'ufficio postale per: ritiro pacchi o raccomandate"
TRACC = "Tempo di attesa in fila per spedizione raccomandate"
TVAGL = "Tempo di attesa in fila per spedizione vaglia"
TCCP = "Tempo di attesa in fila per versamenti in conto corrente"
TRPEN = "Tempo di attesa in fila per ritiro pensioni"
TPARA = "Tempo di attesa in fila per ritiro pacchi o raccomandate"
GOSPO = "Trova comodo l'orario?"
COSPO = "se le si desse l'opportunità di cambiare l'orario di sportello come lo vorrebbe?"
BANCA = "Negli ultimi 12 mesi le è capitato di servirsi di una banca per operazioni di sportello come versamenti, assegni circolari, prelievi (escluso il bancomat) ecc.?"
TABAN = "In genere quanto aspetta in fila prima di essere servito?"
BANCM = "Possiede il bancomat?"
CCRED = "Possiede carta di credito?"
NCCREDM = "Quante carte di credito possiede?"
USOTRAM = "Utilizza autobus, filobus, tram all'interno del suo comune?"
FCORS = "Giudizio su: frequenza delle corse"
PUNT = "Giudizio su: puntualità"
POSSE = "Giudizio su: possibilità di trovare posto a sedere"
VELCO = "Giudizio su: velocità della corsa"
PULIZ = "Giudizio su: pulizia delle vetture"
COMOF = "Giudizio su: comodità dell'attesa alle fermate"
COLLEG = "Giudizio su: possibilità di collegamento tra zone del comune"
COMOR = "Giudizio su: comodità di orari"
CPSBI = "Giudizio su: costo del biglietto"
VOTOBU = "Giudizio complessivo sul servizio di autobus, filobus, tram"
USOPUL = "Utilizza pullman, corriere che collegano comuni diversi?"
FRCMT = "Giudizio su: frequenza delle corse"
PUNMT = "Giudizio su: puntualità"
SEDMT = "Giudizio su: possibilità di trovare posto a sedere"
VELMT = "Giudizio su: velocità della corsa"
PULMT = "Giudizio su: pulizia delle vetture"
ATTMT = "Giudizio su: comodità dell'attesa alle fermate"
COLCO = "Giudizio su: possibilità di collegamento con altri comuni"
ORAMT = "Giudizio su: comodità di orari"
CBMT = "Giudizio su: costo del biglietto"
INFMT = "Giudizio su: informazioni sugli orari e sui servizi"
VOTOPU = "Giudizio complessivo del servizio di pullman, corriere tra comuni diversi"
USTRE = "Utilizza il treno?"
FRTRE = "Giudizio su: frequenza delle corse"
PUTRE = "Giudizio su:  puntualità dei treni"
PSTRE = "Giudizio su: possibilità di trovare posto a sedere"
VETRE = "Giudizio su: velocità della corsa"
PULSTR = "Giudizio su: pulizia delle vetture"
COMAT = "Giudizio su: comodità dell'attesa alle fermate"
COLCOM = "Giudizio su:  possibilità di collegamento con altri comuni dei treni"
COMORA = "Giudizio su: comodità di orari"
COBIG = "Giudizio su: costo del biglietto"
INFTR = "Giudizio su: informazioni sul servizio (orari, destinazioni, punti di ristoro)"
VOTOTR = "Giudizio complessivo sui treni"
USOAUT = "Utilizza l'automobile come conducente"
SERRA = "Problemi ambientali che la preoccupano maggiormente: effetto serra, buco nell'ozono"
ESTINZ = "Problemi ambientali che la preoccupano maggiormente: estinzione di alcune specie animali/vegetali"
CAMCLI = "Problemi ambientali che la preoccupano maggiormente: cambiamenti climatici"
SMARIF = "Problemi ambientali che la preoccupano maggiormente: produzione e smaltimento rifiuti"
AMRUM = "Problemi ambientali che la preoccupano maggiormente: rumore"
IARIA = "Problemi ambientali che la preoccupano maggiormente: inquinamento dell'aria"
INQSU = "Problemi ambientali che la preoccupano maggiormente: inquinamento del suolo"
INQFIU = "Problemi ambientali che la preoccupano maggiormente: inquinamento di fiumi, mari"
DISDR = "Problemi ambientali che la preoccupano maggiormente: dissesto idrogeologico (terremoti, alluvioni, ecc.)"
CATASTR = "Problemi ambientali che la preoccupano maggiormente: catastrofi provocate dall'uomo"
FORES2 = "Problemi ambientali che la preoccupano maggiormente: distruzione delle foreste"
INQELET2 = "Problemi ambientali che la preoccupano maggiormente: inquinamento elettromagnetico"
PAESAG2 = "Problemi ambientali che la preoccupano maggiormente: rovina del paesaggio (eccessiva costruzione di edifici)"
ESRISO2 = "Problemi ambientali che la preoccupano maggiormente: esaurimento risorse naturali (acqua, minerali, petrolio, ecc.)"
ALTAMB2 = "Problemi ambientali che la preoccupano maggiormente: altri problemi"
GCARTE = "gettare carte per la strada"
DOPFIL = "parcheggiare l'automobile in doppia fila"
ARUMOR = "fare attenzione a non adottare comportamenti di guida rumorosi"
VOTOVI = "Attualmente quanto si ritiene soddisfatto della sua vita nel complesso? Dia un punteggio da 0 a 10"
FUTUASP = "Nei prossimi 5 anni lei pensa che la sua situazione personale: migliorerà, resterà la stessa o peggiorerà"
FIDUCIA = "Lei pensa che ci si possa fidare della maggior parte della gente oppure bisogna stare molto attenti?"
FIDU1 = "Immagini di aver perso il suo portafoglio con che probabilità pensa le venga restituito da: un vicino di casa"
FIDU2 = "Immagini di aver perso il suo portafoglio con che probabilità pensa le venga restituito da:  un appartenente alle forze dell'ordine"
FIDU3 = "Immagini di aver perso il suo portafoglio con che probabilità pensa le venga restituito da: un completo sconosciuto"
PUNTIFI1 = "Utilizzando un punteggio da 0 a 10 indichi quanto si fida delle seguenti istituzioni: Parlamento italiano"
PUNTIFI5 = "Utilizzando un punteggio da 0 a 10 indichi quanto si fida delle seguenti istituzioni: Parlamento europeo"
PUNTIFI8 = "Utilizzando un punteggio da 0 a 10 indichi quanto si fida delle seguenti istituzioni: Governo regionale"
PUNTIFI9 = "Utilizzando un punteggio da 0 a 10 indichi quanto si fida delle seguenti istituzioni: Governo provinciale"
PUNTIFI10 = "Utilizzando un punteggio da 0 a 10 indichi quanto si fida delle seguenti istituzioni: Governo comunale"
PUNTIFI4 = "Utilizzando un punteggio da 0 a 10 indichi quanto si fida delle seguenti istituzioni: partiti politici"
PUNTIFI2 = "Utilizzando un punteggio da 0 a 10 indichi quanto si fida delle seguenti istituzioni: sistema giudiziario"
PUNTIFI3 = "Utilizzando un punteggio da 0 a 10 indichi quanto si fida delle seguenti istituzioni: forze dell'ordine"
PUNTIFI12 = "Utilizzando un punteggio da 0 a 10 indichi quanto si fida delle seguenti istituzioni: vigili del fuoco"
PESOMIN = "Peso minorenni in Kg"
STATMIN = "Statura minorenni in cm"
BMIMIN = "Persone di 3-17 anni in eccesso di peso"
SENELE = "Complessivamente, quanto è soddisfatto del servizio dell'energia elettrica?"
GCONT = "Giudizio su: continuità del servizio (assenza di guasti e interruzioni della fornitura)"
GASBAL = "Giudizio su: assenza di sbalzi di tensione"
GDISPL = "Giudizio su: comprensibilità del display"
GCBOL = "Giudizio su: comprensibilità delle bollette"
GINF = "Giudizio su: informazione sul servizio (informazioni su tariffe, condizioni di erogazione, allacciamenti ecc.)"
GAS5 = "Come arriva il gas all'abitazione?"
SGAS = "Complessivamente quanto è soddisfatto del servizio gas?"
GASPR2 = "Giudizio sul servizio del gas: adeguatezza pressione di fornitura"
FLGAS = "Giudizio sul servizio del gas: frequenza di lettura dei contatori"
COMBOL = "Giudizio sul servizio del gas: comprensibilità delle bollette"
SERINF = "Giudizio sul servizio del gas: informazione sul servizio (informazioni su tariffe, condizioni di erogazioni, allacciamenti, ecc.)"
SICURET = "Giudizio sul servizio del gas: sicurezza della rete di distribuzione"
SCEFO2 = "Sa che può scegliere un fornitore diverso dall'azienda che le eroga attualmente l'energia elettrica e/o il gas?"
CAMFO2 = "Ha mai cambiato fornitore di energia elettrica o gas negli ultimi 12 mesi?"
NMOTNFE1 = "Motivo per cui non ha cambiato fornitore di Energia elettrica: soddisfatti del fornitore attuale"
NMOTNFE2 = "Motivo per cui non ha cambiato fornitore di Energia elettrica: mancanza di informazioni"
NMOTNFE3 = "Motivo per cui non ha cambiato fornitore di Energia elettrica: è difficile valutare la convenienza del cambiamento"
NMOTNFE4 = "Motivo per cui non ha cambiato fornitore di Energia elettrica: il risparmio ottenibile non è consistente"
NMOTNFE5 = "Motivo per cui non ha cambiato fornitore di Energia elettrica: teme peggioramento della qualità del servizio"
NMOTNFG1 = "Motivo per cui non ha cambiato fornitore di Gas: soddisfatti del fornitore attuale"
NMOTNFG2 = "Motivo per cui non ha cambiato fornitore di Gas: mancanza di informazioni"
NMOTNFG3 = "Motivo per cui non ha cambiato fornitore di Gas: è difficile valutare la convenienza del cambiamento"
NMOTNFG4 = "Motivo per cui non ha cambiato fornitore di Gas: il risparmio ottenibile non è consistente"
NMOTNFG5 = "Motivo per cui non ha cambiato fornitore di Gas: teme peggioramento della qualità del servizio"
CALLELGA = "Negli ultimi 12 mesi ha utilizzato il servizio di call-center dell'azienda di energia elettrica o gas?"
SODCALL = "Complessivamente quanto è soddisfatto del servizio di call center?"
PROINT = "Negli ultimi 12 mesi lei o qualche componente della famiglia ha mai utilizzato il numero di pronto intervento o segnalazione guasti dell'azienda fornitrice di energia elettrica o di gas?"
SODINT = "Complessivamente quanto è soddisfatto del servizio di pronto intervento o segnalazione guasti? ?"
SPORCO = "La zona in cui abita presenta: sporcizia nelle strade"
PARCH = "La zona in cui abita presenta: difficoltà di parcheggio"
COLMP = "La zona in cui abita presenta: difficoltà di collegamento coi mezzi pubblici"
TRAF = "La zona in cui abita presenta: traffico"
INQAR = "La zona in cui abita presenta: inquinamento dell'aria"
RUMORE = "La zona in cui abita presenta: rumore"
CRIM = "La zona in cui abita presenta: rischio di criminalità"
ODSGR = "La zona in cui abita presenta: odori sgradevoli"
ILLSTR = "La zona in cui abita presenta: scarsa illuminazione delle strade"
CONPAV = "La zona in cui abita presenta: cattive condizioni della pavimentazione stradale"
PARCHI = "Nella zona in cui abita la famiglia ci sono parchi, giardini o altro verde pubblico raggiungibile a piedi in meno di 15 minuti?"
STANZE = "Di quante stanze si compone l'abitazione?"
TERRAZ = "L'abitazione dispone di terrazzo o balcone?"
GARDEN = "L'abitazione dispone di giardino privato?"
TELEF = "L'abitazione dispone di telefono"
NELENC = "Il numero telefonico dell'abitazione principale è riportato nell'elenco telefonico del comune in cui vive?"
RISCAL = "L'abitazione dispone di riscaldamento?"
TRISC = "Tipo di riscaldamento prevalente:"
REACQ1 = "L'acqua arriva all'abitazione attraverso rete comunale"
REACQ2 = "L'acqua arriva all'abitazione attraverso pozzi, sorgenti o altre fonti private"
REACQ3 = "L'acqua arriva all'abitazione attraverso sistemi raccolta acqua piovana"
REACQ4 = "L'acqua arriva all'abitazione attraverso autobotti"
REACQ5 = "L'acqua arriva all'abitazione in altro modo"
SODACQUA = "Complessivamente quanto è soddisfatto del servizio idrico?"
AGFORN = "Giudizio sul servizio idrico: assenza di interruzioni della fornitura"
AGPRESS = "Giudizio sul servizio idrico: livello di pressione dell'acqua"
AGODOR = "Giudizio sul servizio idrico: odore, sapore e limpidezza dell'acqua"
AGLETTUR = "Giudizio sul servizio idrico: frequenza di lettura dei contatori"
AGFATTUR = "Giudizio sul servizio idrico: frequenza della fatturazione"
AGBOLLET = "Giudizio sul servizio idrico: comprensibilità delle bollette"
FOGNA = "L'abitazione è allacciata alla rete fognaria?"
SPEAB = "Si verificano uno o più dei seguenti problemi: le spese per l'abitazione sono troppo alte"
ABIPIC = "Si verificano uno o più dei seguenti problemi:  l'abitazione è troppo piccola"
ABLONF = "Si verificano uno o più dei seguenti problemi:  l'abitazione è troppo distante da altri familiari"
ACQUA = "Si verificano uno o più dei seguenti problemi: irregolarità nella erogazione dell'acqua"
ABICC = "Si verificano uno o più dei seguenti problemi: l'abitazione è in cattive condizioni"
ERACQ = "Frequenza con cui negli ultimi 12 mesi si è verificata l'irregolarità nella erogazione dell'acqua"
SIACQ = "La famiglia o qualche componente beve abitualmente acqua del rubinetto in casa"
ACQBRU = "Nessun componente della famiglia beve acqua di rubinetto perché non è bevibile o non ci fidiamo a berla (inquinata, brutto colore, cattivo sapore, ecc.)"
NOACQ = "Nessun componente della famiglia beve acqua di rubinetto per altro motivo"
GODAB = "A che titolo la famiglia occupa l'abitazione?"
FARMA = "Difficoltà a raggiungere: farmacie"
PRSOC = "Difficoltà a raggiungere: pronto soccorso"
UFFPO = "Difficoltà a raggiungere: ufficio postale"
POLICE = "Difficoltà a raggiungere: polizia, carabinieri"
UFFCOM = "Difficoltà a raggiungere: uffici comunali"
NIDO = "Difficoltà a raggiungere: asilo nido"
SMATER = "Difficoltà a raggiungere: scuola dell'infanzia"
SELEM = "Difficoltà a raggiungere: scuola primaria"
SMINF = "Difficoltà a raggiungere: scuola secondaria di primo grado"
MERCAT = "Difficoltà a raggiungere: negozi di generi alimentari, mercati"
SMERC = "Difficoltà a raggiungere: supermercati"
CASS = "Difficoltà a raggiungere: contenitori rifiuti"
SEGAS = "Difficoltà a raggiungere: sportelli azienda gas"
SLUCE = "Difficoltà a raggiungere: sportelli dell'Enel o dell'azienda elettrica locale"
CRARIF = "Giudizio sul costo sostenuto per: raccolta rifiuti urbani"
CERACQ = "Giudizio sul costo sostenuto per: erogazione dell'acqua"
CCARTA = "Presenza nella zona in cui vive di contenitori per la raccolta differenziata di: carta"
CVETRO = "Presenza nella zona in cui vive di contenitori per la raccolta differenziata di: vetro"
CFARM = "Presenza nella zona in cui vive di contenitori per la raccolta differenziata di: farmaci"
CBAT = "Presenza nella zona in cui vive di contenitori per la raccolta differenziata di: batterie usate"
CLATAL = "Presenza nella zona in cui vive di contenitori per la raccolta differenziata di: lattine di alluminio"
CPLAS = "Presenza nella zona in cui vive di contenitori per la raccolta differenziata di: contenitori in plastica per liquidi"
CRORG = "Presenza nella zona in cui vive di contenitori per la raccolta differenziata di: rifiuti organici"
CTESSILI = "Presenza nella zona in cui vive di contenitori per la raccolta differenziata di: rifiuti tessili"
CALT = "Presenza nella zona in cui vive di contenitori per la raccolta differenziata di: altro"
POAPO = "La zona in cui vive è servita/coinvolta dalla raccolta porta a porta dei rifiuti?"
R_CARTA = "Abitudine a raccogliere i rifiuti in modo separato tramite gli appositi contenitori: carta e cartone"
R_VETRO = "Abitudine a raccogliere i rifiuti in modo separato tramite gli appositi contenitori: vetro"
R_FARM = "Abitudine a raccogliere i rifiuti in modo separato tramite gli appositi contenitori: farmaci"
R_BAT = "Abitudine a raccogliere i rifiuti in modo separato tramite gli appositi contenitori: batterie usate"
R_LATAL = "Abitudine a raccogliere i rifiuti in modo separato tramite gli appositi contenitori: contenitori di alluminio e altri metalli"
R_PLAS = "Abitudine a raccogliere i rifiuti in modo separato tramite gli appositi contenitori: contenitori in plastica"
R_RORG = "Abitudine a raccogliere i rifiuti in modo separato tramite gli appositi contenitori: rifiuti organici/umido"
R_TESSILI = "Abitudine a raccogliere i rifiuti in modo separato tramite gli appositi contenitori: rifiuti tessili"
R_ALT = "Abitudine a raccogliere i rifiuti in modo separato tramite gli appositi contenitori: altro"
SODPOAPO = "Complessivamente la sua famiglia quanto è soddisfatta del servizio di raccolta dei rifiuti porta a porta nella zona in cui vive?"
NOSPO1 = "Famiglia non soddisfatta per il servizio di raccolta dei rifiuti porta a porta per: problemi legati agli orari di ritiro"
NOSPO7 = "Famiglia non soddisfatta per il servizio di raccolta dei rifiuti porta a porta per: problemi legati alla frequenza di ritiro"
NOSPO2 = "Famiglia non soddisfatta per il servizio di raccolta dei rifiuti porta a porta per: problemi legati ai sacchetti/contenitori da utilizzare nella raccolta"
NOSPO3 = "Famiglia non soddisfatta per il servizio di raccolta dei rifiuti porta a porta per: odori causati dall'umido non raccolto quotidianamente"
NOSPO4 = "Famiglia non soddisfatta per il servizio di raccolta dei rifiuti porta a porta per: non ritiene utile raccogliere rifiuti in modo differenziato"
NOSPO5 = "Famiglia non soddisfatta per il servizio di raccolta dei rifiuti porta a porta per: non crede che i rifiuti raccolti vengano recuperati/riciclati"
NOSPO8 = "Famiglia non soddisfatta per il servizio di raccolta dei rifiuti porta a porta per: non sono adeguate le informazioni e l'assistenza agli utenti"
NOSPO6 = "Famiglia non soddisfatta per il servizio di raccolta dei rifiuti porta a porta per: altro motivo"
ECOSTAZ = "Nella zona in cui vive la sua famiglia ci sono stazioni ecologiche, cioè centri dove è possibile portare gratuitamente i rifiuti che non possono essere gettati nei cassonetti?"
USOECO2 = "La sua famiglia ha mai portato rifiuti in questi centri di raccolta?"
ECOCAR = "Tipo di rifiuti portato nelle stazioni ecologiche: carta/cartone di dimensioni ingombranti"
ECOVET = "Tipo di rifiuti portato nelle stazioni ecologiche: vetro"
ECOPLA = "Tipo di rifiuti portato nelle stazioni ecologiche: plastica di dimensioni ingombranti"
ECOPNE = "Tipo di rifiuti portato nelle stazioni ecologiche: pneumatici"
ECOMET = "Tipo di rifiuti portato nelle stazioni ecologiche: metalli"
ECOLEG = "Tipo di rifiuti portato nelle stazioni ecologiche: legno"
ECOFAR = "Tipo di rifiuti portato nelle stazioni ecologiche: farmaci scaduti"
ECOBAT = "Tipo di rifiuti portato nelle stazioni ecologiche: batterie usate"
ECOING = "Tipo di rifiuti portato nelle stazioni ecologiche: rifiuti ingombranti"
ECOINE = "Tipo di rifiuti portato nelle stazioni ecologiche: inerti"
ECOELE = "Tipo di rifiuti portato nelle stazioni ecologiche: apparecchiature elettriche ed elettroniche"
ECOOLI = "Tipo di rifiuti portato nelle stazioni ecologiche: olio esausto"
ECOINF = "Tipo di rifiuti portato nelle stazioni ecologiche: rifiuti tossici e/o infiammabili"
ECOPOT = "Tipo di rifiuti portato nelle stazioni ecologiche: verde e potature"
ECOTESS = "Tipo di rifiuti portato nelle stazioni ecologiche: rifiuti tessili"
ECOALT = "Tipo di rifiuti portato nelle stazioni ecologiche: altro"
NOECO = "Motivo per cui la famiglia non ha mai portato rifiuti nelle stazioni ecologiche"
SPIDIF1 = "Cosa potrebbe spingere la famiglia ad effettuare o fare più spesso la raccolta differenziata: maggiori informazioni su come separare i rifiuti"
SPIDIF2 = "Cosa potrebbe spingere la famiglia ad effettuare o fare più spesso la raccolta differenziata: maggiori informazioni su dove separare i rifiuti"
SPIDIF3 = "Cosa potrebbe spingere la famiglia ad effettuare o fare più spesso la raccolta differenziata: raccolta a domicilio (porta a porta)"
SPIDIF4 = "Cosa potrebbe spingere la famiglia ad effettuare o fare più spesso la raccolta differenziata: disponibilità di appositi contenitori nelle vicinanze dell'abitazione"
SPIDIF5 = "Cosa potrebbe spingere la famiglia ad effettuare o fare più spesso la raccolta differenziata: centri di raccolta migliori e più numerosi"
SPIDIF6 = "Cosa potrebbe spingere la famiglia ad effettuare o fare più spesso la raccolta differenziata: maggiori garanzie che i rifiuti raccolti vengano effettivamente separati"
SPIDIF7 = "Cosa potrebbe spingere la famiglia ad effettuare o fare più spesso la raccolta differenziata: obbligo legale/multe per chi non effettua la raccolta differenziata"
SPIDIF8 = "Cosa potrebbe spingere la famiglia ad effettuare o fare più spesso la raccolta differenziata: detrazioni agevolazioni fiscali o tariffarie per chi effettua regolarmente la raccolta differenziata"
CAMAB = "Negli ultimi 12 mesi uno o più dei componenti della famiglia attuale ha cambiato abitazione?"
PCAMAB = "Negli ultimi 12 mesi la famiglia o qualche componente ha preso seriamente in considerazione la possibilità di cambiare abitazione?"
ASSCA = "La famiglia è assicurata contro i furti nell'abitazione?"
COLFAGG = "La famiglia si avvale di: collaboratore/collaboratrice domestico/a"
BABYSAGG = "La famiglia si avvale di: baby-sitter"
ASSANZAGG = "La famiglia si avvale di: persona che assiste un anziano o un disabile"
HCOLF = "Ore a settimana collaboratore/collaboratrice domestico/a"
HBABYS = "Ore a settimana baby-sitter"
HASANZ = "Ore a settimana persona che assiste un anziano o un disabile"
AVVOC = "Negli ultimi 12 mesi la famiglia è ricorsa alla consulenza di: avvocato"
NOTAIO = "Negli ultimi 12 mesi la famiglia è ricorsa alla consulenza di: notaio"
COMMER = "Negli ultimi 12 mesi la famiglia è ricorsa alla consulenza di: commercialista"
NOMOD = "Organizzazione della famiglia per la compilazione dei modelli per il pagamento delle tasse: la famiglia non deve compilare nessun modulo"
COMFAM = "Organizzazione della famiglia per la compilazione dei modelli per il pagamento delle tasse: se ne occupano uno o più componenti della famiglia"
NONPAG = "Organizzazione della famiglia per la compilazione dei modelli per il pagamento delle tasse: se ne occupano organizzazioni o persone non a pagamento"
PAGAM = "Organizzazione della famiglia per la compilazione dei modelli per il pagamento delle tasse: se ne occupa un commercialista, una organizzazione o altra persona a pagamento"
PINSER = "Qualche componente della famiglia ha effettuato nel corso dell'anno inserzioni a pagamento sui giornali per vari motivi (vendite case, annunci nozze, morti, ecc.)?"
LAVST = "Possesso di: lavastoviglie"
NLAVST = "numero lavastoviglie"
LAVATR = "Possesso di: lavatrice"
NLAVAT = "numero lavatrici"
VIDER = "Possesso di: videoregistratore"
NVIDER = "numero videoregistratore"
VIDEO = "Possesso di: videocamera"
NVIDEO = "numero videocamere"
DVD = "Possesso di: Lettore DVD/Blu Ray"
NDVD = "numero lettori DVD/Blu Ray"
HIFI = "Possesso di: impianto stereo hi-fi per ascoltare musica"
NHIFI = "numero impianto stereo hi-fi per ascoltare musica"
SEGTEL = "Possesso di: segreteria telefonica"
NSEGTM = "numero segreterie telefoniche"
FAX = "Possesso di: fax"
NFAX = "numero di fax"
TELCOL = "Possesso di: televisore"
NTELCO = "numero televisori"
ANTEPA = "Possesso di: antenna parabolica"
NANTEPA = "numero antenna parabolica"
CLIMAT = "Possesso di: condizionatori, climatizzatori"
NCLIMAT = "numero condizionatori, climatizzatori"
BIC = "Possesso di: bicicletta"
NBIC = "numero di biciclette"
MOTOR = "Possesso di: motorino, scooter"
NMOTORM = "numero motorini, scooter"
AMOTO = "Possesso di: motocicletta, moto"
NMOTOM = "numero di motociclette, moto"
ABBTV = "La famiglia possiede abbonamento o carta pre-pagata pay tv?"
SMARTV = "la famiglia possiede una smart TV"
AUTO = "La famiglia possiede l'automobile?"
NAUTOM = "numero automobili"
LIBFAM = "Quanti libri possiede la famiglia?"
TELCEL = "La famiglia possiede il telefono cellulare?"
NTELCEL = "Numero di telefoni cellulari posseduti"
TELCIN = "Il telefono o i telefoni cellulari di cui dispone la famiglia hanno la possibilità di collegarsi ad Internet?"
PC = "La famiglia dispone di personal computer a casa?"
MODEM = "La famiglia possiede: modem"
VGIOC = "La famiglia possiede: consolle per videogiochi"
NVIGIOC = "Numero consolle, videogiochi, altre apparecchiature computerizzate (escluso personal computer)"
EBOOK = "La famiglia possiede: lettore di e-book"
NEBOOK = "Numero di lettori di e-book"
MP3 = "La famiglia possiede: lettore di mp3/mp4"
NMP3 = "Numero di lettori mp3/mp4"
FOTODIG = "La famiglia possiede: macchina fotografica digitale"
NFOTODIG = "Numero di macchine fotografiche digitali"
NAVSAT = "La famiglia possiede: navigatore satellitare"
NNAVSAT = "numero di navigatori satellitari"
AINTERN = "La famiglia dispone di un accesso ad Internet da casa?"
CIDSLWIFI = "Connessione usata dalla famiglia: fissa a banda larga (es.DSL, ADSL, VDSL, cavo, fibra ottica, satellite, rete pubblica WIFI, ecc. )"
CISFPAL = "Connessione usata dalla famiglia: rete di telefonia mobile a banda larga con cellulare o smartphone (minimo con tecnologia 3G)"
CISFMOD = "Connessione usata dalla famiglia: rete di telefonia mobile a banda larga tramite SIM card o chiavetta USB  (minimo con tecnologia 3G)"
CIBASTR = "Connessione fissa o mobile a banda stretta (es.ISDN, 2G, GPRS, ecc.)"
MOTNOAI1 = "Motivo per cui la famiglia non dispone di accesso ad Internet da casa: accede ad Internet da altro luogo"
MOTNOAI3 = "Motivo per cui la famiglia non dispone di accesso ad Internet da casa: Internet non è utile, non è interessante"
MOTNOAI4 = "Motivo per cui la famiglia non dispone di accesso ad Internet da casa: alto costo degli strumenti per connettersi"
MOTNOAI5 = "Motivo per cui la famiglia non dispone di accesso ad Internet da casa: alto costo del collegamento"
MOTNOAI6 = "Motivo per cui la famiglia non dispone di accesso ad Internet da casa: nessuno sa usare internet"
MOTNOAI8 = "Motivo per cui la famiglia non dispone di accesso ad Internet da casa: motivi di privacy, sicurezza"
MOTNOAI10 = "Motivo per cui la famiglia non dispone di accesso ad Internet da casa: mancanza di una connessione a banda larga nella zona"
MOTNOAI9 = "Motivo per cui la famiglia non dispone di accesso ad Internet da casa:  altro motivo (codice)"
SITE = "Valutazione della situazione economica della famiglia confrontata con quella di un anno fa"
RISEC = "Con riferimento agli ultimi 12 mesi e tenendo presente le esigenze di tutti i componenti familiari, come sono state le risorse economiche complessive della famiglia?"
BMI = "Indice di massa corporea per le persone di 18 anni e più"
;
RUN;
PROC FORMAT;
VALUE $REL4F /* RELPAR */
"01" = "persona di riferimento PR"
"02" = "coniuge di PR"
"03" = "convivente (coniugalmente) di PR"
"04" = "genitore (coniuge del genitore, convivente del genitore) di PR"
"05" = "genitore (coniuge del genitore, convivente del genitore) del coniuge o convivente di PR"
"06" = "figlio di PR nato dall'ultimo matrimonio o convivenza"
"07" = "figlio di PR o del coniuge nato da precedente matrimonio o convivenza"
"08" = "coniuge del figlio di PR (o del coniuge o convivente di PR)"
"09" = "convivente del figlio di PR (o del coniuge o convivente di PR)"
"10" = "nipote (figlio del figlio/a) di PR (o del coniuge o convivente di PR)"
"11" = "nipote (figlio del fratello/sorella) di PR (o del coniuge o convivente di PR)"
"12" = "fratello/sorella di PR"
"13" = "fratello/sorella del coniuge o convivente di PR"
"14" = "coniuge del fratello/sorella di PR (o del coniuge o convivente di PR)"
"15" = "convivente del fratello/sorella di PR (o del coniuge o convivente di PR)"
"16" = "altro parente di PR (o del coniuge o convivente di PR)"
"17" = "persona legata da amicizia"
;
VALUE $ETA5F /* ETAM */
"001" = "da 0 a 2 anni"
"002" = "da 3 a 5 anni"
"003" = "da 6 a 10 anni"
"004" = "da 11 a 13 anni"
"005" = "da 14 a 15 anni"
"006" = "da 16 a 17 anni"
"007" = "da 18 a 19 anni"
"008" = "da 20 a 24 anni"
"009" = "da 25 a 29 anni"
"010" = "da 30 a 34 anni"
"011" = "da 35 a 39 anni"
"012" = "da 40 a 44 anni"
"013" = "da 45 a 49 anni"
"014" = "da 50 a 54 anni"
"015" = "da 55 a 59 anni"
"016" = "da 60 a 64 anni"
"017" = "da 65 a 74 anni"
"018" = "75 anni e piu'"
;
VALUE $SES6F /* SESSO */
"1" = "maschio"
"2" = "femmina"
;
VALUE $STC7F /* STCIVM */
"1" = "celibe/nubile"
"2" = "coniugato/a coabitante con il coniuge; unito/a civilmente"
"3" = "separato/a di fatto; separato/a legalmente; divorziato/a; gia' in unione civile (per scioglimento unione)"
"6" = "vedovo/a; gia' in unione civile (per decesso del partner)"
;
VALUE $STC8F /* STCPM */
"1" = "celibe/nubile"
"2" = "coniugato/a coabitante con il coniuge 	"
"3" = "coniugato/a non coabitante con il coniuge (separato/a di fatto) "
"4" = "separato/a legalmente"
"5" = "divorziato/a"
"6" = "vedovo/a"
;
VALUE $IST10F /* ISTRM */
"01" = "laurea e post-laurea"
"07" = "diploma"
"09" = "licenza di scuola media"
"10" = "licenza di scuola elementare"
"11" = "nessun titolo di studio"
;
VALUE $CON11F /* CONDM */
"1" = "occupato"
"2" = "in cerca di nuova occupazione"
"3" = "in cerca di prima occupazione"
"4" = "casalinga"
"5" = "studente"
"7" = "ritirato dal lavoro"
"8" = "altra condizione; inabile al lavoro"
;
VALUE $LAV12F /* LAVPAS */
"1" = "no"
"2" = "sì"
;
VALUE $POS13F /* POSIZM */
"01" = "dirigente; autonomo come imprenditore; libero professionista"
"02" = "direttivo, quadro; impiegato"
"03" = "capo operaio, operaio subalterno e assimilati; apprendista;  lavorante a domicilio per conto d'impresa"
"04" = "lavoratore in proprio;  socio cooperativa Produzione Beni e/o prestazioni di servizio;  coadiuvante;  collaborazione coordinata e continuativa (con o senza progetto); prestazione d'opera occasionale"
;
VALUE $ATE14F /* ATECOM */
"1" = "agricoltura, silvicoltura e pesca"
"2" = "totale industria escluse costruzioni"
"3" = "costruzioni"
"4" = "totale servizi"
;
VALUE $TIP15F /* TIPNU2 */
"0" = "nessun nucleo"
"1" = "coppie con figli"
"2" = "coppie senza figli"
"3" = "monogenitore padre"
"4" = "monogenitore madre"
;
VALUE $RPN17F /* RPNUC2 */
"0" = "membro isolato"
"1" = "PR nucleo"
"2" = "coniuge o convivente"
"3" = "figlio"
;
VALUE $TIP18F /* TIPFA2M */
"01" = "persona sola"
"02" = "genitore con figli non celibi o nubili"
"03" = "insieme di parenti"
"04" = "parenti ed altri"
"05" = "persone non parenti"
"06" = "coppia coniugata senza figli, senza isolati"
"07" = "coppia non coniugata senza figli senza isolati"
"08" = "coppia coniugata con figli senza isolati"
"09" = "coppia non coniugata con figli senza isolati"
"10" = "monogenitore maschio celibe senza isolati"
"11" = "monogenitore maschio separato di fatto senza isolati;  monogenitore maschio separato legalmente senza isolati; monogenitore maschio divorziato senza isolati"
"14" = "monogenitore maschio vedovo senza isolati"
"15" = "monogenitore femmina nubile senza isolati"
"16" = "monogenitore femmina separata di fatto senza isolati; monogenitore femmina separata legalmente senza isolati; monogenitore femmina divorziata senza isolati"
"19" = "monogenitore femmina vedova senza isolati"
"20" = "coppia coniugata senza figli con isolati"
"21" = "coppia non coniugata senza figli con isolati"
"22" = "coppia coniugata con figli con isolati"
"23" = "coppia non coniugata con figli con isolati"
"24" = "monogenitore maschio celibe con isolati"
"25" = "monogenitore maschio separato di fatto con isolati;  monogenitore maschio separato legalmente con isolati; monogenitore maschio divorziato con isolati"
"28" = "monogenitore maschio vedovo con isolati"
"29" = "monogenitore femmina nubile con isolati"
"30" = "monogenitore femmina separata di fatto con isolati; monogenitore femmina separata legalmente con isolati; monogenitore femmina divorziata con isolati"
"33" = "monogenitore femmina vedova con isolati"
"34" = "due nuclei a due generazioni senza isolati"
"35" = "due nuclei di tipo fraterno senza isolati"
"36" = "due nuclei di altro tipo senza isolati"
"37" = "due nuclei a due generazioni con isolati"
"38" = "due nuclei di tipo fraterno con isolati"
"39" = "due nuclei di altro tipo con isolati"
"40" = "tre o pi¿ nuclei senza isolati"
"41" = "tre o pi¿ nuclei con isolati"
;
VALUE $REG19F /* REGMF */
"010" = "Piemonte"
"020" = "Valle d'Aosta"
"030" = "Lombardia"
"040" = "Trentino-Alto Adige"
"050" = "Veneto"
"060" = "Friuli-Venezia Giulia"
"070" = "Liguria"
"080" = "Emilia-Romagna"
"090" = "Toscana"
"100" = "Umbria"
"110" = "Marche"
"120" = "Lazio"
"130" = "Abruzzo"
"140" = "Molise"
"150" = "Campania"
"160" = "Puglia"
"170" = "Basilicata"
"180" = "Calabria"
"190" = "Sicilia"
"200" = "Sardegna"
"444" = "Nord-ovest"
"555" = "Nord-est"
"666" = "Centro"
"777" = "Sud"
"888" = "Isole"
"999" = "non disponibile"
;
VALUE $RIP20F /* RIPMF */
"1" = "Nord-ovest"
"2" = "Nord-est"
"3" = "Centro"
"4" = "Sud"
"5" = "Isole"
"9" = "non disponibile"
;
VALUE $DOM21F /* DOMMF */
"1" = "Area metropolitana"
"3" = "Comuni aventi fino a 10.000 abitanti"
"5" = "Comuni con oltre 10.000 abitanti"
"9" = "non disponibile"
;
VALUE $RED23F /* REDPR */
"1" = "reddito da lavoro dipendente"
"2" = "reddito da lavoro autonomo"
"3" = "pensione"
"4" = "indennità e provvidenze varie"
"5" = "redditi patrimoniali"
"6" = "mantenimento da parte della famiglia"
;
VALUE $CIT24F /* CITT */
"1" = "italiana"
"3" = "straniera"
;
VALUE $FRS25F /* FRSCM */
"01" = "NO"
"02" = "Dottorato di ricerca"
"03" = "Corsi di laurea o AFAM"
"06" = "Scuola secondaria di secondo grado"
"13" = "Scuola secondaria di primo grado"
"14" = "Scuola primaria"
"15" = "Scuola dell'infanzia e Asilo nido"
;
VALUE $MOT26F /* MOTAS */
"1" = "È importante da un punto di vista educativo"
"2" = "Per farlo stare in compagnia di altri bambini"
"3" = "Una baby sitter costerebbe troppo"
"4" = "Nessun familiare lo può accudire"
"5" = "Perché ci vanno tutti"
"6" = "Altro"
;
VALUE $DOM27F /* DOMRIF */
"01" = "presente"
;
VALUE $MEM28F /* MEMFAM */
"02" = "presente"
;
VALUE $NID29F /* NIDLON */
"03" = "presente"
;
VALUE $NOD30F /* NODELE */
"04" = "presente"
;
VALUE $MAL31F /* MALAT */
"05" = "presente"
;
VALUE $ABB32F /* ABBAND */
"06" = "presente"
;
VALUE $NON33F /* NONVUO */
"07" = "presente"
;
VALUE $NOM34F /* NOMED */
"08" = "presente"
;
VALUE $TPI35F /* TPICC */
"09" = "presente"
;
VALUE $NDT36F /* NDTROPPO */
"10" = "presente"
;
VALUE $ORA37F /* ORARIS */
"11" = "presente"
;
VALUE $ALN38F /* ALNIDO */
"12" = "presente"
;
VALUE $DIV43F /* DIVCOM */
"1" = "no"
"2" = "sì"
;
VALUE $STC44F /* STCOM */
"1" = "presente"
;
VALUE $STP45F /* STPROV */
"2" = "presente"
;
VALUE $STR46F /* STREG */
"3" = "presente"
;
VALUE $ALT47F /* ALTREG */
"4" = "presente"
;
VALUE $EST48F /* ESTERO */
"5" = "presente"
;
VALUE $USO49F /* USOMT */
"1" = "no, vado a piedi"
"2" = "sì, un solo mezzo"
"3" = "sì, due o più mezzi"
;
VALUE $TRE50F /* TRENO */
"01" = "presente"
;
VALUE $TRA51F /* TRAM */
"02" = "presente"
;
VALUE $MET52F /* METRO */
"03" = "presente"
;
VALUE $BUS53F /* BUS */
"04" = "presente"
;
VALUE $COR54F /* COR */
"05" = "presente"
;
VALUE $PAZ55F /* PAZSC */
"06" = "presente"
;
VALUE $AUT56F /* AUTOC */
"07" = "presente"
;
VALUE $AUT57F /* AUTOP */
"08" = "presente"
;
VALUE $MOT58F /* MOTO */
"09" = "presente"
;
VALUE $BIC59F /* BICI */
"10" = "presente"
;
VALUE $ALM60F /* ALMEZ */
"11" = "presente"
;
VALUE $MTP61F /* MTPUSO */
"01" = "treno"
"02" = "tram"
"03" = "metropolitana"
"04" = "autobus, filobus (all'interno del Comune)"
"05" = "pullman, corriere (tra Comuni diversi)"
"06" = "pullman aziendale/scolastico"
"07" = "auto privata(come conducente)"
"08" = "auto privata(come passeggero)"
"09" = "motocicletta o ciclomotore"
"10" = "bicicletta"
"11" = "altro mezzo"
;
VALUE $CAR62F /* CARPOO */
"1" = "Tutti i giorni"
"2" = "Una o più volte alla settimana"
"3" = "Più raramente"
"4" = "Mai"
;
VALUE $PRO63F /* PROSOC */
"1" = "no"
"2" = "sì"
;
VALUE $NPR64F /* NPROSOM */
"01" = "1"
"02" = "2"
"03" = "3"
"04" = "4"
"05" = "5 e piu'"
;
VALUE $GUM65F /* GUMED */
"3" = "no"
"4" = "sì"
;
VALUE $NGU66F /* NGUMEDM */
"01" = "1"
"02" = "2"
"03" = "3"
"04" = "4"
"05" = "5 e piu'"
;
VALUE $ASS67F /* ASSDO */
"5" = "no"
"6" = "sì"
;
VALUE $NAS68F /* NASSDOM */
"01" = "1"
"02" = "2"
"03" = "3"
"04" = "4"
"05" = "5"
"06" = "6"
"07" = "7"
"08" = "8"
"09" = "9"
"10" = "10"
"11" = "11"
"12" = "12"
"13" = "13"
"14" = "14"
"15" = "15"
"16" = "da 16 a 20"
"17" = "da 21 a 30"
"18" = "da 31 a 40"
"19" = "da 41 a 50"
"20" = "51 e piu'"
;
VALUE $RIC69F /* RICOV */
"1" = "no"
"2" = "sì"
;
VALUE $NNR70F /* NNRICAM */
"01" = "1"
"02" = "2"
"03" = "3"
"04" = "4"
"05" = "5 e piu'"
;
VALUE $GGR71F /* GGRICAM */
"01" = "1"
"02" = "2"
"03" = "3"
"04" = "4"
"05" = "5"
"06" = "6"
"07" = "7"
"08" = "8"
"09" = "9"
"10" = "10"
"11" = "11"
"12" = "12"
"13" = "13"
"14" = "14"
"15" = "15"
"16" = "da 16 a 20"
"17" = "da 21 a 30"
"18" = "da 31 a 40"
"19" = "da 41 a 50"
"20" = "51 e piu'"
;
VALUE $LRI72F /* LRICOV */
"1" = "ospedale o istituto di cura pubblico"
"2" = "casa di cura privata accreditata (convenzionata)"
"3" = "casa di cura privata a pagamento intero"
;
VALUE $CON73F /* CONSPE */
"1" = "no"
"2" = "sì"
;
VALUE $CON74F /* CONDIR */
"1" = "spese sanitarie"
"3" = "altre spese (stanza, TV, ecc.)"
"5" = "entrambe"
;
VALUE $CON75F /* CONASS */
"2" = "spese sanitarie"
"4" = "altre spese (stanza, TV, ecc.)"
"6" = "entrambe"
;
VALUE $QAS76F /* QASSAM */
"1" = "molto"
"2" = "abbastanza"
"3" = "poco"
"4" = "per niente"
"5" = "non so"
;
VALUE $QAS77F /* QASSIN */
"1" = "molto"
"2" = "abbastanza"
"3" = "poco"
"4" = "per niente"
"5" = "non so"
;
VALUE $QVI78F /* QVITTO */
"1" = "molto"
"2" = "abbastanza"
"3" = "poco"
"4" = "per niente"
"5" = "non so"
;
VALUE $QSE79F /* QSERIG */
"1" = "molto"
"2" = "abbastanza"
"3" = "poco"
"4" = "per niente"
"5" = "non so"
;
VALUE $VIS80F /* VISMED12 */
"1" = "no"
"2" = "sì"
;
VALUE $VSP81F /* VSPESA */
"1" = "non ha pagato nulla"
"2" = "Ha pagato il ticket (consegnando la ricetta rossa del SSN)"
"3" = "Ha pagato interamente (senza rimborsi dallassicurazione)"
"4" = "Ha pagato interamente con rimborso parziale o totale dallassicurazione privata/aziendale"
;
VALUE $VIS82F /* VISPRE */
"1" = "no"
"2" = "sì"
;
VALUE $VIS83F /* VISRI1 */
"1" = "no"
;
VALUE $VIS84F /* VISRI2 */
"2" = "presente"
;
VALUE $VIS85F /* VISRI3 */
"3" = "presente"
;
VALUE $VIS86F /* VISRI4 */
"4" = "presente"
;
VALUE $VIS87F /* VISRI5 */
"5" = "presente"
;
VALUE $VIS88F /* VISRI6 */
"6" = "presente"
;
VALUE $VIS89F /* VISRI7 */
"7" = "presente"
;
VALUE $ANS90F /* ANSANG12 */
"1" = "no"
"2" = "sì"
;
VALUE $ACC91F /* ACCER12 */
"1" = "no"
"2" = "sì"
;
VALUE $ASP92F /* ASPESA */
"1" = "Non ha pagato nulla"
"2" = "Ha pagato il ticket (consegnando la ricetta rossa del SSN)"
"3" = "Ha pagato interamente (senza rimborsi dallassicurazione)"
"4" = "Ha pagato interamente con rimborso parziale o totale dallassicurazione privata/aziendale"
;
VALUE $ACC93F /* ACCPRE */
"1" = "no"
"2" = "sì"
;
VALUE $ACC94F /* ACCRI1 */
"1" = "no"
;
VALUE $ACC95F /* ACCRI2 */
"2" = "presente"
;
VALUE $ACC96F /* ACCRI3 */
"3" = "presente"
;
VALUE $ACC97F /* ACCRI4 */
"4" = "presente"
;
VALUE $ACC98F /* ACCRI5 */
"5" = "presente"
;
VALUE $ACC99F /* ACCRI6 */
"6" = "presente"
;
VALUE $ACC100F /* ACCRI7 */
"7" = "presente"
;
VALUE $MIN101F /* MINCDO */
"1" = "no"
"2" = "sì"
;
VALUE $MNI102F /* MNINCDM */
"01" = "1"
"02" = "2"
"03" = "3"
"04" = "4"
"05" = "5 e piu'"
;
VALUE $SPO103F /* SPOCON */
"1" = "no"
"2" = "sì"
;
VALUE $SPO104F /* SPOSAL */
"1" = "no"
"2" = "sì"
;
VALUE $ATT105F /* ATTFIS */
"1" = "no"
"2" = "si, una o più volte a settimana"
"3" = "sì, una o più volte al mese"
"4" = "sì, più raramente"
;
VALUE $FRE106F /* FREQSPO */
"1" = "cinque o più volte a settimana"
"2" = "tre o quattro volte a settimana"
"3" = "due volte a settimana"
"4" = "una volta a settimana"
"5" = "due o tre volte al mese"
"6" = "una volta al mese"
"7" = "qualche volta durante l'anno"
;
VALUE $ORE107F /* ORESETSP */
"1" = "Nell'ultima settimana non ho praticato"
"2" = "Fino a 2 ore"
"3" = "Da più di 2 ore fino a 4 ore"
"4" = "Da più di 4 ore fino a 6 ore"
"5" = "Da più di 6 ore fino a 10 ore"
"6" = "Più di 10 ore"
;
VALUE $SPP108F /* SPPAG */
"1" = "no"
"2" = "sì"
;
VALUE $SPR109F /* SPRIV */
"1" = "no"
"2" = "sì"
;
VALUE $RET110F /* RETTA */
"1" = "no"
"2" = "sì"
;
VALUE $AMI111F /* AMICI */
"1" = "tutti i giorni"
"2" = "più di una volta a settimana"
"3" = "una volta alla settimana"
"4" = "qualche volta al mese (meno di 4 volte)"
"5" = "qualche volta durante l'anno"
"6" = "mai"
"7" = "non ho amici"
;
VALUE $PAR112F /* PARENT */
"1" = "no"
"2" = "sì"
;
VALUE $AMI113F /* AMICI2 */
"1" = "no"
"2" = "sì"
"3" = "non so"
;
VALUE $VIC114F /* VICINI */
"1" = "no"
"2" = "sì, una persona o una famiglia"
"3" = "sì, alcune persone o famiglie"
;
VALUE $CPE115F /* CPESO */
"1" = "Sì, tutti i giorni"
"2" = "Sì, almeno una volta a settimana"
"3" = "Sì, almeno una volta al mese"
"4" = "Sì, qualche volta durante l'anno"
"5" = "No"
;
VALUE $FAR116F /* FARM */
"1" = "sì"
"2" = "no"
"3" = "non ricordo"
;
VALUE $PAS117F /* PASTO */
"1" = "prima colazione"
"2" = "pranzo"
"3" = "cena"
;
VALUE $COL118F /* COLAZ */
"1" = "no"
"2" = "sì, bevo solo bevande come thè o caffè (escluso latte) senza mangiare niente"
"3" = "sì, bevo thè o caffè (escluso latte) e mangio qualcosa"
"4" = "sì, bevo latte, o caffè e latte, o cappuccino senza mangiare niente"
"5" = "sì, bevo latte, o caffe e latte, o cappuccino e mangio qualcosa"
"6" = "sì, mangio solo qualcosa (biscotti, fette biscottate, pane, brioches) senza bere nulla"
"7" = "sì, faccio un altro tipo di colazione (yogurt, cereali, succhi di frutta, ecc.)"
;
VALUE $LPR119F /* LPRAN */
"1" = "in casa"
"2" = "in una mensa aziendale"
"3" = "in una mensa scolastica o dell'asilo"
"4" = "in un ristorante, trattoria, tavola calda"
"5" = "in un bar"
"6" = "sul posto di lavoro"
"7" = "a casa di genitori, parenti, amici"
"8" = "in altro luogo"
"9" = "non consuma pranzo"
;
VALUE $PAN120F /* PANPAS */
"1" = "più di una volta al giorno"
"2" = "una volta al giorno"
"3" = "qualche volta a settimana"
"4" = "meno di una volta a settimana"
"5" = "mai"
;
VALUE $SAL121F /* SALUMI */
"1" = "più di una volta al giorno"
"2" = "una volta al giorno"
"3" = "qualche volta a settimana"
"4" = "meno di una volta a settimana"
"5" = "mai"
;
VALUE $POL122F /* POLLO */
"1" = "più di una volta al giorno"
"2" = "una volta al giorno"
"3" = "qualche volta a settimana"
"4" = "meno di una volta a settimana"
"5" = "mai"
;
VALUE $COV123F /* COV */
"1" = "più di una volta al giorno"
"2" = "una volta al giorno"
"3" = "qualche volta a settimana"
"4" = "meno di una volta a settimana"
"5" = "mai"
;
VALUE $CBO124F /* CBOV */
"1" = "più di una volta al giorno"
"2" = "una volta al giorno"
"3" = "qualche volta a settimana"
"4" = "meno di una volta a settimana"
"5" = "mai"
;
VALUE $CMA125F /* CMAIAL */
"1" = "più di una volta al giorno"
"2" = "una volta al giorno"
"3" = "qualche volta a settimana"
"4" = "meno di una volta a settimana"
"5" = "mai"
;
VALUE $LAT126F /* LATTE */
"1" = "più di una volta al giorno"
"2" = "una volta al giorno"
"3" = "qualche volta a settimana"
"4" = "meno di una volta a settimana"
"5" = "mai"
;
VALUE $FOR127F /* FORM */
"1" = "più di una volta al giorno"
"2" = "una volta al giorno"
"3" = "qualche volta a settimana"
"4" = "meno di una volta a settimana"
"5" = "mai"
;
VALUE $UOV128F /* UOVA */
"1" = "più di una volta al giorno"
"2" = "una volta al giorno"
"3" = "qualche volta a settimana"
"4" = "meno di una volta a settimana"
"5" = "mai"
;
VALUE $PES129F /* PESCE */
"1" = "più di una volta al giorno"
"2" = "una volta al giorno"
"3" = "qualche volta a settimana"
"4" = "meno di una volta a settimana"
"5" = "mai"
;
VALUE $VER130F /* VERD */
"1" = "più di una volta al giorno"
"2" = "una volta al giorno"
"3" = "qualche volta a settimana"
"4" = "meno di una volta a settimana"
"5" = "mai"
;
VALUE $POM131F /* POMOD */
"1" = "più di una volta al giorno"
"2" = "una volta al giorno"
"3" = "qualche volta a settimana"
"4" = "meno di una volta a settimana"
"5" = "mai"
;
VALUE $FRU132F /* FRUTTA */
"1" = "più di una volta al giorno"
"2" = "una volta al giorno"
"3" = "qualche volta a settimana"
"4" = "meno di una volta a settimana"
"5" = "mai"
;
VALUE $LEG135F /* LEGUMI */
"1" = "più di una volta al giorno"
"2" = "una volta al giorno"
"3" = "qualche volta a settimana"
"4" = "meno di una volta a settimana"
"5" = "mai"
;
VALUE $PAT136F /* PATATE */
"1" = "più di una volta al giorno"
"2" = "una volta al giorno"
"3" = "qualche volta a settimana"
"4" = "meno di una volta a settimana"
"5" = "mai"
;
VALUE $SNA137F /* SNACK */
"1" = "più di una volta al giorno"
"2" = "una volta al giorno"
"3" = "qualche volta a settimana"
"4" = "meno di una volta a settimana"
"5" = "mai"
;
VALUE $DOL138F /* DOLCI */
"1" = "più di una volta al giorno"
"2" = "una volta al giorno"
"3" = "qualche volta a settimana"
"4" = "meno di una volta a settimana"
"5" = "mai"
;
VALUE $CGR139F /* CGRAS */
"1" = "olio di oliva"
"2" = "altri grassi e oli vegetali (olio di semi, margarina ecc.)"
"3" = "burro o strutto"
;
VALUE $FGR140F /* FGRAS */
"1" = "olio di oliva"
"2" = "altri grassi e oli vegetali (olio di semi, margarina ecc.)"
"3" = "burro o strutto"
;
VALUE $QTS141F /* QTSALE */
"1" = "No, non presto attenzione"
"2" = "Sì, ne ho ridotto l'uso nel tempo"
"3" = "Sì, ho da sempre fatto attenzione"
;
VALUE $IOD142F /* IODIO */
"1" = "no"
"2" = "sì"
;
VALUE $ACM143F /* ACMIN */
"1" = "oltre 1 litro al giorno"
"2" = "da 1/2 litro a 1 litro al giorno"
"3" = "1-2 bicchieri al giorno (meno di 1/2 litro)"
"4" = "più raramente"
"5" = "solo stagionalmente"
"6" = "non ne consuma"
;
VALUE $BGA144F /* BGAS */
"1" = "oltre 1 litro al giorno"
"2" = "da 1/2 litro a 1 litro al giorno"
"3" = "1-2 bicchieri al giorno (meno di 1/2 litro)"
"4" = "più raramente"
"5" = "solo stagionalmente"
"6" = "non ne consuma"
;
VALUE $BIR145F /* BIRRA */
"1" = "oltre 1 litro al giorno"
"2" = "da 1/2 litro a 1 litro al giorno"
"3" = "1-2 bicchieri al giorno (meno di 1/2 litro)"
"4" = "più raramente"
"5" = "solo stagionalmente"
"6" = "non ne consuma"
;
VALUE $VIN146F /* VINO */
"1" = "oltre 1 litro al giorno"
"2" = "da 1/2 litro a 1 litro al giorno"
"3" = "1-2 bicchieri al giorno (meno di 1/2 litro)"
"4" = "più raramente"
"5" = "solo stagionalmente"
"6" = "non ne consuma"
;
VALUE $BIC147F /* BICBIRRAM */
"01" = "1"
"02" = "2"
"03" = "3"
"04" = "4"
"05" = "5"
"06" = "6 e piu'"
;
VALUE $BIC148F /* BICVINOM */
"01" = "1"
"02" = "2"
"03" = "3"
"04" = "4"
"05" = "5"
"06" = "6 e piu'"
;
VALUE $BFP149F /* BFPAS */
"1" = "tutti i giorni"
"2" = "qualche volta alla settimana"
"3" = "più raramente"
"4" = "mai"
;
VALUE $BIC150F /* BICFUORIM */
"01" = "01"
"02" = "02"
"03" = "03"
"04" = "04"
"05" = "05"
"06" = "06"
"07" = "07"
"08" = "08"
"09" = "09"
"10" = "10 - 20"
"11" = "21 e piu'"
;
VALUE $ANA151F /* ANAL */
"1" = "più di 2 bicchierini al giorno"
"2" = "1-2 bicchierini al giorno"
"3" = "qualche bicchierino alla settimana"
"4" = "più raramente"
"5" = "eccezionalmente"
"6" = "non ne consumo"
;
VALUE $ALC152F /* ALCOL */
"1" = "più di 2 bicchierini al giorno"
"2" = "1-2 bicchierini al giorno"
"3" = "qualche bicchierino alla settimana"
"4" = "più raramente"
"5" = "eccezionalmente"
"6" = "non ne consumo"
;
VALUE $AMA153F /* AMAR */
"1" = "più di 2 bicchierini al giorno"
"2" = "1-2 bicchierini al giorno"
"3" = "qualche bicchierino alla settimana"
"4" = "più raramente"
"5" = "eccezionalmente"
"6" = "non ne consumo"
;
VALUE $LIQ154F /* LIQUOR */
"1" = "più di 2 bicchierini al giorno"
"2" = "1-2 bicchierini al giorno"
"3" = "qualche bicchierino alla settimana"
"4" = "più raramente"
"5" = "eccezionalmente"
"6" = "non ne consumo"
;
VALUE $BIC155F /* BICALTROM */
"01" = "1"
"02" = "2"
"03" = "3"
"04" = "4 - 5"
"05" = "6 e piu'"
;
VALUE $ALC156F /* ALCOL12 */
"1" = "Sì"
"2" = "No, ma ne ho consumato in passato"
"3" = "No, non ne consumo"
;
VALUE $BIC157F /* BICALC */
"1" = "no"
"2" = "sì"
;
VALUE $NBI158F /* NBICALCM */
"001" = "001"
"002" = "002"
"003" = "003"
"004" = "004"
"005" = "005"
"006" = "006"
"007" = "007"
"008" = "008"
"009" = "009"
"010" = "010"
"011" = "011"
"012" = "012"
"013" = "013"
"014" = "014"
"015" = "015"
"016" = "016"
"018" = "018"
"020" = "020"
"021" = "21 e pi¿"
;
VALUE $DOV159F /* DOVCASP */
"1" = "presente"
;
VALUE $DOV160F /* DOVAMPA */
"2" = "presente"
;
VALUE $DOV161F /* DOVRISTO */
"3" = "presente"
;
VALUE $DOV162F /* DOVPUB */
"4" = "presente"
;
VALUE $DOV163F /* DOVDISCO */
"5" = "presente"
;
VALUE $DOV164F /* DOVSTR */
"6" = "presente"
;
VALUE $DOV165F /* DOVALT */
"7" = "presente"
;
VALUE $ESI166F /* ESIG */
"1" = "sì"
"2" = "no, ma l'ho usata in passato"
"3" = "no, non l'ho mai usata"
;
VALUE $FUM167F /* FUMO */
"1" = "Sì"
"2" = "No, ma ho fumato in passato"
"3" = "No, non ho mai fumato"
;
VALUE $FRF168F /* FRFUMO */
"1" = "Tutti i giorni"
"2" = "Occasionalmente"
;
VALUE $TFU169F /* TFUMO */
"1" = "pipa"
"2" = "sigari"
"3" = "sigarette"
;
VALUE $NSI170F /* NSIGARM */
"01" = "01"
"02" = "02"
"03" = "03"
"04" = "04"
"05" = "05"
"06" = "06"
"07" = "07"
"08" = "08"
"09" = "09"
"10" = "10"
"11" = "11"
"12" = "12"
"13" = "13"
"14" = "14"
"15" = "15"
"16" = "16 - 20"
"17" = "21 e piu'"
;
VALUE $SAL171F /* SALUTE */
"1" = "molto bene"
"2" = "bene"
"3" = "né bene né male"
"4" = "male"
"5" = "molto male"
;
VALUE $CRO172F /* CRONI */
"1" = "no"
"2" = "sì"
;
VALUE $LIM173F /* LIMITA */
"1" = "limitazioni gravi"
"2" = "limitazioni non gravi"
"3" = "nessuna limitazione"
;
VALUE $DIA174F /* DIAB */
"1" = "no"
"2" = "sì"
;
VALUE $IPA175F /* IPAR */
"3" = "no"
"4" = "sì"
;
VALUE $INF176F /* INFAR */
"5" = "no"
"6" = "sì"
;
VALUE $CUO177F /* CUORE */
"7" = "no"
"8" = "sì"
;
VALUE $BRO178F /* BRON */
"1" = "no"
"2" = "sì"
;
VALUE $ASM179F /* ASMA */
"3" = "no"
"4" = "sì"
;
VALUE $ALL180F /* ALLER */
"5" = "no"
"6" = "sì"
;
VALUE $TUM181F /* TUMOR */
"7" = "no"
"8" = "sì"
;
VALUE $ULC182F /* ULCER */
"1" = "no"
"2" = "sì"
;
VALUE $FEG183F /* FEGATO */
"3" = "no"
"4" = "sì"
;
VALUE $CIR184F /* CIRRO */
"5" = "no"
"6" = "sì"
;
VALUE $CAL185F /* CALRE */
"7" = "no"
"8" = "sì"
;
VALUE $ART186F /* ARTRO */
"1" = "no"
"2" = "sì"
;
VALUE $OST187F /* OSTEO */
"3" = "no"
"4" = "sì"
;
VALUE $NEU188F /* NEURO */
"5" = "no"
"6" = "sì"
;
VALUE $SF9189F /* SF9 */
"1" = "Sempre"
"2" = "Quasi sempre"
"3" = "Molto tempo"
"4" = "Una parte del tempo"
"5" = "Quasi mai"
"6" = "Mai"
;
VALUE $SF1190F /* SF11 */
"1" = "Sempre"
"2" = "Quasi sempre"
"3" = "Molto tempo"
"4" = "Una parte del tempo"
"5" = "Quasi mai"
"6" = "Mai"
;
VALUE $SF1191F /* SF13 */
"1" = "Sempre"
"2" = "Quasi sempre"
"3" = "Molto tempo"
"4" = "Una parte del tempo"
"5" = "Quasi mai"
"6" = "Mai"
;
VALUE $SF1192F /* SF14 */
"1" = "Sempre"
"2" = "Quasi sempre"
"3" = "Molto tempo"
"4" = "Una parte del tempo"
"5" = "Quasi mai"
"6" = "Mai"
;
VALUE $SF1193F /* SF15 */
"1" = "Sempre"
"2" = "Quasi sempre"
"3" = "Molto tempo"
"4" = "Una parte del tempo"
"5" = "Quasi mai"
"6" = "Mai"
;
VALUE $RAD194F /* RADIO */
"1" = "no"
"2" = "sì, tutti i giorni"
"3" = "sì, qualche giorno"
;
VALUE $TEL197F /* TELE */
"1" = "no"
"2" = "sì, tutti i giorni"
"3" = "sì, ogni tanto"
;
VALUE $PCT200F /* PCTEMPO */
"1" = "sì, negli ultimi 3 mesi"
"2" = "sì, da più di 3 mesi a 1 anno fa"
"3" = "sì, più di 1 anno fa"
"4" = "mai"
;
VALUE $FRE201F /* FREQPC12 */
"1" = "tutti i giorni"
"2" = "qualche volta alla settimana"
"3" = "una volta alla settimana"
"4" = "qualche volta al mese (meno di 4 volte)"
"5" = "meno di una volta al mese"
;
VALUE $INT202F /* INTTEMPO */
"1" = "sì, negli ultimi 3 mesi"
"2" = "sì, da più 3 mesi a 1 anno fa"
"3" = "sì, più di 1 anno fa"
"4" = "mai"
;
VALUE $FRE203F /* FREQIN12 */
"1" = "tutti i giorni"
"2" = "qualche volta alla settimana"
"3" = "una volta alla settimana"
"4" = "qualche volta al mese (meno di 4 volte)"
"5" = "meno di una volta al mese"
;
VALUE $IAI204F /* IAIPCSCRI */
"1" = "presente"
;
VALUE $IAI205F /* IAIPCPORT */
"2" = "presente"
;
VALUE $IAI206F /* IAITABLET */
"3" = "presente"
;
VALUE $IAI207F /* IAIDISMOB */
"4" = "presente"
;
VALUE $IAI208F /* IAIALTRO_N */
"5" = "presente"
;
VALUE $DIS209F /* DISP_SMA */
"1" = "no"
"2" = "sì"
;
VALUE $DIS210F /* DISP_LAP */
"3" = "no"
"4" = "sì"
;
VALUE $DIS211F /* DISP_TAB */
"5" = "no"
"6" = "sì"
;
VALUE $DIS212F /* DISPPDA */
"7" = "no"
"8" = "Sì"
;
VALUE $INC213F /* INCOMU5 */
"1" = "no"
"2" = "sì"
;
VALUE $INC214F /* INCOMU1b */
"3" = "no"
"4" = "sì"
;
VALUE $INC215F /* INCOMU34 */
"5" = "no"
"6" = "sì"
;
VALUE $INC216F /* INCOMU6 */
"7" = "no"
"8" = "sì"
;
VALUE $INC217F /* INCOMU7 */
"1" = "no"
"2" = "sì"
;
VALUE $INT218F /* INTATT20 */
"3" = "no"
"4" = "sì"
;
VALUE $INT219F /* INTATT21 */
"5" = "no"
"6" = "sì"
;
VALUE $INT220F /* INTATT26 */
"7" = "no"
"8" = "sì"
;
VALUE $INT221F /* INTATT5 */
"1" = "no"
"2" = "sì"
;
VALUE $INT222F /* INTATT4 */
"3" = "no"
"4" = "sì"
;
VALUE $INT223F /* INTSAL3 */
"5" = "no"
"6" = "sì"
;
VALUE $INT224F /* INTATT14 */
"7" = "no"
"8" = "sì"
;
VALUE $INT225F /* INTATT11 */
"1" = "no"
"2" = "sì"
;
VALUE $INT226F /* INTATT33 */
"3" = "no"
"4" = "sì"
;
VALUE $INT227F /* INTATT13 */
"5" = "no"
"6" = "sì"
;
VALUE $INT228F /* INTATT17 */
"7" = "no"
"8" = "sì"
;
VALUE $INT229F /* INTATT16 */
"1" = "no"
"2" = "sì"
;
VALUE $INT230F /* INTATT10 */
"3" = "no"
"4" = "sì"
;
VALUE $INT231F /* INTATT8 */
"1" = "no"
"2" = "sì"
;
VALUE $INT232F /* INTATT31 */
"3" = "no"
"4" = "sì"
;
VALUE $INT233F /* INTATT32 */
"5" = "no"
"6" = "sì"
;
VALUE $INT234F /* INTATT7BN */
"7" = "no"
"8" = "sì"
;
VALUE $INT235F /* INTATT30A */
"1" = "no"
"2" = "sì"
;
VALUE $INT236F /* INTATT30B */
"3" = "no"
"4" = "sì"
;
VALUE $INT237F /* INTATT28A */
"5" = "no"
"6" = "sì"
;
VALUE $INT238F /* INTATT28B */
"7" = "no"
"8" = "sì"
;
VALUE $CLO239F /* CLOUDSAL */
"1" = "no"
"2" = "sì"
;
VALUE $SKL240F /* SKL_FRE */
"1" = "no"
"2" = "sì"
;
VALUE $SKL241F /* SKL_AUTO */
"3" = "no"
"4" = "sì"
;
VALUE $SKL242F /* SKL_PUB */
"5" = "no"
"6" = "sì"
;
VALUE $SKL243F /* SKL_DAT */
"7" = "no"
"8" = "sì"
;
VALUE $SKL244F /* SKL_COLL */
"1" = "no"
"2" = "sì"
;
VALUE $P2P245F /* P2P_ACC */
"1" = "no"
"2" = "sì"
;
VALUE $P2P246F /* P2P_ACCALT */
"3" = "no"
"4" = "sì"
;
VALUE $P2P247F /* P2P_TRA */
"1" = "no"
"2" = "sì"
;
VALUE $P2P248F /* P2P_TRALT */
"3" = "no"
"4" = "sì"
;
VALUE $P2P249F /* P2P_FOOD */
"1" = "no"
"2" = "sì"
;
VALUE $P2P250F /* P2P_WRK */
"1" = "no"
"2" = "sì"
;
VALUE $COS251F /* COSINT9a */
"1" = "no"
"2" = "sì"
;
VALUE $COS252F /* COSINT9b */
"3" = "no"
"4" = "sì"
;
VALUE $COS253F /* COSINT9c */
"5" = "no"
"6" = "sì"
;
VALUE $PR_254F /* PR_UP */
"1" = "no"
"2" = "sì"
;
VALUE $PR_255F /* PR_SM */
"3" = "no"
"4" = "sì"
;
VALUE $PR_256F /* PR_ST */
"5" = "no"
"6" = "sì"
;
VALUE $PR_257F /* PR_CARD */
"7" = "no"
"8" = "sì"
;
VALUE $PR_258F /* PR_COD */
"1" = "no"
"2" = "sì"
;
VALUE $PR_259F /* PR_PIN */
"3" = "no"
"4" = "sì"
;
VALUE $PR_260F /* PR_ALT */
"5" = "no"
"6" = "sì"
;
VALUE $INT261F /* INTUSO1 */
"1" = "no"
"2" = "sì, negli ultimi 3 mesi"
"3" = "sì, da 3 mesi a 1 anno fa"
;
VALUE $INT262F /* INTUSO2 */
"1" = "no"
"2" = "sì, negli ultimi 3 mesi"
"3" = "sì, da 3 mesi a 1 anno fa"
;
VALUE $INT263F /* INTUSO3 */
"1" = "no"
"2" = "sì negli ultimi 3 mesi"
"3" = "sì da 3 mesi a 1 anno fa"
;
VALUE $INT264F /* INTCOM */
"1" = "sì, negli ultimi 3 mesi"
"2" = "sì, da 3 mesi a 1 anno fa"
"3" = "sì, più di 1 anno fa"
"4" = "mai"
;
VALUE $NOR265F /* NORDINI */
"1" = "1-2 volte"
"2" = "3-5 volte"
"3" = "6-10 volte"
"4" = "11 o più volte"
"5" = "Non so"
;
VALUE $SPI266F /* SPINTCOM */
"1" = "Meno di 50 euro"
"2" = "Da 50 a meno di 100 euro"
"3" = "Da 100 a meno di 500 euro"
"4" = "Da 500 a meno di 1.000 euro"
"5" = "1.000 euro o più"
"6" = "Non so"
;
VALUE $COS267F /* COSINT1 */
"01" = "presente"
;
VALUE $COS268F /* COSINT2 */
"02" = "presente"
;
VALUE $COS269F /* COSINT19 */
"03" = "presente"
;
VALUE $COS270F /* COSINT5 */
"04" = "presente"
;
VALUE $COS271F /* COSINT3 */
"05" = "presente"
;
VALUE $COS272F /* COSINT22A */
"06" = "presente"
;
VALUE $COS273F /* COSINT22B */
"07" = "presente"
;
VALUE $COS274F /* COSINT21 */
"08" = "presente"
;
VALUE $COS275F /* COSINT15 */
"09" = "presente"
;
VALUE $COS276F /* COSINT16 */
"10" = "presente"
;
VALUE $COS277F /* COSINT7 */
"11" = "presente"
;
VALUE $COS278F /* COSINT8 */
"12" = "presente"
;
VALUE $COS279F /* COSINT20 */
"13" = "presente"
;
VALUE $COS280F /* COSINT18 */
"14" = "presente"
;
VALUE $COS281F /* COSINT17 */
"15" = "presente"
;
VALUE $COS282F /* COSINT11 */
"16" = "presente"
;
VALUE $COS283F /* COSINT12 */
"17" = "presente"
;
VALUE $COS284F /* COSINT14 */
"18" = "presente"
;
VALUE $VEN285F /* VENDI1 */
"1" = "no"
"2" = "sì"
;
VALUE $VEN286F /* VENDI2 */
"3" = "no"
"4" = "sì"
;
VALUE $VEN287F /* VENDI3 */
"5" = "no"
"6" = "sì"
;
VALUE $VEN288F /* VENDI4 */
"7" = "no"
"8" = "sì"
;
VALUE $CT_289F /* CT_WORK */
"1" = "presente"
;
VALUE $MAC290F /* MAC_WORK */
"2" = "presente"
;
VALUE $NO_291F /* NO_ICTW */
"3" = "presente"
;
VALUE $WRK292F /* WRK_EMA */
"1" = "no"
"2" = "sì"
;
VALUE $WRK293F /* WRK_DOC */
"3" = "no"
"4" = "sì"
;
VALUE $WRK294F /* WRK_SM */
"5" = "no"
"6" = "sì"
;
VALUE $WRK295F /* WRK_INC */
"7" = "no"
"8" = "sì"
;
VALUE $WRK296F /* WRK_SOF */
"1" = "no"
"2" = "sì"
;
VALUE $WRK297F /* WRK_IT */
"3" = "no"
"4" = "sì"
;
VALUE $WRK298F /* WRK_CAMB */
"1" = "no"
"2" = "sì"
;
VALUE $WRK299F /* WRK_NS */
"1" = "no"
"2" = "sì"
;
VALUE $GIU300F /* GIUD_SKL */
"1" = "avrei bisogno di ulteriore formazione per svolgere al meglio il mio lavoro"
"2" = "le mie competenze sono adeguate al lavoro che svolgo"
"3" = "ho le compentenze necessarie per far fronte ad incarichi/mansioni più impegnative"
;
VALUE $TEA301F /* TEATRO */
"1" = "mai"
"2" = "1-3 volte"
"3" = "4-6 volte"
"4" = "7-12 volte"
"5" = "più di 12 volte"
;
VALUE $CIN302F /* CINE */
"1" = "mai"
"2" = "1-3 volte"
"3" = "4-6 volte"
"4" = "7-12 volte"
"5" = "più di 12 volte"
;
VALUE $MUS303F /* MUSEO */
"1" = "mai"
"2" = "1-3 volte"
"3" = "4-6 volte"
"4" = "7-12 volte"
"5" = "più di 12 volte"
;
VALUE $MUS304F /* MUSIC */
"1" = "mai"
"2" = "1-3 volte"
"3" = "4-6 volte"
"4" = "7-12 volte"
"5" = "più di 12 volte"
;
VALUE $ACM305F /* ACMUS */
"1" = "mai"
"2" = "1-3 volte"
"3" = "4-6 volte"
"4" = "7-12 volte"
"5" = "più di 12 volte"
;
VALUE $SPS306F /* SPSPO */
"1" = "mai"
"2" = "1-3 volte"
"3" = "4-6 volte"
"4" = "7-12 volte"
"5" = "più di 12 volte"
;
VALUE $DIS307F /* DISCO */
"1" = "mai"
"2" = "1-3 volte"
"3" = "4-6 volte"
"4" = "7-12 volte"
"5" = "più di 12 volte"
;
VALUE $MON308F /* MONUM */
"1" = "mai"
"2" = "1-3 volte"
"3" = "4-6 volte"
"4" = "7-12 volte"
"5" = "più di 12 volte"
;
VALUE $LQU309F /* LQUOT */
"1" = "no"
"2" = "sì, 1 o 2 giorni"
"3" = "sì, 3 o 4 giorni"
"4" = "sì, 5 o 6 giorni"
"5" = "sì, tutti i giorni"
;
VALUE $LIB310F /* LIBRI */
"1" = "no"
"2" = "sì"
;
VALUE NLI311F /* NLIBRIM */
01= "01"
02= "02"
03= "03"
04= "04"
05= "05"
06= "06"
07= "07"
08= "08"
09= "09"
10= "10"
11= "11"
12= "12"
13= "13"
14= "14"
15= "15"
16= "16"
17= "17"
18= "18"
19= "19"
20= "20"
21= "21-25"
22= "26-30"
23= "31-40"
24= "41-50"
25= "51 e piu'"
;
VALUE NLI312F /* NLIBRI_CARM */
01= "01"
02= "02"
03= "03"
04= "04"
05= "05"
06= "06"
07= "07"
08= "08"
09= "09"
10= "10"
11= "11"
12= "12"
13= "13"
14= "14"
15= "15"
16= "16"
17= "17"
18= "18"
19= "19"
20= "20"
21= "21-25"
22= "26-30"
23= "31-40"
24= "41-50"
25= "51 e piu'"
;
VALUE NLE313F /* NLEBOOM */
00= "00"
01= "01"
02= "02"
03= "03"
04= "04"
05= "05"
06= "06"
07= "07"
08= "08"
09= "09"
10= "10"
11= "11"
12= "12"
13= "13"
14= "14"
15= "15"
16= "16"
17= "17"
18= "18"
19= "19"
20= "20"
21= "21-25"
22= "26-30"
23= "31-40"
24= "41-50"
25= "51 e piu'"
;
VALUE NLA314F /* NLAUDIOM */
00= "00"
01= "01"
02= "02"
03= "03"
04= "4 e piu'"
;
VALUE $RIV315F /* RIVSET */
"1" = "no"
"2" = "sì, una o più volte a settimana"
"3" = "sì, qualche volta al mese"
"4" = "sì, più raramente"
;
VALUE $NOS316F /* NOSETT */
"1" = "no"
"2" = "sì"
;
VALUE $CHI317F /* CHIES */
"1" = "tutti i giorni"
"2" = "qualche volta alla settimana"
"3" = "una volta alla settimana"
"4" = "qualche volta al mese (meno di 4 volte)"
"5" = "qualche volta l'anno"
"6" = "mai"
;
VALUE $SIT318F /* SITEC */
"1" = "molto"
"2" = "abbastanza"
"3" = "poco"
"4" = "per niente"
;
VALUE $SAL319F /* SALUT */
"1" = "molto"
"2" = "abbastanza"
"3" = "poco"
"4" = "per niente"
;
VALUE $REL320F /* RELFAM */
"1" = "molto"
"2" = "abbastanza"
"3" = "poco"
"4" = "per niente"
;
VALUE $REL321F /* RELAM */
"1" = "molto"
"2" = "abbastanza"
"3" = "poco"
"4" = "per niente"
;
VALUE $TEM322F /* TEMLIB */
"1" = "molto"
"2" = "abbastanza"
"3" = "poco"
"4" = "per niente"
;
VALUE $AMB323F /* AMBIENTE */
"1" = "molto"
"2" = "abbastanza"
"3" = "poco"
"4" = "per niente"
;
VALUE $PAE324F /* PAESAGGIO */
"1" = "No"
"2" = "Sì"
;
VALUE $SOD325F /* SODLAV2 */
"1" = "molto"
"2" = "abbastanza"
"3" = "poco"
"4" = "per niente"
;
VALUE $POL326F /* POLIT */
"1" = "tutti i giorni"
"2" = "qualche volta alla settimana"
"3" = "una volta alla settimana"
"4" = "qualche volta al mese"
"5" = "qualche volta l'anno"
"6" = "mai"
;
VALUE $PPA327F /* PPAPO */
"1" = "no"
"2" = "sì"
;
VALUE $PSI328F /* PSIND */
"3" = "no"
"4" = "sì"
;
VALUE $PGR329F /* PGRVO */
"5" = "no"
"6" = "sì"
;
VALUE $PAE330F /* PAECO */
"1" = "no"
"2" = "sì"
;
VALUE $PCU331F /* PCULT */
"3" = "no"
"4" = "sì"
;
VALUE $PAS332F /* PASPRO */
"5" = "no"
"6" = "sì"
;
VALUE $COM333F /* COMIZ */
"1" = "no"
"2" = "sì"
;
VALUE $COR334F /* CORTEI */
"3" = "no"
"4" = "sì"
;
VALUE $DIB335F /* DIBPO */
"5" = "no"
"6" = "sì"
;
VALUE $FIN336F /* FINPA */
"7" = "no"
"8" = "sì"
;
VALUE $FIN337F /* FINAS */
"1" = "no"
"2" = "sì"
;
VALUE $VOL338F /* VOLON */
"3" = "no"
"4" = "sì"
;
VALUE $ATG339F /* ATGRA */
"5" = "no"
"6" = "sì"
;
VALUE $VOL340F /* VOLPA */
"7" = "no"
"8" = "sì"
;
VALUE $VOL341F /* VOLSI */
"1" = "no"
"2" = "sì"
;
VALUE $POL342F /* POLITI */
"1" = "tutti i giorni"
"2" = "qualche volta alla settimana"
"3" = "una volta alla settimana"
"4" = "qualche volta al mese"
"5" = "qualche volta l'anno"
"6" = "mai"
;
VALUE $PRA343F /* PRADIO */
"01" = "presente"
;
VALUE $PTE344F /* PTELEV */
"02" = "presente"
;
VALUE $PQU345F /* PQUOT */
"03" = "presente"
;
VALUE $PSE346F /* PSETT */
"04" = "presente"
;
VALUE $PAR347F /* PARIV */
"05" = "presente"
;
VALUE $PAM348F /* PAMICI */
"06" = "presente"
;
VALUE $PPA349F /* PPAREN */
"07" = "presente"
;
VALUE $PCO350F /* PCONOS */
"08" = "presente"
;
VALUE $PCO351F /* PCOLAV */
"09" = "presente"
;
VALUE $ORG352F /* ORGPOL */
"10" = "presente"
;
VALUE $ORG353F /* ORGSIN */
"11" = "presente"
;
VALUE $ALT354F /* ALTPOL */
"12" = "presente"
;
VALUE $PWE355F /* PWEB */
"1" = "no"
"2" = "sì"
;
VALUE $PWE356F /* PWEBM1 */
"1" = "presente"
;
VALUE $PWE357F /* PWEBM2 */
"2" = "presente"
;
VALUE $PWE358F /* PWEBM3 */
"3" = "presente"
;
VALUE $PWE359F /* PWEBM4 */
"4" = "presente"
;
VALUE $PWE360F /* PWEBM5 */
"5" = "presente"
;
VALUE $PWE361F /* PWEBM6 */
"6" = "presente"
;
VALUE $NPO362F /* NPOLI */
"1" = "presente"
;
VALUE $NTP363F /* NTPOLI */
"2" = "presente"
;
VALUE $POL364F /* POLCOM */
"3" = "presente"
;
VALUE $SFI365F /* SFIPOL */
"4" = "presente"
;
VALUE $NAL366F /* NALTPO */
"5" = "presente"
;
VALUE $UFF367F /* UFFAN */
"1" = "no"
"2" = "sì"
;
VALUE $TUF368F /* TUFAN */
"1" = "fino a 10 minuti"
"2" = "da 11 a 20 minuti"
"3" = "da 21 a 30 minuti"
"4" = "da 31 a 45 minuti"
"5" = "piu di 45 minuti"
;
VALUE $GOR369F /* GORAR */
"1" = "molto comodo"
"2" = "abbastanza comodo"
"3" = "poco comodo"
"4" = "per niente comodo"
"5" = "non so"
;
VALUE $COR370F /* CORAR */
"1" = "l'orario va bene così com'è"
"2" = "orario continuato fino alle 16/17 almeno in alcuni giorni"
"3" = "due aperture (mattina e pomeriggio) dal lunedì al venerdì"
"4" = "possibilità di lunga apertura (es. 8/20) in alcuni periodi fissi (es. 1 volta alla settimana)"
"5" = "altro orario"
"6" = "mi è indifferente"
"7" = "non so"
;
VALUE $AUT371F /* AUTOCE */
"1" = "no"
"2" = "sì"
;
VALUE $CAN372F /* CANAG */
"01" = "no"
"02" = "sì, rivolgendomi direttamente all'ufficio competente"
"03" = "sì, rivolgendomi ad agenzia o privati"
"23" = "sì, rivolgendomi sia all'ufficio competente sia ad agenzia o privati"
;
VALUE $PRA373F /* PRAUT */
"01" = "no"
"02" = "sì, rivolgendomi direttamente all'ufficio competente"
"03" = "sì, rivolgendomi ad agenzia o privati"
"23" = "sì, rivolgendomi sia all'ufficio competente sia ad agenzia o privati"
;
VALUE $CER374F /* CERSC */
"01" = "no"
"02" = "sì, rivolgendomi direttamente all'ufficio competente"
"03" = "sì, rivolgendomi ad agenzia o privati"
"23" = "sì, rivolgendomi sia all'ufficio competente sia ad agenzia o privati"
;
VALUE $CAT375F /* CATAS */
"01" = "no"
"02" = "sì, rivolgendomi direttamente all'ufficio competente"
"03" = "sì, rivolgendomi ad agenzia o privati"
"23" = "sì, rivolgendomi sia all'ufficio competente sia ad agenzia o privati"
;
VALUE $CAL376F /* CALTRO */
"01" = "no"
"02" = "sì, rivolgendomi direttamente all'ufficio competente"
"03" = "sì, rivolgendomi ad agenzia o privati"
"23" = "sì, rivolgendomi sia all'ufficio competente sia ad agenzia o privati"
;
VALUE $USO377F /* USOSS */
"1" = "no"
"2" = "sì"
;
VALUE $TEM378F /* TEMSS */
"1" = "fino a 10 minuti"
"2" = "da 11 a 20 minuti"
"3" = "da 21 a 30 minuti"
"4" = "da 31 a 45 minuti"
"5" = "più di 45 minuti"
;
VALUE $GOU379F /* GOUSL */
"1" = "molto comodo"
"2" = "abbastanza comodo"
"3" = "poco comodo"
"4" = "per niente comodo"
"5" = "non so"
;
VALUE $COU380F /* COUSL */
"1" = "l'orario va bene così com'è"
"2" = "orario continuato fino alle 16/17 almeno in alcuni giorni"
"3" = "due aperture (mattina e pomeriggio) dal lunedì al venerdì"
"4" = "possibilità di lunga apertura (es. 8/20) in alcuni periodi fissi (es. 1 volta alla settimana)"
"5" = "altro orario"
"6" = "mi è indifferente"
"7" = "non so"
;
VALUE $UFF381F /* UFFPOS */
"1" = "no"
"2" = "sì"
;
VALUE $RAC382F /* RACCO */
"1" = "una o più volte al mese"
"2" = "una o più volte ogni due mesi"
"3" = "qualche volta l'anno"
"4" = "mai"
;
VALUE $VAG383F /* VAGLIA */
"1" = "una o più volte al mese"
"2" = "una o più volte ogni due mesi"
"3" = "qualche volta l'anno"
"4" = "mai"
;
VALUE $VCO384F /* VCOC */
"1" = "una o più volte al mese"
"2" = "una o più volte ogni due mesi"
"3" = "qualche volta l'anno"
"4" = "mai"
;
VALUE $RPE385F /* RPENS */
"1" = "una o più volte al mese"
"2" = "una o più volte ogni due mesi"
"3" = "qualche volta l'anno"
"4" = "mai"
;
VALUE $RPA386F /* RPARA */
"1" = "una o più volte al mese"
"2" = "una o più volte ogni due mesi"
"3" = "qualche volta l'anno"
"4" = "mai"
;
VALUE $TRA387F /* TRACC */
"1" = "fino a 10 minuti"
"2" = "da 11 a 20 minuti"
"3" = "da 21 a 30 minuti"
"4" = "da 31 a 45 minuti"
"5" = "più di 45 minuti"
;
VALUE $TVA388F /* TVAGL */
"1" = "fino a 10 minuti"
"2" = "da 11 a 20 minuti"
"3" = "da 21 a 30 minuti"
"4" = "da 31 a 45 minuti"
"5" = "più di 45 minuti"
;
VALUE $TCC389F /* TCCP */
"1" = "fino a 10 minuti"
"2" = "da 11 a 20 minuti"
"3" = "da 21 a 30 minuti"
"4" = "da 31 a 45 minuti"
"5" = "più di 45 minuti"
;
VALUE $TRP390F /* TRPEN */
"1" = "fino a 10 minuti"
"2" = "da 11 a 20 minuti"
"3" = "da 21 a 30 minuti"
"4" = "da 31 a 45 minuti"
"5" = "più di 45 minuti"
;
VALUE $TPA391F /* TPARA */
"1" = "fino a 10 minuti"
"2" = "da 11 a 20 minuti"
"3" = "da 21 a 30 minuti"
"4" = "da 31 a 45 minuti"
"5" = "più di 45 minuti"
;
VALUE $GOS392F /* GOSPO */
"1" = "molto comodo"
"2" = "abbastanza comodo"
"3" = "poco comodo"
"4" = "per niente comodo"
"5" = "non so"
;
VALUE $COS393F /* COSPO */
"1" = "l'orario va bene così com'è"
"2" = "orario continuato fino alle 16/17 almeno in alcuni giorni"
"3" = "due aperture (mattina e pomeriggio) dal lunedì al venerdì"
"4" = "possibilità di lunga apertura (es. 8/20) in alcuni periodi fissi (es. 1 volta alla settimana)"
"5" = "altro orario"
"6" = "mi è indifferente"
"7" = "non so"
;
VALUE $BAN394F /* BANCA */
"1" = "no"
"2" = "sì"
;
VALUE $TAB395F /* TABAN */
"1" = "fino a 10 minuti"
"2" = "da 11 a 20 minuti"
"3" = "da 21 a 30 minuti"
"4" = "da 31 a 45 minuti"
"5" = "piu di 45 minuti"
;
VALUE $BAN396F /* BANCM */
"1" = "no"
"2" = "sì"
;
VALUE $CCR397F /* CCRED */
"1" = "no"
"2" = "sì"
;
VALUE $NCC398F /* NCCREDM */
"01" = "1"
"02" = "2"
"03" = "3"
"04" = "4 e piu'"
;
VALUE $USO399F /* USOTRAM */
"1" = "tutti i giorni"
"2" = "qualche volta alla settimana"
"3" = "qualche volta al mese"
"4" = "qualche volta l'anno"
"5" = "mai"
"6" = "non esiste il servizio"
;
VALUE $FCO400F /* FCORS */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $PUN401F /* PUNT */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $POS402F /* POSSE */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $VEL403F /* VELCO */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $PUL404F /* PULIZ */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $COM405F /* COMOF */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $COL406F /* COLLEG */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $COM407F /* COMOR */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $CPS408F /* CPSBI */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $USO410F /* USOPUL */
"1" = "tutti i giorni"
"2" = "qualche volta alla settimana"
"3" = "qualche volta al mese"
"4" = "qualche volta l'anno"
"5" = "mai"
;
VALUE $FRC411F /* FRCMT */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $PUN412F /* PUNMT */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $SED413F /* SEDMT */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $VEL414F /* VELMT */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $PUL415F /* PULMT */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $ATT416F /* ATTMT */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $COL417F /* COLCO */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $ORA418F /* ORAMT */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $CBM419F /* CBMT */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $INF420F /* INFMT */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $UST422F /* USTRE */
"1" = "tutti i giorni"
"2" = "qualche volta alla settimana"
"3" = "qualche volta al mese"
"4" = "qualche volta l'anno"
"5" = "mai"
;
VALUE $FRT423F /* FRTRE */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $PUT424F /* PUTRE */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $PST425F /* PSTRE */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $VET426F /* VETRE */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $PUL427F /* PULSTR */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $COM428F /* COMAT */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $COL429F /* COLCOM */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $COM430F /* COMORA */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $COB431F /* COBIG */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $INF432F /* INFTR */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $USO434F /* USOAUT */
"1" = "tutti i giorni"
"2" = "qualche volta alla settimana"
"3" = "qualche volta al mese"
"4" = "qualche volta l'anno"
"5" = "mai"
;
VALUE $SER435F /* SERRA */
"01" = "presente"
;
VALUE $EST436F /* ESTINZ */
"02" = "presente"
;
VALUE $CAM437F /* CAMCLI */
"03" = "presente"
;
VALUE $SMA438F /* SMARIF */
"04" = "presente"
;
VALUE $AMR439F /* AMRUM */
"05" = "presente"
;
VALUE $IAR440F /* IARIA */
"06" = "presente"
;
VALUE $INQ441F /* INQSU */
"07" = "presente"
;
VALUE $INQ442F /* INQFIU */
"08" = "presente"
;
VALUE $DIS443F /* DISDR */
"09" = "presente"
;
VALUE $CAT444F /* CATASTR */
"10" = "presente"
;
VALUE $FOR445F /* FORES2 */
"11" = "presente"
;
VALUE $INQ446F /* INQELET2 */
"12" = "presente"
;
VALUE $PAE447F /* PAESAG2 */
"13" = "presente"
;
VALUE $ESR448F /* ESRISO2 */
"14" = "presente"
;
VALUE $ALT449F /* ALTAMB2 */
"15" = "presente"
;
VALUE $GCA450F /* GCARTE */
"1" = "abitualmente"
"2" = "qualche volta"
"3" = "raramente"
"4" = "mai"
;
VALUE $DOP451F /* DOPFIL */
"1" = "abitualmente"
"2" = "qualche volta"
"3" = "raramente"
"4" = "mai"
;
VALUE $ARU452F /* ARUMOR */
"1" = "abitualmente"
"2" = "qualche volta"
"3" = "raramente"
"4" = "mai"
;
VALUE $FUT454F /* FUTUASP */
"1" = "migliorerà"
"2" = "resterà la stessa"
"3" = "peggiorerà"
"4" = "non so"
;
VALUE $FID455F /* FIDUCIA */
"1" = "gran parte della gente è degna di fiducia"
"2" = "bisogna stare molto attenti"
;
VALUE $FID456F /* FIDU1 */
"1" = "molto probabile"
"2" = "abbastanza probabile"
"3" = "poco probabile"
"4" = "per niente probabile"
;
VALUE $FID457F /* FIDU2 */
"1" = "molto probabile"
"2" = "abbastanza probabile"
"3" = "poco probabile"
"4" = "per niente probabile"
;
VALUE $FID458F /* FIDU3 */
"1" = "molto probabile"
"2" = "abbastanza probabile"
"3" = "poco probabile"
"4" = "per niente probabile"
;
VALUE $BMI470F /* BMIMIN */
"1" = "Sottopeso"
"2" = "Normopeso"
"3" = "Sovrappeso"
"4" = "Obeso"
;
VALUE $SEN471F /* SENELE */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $GCO472F /* GCONT */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $GAS473F /* GASBAL */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $GDI474F /* GDISPL */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $GCB475F /* GCBOL */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $GIN476F /* GINF */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $GAS477F /* GAS5 */
"1" = "l'abitazione è allacciata alla rete di distribuzione di gas naturale (metano)"
"2" = "l'abitazione è allacciata alla rete di distribuzione di gas diverso da gas metano (gpl)"
"3" = "il gas viene acquistato in bombole"
"4" = "è istallato un bombolone all'esterno con rifornimento periodico"
"5" = "l'abitazione non dispone nè di gas, nè di bombola, nè di bombolone esterno"
;
VALUE $SGA478F /* SGAS */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $GAS479F /* GASPR2 */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $FLG480F /* FLGAS */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $COM481F /* COMBOL */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $SER482F /* SERINF */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $SIC483F /* SICURET */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $SCE484F /* SCEFO2 */
"1" = "no"
"2" = "sì"
;
VALUE $CAM485F /* CAMFO2 */
"1" = "no, non ha mai cambiato"
"2" = "sì, il fornitore di energia elettrica"
"3" = "sì, il fornitore di gas"
"4" = "sì, entrambi"
;
VALUE $NMO486F /* NMOTNFE1 */
"1" = "presente"
;
VALUE $NMO487F /* NMOTNFE2 */
"3" = "presente"
;
VALUE $NMO488F /* NMOTNFE3 */
"5" = "presente"
;
VALUE $NMO489F /* NMOTNFE4 */
"7" = "presente"
;
VALUE $NMO490F /* NMOTNFE5 */
"1" = "presente"
;
VALUE $NMO491F /* NMOTNFG1 */
"2" = "presente"
;
VALUE $NMO492F /* NMOTNFG2 */
"4" = "presente"
;
VALUE $NMO493F /* NMOTNFG3 */
"6" = "presente"
;
VALUE $NMO494F /* NMOTNFG4 */
"8" = "presente"
;
VALUE $NMO495F /* NMOTNFG5 */
"2" = "presente"
;
VALUE $CAL496F /* CALLELGA */
"1" = "no"
"2" = "sì, solo dell'azienda fornitrice di energia elettrica"
"3" = "sì, solo dell'azienda fornitrice del gas"
"4" = "sì, di entrambe"
;
VALUE $SOD497F /* SODCALL */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $PRO498F /* PROINT */
"1" = "no"
"2" = "sì, il numero per i guasti elettrici"
"3" = "sì, il numero per il pronto intervento gas"
"4" = "sì, entrambi"
;
VALUE $SOD499F /* SODINT */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $SPO500F /* SPORCO */
"1" = "molto"
"2" = "abbastanza"
"3" = "poco"
"4" = "per niente"
"5" = "non so"
;
VALUE $PAR501F /* PARCH */
"1" = "molto"
"2" = "abbastanza"
"3" = "poco"
"4" = "per niente"
"5" = "non so"
;
VALUE $COL502F /* COLMP */
"1" = "molto"
"2" = "abbastanza"
"3" = "poco"
"4" = "per niente"
"5" = "non so"
;
VALUE $TRA503F /* TRAF */
"1" = "molto"
"2" = "abbastanza"
"3" = "poco"
"4" = "per niente"
"5" = "non so"
;
VALUE $INQ504F /* INQAR */
"1" = "molto"
"2" = "abbastanza"
"3" = "poco"
"4" = "per niente"
"5" = "non so"
;
VALUE $RUM505F /* RUMORE */
"1" = "molto"
"2" = "abbastanza"
"3" = "poco"
"4" = "per niente"
"5" = "non so"
;
VALUE $CRI506F /* CRIM */
"1" = "molto"
"2" = "abbastanza"
"3" = "poco"
"4" = "per niente"
"5" = "non so"
;
VALUE $ODS507F /* ODSGR */
"1" = "molto"
"2" = "abbastanza"
"3" = "poco"
"4" = "per niente"
"5" = "non so"
;
VALUE $ILL508F /* ILLSTR */
"1" = "molto"
"2" = "abbastanza"
"3" = "poco"
"4" = "per niente"
"5" = "non so"
;
VALUE $CON509F /* CONPAV */
"1" = "molto"
"2" = "abbastanza"
"3" = "poco"
"4" = "per niente"
"5" = "non so"
;
VALUE $PAR510F /* PARCHI */
"1" = "no"
"2" = "sì"
;
VALUE $TER512F /* TERRAZ */
"1" = "no"
"2" = "sì"
;
VALUE $GAR513F /* GARDEN */
"3" = "no"
"4" = "sì"
;
VALUE $TEL514F /* TELEF */
"1" = "no"
"2" = "sì"
;
VALUE $NEL515F /* NELENC */
"1" = "no"
"2" = "sì"
;
VALUE $RIS516F /* RISCAL */
"1" = "no"
"2" = "sì"
;
VALUE $TRI517F /* TRISC */
"1" = "centralizzato"
"2" = "autonomo"
"3" = "solo apparecchi singoli (compresi camini e stufe)"
;
VALUE $REA518F /* REACQ1 */
"1" = "presente"
;
VALUE $REA519F /* REACQ2 */
"2" = "presente"
;
VALUE $REA520F /* REACQ3 */
"3" = "presente"
;
VALUE $REA521F /* REACQ4 */
"4" = "presente"
;
VALUE $REA522F /* REACQ5 */
"5" = "presente"
;
VALUE $SOD523F /* SODACQUA */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $AGF524F /* AGFORN */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $AGP525F /* AGPRESS */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $AGO526F /* AGODOR */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $AGL527F /* AGLETTUR */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $AGF528F /* AGFATTUR */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $AGB529F /* AGBOLLET */
"1" = "molto soddisfatto"
"2" = "abbastanza soddisfatto"
"3" = "poco soddisfatto"
"4" = "per niente soddisfatto"
;
VALUE $FOG530F /* FOGNA */
"1" = "no"
"2" = "sì"
;
VALUE $SPE531F /* SPEAB */
"1" = "no"
"2" = "sì"
;
VALUE $ABI532F /* ABIPIC */
"3" = "no"
"4" = "sì"
;
VALUE $ABL533F /* ABLONF */
"5" = "no"
"6" = "sì"
;
VALUE $ACQ534F /* ACQUA */
"7" = "no"
"8" = "sì"
;
VALUE $ABI535F /* ABICC */
"1" = "no"
"2" = "sì"
;
VALUE $ERA536F /* ERACQ */
"1" = "sporadicamente"
"2" = "solo nel periodo estivo"
"3" = "durante tutto l'anno"
"4" = "altro"
;
VALUE $SIA537F /* SIACQ */
"1" = "presente"
;
VALUE $ACQ538F /* ACQBRU */
"2" = "presente"
;
VALUE $NOA539F /* NOACQ */
"3" = "presente"
;
VALUE $GOD540F /* GODAB */
"1" = "affitto o subaffitto"
"2" = "proprietà"
"3" = "usufrutto"
"4" = "titolo gratuito"
"5" = "altro"
;
VALUE $FAR541F /* FARMA */
"1" = "nessuna difficoltà"
"2" = "un po' di difficoltà"
"3" = "molta difficoltà"
"4" = "non so"
;
VALUE $PRS542F /* PRSOC */
"1" = "nessuna difficoltà"
"2" = "un po' di difficoltà"
"3" = "molta difficoltà"
"4" = "non so"
;
VALUE $UFF543F /* UFFPO */
"1" = "nessuna difficoltà"
"2" = "un po' di difficoltà"
"3" = "molta difficoltà"
"4" = "non so"
;
VALUE $POL544F /* POLICE */
"1" = "nessuna difficoltà"
"2" = "un po' di difficoltà"
"3" = "molta difficoltà"
"4" = "non so"
;
VALUE $UFF545F /* UFFCOM */
"1" = "nessuna difficoltà"
"2" = "un po' di difficoltà"
"3" = "molta difficoltà"
"4" = "non so"
;
VALUE $NID546F /* NIDO */
"1" = "nessuna difficoltà"
"2" = "un po' di difficoltà"
"3" = "molta difficoltà"
"4" = "non so"
;
VALUE $SMA547F /* SMATER */
"1" = "nessuna difficoltà"
"2" = "un po' di difficoltà"
"3" = "molta difficoltà"
"4" = "non so"
;
VALUE $SEL548F /* SELEM */
"1" = "nessuna difficoltà"
"2" = "un po' di difficoltà"
"3" = "molta difficoltà"
"4" = "non so"
;
VALUE $SMI549F /* SMINF */
"1" = "nessuna difficoltà"
"2" = "un po' di difficoltà"
"3" = "molta difficoltà"
"4" = "non so"
;
VALUE $MER550F /* MERCAT */
"1" = "nessuna difficoltà"
"2" = "un po' di difficoltà"
"3" = "molta difficoltà"
"4" = "non so"
;
VALUE $SME551F /* SMERC */
"1" = "nessuna difficoltà"
"2" = "un po' di difficoltà"
"3" = "molta difficoltà"
"4" = "non so"
;
VALUE $CAS552F /* CASS */
"1" = "nessuna difficoltà"
"2" = "un po' di difficoltà"
"3" = "molta difficoltà"
"4" = "non so"
;
VALUE $SEG553F /* SEGAS */
"1" = "nessuna difficoltà"
"2" = "un po' di difficoltà"
"3" = "molta difficoltà"
"4" = "non so"
;
VALUE $SLU554F /* SLUCE */
"1" = "nessuna difficoltà"
"2" = "un po' di difficoltà"
"3" = "molta difficoltà"
"4" = "non so"
;
VALUE $CRA555F /* CRARIF */
"1" = "elevato"
"2" = "adeguato"
"3" = "basso"
"4" = "non so"
;
VALUE $CER556F /* CERACQ */
"1" = "elevato"
"2" = "adeguato"
"3" = "basso"
"4" = "non so"
;
VALUE $CCA557F /* CCARTA */
"1" = "sì, e sono facilmente raggiungibili"
"2" = "sì, ma sono difficilmente raggiungibili"
"3" = "no"
"4" = "non so"
;
VALUE $CVE558F /* CVETRO */
"1" = "sì, e sono facilmente raggiungibili"
"2" = "sì, ma sono difficilmente raggiungibili"
"3" = "no"
"4" = "non so"
;
VALUE $CFA559F /* CFARM */
"1" = "sì, e sono facilmente raggiungibili"
"2" = "sì, ma sono difficilmente raggiungibili"
"3" = "no"
"4" = "non so"
;
VALUE $CBA560F /* CBAT */
"1" = "sì, e sono facilmente raggiungibili"
"2" = "sì, ma sono difficilmente raggiungibili"
"3" = "no"
"4" = "non so"
;
VALUE $CLA561F /* CLATAL */
"1" = "sì, e sono facilmente raggiungibili"
"2" = "sì, ma sono difficilmente raggiungibili"
"3" = "no"
"4" = "non so"
;
VALUE $CPL562F /* CPLAS */
"1" = "sì, e sono facilmente raggiungibili"
"2" = "sì, ma sono difficilmente raggiungibili"
"3" = "no"
"4" = "non so"
;
VALUE $CRO563F /* CRORG */
"1" = "sì, e sono facilmente raggiungibili"
"2" = "sì, ma sono difficilmente raggiungibili"
"3" = "no"
"4" = "non so"
;
VALUE $CTE564F /* CTESSILI */
"1" = "sì, e sono facilmente raggiungibili"
"2" = "sì, ma sono difficilmente raggiungibili"
"3" = "no"
"4" = "non so"
;
VALUE $CAL565F /* CALT */
"1" = "sì, e sono facilmente raggiungibili"
"2" = "sì, ma sono difficilmente raggiungibili"
"3" = "no"
"4" = "non so"
;
VALUE $POA566F /* POAPO */
"1" = "no"
"2" = "sì"
;
VALUE $R_C567F /* R_CARTA */
"1" = "cassonetti, sempre"
"2" = "cassonetti, qualche volta"
"3" = "porta a porta, sempre"
"4" = "porta a porta, qualche volta"
"5" = "no"
"24" = "cassonetti e porta a porta, qualche volta"
;
VALUE $R_V568F /* R_VETRO */
"1" = "cassonetti, sempre"
"2" = "cassonetti, qualche volta"
"3" = "porta a porta, sempre"
"4" = "porta a porta, qualche volta"
"5" = "no"
"24" = "cassonetti e porta a porta, qualche volta"
;
VALUE $R_F569F /* R_FARM */
"1" = "cassonetti, sempre"
"2" = "cassonetti, qualche volta"
"3" = "porta a porta, sempre"
"4" = "porta a porta, qualche volta"
"5" = "no"
"24" = "cassonetti e porta a porta, qualche volta"
;
VALUE $R_B570F /* R_BAT */
"1" = "cassonetti, sempre"
"2" = "cassonetti, qualche volta"
"3" = "porta a porta, sempre"
"4" = "porta a porta, qualche volta"
"5" = "no"
"24" = "cassonetti e porta a porta, qualche volta"
;
VALUE $R_L571F /* R_LATAL */
"1" = "cassonetti, sempre"
"2" = "cassonetti, qualche volta"
"3" = "porta a porta, sempre"
"4" = "porta a porta, qualche volta"
"5" = "no"
"24" = "cassonetti e porta a porta, qualche volta"
;
VALUE $R_P572F /* R_PLAS */
"1" = "cassonetti, sempre"
"2" = "cassonetti, qualche volta"
"3" = "porta a porta, sempre"
"4" = "porta a porta, qualche volta"
"5" = "no"
"24" = "cassonetti e porta a porta, qualche volta"
;
VALUE $R_R573F /* R_RORG */
"1" = "cassonetti, sempre"
"2" = "cassonetti, qualche volta"
"3" = "porta a porta, sempre"
"4" = "porta a porta, qualche volta"
"5" = "no"
"24" = "cassonetti e porta a porta, qualche volta"
;
VALUE $R_T574F /* R_TESSILI */
"1" = "cassonetti, sempre"
"2" = "cassonetti, qualche volta"
"3" = "porta a porta, sempre"
"4" = "porta a porta, qualche volta"
"5" = "no"
"24" = "cassonetti e porta a porta, qualche volta"
;
VALUE $R_A575F /* R_ALT */
"1" = "cassonetti, sempre"
"2" = "cassonetti, qualche volta"
"3" = "porta a porta, sempre"
"4" = "porta a porta, qualche volta"
"5" = "no"
"24" = "cassonetti e porta a porta, qualche volta"
;
VALUE $SOD576F /* SODPOAPO */
"1" = "molto soddisfatta"
"2" = "abbastanza soddisfatta"
"3" = "poco soddisfatta"
"4" = "per niente soddisfatta"
;
VALUE $NOS577F /* NOSPO1 */
"1" = "presente"
;
VALUE $NOS578F /* NOSPO7 */
"2" = "presente"
;
VALUE $NOS579F /* NOSPO2 */
"3" = "presente"
;
VALUE $NOS580F /* NOSPO3 */
"4" = "presente"
;
VALUE $NOS581F /* NOSPO4 */
"5" = "presente"
;
VALUE $NOS582F /* NOSPO5 */
"6" = "presente"
;
VALUE $NOS583F /* NOSPO8 */
"7" = "presente"
;
VALUE $NOS584F /* NOSPO6 */
"8" = "presente"
;
VALUE $ECO585F /* ECOSTAZ */
"1" = "no"
"2" = "sì"
"3" = "non so"
;
VALUE $USO586F /* USOECO2 */
"1" = "No"
"2" = "sì, negli ultimi 12 mesi"
"3" = "sì, più di 1 anno fa"
;
VALUE $ECO587F /* ECOCAR */
"01" = "presente"
;
VALUE $ECO588F /* ECOVET */
"02" = "presente"
;
VALUE $ECO589F /* ECOPLA */
"03" = "presente"
;
VALUE $ECO590F /* ECOPNE */
"04" = "presente"
;
VALUE $ECO591F /* ECOMET */
"05" = "presente"
;
VALUE $ECO592F /* ECOLEG */
"06" = "presente"
;
VALUE $ECO593F /* ECOFAR */
"07" = "presente"
;
VALUE $ECO594F /* ECOBAT */
"08" = "presente"
;
VALUE $ECO595F /* ECOING */
"09" = "presente"
;
VALUE $ECO596F /* ECOINE */
"10" = "presente"
;
VALUE $ECO597F /* ECOELE */
"11" = "presente"
;
VALUE $ECO598F /* ECOOLI */
"12" = "presente"
;
VALUE $ECO599F /* ECOINF */
"13" = "presente"
;
VALUE $ECO600F /* ECOPOT */
"14" = "presente"
;
VALUE $ECO601F /* ECOTESS */
"15" = "presente"
;
VALUE $ECO602F /* ECOALT */
"16" = "presente"
;
VALUE $NOE603F /* NOECO */
"1" = "Non ne abbiamo avuto bisogno"
"2" = "Sono troppo lontane dalla nostra abitazione"
"3" = "Non abbiamo un mezzo adeguato a trasportare questo tipo di rifiuti"
"4" = "Abbiamo utilizzato un servizio pubblico o privato a domicilio"
"5" = "Li abbiamo lasciati in appositi cassonetti"
"6" = "Altro"
;
VALUE $SPI604F /* SPIDIF1 */
"1" = "no"
"2" = "sì"
;
VALUE $SPI605F /* SPIDIF2 */
"3" = "no"
"4" = "sì"
;
VALUE $SPI606F /* SPIDIF3 */
"5" = "no"
"6" = "sì"
;
VALUE $SPI607F /* SPIDIF4 */
"7" = "no"
"8" = "sì"
;
VALUE $SPI608F /* SPIDIF5 */
"1" = "no"
"2" = "sì"
;
VALUE $SPI609F /* SPIDIF6 */
"3" = "no"
"4" = "sì"
;
VALUE $SPI610F /* SPIDIF7 */
"5" = "no"
"6" = "sì"
;
VALUE $SPI611F /* SPIDIF8 */
"7" = "no"
"8" = "sì"
;
VALUE $CAM612F /* CAMAB */
"1" = "no"
"2" = "sì"
;
VALUE $PCA613F /* PCAMAB */
"1" = "no"
"2" = "sì"
;
VALUE $ASS614F /* ASSCA */
"1" = "no"
"2" = "sì"
;
VALUE $COL615F /* COLFAGG */
"01" = "no"
"02" = "sì, italiano o sia italiano sia straniero o sì, straniero"
;
VALUE $BAB616F /* BABYSAGG */
"01" = "no"
"02" = "sì, italiano o sia italiano sia straniero o sì, straniero"
;
VALUE $ASS617F /* ASSANZAGG */
"01" = "no"
"02" = "sì, italiano o sia italiano sia straniero o sì, straniero"
;
VALUE $AVV621F /* AVVOC */
"1" = "no"
"2" = "sì"
;
VALUE $NOT622F /* NOTAIO */
"3" = "no"
"4" = "sì"
;
VALUE $COM623F /* COMMER */
"5" = "no"
"6" = "sì"
;
VALUE $NOM624F /* NOMOD */
"1" = "presente"
;
VALUE $COM625F /* COMFAM */
"2" = "presente"
;
VALUE $NON626F /* NONPAG */
"3" = "presente"
;
VALUE $PAG627F /* PAGAM */
"4" = "presente"
;
VALUE $PIN628F /* PINSER */
"1" = "sì, più volte nel corso dell'anno"
"2" = "sì, una volta"
"3" = "no"
;
VALUE $LAV629F /* LAVST */
"1" = "No"
"2" = "Sì"
;
VALUE $LAV631F /* LAVATR */
"3" = "No"
"4" = "Sì"
;
VALUE $VID633F /* VIDER */
"5" = "No"
"6" = "Sì"
;
VALUE $VID635F /* VIDEO */
"7" = "No"
"8" = "Sì"
;
VALUE $DVD637F /* DVD */
"1" = "No"
"2" = "Sì"
;
VALUE $HIF639F /* HIFI */
"3" = "No"
"4" = "Sì"
;
VALUE $SEG641F /* SEGTEL */
"5" = "No"
"6" = "Sì"
;
VALUE $NSE642F /* NSEGTM */
"1" = "1"
"2" = "2 e piu'"
;
VALUE $FAX643F /* FAX */
"7" = "No"
"8" = "Sì"
;
VALUE $TEL645F /* TELCOL */
"1" = "No"
"2" = "Sì"
;
VALUE $ANT647F /* ANTEPA */
"3" = "No"
"4" = "Sì"
;
VALUE $CLI649F /* CLIMAT */
"5" = "No"
"6" = "Sì"
;
VALUE $BIC651F /* BIC */
"7" = "No"
"8" = "Sì"
;
VALUE $MOT653F /* MOTOR */
"1" = "No"
"2" = "Sì"
;
VALUE $NMO654F /* NMOTORM */
"1" = "1"
"2" = "2"
"3" = "3"
"4" = "4 e piu'"
;
VALUE $AMO655F /* AMOTO */
"3" = "No"
"4" = "Sì"
;
VALUE $NMO656F /* NMOTOM */
"1" = "1"
"2" = "2"
"3" = "3"
"4" = "4 e piu'"
;
VALUE $ABB657F /* ABBTV */
"1" = "Sì, un abbonamento"
"2" = "Sì, una carta prepagata senza abbonamento"
"3" = "No"
;
VALUE $SMA658F /* SMARTV */
"1" = "no"
"2" = "sì"
;
VALUE $AUT659F /* AUTO */
"1" = "no"
"2" = "sì"
;
VALUE $NAU660F /* NAUTOM */
"1" = "1"
"2" = "2"
"3" = "3"
"4" = "4"
"5" = "5 e piu'"
;
VALUE $LIB661F /* LIBFAM */
"1" = "nessuno"
"2" = "da 1 a 10"
"3" = "da 11 a 25"
"4" = "da 26 a 50"
"5" = "da 51 a 100"
"6" = "da 101 a 200"
"7" = "da 201 a 400"
"8" = "oltre 400"
;
VALUE $TEL662F /* TELCEL */
"1" = "no"
"2" = "sì"
;
VALUE $TEL664F /* TELCIN */
"1" = "no"
"2" = "sì"
;
VALUE $PC665F /* PC */
"1" = "no"
"2" = "sì"
;
VALUE $MOD666F /* MODEM */
"1" = "no"
"2" = "sì"
;
VALUE $VGI667F /* VGIOC */
"3" = "no"
"4" = "sì"
;
VALUE $EBO669F /* EBOOK */
"5" = "no"
"6" = "sì"
;
VALUE $MP3671F /* MP3 */
"7" = "no"
"8" = "sì"
;
VALUE $FOT673F /* FOTODIG */
"1" = "no"
"2" = "sì"
;
VALUE $NAV675F /* NAVSAT */
"3" = "no"
"4" = "sì"
;
VALUE $AIN677F /* AINTERN */
"1" = "no"
"2" = "sì"
;
VALUE $CID678F /* CIDSLWIFI */
"1" = "presente"
;
VALUE $CIS679F /* CISFPAL */
"2" = "presente"
;
VALUE $CIS680F /* CISFMOD */
"3" = "presente"
;
VALUE $CIB681F /* CIBASTR */
"4" = "presente"
;
VALUE $MOT682F /* MOTNOAI1 */
"1" = "presente"
;
VALUE $MOT683F /* MOTNOAI3 */
"2" = "presente"
;
VALUE $MOT684F /* MOTNOAI4 */
"3" = "presente"
;
VALUE $MOT685F /* MOTNOAI5 */
"4" = "presente"
;
VALUE $MOT686F /* MOTNOAI6 */
"5" = "presente"
;
VALUE $MOT687F /* MOTNOAI8 */
"6" = "presente"
;
VALUE $MOT688F /* MOTNOAI10 */
"7" = "presente"
;
VALUE $MOT689F /* MOTNOAI9 */
"8" = "presente"
;
VALUE $SIT690F /* SITE */
"1" = "molto migliorata"
"2" = "un po' migliorata"
"3" = "rimasta più o meno la stessa"
"4" = "un po' peggiorata"
"5" = "molto peggiorata"
;
VALUE $RIS691F /* RISEC */
"1" = "ottime"
"2" = "adeguate"
"3" = "scarse"
"4" = "assolutamente insufficienti"
;
VALUE $BMI692F /* BMI */
"1" = "Sottopeso"
"2" = "Normopeso"
"3" = "Sovrappeso"
"4" = "Obeso"
;
format RELPAR $REL4F.;
format ETAM $ETA5F.;
format SESSO $SES6F.;
format STCIVM $STC7F.;
format STCPM $STC8F.;
format ISTRM $IST10F.;
format CONDM $CON11F.;
format LAVPAS $LAV12F.;
format POSIZM $POS13F.;
format ATECOM $ATE14F.;
format TIPNU2 $TIP15F.;
format RPNUC2 $RPN17F.;
format TIPFA2M $TIP18F.;
format REGMF $REG19F.;
format RIPMF $RIP20F.;
format DOMMF $DOM21F.;
format REDPR $RED23F.;
format CITT $CIT24F.;
format FRSCM $FRS25F.;
format MOTAS $MOT26F.;
format DOMRIF $DOM27F.;
format MEMFAM $MEM28F.;
format NIDLON $NID29F.;
format NODELE $NOD30F.;
format MALAT $MAL31F.;
format ABBAND $ABB32F.;
format NONVUO $NON33F.;
format NOMED $NOM34F.;
format TPICC $TPI35F.;
format NDTROPPO $NDT36F.;
format ORARIS $ORA37F.;
format ALNIDO $ALN38F.;
format DIVCOM $DIV43F.;
format STCOM $STC44F.;
format STPROV $STP45F.;
format STREG $STR46F.;
format ALTREG $ALT47F.;
format ESTERO $EST48F.;
format USOMT $USO49F.;
format TRENO $TRE50F.;
format TRAM $TRA51F.;
format METRO $MET52F.;
format BUS $BUS53F.;
format COR $COR54F.;
format PAZSC $PAZ55F.;
format AUTOC $AUT56F.;
format AUTOP $AUT57F.;
format MOTO $MOT58F.;
format BICI $BIC59F.;
format ALMEZ $ALM60F.;
format MTPUSO $MTP61F.;
format CARPOO $CAR62F.;
format PROSOC $PRO63F.;
format NPROSOM $NPR64F.;
format GUMED $GUM65F.;
format NGUMEDM $NGU66F.;
format ASSDO $ASS67F.;
format NASSDOM $NAS68F.;
format RICOV $RIC69F.;
format NNRICAM $NNR70F.;
format GGRICAM $GGR71F.;
format LRICOV $LRI72F.;
format CONSPE $CON73F.;
format CONDIR $CON74F.;
format CONASS $CON75F.;
format QASSAM $QAS76F.;
format QASSIN $QAS77F.;
format QVITTO $QVI78F.;
format QSERIG $QSE79F.;
format VISMED12 $VIS80F.;
format VSPESA $VSP81F.;
format VISPRE $VIS82F.;
format VISRI1 $VIS83F.;
format VISRI2 $VIS84F.;
format VISRI3 $VIS85F.;
format VISRI4 $VIS86F.;
format VISRI5 $VIS87F.;
format VISRI6 $VIS88F.;
format VISRI7 $VIS89F.;
format ANSANG12 $ANS90F.;
format ACCER12 $ACC91F.;
format ASPESA $ASP92F.;
format ACCPRE $ACC93F.;
format ACCRI1 $ACC94F.;
format ACCRI2 $ACC95F.;
format ACCRI3 $ACC96F.;
format ACCRI4 $ACC97F.;
format ACCRI5 $ACC98F.;
format ACCRI6 $ACC99F.;
format ACCRI7 $ACC100F.;
format MINCDO $MIN101F.;
format MNINCDM $MNI102F.;
format SPOCON $SPO103F.;
format SPOSAL $SPO104F.;
format ATTFIS $ATT105F.;
format FREQSPO $FRE106F.;
format ORESETSP $ORE107F.;
format SPPAG $SPP108F.;
format SPRIV $SPR109F.;
format RETTA $RET110F.;
format AMICI $AMI111F.;
format PARENT $PAR112F.;
format AMICI2 $AMI113F.;
format VICINI $VIC114F.;
format CPESO $CPE115F.;
format FARM $FAR116F.;
format PASTO $PAS117F.;
format COLAZ $COL118F.;
format LPRAN $LPR119F.;
format PANPAS $PAN120F.;
format SALUMI $SAL121F.;
format POLLO $POL122F.;
format COV $COV123F.;
format CBOV $CBO124F.;
format CMAIAL $CMA125F.;
format LATTE $LAT126F.;
format FORM $FOR127F.;
format UOVA $UOV128F.;
format PESCE $PES129F.;
format VERD $VER130F.;
format POMOD $POM131F.;
format FRUTTA $FRU132F.;
format LEGUMI $LEG135F.;
format PATATE $PAT136F.;
format SNACK $SNA137F.;
format DOLCI $DOL138F.;
format CGRAS $CGR139F.;
format FGRAS $FGR140F.;
format QTSALE $QTS141F.;
format IODIO $IOD142F.;
format ACMIN $ACM143F.;
format BGAS $BGA144F.;
format BIRRA $BIR145F.;
format VINO $VIN146F.;
format BICBIRRAM $BIC147F.;
format BICVINOM $BIC148F.;
format BFPAS $BFP149F.;
format BICFUORIM $BIC150F.;
format ANAL $ANA151F.;
format ALCOL $ALC152F.;
format AMAR $AMA153F.;
format LIQUOR $LIQ154F.;
format BICALTROM $BIC155F.;
format ALCOL12 $ALC156F.;
format BICALC $BIC157F.;
format NBICALCM $NBI158F.;
format DOVCASP $DOV159F.;
format DOVAMPA $DOV160F.;
format DOVRISTO $DOV161F.;
format DOVPUB $DOV162F.;
format DOVDISCO $DOV163F.;
format DOVSTR $DOV164F.;
format DOVALT $DOV165F.;
format ESIG $ESI166F.;
format FUMO $FUM167F.;
format FRFUMO $FRF168F.;
format TFUMO $TFU169F.;
format NSIGARM $NSI170F.;
format SALUTE $SAL171F.;
format CRONI $CRO172F.;
format LIMITA $LIM173F.;
format DIAB $DIA174F.;
format IPAR $IPA175F.;
format INFAR $INF176F.;
format CUORE $CUO177F.;
format BRON $BRO178F.;
format ASMA $ASM179F.;
format ALLER $ALL180F.;
format TUMOR $TUM181F.;
format ULCER $ULC182F.;
format FEGATO $FEG183F.;
format CIRRO $CIR184F.;
format CALRE $CAL185F.;
format ARTRO $ART186F.;
format OSTEO $OST187F.;
format NEURO $NEU188F.;
format SF9 $SF9189F.;
format SF11 $SF1190F.;
format SF13 $SF1191F.;
format SF14 $SF1192F.;
format SF15 $SF1193F.;
format RADIO $RAD194F.;
format TELE $TEL197F.;
format PCTEMPO $PCT200F.;
format FREQPC12 $FRE201F.;
format INTTEMPO $INT202F.;
format FREQIN12 $FRE203F.;
format IAIPCSCRI $IAI204F.;
format IAIPCPORT $IAI205F.;
format IAITABLET $IAI206F.;
format IAIDISMOB $IAI207F.;
format IAIALTRO_N $IAI208F.;
format DISP_SMA $DIS209F.;
format DISP_LAP $DIS210F.;
format DISP_TAB $DIS211F.;
format DISPPDA $DIS212F.;
format INCOMU5 $INC213F.;
format INCOMU1b $INC214F.;
format INCOMU34 $INC215F.;
format INCOMU6 $INC216F.;
format INCOMU7 $INC217F.;
format INTATT20 $INT218F.;
format INTATT21 $INT219F.;
format INTATT26 $INT220F.;
format INTATT5 $INT221F.;
format INTATT4 $INT222F.;
format INTSAL3 $INT223F.;
format INTATT14 $INT224F.;
format INTATT11 $INT225F.;
format INTATT33 $INT226F.;
format INTATT13 $INT227F.;
format INTATT17 $INT228F.;
format INTATT16 $INT229F.;
format INTATT10 $INT230F.;
format INTATT8 $INT231F.;
format INTATT31 $INT232F.;
format INTATT32 $INT233F.;
format INTATT7BN $INT234F.;
format INTATT30A $INT235F.;
format INTATT30B $INT236F.;
format INTATT28A $INT237F.;
format INTATT28B $INT238F.;
format CLOUDSAL $CLO239F.;
format SKL_FRE $SKL240F.;
format SKL_AUTO $SKL241F.;
format SKL_PUB $SKL242F.;
format SKL_DAT $SKL243F.;
format SKL_COLL $SKL244F.;
format P2P_ACC $P2P245F.;
format P2P_ACCALT $P2P246F.;
format P2P_TRA $P2P247F.;
format P2P_TRALT $P2P248F.;
format P2P_FOOD $P2P249F.;
format P2P_WRK $P2P250F.;
format COSINT9a $COS251F.;
format COSINT9b $COS252F.;
format COSINT9c $COS253F.;
format PR_UP $PR_254F.;
format PR_SM $PR_255F.;
format PR_ST $PR_256F.;
format PR_CARD $PR_257F.;
format PR_COD $PR_258F.;
format PR_PIN $PR_259F.;
format PR_ALT $PR_260F.;
format INTUSO1 $INT261F.;
format INTUSO2 $INT262F.;
format INTUSO3 $INT263F.;
format INTCOM $INT264F.;
format NORDINI $NOR265F.;
format SPINTCOM $SPI266F.;
format COSINT1 $COS267F.;
format COSINT2 $COS268F.;
format COSINT19 $COS269F.;
format COSINT5 $COS270F.;
format COSINT3 $COS271F.;
format COSINT22A $COS272F.;
format COSINT22B $COS273F.;
format COSINT21 $COS274F.;
format COSINT15 $COS275F.;
format COSINT16 $COS276F.;
format COSINT7 $COS277F.;
format COSINT8 $COS278F.;
format COSINT20 $COS279F.;
format COSINT18 $COS280F.;
format COSINT17 $COS281F.;
format COSINT11 $COS282F.;
format COSINT12 $COS283F.;
format COSINT14 $COS284F.;
format VENDI1 $VEN285F.;
format VENDI2 $VEN286F.;
format VENDI3 $VEN287F.;
format VENDI4 $VEN288F.;
format CT_WORK $CT_289F.;
format MAC_WORK $MAC290F.;
format NO_ICTW $NO_291F.;
format WRK_EMA $WRK292F.;
format WRK_DOC $WRK293F.;
format WRK_SM $WRK294F.;
format WRK_INC $WRK295F.;
format WRK_SOF $WRK296F.;
format WRK_IT $WRK297F.;
format WRK_CAMB $WRK298F.;
format WRK_NS $WRK299F.;
format GIUD_SKL $GIU300F.;
format TEATRO $TEA301F.;
format CINE $CIN302F.;
format MUSEO $MUS303F.;
format MUSIC $MUS304F.;
format ACMUS $ACM305F.;
format SPSPO $SPS306F.;
format DISCO $DIS307F.;
format MONUM $MON308F.;
format LQUOT $LQU309F.;
format LIBRI $LIB310F.;
format NLIBRIM NLI311F.;
format NLIBRI_CARM NLI312F.;
format NLEBOOM NLE313F.;
format NLAUDIOM NLA314F.;
format RIVSET $RIV315F.;
format NOSETT $NOS316F.;
format CHIES $CHI317F.;
format SITEC $SIT318F.;
format SALUT $SAL319F.;
format RELFAM $REL320F.;
format RELAM $REL321F.;
format TEMLIB $TEM322F.;
format AMBIENTE $AMB323F.;
format PAESAGGIO $PAE324F.;
format SODLAV2 $SOD325F.;
format POLIT $POL326F.;
format PPAPO $PPA327F.;
format PSIND $PSI328F.;
format PGRVO $PGR329F.;
format PAECO $PAE330F.;
format PCULT $PCU331F.;
format PASPRO $PAS332F.;
format COMIZ $COM333F.;
format CORTEI $COR334F.;
format DIBPO $DIB335F.;
format FINPA $FIN336F.;
format FINAS $FIN337F.;
format VOLON $VOL338F.;
format ATGRA $ATG339F.;
format VOLPA $VOL340F.;
format VOLSI $VOL341F.;
format POLITI $POL342F.;
format PRADIO $PRA343F.;
format PTELEV $PTE344F.;
format PQUOT $PQU345F.;
format PSETT $PSE346F.;
format PARIV $PAR347F.;
format PAMICI $PAM348F.;
format PPAREN $PPA349F.;
format PCONOS $PCO350F.;
format PCOLAV $PCO351F.;
format ORGPOL $ORG352F.;
format ORGSIN $ORG353F.;
format ALTPOL $ALT354F.;
format PWEB $PWE355F.;
format PWEBM1 $PWE356F.;
format PWEBM2 $PWE357F.;
format PWEBM3 $PWE358F.;
format PWEBM4 $PWE359F.;
format PWEBM5 $PWE360F.;
format PWEBM6 $PWE361F.;
format NPOLI $NPO362F.;
format NTPOLI $NTP363F.;
format POLCOM $POL364F.;
format SFIPOL $SFI365F.;
format NALTPO $NAL366F.;
format UFFAN $UFF367F.;
format TUFAN $TUF368F.;
format GORAR $GOR369F.;
format CORAR $COR370F.;
format AUTOCE $AUT371F.;
format CANAG $CAN372F.;
format PRAUT $PRA373F.;
format CERSC $CER374F.;
format CATAS $CAT375F.;
format CALTRO $CAL376F.;
format USOSS $USO377F.;
format TEMSS $TEM378F.;
format GOUSL $GOU379F.;
format COUSL $COU380F.;
format UFFPOS $UFF381F.;
format RACCO $RAC382F.;
format VAGLIA $VAG383F.;
format VCOC $VCO384F.;
format RPENS $RPE385F.;
format RPARA $RPA386F.;
format TRACC $TRA387F.;
format TVAGL $TVA388F.;
format TCCP $TCC389F.;
format TRPEN $TRP390F.;
format TPARA $TPA391F.;
format GOSPO $GOS392F.;
format COSPO $COS393F.;
format BANCA $BAN394F.;
format TABAN $TAB395F.;
format BANCM $BAN396F.;
format CCRED $CCR397F.;
format NCCREDM $NCC398F.;
format USOTRAM $USO399F.;
format FCORS $FCO400F.;
format PUNT $PUN401F.;
format POSSE $POS402F.;
format VELCO $VEL403F.;
format PULIZ $PUL404F.;
format COMOF $COM405F.;
format COLLEG $COL406F.;
format COMOR $COM407F.;
format CPSBI $CPS408F.;
format USOPUL $USO410F.;
format FRCMT $FRC411F.;
format PUNMT $PUN412F.;
format SEDMT $SED413F.;
format VELMT $VEL414F.;
format PULMT $PUL415F.;
format ATTMT $ATT416F.;
format COLCO $COL417F.;
format ORAMT $ORA418F.;
format CBMT $CBM419F.;
format INFMT $INF420F.;
format USTRE $UST422F.;
format FRTRE $FRT423F.;
format PUTRE $PUT424F.;
format PSTRE $PST425F.;
format VETRE $VET426F.;
format PULSTR $PUL427F.;
format COMAT $COM428F.;
format COLCOM $COL429F.;
format COMORA $COM430F.;
format COBIG $COB431F.;
format INFTR $INF432F.;
format USOAUT $USO434F.;
format SERRA $SER435F.;
format ESTINZ $EST436F.;
format CAMCLI $CAM437F.;
format SMARIF $SMA438F.;
format AMRUM $AMR439F.;
format IARIA $IAR440F.;
format INQSU $INQ441F.;
format INQFIU $INQ442F.;
format DISDR $DIS443F.;
format CATASTR $CAT444F.;
format FORES2 $FOR445F.;
format INQELET2 $INQ446F.;
format PAESAG2 $PAE447F.;
format ESRISO2 $ESR448F.;
format ALTAMB2 $ALT449F.;
format GCARTE $GCA450F.;
format DOPFIL $DOP451F.;
format ARUMOR $ARU452F.;
format FUTUASP $FUT454F.;
format FIDUCIA $FID455F.;
format FIDU1 $FID456F.;
format FIDU2 $FID457F.;
format FIDU3 $FID458F.;
format BMIMIN $BMI470F.;
format SENELE $SEN471F.;
format GCONT $GCO472F.;
format GASBAL $GAS473F.;
format GDISPL $GDI474F.;
format GCBOL $GCB475F.;
format GINF $GIN476F.;
format GAS5 $GAS477F.;
format SGAS $SGA478F.;
format GASPR2 $GAS479F.;
format FLGAS $FLG480F.;
format COMBOL $COM481F.;
format SERINF $SER482F.;
format SICURET $SIC483F.;
format SCEFO2 $SCE484F.;
format CAMFO2 $CAM485F.;
format NMOTNFE1 $NMO486F.;
format NMOTNFE2 $NMO487F.;
format NMOTNFE3 $NMO488F.;
format NMOTNFE4 $NMO489F.;
format NMOTNFE5 $NMO490F.;
format NMOTNFG1 $NMO491F.;
format NMOTNFG2 $NMO492F.;
format NMOTNFG3 $NMO493F.;
format NMOTNFG4 $NMO494F.;
format NMOTNFG5 $NMO495F.;
format CALLELGA $CAL496F.;
format SODCALL $SOD497F.;
format PROINT $PRO498F.;
format SODINT $SOD499F.;
format SPORCO $SPO500F.;
format PARCH $PAR501F.;
format COLMP $COL502F.;
format TRAF $TRA503F.;
format INQAR $INQ504F.;
format RUMORE $RUM505F.;
format CRIM $CRI506F.;
format ODSGR $ODS507F.;
format ILLSTR $ILL508F.;
format CONPAV $CON509F.;
format PARCHI $PAR510F.;
format TERRAZ $TER512F.;
format GARDEN $GAR513F.;
format TELEF $TEL514F.;
format NELENC $NEL515F.;
format RISCAL $RIS516F.;
format TRISC $TRI517F.;
format REACQ1 $REA518F.;
format REACQ2 $REA519F.;
format REACQ3 $REA520F.;
format REACQ4 $REA521F.;
format REACQ5 $REA522F.;
format SODACQUA $SOD523F.;
format AGFORN $AGF524F.;
format AGPRESS $AGP525F.;
format AGODOR $AGO526F.;
format AGLETTUR $AGL527F.;
format AGFATTUR $AGF528F.;
format AGBOLLET $AGB529F.;
format FOGNA $FOG530F.;
format SPEAB $SPE531F.;
format ABIPIC $ABI532F.;
format ABLONF $ABL533F.;
format ACQUA $ACQ534F.;
format ABICC $ABI535F.;
format ERACQ $ERA536F.;
format SIACQ $SIA537F.;
format ACQBRU $ACQ538F.;
format NOACQ $NOA539F.;
format GODAB $GOD540F.;
format FARMA $FAR541F.;
format PRSOC $PRS542F.;
format UFFPO $UFF543F.;
format POLICE $POL544F.;
format UFFCOM $UFF545F.;
format NIDO $NID546F.;
format SMATER $SMA547F.;
format SELEM $SEL548F.;
format SMINF $SMI549F.;
format MERCAT $MER550F.;
format SMERC $SME551F.;
format CASS $CAS552F.;
format SEGAS $SEG553F.;
format SLUCE $SLU554F.;
format CRARIF $CRA555F.;
format CERACQ $CER556F.;
format CCARTA $CCA557F.;
format CVETRO $CVE558F.;
format CFARM $CFA559F.;
format CBAT $CBA560F.;
format CLATAL $CLA561F.;
format CPLAS $CPL562F.;
format CRORG $CRO563F.;
format CTESSILI $CTE564F.;
format CALT $CAL565F.;
format POAPO $POA566F.;
format R_CARTA $R_C567F.;
format R_VETRO $R_V568F.;
format R_FARM $R_F569F.;
format R_BAT $R_B570F.;
format R_LATAL $R_L571F.;
format R_PLAS $R_P572F.;
format R_RORG $R_R573F.;
format R_TESSILI $R_T574F.;
format R_ALT $R_A575F.;
format SODPOAPO $SOD576F.;
format NOSPO1 $NOS577F.;
format NOSPO7 $NOS578F.;
format NOSPO2 $NOS579F.;
format NOSPO3 $NOS580F.;
format NOSPO4 $NOS581F.;
format NOSPO5 $NOS582F.;
format NOSPO8 $NOS583F.;
format NOSPO6 $NOS584F.;
format ECOSTAZ $ECO585F.;
format USOECO2 $USO586F.;
format ECOCAR $ECO587F.;
format ECOVET $ECO588F.;
format ECOPLA $ECO589F.;
format ECOPNE $ECO590F.;
format ECOMET $ECO591F.;
format ECOLEG $ECO592F.;
format ECOFAR $ECO593F.;
format ECOBAT $ECO594F.;
format ECOING $ECO595F.;
format ECOINE $ECO596F.;
format ECOELE $ECO597F.;
format ECOOLI $ECO598F.;
format ECOINF $ECO599F.;
format ECOPOT $ECO600F.;
format ECOTESS $ECO601F.;
format ECOALT $ECO602F.;
format NOECO $NOE603F.;
format SPIDIF1 $SPI604F.;
format SPIDIF2 $SPI605F.;
format SPIDIF3 $SPI606F.;
format SPIDIF4 $SPI607F.;
format SPIDIF5 $SPI608F.;
format SPIDIF6 $SPI609F.;
format SPIDIF7 $SPI610F.;
format SPIDIF8 $SPI611F.;
format CAMAB $CAM612F.;
format PCAMAB $PCA613F.;
format ASSCA $ASS614F.;
format COLFAGG $COL615F.;
format BABYSAGG $BAB616F.;
format ASSANZAGG $ASS617F.;
format AVVOC $AVV621F.;
format NOTAIO $NOT622F.;
format COMMER $COM623F.;
format NOMOD $NOM624F.;
format COMFAM $COM625F.;
format NONPAG $NON626F.;
format PAGAM $PAG627F.;
format PINSER $PIN628F.;
format LAVST $LAV629F.;
format LAVATR $LAV631F.;
format VIDER $VID633F.;
format VIDEO $VID635F.;
format DVD $DVD637F.;
format HIFI $HIF639F.;
format SEGTEL $SEG641F.;
format NSEGTM $NSE642F.;
format FAX $FAX643F.;
format TELCOL $TEL645F.;
format ANTEPA $ANT647F.;
format CLIMAT $CLI649F.;
format BIC $BIC651F.;
format MOTOR $MOT653F.;
format NMOTORM $NMO654F.;
format AMOTO $AMO655F.;
format NMOTOM $NMO656F.;
format ABBTV $ABB657F.;
format SMARTV $SMA658F.;
format AUTO $AUT659F.;
format NAUTOM $NAU660F.;
format LIBFAM $LIB661F.;
format TELCEL $TEL662F.;
format TELCIN $TEL664F.;
format PC $PC665F.;
format MODEM $MOD666F.;
format VGIOC $VGI667F.;
format EBOOK $EBO669F.;
format MP3 $MP3671F.;
format FOTODIG $FOT673F.;
format NAVSAT $NAV675F.;
format AINTERN $AIN677F.;
format CIDSLWIFI $CID678F.;
format CISFPAL $CIS679F.;
format CISFMOD $CIS680F.;
format CIBASTR $CIB681F.;
format MOTNOAI1 $MOT682F.;
format MOTNOAI3 $MOT683F.;
format MOTNOAI4 $MOT684F.;
format MOTNOAI5 $MOT685F.;
format MOTNOAI6 $MOT686F.;
format MOTNOAI8 $MOT687F.;
format MOTNOAI10 $MOT688F.;
format MOTNOAI9 $MOT689F.;
format SITE $SIT690F.;
format RISEC $RIS691F.;
format BMI $BMI692F.;
RUN;
