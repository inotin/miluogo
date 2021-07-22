#Declinazione di responsabilità. 
#I file rilasciati in formato testo sono provvisti anche dei programmi di importazione per STATA, SAS e R. 
#L'Istat non garantisce che le funzioni contenute nei suddetti programmi siano esenti da errore e non si assume alcuna responsabilità sull’output ottenuto dal loro utilizzo.  
setwd(choose.dir(default = "", caption = "WHERE ARE MICRODATA?"))
direttorio = getwd()
fileInput = paste (direttorio, "/ISTAT_MFR_AVQ_Microdati_2018_ESEMPIO_STRUTTURA_FILE.txt", sep="")
DF_AVQ_A2018<- read.delim2 (fileInput,  header=T, sep="	",  quote="",  na.strings = ".")
attr(DF_AVQ_A2018, "label") <- c(
"progressivo famiglia",
"numero d'ordine del componente",
"n° dei componenti la famiglia attuale",
"anno della rilevazione",
"relazione di parentela con la persona di riferimento",
"Età in anni compiuti",
"Sesso - scheda generale",
"Stato civile",
"Stato civile precedente il matrimonio",
"Anno del matrimonio",
"Titolo di studio",
"Condizione professionale",
"Ha lavorato in passato",
"posizione nella professione",
"Settore di attività economica",
"Tipo nucleo 2",
"Numero progressivo del nucleo nell'ambito della famiglia 2",
"Relazione di parentela nell'ambito del nucleo 2",
"Tipologia familiare 2",
"Regione di residenza dell'intervistato",
"Ripartizione geografica di residenza dell'intervistato",
"Tipologia comunale di residenza",
"Coefficiente di riporto all'universo",
"Fonte principale di reddito",
"Cittadinanza",
"È attualmente iscritto ad una delle scuole, dei corsi o istituti sottoelencati",
"Motivo principale per cui frequenta il nido",
"Motivo per cui non frequenta il nido: la domanda non è stata accettata",
"Motivo per cui non frequenta il nido: lo segue un membro della famiglia, non ho problemi di organizzazione familiare",
"Motivo per cui non frequenta il nido: l'asilo è lontano, scomodo",
"Motivo per cui non frequenta il nido: non voglio delegare il compito educativo",
"Motivo per cui non frequenta il nido: il bambino si ammalava troppo spesso",
"Motivo per cui non frequenta il nido: il bambino può sentirsi abbandonato",
"Motivo per cui non frequenta il nido: il bambino non vuole andare",
"Motivo per cui non frequenta il nido: lo ha sconsigliato un medico",
"Motivo per cui non frequenta il nido: il bambino è troppo piccolo",
"Motivo per cui non frequenta il nido: l'asilo costa troppo",
"Motivo per cui non frequenta il nido: l'asilo ha orari scomodi",
"Motivo per cui non frequenta il nido: altro",
"Orario abituale di uscita da casa per andare a lavoro o a scuola (ora)",
"Orario abituale di uscita da casa per andare a lavoro o a scuola (minuti)",
"Tempo impiegato per andare al lavoro/scuola (ora)",
"Tempo impiegato per andare al lavoro/scuola (minuti)",
"Per motivi di lavoro o di studio lei vive con una certa regolarità prevalentemente in un comune diverso da questo",
"Lavora o studia abitualmente nello stesso comune in cui risiede",
"Lavora o studia abitualmente  in un altro comune della stessa provincia",
"Lavora o studia abitualmente in un'altra provincia della stessa regione",
"Lavora o studia abitualmente  in un'altra regione italiana",
"Lavora o studia abitualmente  all'estero",
"Uso di mezzo di trasporto pubblico e/o privato per andare a scuola o al lavoro",
"Mezzo di trasporto usato per andare a scuola o al lavoro: treno",
"Mezzo di trasporto usato per andare a scuola o al lavoro: tram",
"Mezzo di trasporto usato per andare a scuola o al lavoro: metropolitana",
"Mezzo di trasporto usato per andare a scuola o al lavoro: autobus, filobus (all'interno del comune)",
"Mezzo di trasporto usato per andare a scuola o al lavoro: pullman, corriera (tra comuni diversi)",
"Mezzo di trasporto usato per andare a scuola o al lavoro: pullman aziendale o scolastico",
"Mezzo di trasporto usato per andare a scuola o al lavoro: auto privata (come conducente)",
"Mezzo di trasporto usato per andare a scuola o al lavoro: auto privata (come passeggero)",
"Mezzo di trasporto usato per andare a scuola o al lavoro: motocicletta o ciclomotore",
"Mezzo di trasporto usato per andare a scuola o al lavoro: bicicletta",
"Mezzo di trasporto usato per andare a scuola o al lavoro: altro mezzo",
"Mezzo di trasporto utilizzato nel  tratto più lungo per andare a scuola o al lavoro",
"Si organizza con colleghi/compagni di studio per andare a lavoro/scuola utilizzando una sola vettura",
"Negli ultimi 3 mesi ha fatto ricorso a pronto soccorso",
"Quante volte ha fatto ricorso al pronto soccorso",
"Negli ultimi 3 mesi ha fatto ricorso a guardia medica",
"Quante volte ha fatto ricorso alla guardia medica",
"Negli ultimi 3 mesi ha fatto ricorso a assistenza domiciliare",
"Quante volte ha fatto ricorso all'assistenza domiciliare",
"Negli ultimi 3 mesi è stato ricoverato in un ospedale, in un istituto di cura accreditato (convenzionato) o in una casa di cura privata?",
"Quante volte è stato ricoverato negli ultimi tre mesi?",
"Per quante notti complessivamente è stato ricoverato negli ultimi tre mesi?",
"In quale tipo di struttura è avvenuto il ricovero? (con riferimento all'ultimo ricovero)",
"Ha contributo al pagamento delle spese di ricovero",
"Contributo diretto per spese ricovero",
"Contributo tramite assicurazione privata per spese ricovero",
"Soddisfazione per ricovero: assistenza medica",
"Soddisfazione per ricovero: assistenza infermieristica",
"Soddisfazione per ricovero: vitto",
"Soddisfazione per ricovero: servizi igienici",
"negli ultimi 12 mesi ha fatto ricorso a visite presso medici specialisti",
"spesa per ultima visita specialistica (ultimi 12 mesi)",
"l'ultima visita specialistica (ultimi 12 mesi) è stata prescritta da un medico?",
"rinuncia a visita specialistica ultimi 12 mesi",
"rinuncia a visita specialistica ultimi 12 mesi: non poteva pagarla, costava troppo",
"rinuncia a visita specialistica ultimi 12 mesi: lista d'attesa lunga",
"rinuncia a visita specialistica ultimi 12 mesi:  scomodità",
"rinuncia a visita specialistica ultimi 12 mesi: non poteva assendarsi dal lavoro",
"rinuncia a visita specialistica ultimi 12 mesi: doveva accudire figli o altre persone",
"rinuncia a visita specialistica ultimi 12 mesi: altro",
"negli ultimi 12 mesi si è sottoposto a esami del sangue?",
"negli ultimi 12 mesi si è sottoposto a esami specialistici?",
"spesa per ultimo esame specialistico (ultimi 12 mesi)",
"l'ultimo esame specialistico (ultimi 12 mesi) le è stato prescritto da un medico?",
"rinuncia a accertamento specialistico ultimi 12 mesi",
"rinuncia a accertamento specialistico ultimi 12 mesi: non poteva pagarlo, costava troppo",
"rinuncia a accertamento specialistico ultimi 12 mesi: lista d'attesa lunga",
"rinuncia a accertamento specialistico ultimi 12 mesi: scomodità",
"rinuncia a accertamento specialistico ultimi 12 mesi: non poteva assentarsi dal lavoro",
"rinuncia a accertamento specialistico ultimi 12 mesi: doveva accudire figli o altre persone",
"rinuncia a accertamento specialistico ultimi 12 mesi: altro",
"Incidente domestico subito negli ultimi 3 mesi",
"Incidente domestico subito negli ultimi 3 mesi: quante volte",
"Nel suo tempo libero pratica con carattere di continuità uno o più sport?",
"Nel suo tempo libero pratica saltuariamente uno o più sport?",
"Le capita di svolgere nel tempo libero qualche attività fisica?",
"Frequenza nell'anno delle attività sportive praticate",
"Ore di attività sportiva praticate nell'ultima settimana",
"Negli ultimi 12 mesi ha fatto sport in luoghi a pagamento?",
"Negli ultimi 12 mesi ha frequentato lezioni private o corsi di sport a spese sue o della famiglia?",
"Paga una retta annua o periodica per un circolo o club sportivo?",
"Con che frequenza si vede con amici nel tempo libero?",
"Ha altri parenti su cui poter contare (oltre a genitori, figli, fratelli e sorelle, nonni e nipoti)",
"Ha amici su cui poter contare",
"Ha vicini su cui poter contare",
"Frequenza con cui usa controllare il suo peso",
"Negli ultimi due giorni ha fatto uso di farmaci?",
"Qual è il suo pasto principale?",
"Ha l'abitudine di fare la prima colazione? (se la fa più di una volta consideri solo la prima)",
"Dove pranza abitualmente nei giorni non festivi? (di scuola o di lavoro)",
"Frequenza consumo: pane, pasta, riso",
"Frequenza consumo: salumi",
"Frequenza consumo: carne di pollo, tacchino, coniglio, vitello",
"Frequenza consumo: carni ovine",
"Frequenza consumo: carni bovine",
"Frequenza consumo: carni di maiale (escluso salumi)",
"Frequenza consumo: latte",
"Frequenza consumo: formaggi, latticini",
"Frequenza consumo: uova",
"Frequenza consumo: pesce",
"Frequenza consumo: verdure in foglia cotte e crude (spinaci, insalate, cicoria, cavolo, broccoli)",
"Frequenza consumo: pomodori (escluse conserve), melanzane, peperoni, finocchi, zucchine, carciofi, carote, zucche, cavolfiore, piselli e altri legumi freschi",
"Frequenza consumo: frutta",
"Numero di porzioni di insalata oppure ortaggi e/o verdura",
"Numero di porzioni di frutta",
"Frequenza consumo: legumi secchi o in scatola",
"Frequenza consumo: patate",
"Frequenza consumo: snack salati (patatine, pop corn, salatini, olive)",
"Frequenza consumo: dolci (torte farcite, merendine, gelati, ecc)",
"Quale dei seguenti grassi usa più frequentemente per la cottura dei cibi?",
"Quale dei seguenti grassi usa più frequentemente per il condimento a crudo dei cibi ( insalate, pasta, ecc.) o per panini, tartine, ecc.?",
"Fa attenzione alla quantità di sale e/o al consumo di cibi salati?",
"Usa sale arricchito con iodio",
"Quantità consumata abitualmente di acqua minerale",
"Quantità consumata abitualmente di bevande gassate (esclusa l'acqua minerale)",
"Quantità consumata abitualmente di  birra",
"Quantità consumata abitualmente di  vino",
"Quanti bicchieri di birra consuma abitualmente al giorno?",
"Quanti bicchieri di vino consuma abitualmente al giorno?",
"Frequenza con cui capita di bere vino o alcolici fuori dai pasti",
"Complessivamente in una settimana quanti bicchieri di vino o alcolici consuma abitualmente fuori dai pasti?",
"In quale quantità consuma abitualmente: aperitivi analcolici",
"In quale quantità consuma abitualmente: aperitivi alcolici",
"In quale quantità consuma abitualmente: amari",
"In quale quantità consuma abitualmente: superalcolici ( o liquori )",
"Numero di bicchieri al giorno di aperitivi alcolici, amari o superalcolici",
"Consumo di bevande alcoliche negli ultimi 12 mesi",
"Consumo di almeno 6 bicchieri di bevande alcoliche in un'unica occasione negli ultimi 12 mesi",
"Consumo di almeno 6 bicchieri di bevande alcoliche in un'unica occasione negli ultimi 12 mesi: numero di volte",
"Luogo di consumo di almeno 6 bicchieri di alcol: a casa propria",
"Luogo di consumo di almeno 6 bicchieri di alcol: a casa di parenti o amici",
"Luogo di consumo di almeno 6 bicchieri di alcol:al ristorante/trattoria/osteria/pizzeria",
"Luogo di consumo di almeno 6 bicchieri di alcol:al bar/pub/birreria",
"Luogo di consumo di almeno 6 bicchieri di alcol: in discoteca",
"Luogo di consumo di almeno 6 bicchieri di alcol: all'aperto/per strada",
"Luogo di consumo di almeno 6 bicchieri di alcol: altro luogo",
"Uso della sigaretta elettronica",
"Attualmente fuma?",
"Con quale frequenza fuma",
"Che cosa fuma prevalentemente",
"Quante sigarette fuma in media al giorno",
"Come va in generale la sua salute?",
"È affetto da malattie croniche o problemi di salute di lunga durata?",
"A causa di problemi di salute, in che misura lei ha delle limitazioni, che durano da almeno 6 mesi, nelle attività che le persone abitualmente svolgono?",
"Affetto da malattia cronica: diabete",
"Affetto da malattia cronica: ipertensione arteriosa",
"Affetto da malattia cronica: infarto del miocardio",
"Affetto da malattia cronica: angina pectoris o altre malattie del cuore",
"Affetto da malattia cronica: bronchite cronica, enfisema, insufficienza respiratoria",
"Affetto da malattia cronica: asma bronchiale",
"Affetto da malattia cronica: malattie allergiche",
"Affetto da malattia cronica: tumore (incluso linfoma e leucemia)",
"Affetto da malattia cronica: ulcera gastrica e duodenale",
"Affetto da malattia cronica: calcolosi del fegato o delle vie biliari",
"Affetto da malattia cronica: cirrosi epatica",
"Affetto da malattia cronica: calcolosi renale",
"Affetto da malattia cronica: artrosi, artrite",
"Affetto da malattia cronica: osteoporosi",
"Affetto da malattia cronica: disturbi nervosi",
"Per quanto tempo nelle ultime 4 settimane si è sentito calmo e/o sereno",
"Per quanto tempo nelle ultime 4 settimane si è sentito scoraggiato e triste",
"Per quanto tempo nelle ultime 4 settimane si è sentito molto agitato",
"Per quanto tempo nelle ultime 4 settimane si è sentito giù di morale",
"Per quanto tempo nelle ultime 4 settimane si è sentito felice",
"Ha l'abitudine di ascoltare la radio?",
"Ore di ascolto della radio al giorno",
"Minuti di ascolto della radio al giorno",
"Ha l'abitudine di guardare la tv?",
"Per quante ore guarda la televisione",
"Per quanti minuti guarda la televisione",
"Lei ha mai usato il personal computer?",
"Frequenza d'uso del personal computer negli ultimi 12 mesi",
"Lei ha mai usato Internet?",
"Frequenza d'uso di Internet negli ultimi 12 mesi",
"negli ultimi 3 mesi strumento per accesso ad Internet: computer fisso da tavolo",
"negli ultimi 3 mesi strumento per accesso ad Internet: laptop, netbook",
"negli ultimi 3 mesi strumento per accesso ad Internet: tablet",
"negli ultimi 3 mesi strumento per accesso ad Internet: telefono cellulare o smartphone",
"negli ultimi 3 mesi strumento per accesso ad Internet: altri dispositivi mobili",
"strumenti utlilizzati per accedere ad Internet in luoghi diversi da casa o dal posto di lavoro negli ultimi 3 mesi: telefono cellulare o smartphone",
"strumenti utlilizzati per accedere ad Internet in luoghi diversi da casa o dal posto di lavoro negli ultimi 3 mesi: laptop, netbook",
"strumenti utlilizzati per accedere ad Internet in luoghi diversi da casa o dal posto di lavoro negli ultimi 3 mesi: tablet",
"strumenti utlilizzati per accedere ad Internet in luoghi diversi da casa o dal posto di lavoro negli ultimi 3 mesi: altro dispositivo portatile",
"negli ultimi 3 mesi ha spedito o ricevuto mail",
"negli ultimi 3 mesi ha telefonato/effettuato videochiamate",
"negli ultimi 3 mesi ha usato messaggeria istantanea (es. WhatsApp), ha inviato messaggi su chat, blog, newsgroup, forum",
"negli ultimi 3 mesi ha partecipato a social network (creare un profilo utente, postare messaggi o altro su Facebook, Twitter, ecc.)",
"negli ultimi 3 mesi ha espresso opinioni su temi sociali o politici su web (ad esempio tramite blog, social network, ecc.)",
"negli ultimi 3 mesi ha consultato un wiki per ottenere informazioni (es. wikipedia, altre enciplopedie online)",
"negli ultimi 3 mesi ha partecipato ad un network professionale (creare un profilo, postare messaggi o altri contributi su Linkedln, Xing, ecc.)",
"negli ultimi 3 mesi ha caricato contenuti di propria creazione",
"negli ultimi 3 mesi ha usato servizi relativi a viaggi o soggiorni",
"negli ultimi 3 mesi ha cercato lavoro o mandato una richiesta di lavoro",
"negli ultimi 3 mesi ha preso un appuntamento con un medico",
"negli ultimi 3 mesi ha cercato informazioni sanitarie",
"negli ultimi 3 mesi ha usato servizi bancari via Internet",
"negli ultimi 3 mesi ha usato servizi di pagamento (es paypal, braintree, ecc.) per acquistare beni o servizi su Internet",
"negli ultimi 3 mesi ha venduto merci o servizi",
"negli ultimi 3 mesi ha cercato informazioni su attività di istruzione o corsi",
"negli ultimi 3 mesi ha cercato informazioni su merci o servizi",
"negli ultimi 3 mesi ha scaricato software (diverso da giochi)",
"negli ultimi 3 mesi ha letto giornali, informazioni, riviste online",
"negli ultimi 3 mesi ha letto o scaricato libri online o e_book",
"negli ultimi 3 mesi ha ascoltato musica",
"negli ultimi 3 mesi ha guardato la televisione in streaming",
"negli ultimi 3 mesi ha guardato video on demand",
"negli ultimi 3 mesi ha guardato contenuti video da servizi di condivisione (es. Youtube)",
"negli ultimi 3 mesi ha scaricato immagini, film, musica",
"negli ultimi 3 mesi ha giocato o scaricato giochi",
"negli ultimi 3 mesi ha usato servizi di archiviazione/condivisione su internet per salvare",
"negli ultimi 3 mesi ha fatto un corso di formazione online gratuito",
"negli ultimi 3 mesi ha fatto un corso di formazione a pagamento completamente a proprio carico",
"negli ultimi 3 mesi ha fatto un corso di formazione gratuito promosso da organizzazioni diverse dal proprio datore di lavoro",
"negli ultimi 3 mesi ha fatto un corso di formazione finanziato o organizzato dal proprio datore di lavoro",
"negli ultimi 3 mesi è stato formato sul posto di lavoro (es. colleghi, supervisori)",
"negli ultimi 3 mesi ha usato appositi siti web o app per trovare un alloggio contattando direttamente un privato (es. AIRBNB, homeway etc)",
"negli ultimi 3 mesi ha usato altri siti web o app per trovare un alloggio contattando direttamente un privato (inclusi i siti di  social network)",
"negli ultimi 3 mesi ha usato appositi siti web o app per usufruire di un servizio di trasporto contattando direttamente un privato (es. UBER)",
"negli ultimi 3 mesi ha usato altri siti web o app per usufruire di un servizio di trasporto contattando direttamente un privato (inclusi i siti di  social network)",
"negli ultimi 12 mesi ha usato un sito web/app per ordinare alimentari a domicilio o prenotare servizi di ristorazione direttamente da un privato (gruppi d'acquisto, Deliveroo, Foodora, Gnammo, Home Re",
"negli ultimi 12 mesi ha usato un sito web/app che le ha permesso di ottenere un lavoro retribuito (es. Freelancer, Upwork, ecc.)?",
"negli ultimi 12 mesi  ha svolto operazioni finanziarie per uso privato su Internet (escluse e-mail): acquistare/vendere azioni, obbligazioni fondi o altri servizi finanziari",
"negli ultimi 12 mesi  ha svolto operazioni finanziarie per uso privato su Internet (escluse e-mail): acquistare/rinnovare polizze assicurative",
"negli ultimi 12 mesi  ha svolto operazioni finanziarie per uso privato su Internet (escluse e-mail): ottenere un prestito/credito da banche o da altri fornitori di servizi finanziari",
"negli ultimi 12 mesi ha utilizzato procedure di identificazione per accesso a servizi online: accesso semplice, username e password",
"negli ultimi 12 mesi ha utilizzato procedure di identificazione per accesso a servizi online: accesso usando credenziali social media",
"negli ultimi 12 mesi ha utilizzato procedure di identificazione per accesso a servizi online: accesso con dispositivo per generare numeri pseudocasuali",
"negli ultimi 12 mesi ha utilizzato procedure di identificazione per accesso a servizi online: accessi con certificato di identificazione elettronica o con carta tramite lettore magnetico",
"negli ultimi 12 mesi ha utilizzato procedure di identificazione per accesso a servizi online: accesso con codice ricevuto sul cellulare/smartphone mediante messaggio",
"negli ultimi 12 mesi ha utilizzato procedure di identificazione per accesso a servizi online: accesso con codici PIN  o caratteri di password scelti a caso",
"negli ultimi 12 mesi ha utilizzato procedure di identificazione per accesso a servizi online: ",
"negli ultimi 12 mesi ha usato Internet per ottenere informazioni da siti web della P.A. o dei gestori dei servizi pubblici",
"negli ultimi 12 mesi ha usato Internet per scaricare moduli della P.A. o dei gestori dei servizi pubblici",
"negli ultimi 12 mesi ha usato Internet per inviare moduli compilati online per uso privato allla P.A. o dei gestori dei servizi pubblici",
"ha mai comprato o ordinato merci e/o servizi per uso privato su internet",
"negli ultimi 3 mesi quante volte ha comprato o ordinato merci e/o servizi per uso privato su internet",
"negli ultimi 3 mesi quanto ha speso per beni e/o servizi ordinati o comprati su internet per uso privato",
"negli ultimi 12 mesi ha comprato o ordinato prodotti alimentari",
"negli ultimi 12 mesi ha comprato o ordinato articoli per la casa",
"negli ultimi 12 mesi ha comprato o ordinato farmaci",
"negli ultimi 12 mesi ha comprato o ordinato abiti, articoli sportivi",
"negli ultimi 12 mesi ha comprato o ordinato film, musica",
"negli ultimi 12 mesi ha comprato o ordinato libri (inclusi e-book)",
"negli ultimi 12 mesi ha comprato o ordinato giornali, riviste",
"negli ultimi 12 mesi ha comprato o ordinato materiale per la formazione a distanza",
"negli ultimi 12 mesi ha comprato o ordinato software per computer e/o aggiornamenti (esclusi videogiochi)",
"negli ultimi 12 mesi ha comprato o ordinato videogiochi e/o loro aggiornamenti",
"negli ultimi 12 mesi ha comprato o ordinato hardware per computer",
"negli ultimi 12 mesi ha comprato o ordinato attrezzature elettroniche (es. macchine fotografiche, telecamere, ecc.)",
"negli ultimi 12 mesi ha comprato o ordinato servizi di telecomunicazione (es. abbonamenti a tv, a telecomunicazioni a banda larga, a telefono fisso o cellulare, ricariche di carte telefoniche prepagat",
"negli ultimi 12 mesi ha comprato o ordinato pernottamenti per vacanze (alberghi, pensioni)",
"negli ultimi 12 mesi ha effettuato altre spese di viaggio (biglietti ferroviari, aerei, noleggio auto, ecc.)",
"negli ultimi 12 mesi ha comprato o ordinato biglietti per spettacoli",
"negli ultimi 12 mesi ha comprato o ordinato biglietti delle lotterie o scommesse",
"negli ultimi 12 mesi ha comprato o ordinato altri prodotti: altro",
"negli ultimi 12 mesi ha ordinato o comprato merci e/o servizi per uso privato su Internet da venditore nazionale",
"negli ultimi 12 mesi ha ordinato o comprato merci e/o servizi per uso privato su Internet da venditore di altro paese UE",
"negli ultimi 12 mesi ha ordinato o comprato merci e/o servizi per uso privato su Internet da venditore dal resto del Mondo",
"negli ultimi 12 mesi ha ordinato o comprato merci e/o servizi per uso privato su Internet senza conoscere il paese di origine del venditore",
"negli ultimi 12 mesi per lavoro ha usato: computer, tablet, laptop, smartphone, altro dispositivo portatile",
"negli ultimi 12 mesi per lavoro ha usato: altre attrezzature o macchine informatizzate",
"negli ultimi 12 mesi per lavoro non ha utilizzato computer, smartphone o altri dispositivi portatili né altre attrezzature o macchine informatizzate",
"per lavoro ha effettuato almeno una delle seguenti attività almeno una volta a settimana: scambiare e-mail o inserire dati in database",
"per lavoro ha effettuato almeno una delle seguenti attività almeno una volta a settimana: creare o modificare documenti elettronici",
"per lavoro ha effettuato almeno una delle seguenti attività almeno una volta a settimana: creare o modificare documenti elettronici",
"per lavoro ha effettuato almeno una delle seguenti attività almeno una volta a settimana: usare applicazioni per ricevere incarichi o istruzioni (escluse e-mail)",
"per lavoro ha effettuato almeno una delle seguenti attività almeno una volta a settimana: usare specifici software",
"per lavoro ha effettuato almeno una delle seguenti attività almeno una volta a settimana: sviluppare o mantenere sistemi informatici o software",
"negli ultimi 12 mesi sono cambiate attività/mansioni lavorative a seguito dell'introduzione di nuovi software o di attrezzature computerizzate",
"negli ultimi 12 mesi ha dovuto imparare a utilizzare un nuovo software/attrezzature computerizzate",
"quali delle seguenti affermazioni descrive meglio le sue competenze/abilità relative all'utilizzo del computer/software/applicazioni",
"Frequenza con cui negli ultimi 12 mesi è andato a teatro?",
"Frequenza con cui negli ultimi 12 mesi è andato a cinema?",
"Frequenza con cui negli ultimi 12 mesi è andato a musei o mostre?",
"Frequenza con cui negli ultimi 12 mesi è andato a concerti di musica classica?",
"Frequenza con cui negli ultimi 12 mesi è andato ad altri concerti di musica?",
"Frequenza con cui negli ultimi 12 mesi è andato a spettacoli sportivi?",
"Frequenza con cui negli ultimi 12 mesi è andato in discoteche, balere, night club o altri luoghi dove ballare?",
"Frequenza con cui negli ultimi 12 mesi è andato in siti archeologici, monumenti?",
"Legge quotidiani almeno una volta alla settimana?",
"ha letto libri negli ultimi 12 mesi?",
"Numero di libri letti negli ultimi 12 mesi (considerare solo i libri letti per motivi non strettamente scolastici o professionali)",
"numero di libri cartacei letti",
"Numero di e-book letti negli ultimi 12 mesi",
"Numero di audiolibri ascoltati negli ultimi 12 mesi",
"Abitualmente legge qualche rivista settimanale?",
"Abitualmente legge qualche periodico non settimanale?",
"Abitualmente con che frequenza si reca in chiesa o in altro luogo di culto?",
"Soddisfazione per la situazione economica negli ultimi 12 mesi",
"Soddisfazione per la propria salute negli ultimi 12 mesi",
"Soddisfazione per le relazioni familiari negli ultimi 12 mesi",
"Soddisfazione per le relazioni con amici negli ultimi 12 mesi",
"Soddisfazione per il tempo libero negli ultimi 12 mesi",
"Soddisfazione per la situazione ambientale (aria, acqua, ecc.) della zona in cui vive",
"Secondo lei, il paesaggio del luogo in cui vive è affetto da evidente degrado?",
"Pensi agli ultimi 12 mesi. Lei si ritiene soddisfatto del suo lavoro?",
"Con quale frequenza le capita di parlare di politica?",
"Ha partecipato negli ultimi 12 mesi a riunioni di: partiti politici",
"Ha partecipato negli ultimi 12 mesi a riunioni di: organizzazioni sindacali ( sindacati confederati, autonomi, sindacati di tutte le categorie, anche dei pensionati ecc.)",
"Ha partecipato negli ultimi 12 mesi a riunioni di: associazioni o gruppi di volontariato",
"Ha partecipato negli ultimi 12 mesi a riunioni di: associazioni ecologiche per i diritti civili per la pace",
"Ha partecipato negli ultimi 12 mesi a riunioni di: associazioni culturali, ricreative o di altro tipo",
"Ha partecipato negli ultimi 12 mesi a riunioni di: associazioni professionali o di categoria",
"Negli ultimi 12 mesi ha partecipato a un comizio",
"Negli ultimi 12 mesi ha partecipato a un corteo",
"Negli utlimi 12 mesi ha sentito un dibattito politico",
"Negli ultimi 12 mesi ha dato soldi a un partito ( per sottoscrizione, sostegno)",
"Negli ultimi 12 mesi ha dato soldi ad un'associazione",
"Negli ultimi 12 mesi ha svolto attività gratuita per associazioni o gruppi di volontariato",
"Negli ultimi 12 mesi ha svolto attività gratuita per un'associazione non di volontariato",
"Negli ultimi 12 mesi ha svolto attività gratuita per un partito",
"Negli ultimi 12 mesi ha svolto attività gratuita per un sindacato",
"Con che frequenza si informa dei fatti della politica italiana?",
"Si informa di politica attraverso: radio",
"Si informa di politica attraverso: televisione",
"Si informa di politica attraverso: quotidiani",
"Si informa di politica attraverso: settimanali",
"Si informa di politica attraverso: altre riviste non settimanali",
"Si informa di politica attraverso: amici",
"Si informa di politica attraverso: parenti",
"Si informa di politica attraverso: conoscenti",
"Si informa di politica attraverso: colleghi di lavoro",
"Si informa di politica attraverso: incontri o riunioni presso organizzazioni politiche",
"Si informa di politica attraverso: incontri o riunioni presso organizzazioni sindacali",
"Si informa di politica attraverso: altro",
"Si informa dei fatti della politica attraverso Internet?",
"In che modo si informa dei fatti della politica attraverso Internet: legge o scarica giornali, news, riviste online",
"In che modo si informa dei fatti della politica attraverso Internet: ascolta radio e TV online",
"In che modo si informa dei fatti della politica attraverso Internet: tramite siti di partiti politici",
"In che modo si informa dei fatti della politica attraverso Internet: tramite i social network (es. facebook, twitter, myspace, ecc.)",
"In che modo si informa dei fatti della politica attraverso Internet: tramite blog, newsgroup o forum di discussione online",
"In che modo si informa dei fatti della politica attraverso Internet: altro",
"Motivo per cui non si informa mai di politica: non mi interessa",
"Motivo per cui non si informa mai di politica: non ho tempo",
"Motivo per cui non si informa mai di politica: è un argomento troppo complicato",
"Motivo per cui non si informa mai di politica: sono sfiduciato della politica italiana",
"Motivo per cui non si informa mai di politica: altro",
"Negli ultimi 12 mesi le è capitato di servirsi degli uffici anagrafici ( comune, circoscrizione, anagrafe), per certificati, documenti, autentiche e altre pratiche",
"In genere quanto aspetta in fila prima di essere servito?",
"Trova comodo l'orario?",
"Se le si desse l'opportunità di cambiare l'orario di sportello come lo vorrebbe?",
"è a conoscenza della possibilità di ricorrere all'autocertificazione, cioè di compilare lei stesso una semplice dichiarazione al posto dei certificati (come stato di famiglia, residenza, ecc.)?",
"Negli ultimi 12 mesi ha richiesto: certificati anagrafici",
"Negli ultimi 12 mesi ha effettuato: pratiche automobilistiche",
"Negli ultimi 12 mesi ha richiesto: documenti o certificati per l'iscrizione a scuola o all'università",
"Negli ultimi 12 mesi ha richiesto: documenti o certificati del catasto",
"Negli ultimi 12 mesi ha richiesto: altri certificati o documenti",
"Negli ultimi 12 mesi si è recato in una ASL per prenotare una visita o un'analisi o per pratiche amministrative?",
"In genere quanto aspetta in fila prima di essere servito?",
"Trova comodo l'orario?",
"Se le si desse l'opportunità di cambiare l'orario di sportello come lo vorrebbe?",
"Negli ultimi 12 mesi si è recato presso un ufficio postale?",
"Frequenza con cui si reca all'ufficio postale per: spedizione raccomandate",
"Frequenza con cui si reca all'ufficio postale per: spedizione vaglia",
"Frequenza con cui si reca all'ufficio postale per: versamenti in conto corrente",
"Frequenza con cui si reca all'ufficio postale per: ritiro pensioni",
"Frequenza con cui si reca all'ufficio postale per: ritiro pacchi o raccomandate",
"Tempo di attesa in fila per spedizione raccomandate",
"Tempo di attesa in fila per spedizione vaglia",
"Tempo di attesa in fila per versamenti in conto corrente",
"Tempo di attesa in fila per ritiro pensioni",
"Tempo di attesa in fila per ritiro pacchi o raccomandate",
"Trova comodo l'orario?",
"se le si desse l'opportunità di cambiare l'orario di sportello come lo vorrebbe?",
"Negli ultimi 12 mesi le è capitato di servirsi di una banca per operazioni di sportello come versamenti, assegni circolari, prelievi (escluso il bancomat) ecc.?",
"In genere quanto aspetta in fila prima di essere servito?",
"Possiede il bancomat?",
"Possiede carta di credito?",
"Quante carte di credito possiede?",
"Utilizza autobus, filobus, tram all'interno del suo comune?",
"Giudizio su: frequenza delle corse",
"Giudizio su: puntualità",
"Giudizio su: possibilità di trovare posto a sedere",
"Giudizio su: velocità della corsa",
"Giudizio su: pulizia delle vetture",
"Giudizio su: comodità dell'attesa alle fermate",
"Giudizio su: possibilità di collegamento tra zone del comune",
"Giudizio su: comodità di orari",
"Giudizio su: costo del biglietto",
"Giudizio complessivo sul servizio di autobus, filobus, tram",
"Utilizza pullman, corriere che collegano comuni diversi?",
"Giudizio su: frequenza delle corse",
"Giudizio su: puntualità",
"Giudizio su: possibilità di trovare posto a sedere",
"Giudizio su: velocità della corsa",
"Giudizio su: pulizia delle vetture",
"Giudizio su: comodità dell'attesa alle fermate",
"Giudizio su: possibilità di collegamento con altri comuni",
"Giudizio su: comodità di orari",
"Giudizio su: costo del biglietto",
"Giudizio su: informazioni sugli orari e sui servizi",
"Giudizio complessivo del servizio di pullman, corriere tra comuni diversi",
"Utilizza il treno?",
"Giudizio su: frequenza delle corse",
"Giudizio su:  puntualità dei treni",
"Giudizio su: possibilità di trovare posto a sedere",
"Giudizio su: velocità della corsa",
"Giudizio su: pulizia delle vetture",
"Giudizio su: comodità dell'attesa alle fermate",
"Giudizio su:  possibilità di collegamento con altri comuni dei treni",
"Giudizio su: comodità di orari",
"Giudizio su: costo del biglietto",
"Giudizio su: informazioni sul servizio (orari, destinazioni, punti di ristoro)",
"Giudizio complessivo sui treni",
"Utilizza l'automobile come conducente",
"Problemi ambientali che la preoccupano maggiormente: effetto serra, buco nell'ozono",
"Problemi ambientali che la preoccupano maggiormente: estinzione di alcune specie animali/vegetali",
"Problemi ambientali che la preoccupano maggiormente: cambiamenti climatici",
"Problemi ambientali che la preoccupano maggiormente: produzione e smaltimento rifiuti",
"Problemi ambientali che la preoccupano maggiormente: rumore",
"Problemi ambientali che la preoccupano maggiormente: inquinamento dell'aria",
"Problemi ambientali che la preoccupano maggiormente: inquinamento del suolo",
"Problemi ambientali che la preoccupano maggiormente: inquinamento di fiumi, mari",
"Problemi ambientali che la preoccupano maggiormente: dissesto idrogeologico (terremoti, alluvioni, ecc.)",
"Problemi ambientali che la preoccupano maggiormente: catastrofi provocate dall'uomo",
"Problemi ambientali che la preoccupano maggiormente: distruzione delle foreste",
"Problemi ambientali che la preoccupano maggiormente: inquinamento elettromagnetico",
"Problemi ambientali che la preoccupano maggiormente: rovina del paesaggio (eccessiva costruzione di edifici)",
"Problemi ambientali che la preoccupano maggiormente: esaurimento risorse naturali (acqua, minerali, petrolio, ecc.)",
"Problemi ambientali che la preoccupano maggiormente: altri problemi",
"gettare carte per la strada",
"parcheggiare l'automobile in doppia fila",
"fare attenzione a non adottare comportamenti di guida rumorosi",
"Attualmente quanto si ritiene soddisfatto della sua vita nel complesso? Dia un punteggio da 0 a 10",
"Nei prossimi 5 anni lei pensa che la sua situazione personale: migliorerà, resterà la stessa o peggiorerà",
"Lei pensa che ci si possa fidare della maggior parte della gente oppure bisogna stare molto attenti?",
"Immagini di aver perso il suo portafoglio con che probabilità pensa le venga restituito da: un vicino di casa",
"Immagini di aver perso il suo portafoglio con che probabilità pensa le venga restituito da:  un appartenente alle forze dell'ordine",
"Immagini di aver perso il suo portafoglio con che probabilità pensa le venga restituito da: un completo sconosciuto",
"Utilizzando un punteggio da 0 a 10 indichi quanto si fida delle seguenti istituzioni: Parlamento italiano",
"Utilizzando un punteggio da 0 a 10 indichi quanto si fida delle seguenti istituzioni: Parlamento europeo",
"Utilizzando un punteggio da 0 a 10 indichi quanto si fida delle seguenti istituzioni: Governo regionale",
"Utilizzando un punteggio da 0 a 10 indichi quanto si fida delle seguenti istituzioni: Governo provinciale",
"Utilizzando un punteggio da 0 a 10 indichi quanto si fida delle seguenti istituzioni: Governo comunale",
"Utilizzando un punteggio da 0 a 10 indichi quanto si fida delle seguenti istituzioni: partiti politici",
"Utilizzando un punteggio da 0 a 10 indichi quanto si fida delle seguenti istituzioni: sistema giudiziario",
"Utilizzando un punteggio da 0 a 10 indichi quanto si fida delle seguenti istituzioni: forze dell'ordine",
"Utilizzando un punteggio da 0 a 10 indichi quanto si fida delle seguenti istituzioni: vigili del fuoco",
"Peso minorenni in Kg",
"Statura minorenni in cm",
"Persone di 3-17 anni in eccesso di peso",
"Complessivamente, quanto è soddisfatto del servizio dell'energia elettrica?",
"Giudizio su: continuità del servizio (assenza di guasti e interruzioni della fornitura)",
"Giudizio su: assenza di sbalzi di tensione",
"Giudizio su: comprensibilità del display",
"Giudizio su: comprensibilità delle bollette",
"Giudizio su: informazione sul servizio (informazioni su tariffe, condizioni di erogazione, allacciamenti ecc.)",
"Come arriva il gas all'abitazione?",
"Complessivamente quanto è soddisfatto del servizio gas?",
"Giudizio sul servizio del gas: adeguatezza pressione di fornitura",
"Giudizio sul servizio del gas: frequenza di lettura dei contatori",
"Giudizio sul servizio del gas: comprensibilità delle bollette",
"Giudizio sul servizio del gas: informazione sul servizio (informazioni su tariffe, condizioni di erogazioni, allacciamenti, ecc.)",
"Giudizio sul servizio del gas: sicurezza della rete di distribuzione",
"Sa che può scegliere un fornitore diverso dall'azienda che le eroga attualmente l'energia elettrica e/o il gas?",
"Ha mai cambiato fornitore di energia elettrica o gas negli ultimi 12 mesi?",
"Motivo per cui non ha cambiato fornitore di Energia elettrica: soddisfatti del fornitore attuale",
"Motivo per cui non ha cambiato fornitore di Energia elettrica: mancanza di informazioni",
"Motivo per cui non ha cambiato fornitore di Energia elettrica: è difficile valutare la convenienza del cambiamento",
"Motivo per cui non ha cambiato fornitore di Energia elettrica: il risparmio ottenibile non è consistente",
"Motivo per cui non ha cambiato fornitore di Energia elettrica: teme peggioramento della qualità del servizio",
"Motivo per cui non ha cambiato fornitore di Gas: soddisfatti del fornitore attuale",
"Motivo per cui non ha cambiato fornitore di Gas: mancanza di informazioni",
"Motivo per cui non ha cambiato fornitore di Gas: è difficile valutare la convenienza del cambiamento",
"Motivo per cui non ha cambiato fornitore di Gas: il risparmio ottenibile non è consistente",
"Motivo per cui non ha cambiato fornitore di Gas: teme peggioramento della qualità del servizio",
"Negli ultimi 12 mesi ha utilizzato il servizio di call-center dell'azienda di energia elettrica o gas?",
"Complessivamente quanto è soddisfatto del servizio di call center?",
"Negli ultimi 12 mesi lei o qualche componente della famiglia ha mai utilizzato il numero di pronto intervento o segnalazione guasti dell'azienda fornitrice di energia elettrica o di gas?",
"Complessivamente quanto è soddisfatto del servizio di pronto intervento o segnalazione guasti? ?",
"La zona in cui abita presenta: sporcizia nelle strade",
"La zona in cui abita presenta: difficoltà di parcheggio",
"La zona in cui abita presenta: difficoltà di collegamento coi mezzi pubblici",
"La zona in cui abita presenta: traffico",
"La zona in cui abita presenta: inquinamento dell'aria",
"La zona in cui abita presenta: rumore",
"La zona in cui abita presenta: rischio di criminalità",
"La zona in cui abita presenta: odori sgradevoli",
"La zona in cui abita presenta: scarsa illuminazione delle strade",
"La zona in cui abita presenta: cattive condizioni della pavimentazione stradale",
"Nella zona in cui abita la famiglia ci sono parchi, giardini o altro verde pubblico raggiungibile a piedi in meno di 15 minuti?",
"Di quante stanze si compone l'abitazione?",
"L'abitazione dispone di terrazzo o balcone?",
"L'abitazione dispone di giardino privato?",
"L'abitazione dispone di telefono",
"Il numero telefonico dell'abitazione principale è riportato nell'elenco telefonico del comune in cui vive?",
"L'abitazione dispone di riscaldamento?",
"Tipo di riscaldamento prevalente:",
"L'acqua arriva all'abitazione attraverso rete comunale",
"L'acqua arriva all'abitazione attraverso pozzi, sorgenti o altre fonti private",
"L'acqua arriva all'abitazione attraverso sistemi raccolta acqua piovana",
"L'acqua arriva all'abitazione attraverso autobotti",
"L'acqua arriva all'abitazione in altro modo",
"Complessivamente quanto è soddisfatto del servizio idrico?",
"Giudizio sul servizio idrico: assenza di interruzioni della fornitura",
"Giudizio sul servizio idrico: livello di pressione dell'acqua",
"Giudizio sul servizio idrico: odore, sapore e limpidezza dell'acqua",
"Giudizio sul servizio idrico: frequenza di lettura dei contatori",
"Giudizio sul servizio idrico: frequenza della fatturazione",
"Giudizio sul servizio idrico: comprensibilità delle bollette",
"L'abitazione è allacciata alla rete fognaria?",
"Si verificano uno o più dei seguenti problemi: le spese per l'abitazione sono troppo alte",
"Si verificano uno o più dei seguenti problemi:  l'abitazione è troppo piccola",
"Si verificano uno o più dei seguenti problemi:  l'abitazione è troppo distante da altri familiari",
"Si verificano uno o più dei seguenti problemi: irregolarità nella erogazione dell'acqua",
"Si verificano uno o più dei seguenti problemi: l'abitazione è in cattive condizioni",
"Frequenza con cui negli ultimi 12 mesi si è verificata l'irregolarità nella erogazione dell'acqua",
"La famiglia o qualche componente beve abitualmente acqua del rubinetto in casa",
"Nessun componente della famiglia beve acqua di rubinetto perché non è bevibile o non ci fidiamo a berla (inquinata, brutto colore, cattivo sapore, ecc.)",
"Nessun componente della famiglia beve acqua di rubinetto per altro motivo",
"A che titolo la famiglia occupa l'abitazione?",
"Difficoltà a raggiungere: farmacie",
"Difficoltà a raggiungere: pronto soccorso",
"Difficoltà a raggiungere: ufficio postale",
"Difficoltà a raggiungere: polizia, carabinieri",
"Difficoltà a raggiungere: uffici comunali",
"Difficoltà a raggiungere: asilo nido",
"Difficoltà a raggiungere: scuola dell'infanzia",
"Difficoltà a raggiungere: scuola primaria",
"Difficoltà a raggiungere: scuola secondaria di primo grado",
"Difficoltà a raggiungere: negozi di generi alimentari, mercati",
"Difficoltà a raggiungere: supermercati",
"Difficoltà a raggiungere: contenitori rifiuti",
"Difficoltà a raggiungere: sportelli azienda gas",
"Difficoltà a raggiungere: sportelli dell'Enel o dell'azienda elettrica locale",
"Giudizio sul costo sostenuto per: raccolta rifiuti urbani",
"Giudizio sul costo sostenuto per: erogazione dell'acqua",
"Presenza nella zona in cui vive di contenitori per la raccolta differenziata di: carta",
"Presenza nella zona in cui vive di contenitori per la raccolta differenziata di: vetro",
"Presenza nella zona in cui vive di contenitori per la raccolta differenziata di: farmaci",
"Presenza nella zona in cui vive di contenitori per la raccolta differenziata di: batterie usate",
"Presenza nella zona in cui vive di contenitori per la raccolta differenziata di: lattine di alluminio",
"Presenza nella zona in cui vive di contenitori per la raccolta differenziata di: contenitori in plastica per liquidi",
"Presenza nella zona in cui vive di contenitori per la raccolta differenziata di: rifiuti organici",
"Presenza nella zona in cui vive di contenitori per la raccolta differenziata di: rifiuti tessili",
"Presenza nella zona in cui vive di contenitori per la raccolta differenziata di: altro",
"La zona in cui vive è servita/coinvolta dalla raccolta porta a porta dei rifiuti?",
"Abitudine a raccogliere i rifiuti in modo separato tramite gli appositi contenitori: carta e cartone",
"Abitudine a raccogliere i rifiuti in modo separato tramite gli appositi contenitori: vetro",
"Abitudine a raccogliere i rifiuti in modo separato tramite gli appositi contenitori: farmaci",
"Abitudine a raccogliere i rifiuti in modo separato tramite gli appositi contenitori: batterie usate",
"Abitudine a raccogliere i rifiuti in modo separato tramite gli appositi contenitori: contenitori di alluminio e altri metalli",
"Abitudine a raccogliere i rifiuti in modo separato tramite gli appositi contenitori: contenitori in plastica",
"Abitudine a raccogliere i rifiuti in modo separato tramite gli appositi contenitori: rifiuti organici/umido",
"Abitudine a raccogliere i rifiuti in modo separato tramite gli appositi contenitori: rifiuti tessili",
"Abitudine a raccogliere i rifiuti in modo separato tramite gli appositi contenitori: altro",
"Complessivamente la sua famiglia quanto è soddisfatta del servizio di raccolta dei rifiuti porta a porta nella zona in cui vive?",
"Famiglia non soddisfatta per il servizio di raccolta dei rifiuti porta a porta per: problemi legati agli orari di ritiro",
"Famiglia non soddisfatta per il servizio di raccolta dei rifiuti porta a porta per: problemi legati alla frequenza di ritiro",
"Famiglia non soddisfatta per il servizio di raccolta dei rifiuti porta a porta per: problemi legati ai sacchetti/contenitori da utilizzare nella raccolta",
"Famiglia non soddisfatta per il servizio di raccolta dei rifiuti porta a porta per: odori causati dall'umido non raccolto quotidianamente",
"Famiglia non soddisfatta per il servizio di raccolta dei rifiuti porta a porta per: non ritiene utile raccogliere rifiuti in modo differenziato",
"Famiglia non soddisfatta per il servizio di raccolta dei rifiuti porta a porta per: non crede che i rifiuti raccolti vengano recuperati/riciclati",
"Famiglia non soddisfatta per il servizio di raccolta dei rifiuti porta a porta per: non sono adeguate le informazioni e l'assistenza agli utenti",
"Famiglia non soddisfatta per il servizio di raccolta dei rifiuti porta a porta per: altro motivo",
"Nella zona in cui vive la sua famiglia ci sono stazioni ecologiche, cioè centri dove è possibile portare gratuitamente i rifiuti che non possono essere gettati nei cassonetti?",
"La sua famiglia ha mai portato rifiuti in questi centri di raccolta?",
"Tipo di rifiuti portato nelle stazioni ecologiche: carta/cartone di dimensioni ingombranti",
"Tipo di rifiuti portato nelle stazioni ecologiche: vetro",
"Tipo di rifiuti portato nelle stazioni ecologiche: plastica di dimensioni ingombranti",
"Tipo di rifiuti portato nelle stazioni ecologiche: pneumatici",
"Tipo di rifiuti portato nelle stazioni ecologiche: metalli",
"Tipo di rifiuti portato nelle stazioni ecologiche: legno",
"Tipo di rifiuti portato nelle stazioni ecologiche: farmaci scaduti",
"Tipo di rifiuti portato nelle stazioni ecologiche: batterie usate",
"Tipo di rifiuti portato nelle stazioni ecologiche: rifiuti ingombranti",
"Tipo di rifiuti portato nelle stazioni ecologiche: inerti",
"Tipo di rifiuti portato nelle stazioni ecologiche: apparecchiature elettriche ed elettroniche",
"Tipo di rifiuti portato nelle stazioni ecologiche: olio esausto",
"Tipo di rifiuti portato nelle stazioni ecologiche: rifiuti tossici e/o infiammabili",
"Tipo di rifiuti portato nelle stazioni ecologiche: verde e potature",
"Tipo di rifiuti portato nelle stazioni ecologiche: rifiuti tessili",
"Tipo di rifiuti portato nelle stazioni ecologiche: altro",
"Motivo per cui la famiglia non ha mai portato rifiuti nelle stazioni ecologiche",
"Cosa potrebbe spingere la famiglia ad effettuare o fare più spesso la raccolta differenziata: maggiori informazioni su come separare i rifiuti",
"Cosa potrebbe spingere la famiglia ad effettuare o fare più spesso la raccolta differenziata: maggiori informazioni su dove separare i rifiuti",
"Cosa potrebbe spingere la famiglia ad effettuare o fare più spesso la raccolta differenziata: raccolta a domicilio (porta a porta)",
"Cosa potrebbe spingere la famiglia ad effettuare o fare più spesso la raccolta differenziata: disponibilità di appositi contenitori nelle vicinanze dell'abitazione",
"Cosa potrebbe spingere la famiglia ad effettuare o fare più spesso la raccolta differenziata: centri di raccolta migliori e più numerosi",
"Cosa potrebbe spingere la famiglia ad effettuare o fare più spesso la raccolta differenziata: maggiori garanzie che i rifiuti raccolti vengano effettivamente separati",
"Cosa potrebbe spingere la famiglia ad effettuare o fare più spesso la raccolta differenziata: obbligo legale/multe per chi non effettua la raccolta differenziata",
"Cosa potrebbe spingere la famiglia ad effettuare o fare più spesso la raccolta differenziata: detrazioni agevolazioni fiscali o tariffarie per chi effettua regolarmente la raccolta differenziata",
"Negli ultimi 12 mesi uno o più dei componenti della famiglia attuale ha cambiato abitazione?",
"Negli ultimi 12 mesi la famiglia o qualche componente ha preso seriamente in considerazione la possibilità di cambiare abitazione?",
"La famiglia è assicurata contro i furti nell'abitazione?",
"La famiglia si avvale di: collaboratore/collaboratrice domestico/a",
"La famiglia si avvale di: baby-sitter",
"La famiglia si avvale di: persona che assiste un anziano o un disabile",
"Ore a settimana collaboratore/collaboratrice domestico/a",
"Ore a settimana baby-sitter",
"Ore a settimana persona che assiste un anziano o un disabile",
"Negli ultimi 12 mesi la famiglia è ricorsa alla consulenza di: avvocato",
"Negli ultimi 12 mesi la famiglia è ricorsa alla consulenza di: notaio",
"Negli ultimi 12 mesi la famiglia è ricorsa alla consulenza di: commercialista",
"Organizzazione della famiglia per la compilazione dei modelli per il pagamento delle tasse: la famiglia non deve compilare nessun modulo",
"Organizzazione della famiglia per la compilazione dei modelli per il pagamento delle tasse: se ne occupano uno o più componenti della famiglia",
"Organizzazione della famiglia per la compilazione dei modelli per il pagamento delle tasse: se ne occupano organizzazioni o persone non a pagamento",
"Organizzazione della famiglia per la compilazione dei modelli per il pagamento delle tasse: se ne occupa un commercialista, una organizzazione o altra persona a pagamento",
"Qualche componente della famiglia ha effettuato nel corso dell'anno inserzioni a pagamento sui giornali per vari motivi (vendite case, annunci nozze, morti, ecc.)?",
"Possesso di: lavastoviglie",
"numero lavastoviglie",
"Possesso di: lavatrice",
"numero lavatrici",
"Possesso di: videoregistratore",
"numero videoregistratore",
"Possesso di: videocamera",
"numero videocamere",
"Possesso di: Lettore DVD/Blu Ray",
"numero lettori DVD/Blu Ray",
"Possesso di: impianto stereo hi-fi per ascoltare musica",
"numero impianto stereo hi-fi per ascoltare musica",
"Possesso di: segreteria telefonica",
"numero segreterie telefoniche",
"Possesso di: fax",
"numero di fax",
"Possesso di: televisore",
"numero televisori",
"Possesso di: antenna parabolica",
"numero antenna parabolica",
"Possesso di: condizionatori, climatizzatori",
"numero condizionatori, climatizzatori",
"Possesso di: bicicletta",
"numero di biciclette",
"Possesso di: motorino, scooter",
"numero motorini, scooter",
"Possesso di: motocicletta, moto",
"numero di motociclette, moto",
"La famiglia possiede abbonamento o carta pre-pagata pay tv?",
"la famiglia possiede una smart TV",
"La famiglia possiede l'automobile?",
"numero automobili",
"Quanti libri possiede la famiglia?",
"La famiglia possiede il telefono cellulare?",
"Numero di telefoni cellulari posseduti",
"Il telefono o i telefoni cellulari di cui dispone la famiglia hanno la possibilità di collegarsi ad Internet?",
"La famiglia dispone di personal computer a casa?",
"La famiglia possiede: modem",
"La famiglia possiede: consolle per videogiochi",
"Numero consolle, videogiochi, altre apparecchiature computerizzate (escluso personal computer)",
"La famiglia possiede: lettore di e-book",
"Numero di lettori di e-book",
"La famiglia possiede: lettore di mp3/mp4",
"Numero di lettori mp3/mp4",
"La famiglia possiede: macchina fotografica digitale",
"Numero di macchine fotografiche digitali",
"La famiglia possiede: navigatore satellitare",
"numero di navigatori satellitari",
"La famiglia dispone di un accesso ad Internet da casa?",
"Connessione usata dalla famiglia: fissa a banda larga (es.DSL, ADSL, VDSL, cavo, fibra ottica, satellite, rete pubblica WIFI, ecc. )",
"Connessione usata dalla famiglia: rete di telefonia mobile a banda larga con cellulare o smartphone (minimo con tecnologia 3G)",
"Connessione usata dalla famiglia: rete di telefonia mobile a banda larga tramite SIM card o chiavetta USB  (minimo con tecnologia 3G)",
"Connessione fissa o mobile a banda stretta (es.ISDN, 2G, GPRS, ecc.)",
"Motivo per cui la famiglia non dispone di accesso ad Internet da casa: accede ad Internet da altro luogo",
"Motivo per cui la famiglia non dispone di accesso ad Internet da casa: Internet non è utile, non è interessante",
"Motivo per cui la famiglia non dispone di accesso ad Internet da casa: alto costo degli strumenti per connettersi",
"Motivo per cui la famiglia non dispone di accesso ad Internet da casa: alto costo del collegamento",
"Motivo per cui la famiglia non dispone di accesso ad Internet da casa: nessuno sa usare internet",
"Motivo per cui la famiglia non dispone di accesso ad Internet da casa: motivi di privacy, sicurezza",
"Motivo per cui la famiglia non dispone di accesso ad Internet da casa: mancanza di una connessione a banda larga nella zona",
"Motivo per cui la famiglia non dispone di accesso ad Internet da casa:  altro motivo (codice)",
"Valutazione della situazione economica della famiglia confrontata con quella di un anno fa",
"Con riferimento agli ultimi 12 mesi e tenendo presente le esigenze di tutti i componenti familiari, come sono state le risorse economiche complessive della famiglia?",
"Indice di massa corporea per le persone di 18 anni e più")

RELPAR_Fact <- factor(DF_AVQ_A2018$RELPAR, 
levels=c("01", 
"02", 
"03", 
"04", 
"05", 
"06", 
"07", 
"08", 
"09", 
"10", 
"11", 
"12", 
"13", 
"14", 
"15", 
"16", 
"17"), 
labels=c("persona di riferimento PR", 
"coniuge di PR", 
"convivente (coniugalmente) di PR", 
"genitore (coniuge del genitore, convivente del genitore) di PR", 
"genitore (coniuge del genitore, convivente del genitore) del coniuge o convivente di PR", 
"figlio di PR nato dall'ultimo matrimonio o convivenza", 
"figlio di PR o del coniuge nato da precedente matrimonio o convivenza", 
"coniuge del figlio di PR (o del coniuge o convivente di PR)", 
"convivente del figlio di PR (o del coniuge o convivente di PR)", 
"nipote (figlio del figlio/a) di PR (o del coniuge o convivente di PR)", 
"nipote (figlio del fratello/sorella) di PR (o del coniuge o convivente di PR)", 
"fratello/sorella di PR", 
"fratello/sorella del coniuge o convivente di PR", 
"coniuge del fratello/sorella di PR (o del coniuge o convivente di PR)", 
"convivente del fratello/sorella di PR (o del coniuge o convivente di PR)", 
"altro parente di PR (o del coniuge o convivente di PR)", 
"persona legata da amicizia")) 


ETAM_Fact <- factor(DF_AVQ_A2018$ETAM, 
levels=c("001", 
"002", 
"003", 
"004", 
"005", 
"006", 
"007", 
"008", 
"009", 
"010", 
"011", 
"012", 
"013", 
"014", 
"015", 
"016", 
"017", 
"018"), 
labels=c("da 0 a 2 anni", 
"da 3 a 5 anni", 
"da 6 a 10 anni", 
"da 11 a 13 anni", 
"da 14 a 15 anni", 
"da 16 a 17 anni", 
"da 18 a 19 anni", 
"da 20 a 24 anni", 
"da 25 a 29 anni", 
"da 30 a 34 anni", 
"da 35 a 39 anni", 
"da 40 a 44 anni", 
"da 45 a 49 anni", 
"da 50 a 54 anni", 
"da 55 a 59 anni", 
"da 60 a 64 anni", 
"da 65 a 74 anni", 
"75 anni e piu'")) 


SESSO_Fact <- factor(DF_AVQ_A2018$SESSO, 
levels=c("1", 
"2"), 
labels=c("maschio", 
"femmina")) 


STCIVM_Fact <- factor(DF_AVQ_A2018$STCIVM, 
levels=c("1", 
"2", 
"3", 
"6"), 
labels=c("celibe/nubile", 
"coniugato/a coabitante con il coniuge; unito/a civilmente", 
"separato/a di fatto; separato/a legalmente; divorziato/a; gia' in unione civile (per scioglimento unione)", 
"vedovo/a; gia' in unione civile (per decesso del partner)")) 


STCPM_Fact <- factor(DF_AVQ_A2018$STCPM, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6"), 
labels=c("celibe/nubile", 
"coniugato/a coabitante con il coniuge 	", 
"coniugato/a non coabitante con il coniuge (separato/a di fatto) ", 
"separato/a legalmente", 
"divorziato/a", 
"vedovo/a")) 


ISTRM_Fact <- factor(DF_AVQ_A2018$ISTRM, 
levels=c("01", 
"07", 
"09", 
"10", 
"11"), 
labels=c("laurea e post-laurea", 
"diploma", 
"licenza di scuola media", 
"licenza di scuola elementare", 
"nessun titolo di studio")) 


CONDM_Fact <- factor(DF_AVQ_A2018$CONDM, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"7", 
"8"), 
labels=c("occupato", 
"in cerca di nuova occupazione", 
"in cerca di prima occupazione", 
"casalinga", 
"studente", 
"ritirato dal lavoro", 
"altra condizione; inabile al lavoro")) 


LAVPAS_Fact <- factor(DF_AVQ_A2018$LAVPAS, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


POSIZM_Fact <- factor(DF_AVQ_A2018$POSIZM, 
levels=c("01", 
"02", 
"03", 
"04"), 
labels=c("dirigente; autonomo come imprenditore; libero professionista", 
"direttivo, quadro; impiegato", 
"capo operaio, operaio subalterno e assimilati; apprendista;  lavorante a domicilio per conto d'impresa", 
"lavoratore in proprio;  socio cooperativa Produzione Beni e/o prestazioni di servizio;  coadiuvante;  collaborazione coordinata e continuativa (con o senza progetto); prestazione d'opera occasionale")) 


ATECOM_Fact <- factor(DF_AVQ_A2018$ATECOM, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("agricoltura, silvicoltura e pesca", 
"totale industria escluse costruzioni", 
"costruzioni", 
"totale servizi")) 


TIPNU2_Fact <- factor(DF_AVQ_A2018$TIPNU2, 
levels=c("0", 
"1", 
"2", 
"3", 
"4"), 
labels=c("nessun nucleo", 
"coppie con figli", 
"coppie senza figli", 
"monogenitore padre", 
"monogenitore madre")) 


RPNUC2_Fact <- factor(DF_AVQ_A2018$RPNUC2, 
levels=c("0", 
"1", 
"2", 
"3"), 
labels=c("membro isolato", 
"PR nucleo", 
"coniuge o convivente", 
"figlio")) 


TIPFA2M_Fact <- factor(DF_AVQ_A2018$TIPFA2M, 
levels=c("01", 
"02", 
"03", 
"04", 
"05", 
"06", 
"07", 
"08", 
"09", 
"10", 
"11", 
"14", 
"15", 
"16", 
"19", 
"20", 
"21", 
"22", 
"23", 
"24", 
"25", 
"28", 
"29", 
"30", 
"33", 
"34", 
"35", 
"36", 
"37", 
"38", 
"39", 
"40", 
"41"), 
labels=c("persona sola", 
"genitore con figli non celibi o nubili", 
"insieme di parenti", 
"parenti ed altri", 
"persone non parenti", 
"coppia coniugata senza figli, senza isolati", 
"coppia non coniugata senza figli senza isolati", 
"coppia coniugata con figli senza isolati", 
"coppia non coniugata con figli senza isolati", 
"monogenitore maschio celibe senza isolati", 
"monogenitore maschio separato di fatto senza isolati;  monogenitore maschio separato legalmente senza isolati; monogenitore maschio divorziato senza isolati", 
"monogenitore maschio vedovo senza isolati", 
"monogenitore femmina nubile senza isolati", 
"monogenitore femmina separata di fatto senza isolati; monogenitore femmina separata legalmente senza isolati; monogenitore femmina divorziata senza isolati", 
"monogenitore femmina vedova senza isolati", 
"coppia coniugata senza figli con isolati", 
"coppia non coniugata senza figli con isolati", 
"coppia coniugata con figli con isolati", 
"coppia non coniugata con figli con isolati", 
"monogenitore maschio celibe con isolati", 
"monogenitore maschio separato di fatto con isolati;  monogenitore maschio separato legalmente con isolati; monogenitore maschio divorziato con isolati", 
"monogenitore maschio vedovo con isolati", 
"monogenitore femmina nubile con isolati", 
"monogenitore femmina separata di fatto con isolati; monogenitore femmina separata legalmente con isolati; monogenitore femmina divorziata con isolati", 
"monogenitore femmina vedova con isolati", 
"due nuclei a due generazioni senza isolati", 
"due nuclei di tipo fraterno senza isolati", 
"due nuclei di altro tipo senza isolati", 
"due nuclei a due generazioni con isolati", 
"due nuclei di tipo fraterno con isolati", 
"due nuclei di altro tipo con isolati", 
"tre o pi¿ nuclei senza isolati", 
"tre o pi¿ nuclei con isolati")) 


REGMF_Fact <- factor(DF_AVQ_A2018$REGMF, 
levels=c("010", 
"020", 
"030", 
"040", 
"050", 
"060", 
"070", 
"080", 
"090", 
"100", 
"110", 
"120", 
"130", 
"140", 
"150", 
"160", 
"170", 
"180", 
"190", 
"200", 
"444", 
"555", 
"666", 
"777", 
"888", 
"999"), 
labels=c("Piemonte", 
"Valle d'Aosta", 
"Lombardia", 
"Trentino-Alto Adige", 
"Veneto", 
"Friuli-Venezia Giulia", 
"Liguria", 
"Emilia-Romagna", 
"Toscana", 
"Umbria", 
"Marche", 
"Lazio", 
"Abruzzo", 
"Molise", 
"Campania", 
"Puglia", 
"Basilicata", 
"Calabria", 
"Sicilia", 
"Sardegna", 
"Nord-ovest", 
"Nord-est", 
"Centro", 
"Sud", 
"Isole", 
"non disponibile")) 


RIPMF_Fact <- factor(DF_AVQ_A2018$RIPMF, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"9"), 
labels=c("Nord-ovest", 
"Nord-est", 
"Centro", 
"Sud", 
"Isole", 
"non disponibile")) 


DOMMF_Fact <- factor(DF_AVQ_A2018$DOMMF, 
levels=c("1", 
"3", 
"5", 
"9"), 
labels=c("Area metropolitana", 
"Comuni aventi fino a 10.000 abitanti", 
"Comuni con oltre 10.000 abitanti", 
"non disponibile")) 


REDPR_Fact <- factor(DF_AVQ_A2018$REDPR, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6"), 
labels=c("reddito da lavoro dipendente", 
"reddito da lavoro autonomo", 
"pensione", 
"indennità e provvidenze varie", 
"redditi patrimoniali", 
"mantenimento da parte della famiglia")) 


CITT_Fact <- factor(DF_AVQ_A2018$CITT, 
levels=c("1", 
"3"), 
labels=c("italiana", 
"straniera")) 


FRSCM_Fact <- factor(DF_AVQ_A2018$FRSCM, 
levels=c("01", 
"02", 
"03", 
"06", 
"13", 
"14", 
"15"), 
labels=c("NO", 
"Dottorato di ricerca", 
"Corsi di laurea o AFAM", 
"Scuola secondaria di secondo grado", 
"Scuola secondaria di primo grado", 
"Scuola primaria", 
"Scuola dell'infanzia e Asilo nido")) 


MOTAS_Fact <- factor(DF_AVQ_A2018$MOTAS, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6"), 
labels=c("È importante da un punto di vista educativo", 
"Per farlo stare in compagnia di altri bambini", 
"Una baby sitter costerebbe troppo", 
"Nessun familiare lo può accudire", 
"Perché ci vanno tutti", 
"Altro")) 


DOMRIF_Fact <- factor(DF_AVQ_A2018$DOMRIF, 
levels=c("01"), 
labels=c("presente")) 


MEMFAM_Fact <- factor(DF_AVQ_A2018$MEMFAM, 
levels=c("02"), 
labels=c("presente")) 


NIDLON_Fact <- factor(DF_AVQ_A2018$NIDLON, 
levels=c("03"), 
labels=c("presente")) 


NODELE_Fact <- factor(DF_AVQ_A2018$NODELE, 
levels=c("04"), 
labels=c("presente")) 


MALAT_Fact <- factor(DF_AVQ_A2018$MALAT, 
levels=c("05"), 
labels=c("presente")) 


ABBAND_Fact <- factor(DF_AVQ_A2018$ABBAND, 
levels=c("06"), 
labels=c("presente")) 


NONVUO_Fact <- factor(DF_AVQ_A2018$NONVUO, 
levels=c("07"), 
labels=c("presente")) 


NOMED_Fact <- factor(DF_AVQ_A2018$NOMED, 
levels=c("08"), 
labels=c("presente")) 


TPICC_Fact <- factor(DF_AVQ_A2018$TPICC, 
levels=c("09"), 
labels=c("presente")) 


NDTROPPO_Fact <- factor(DF_AVQ_A2018$NDTROPPO, 
levels=c("10"), 
labels=c("presente")) 


ORARIS_Fact <- factor(DF_AVQ_A2018$ORARIS, 
levels=c("11"), 
labels=c("presente")) 


ALNIDO_Fact <- factor(DF_AVQ_A2018$ALNIDO, 
levels=c("12"), 
labels=c("presente")) 


DIVCOM_Fact <- factor(DF_AVQ_A2018$DIVCOM, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


STCOM_Fact <- factor(DF_AVQ_A2018$STCOM, 
levels=c("1"), 
labels=c("presente")) 


STPROV_Fact <- factor(DF_AVQ_A2018$STPROV, 
levels=c("2"), 
labels=c("presente")) 


STREG_Fact <- factor(DF_AVQ_A2018$STREG, 
levels=c("3"), 
labels=c("presente")) 


ALTREG_Fact <- factor(DF_AVQ_A2018$ALTREG, 
levels=c("4"), 
labels=c("presente")) 


ESTERO_Fact <- factor(DF_AVQ_A2018$ESTERO, 
levels=c("5"), 
labels=c("presente")) 


USOMT_Fact <- factor(DF_AVQ_A2018$USOMT, 
levels=c("1", 
"2", 
"3"), 
labels=c("no, vado a piedi", 
"sì, un solo mezzo", 
"sì, due o più mezzi")) 


TRENO_Fact <- factor(DF_AVQ_A2018$TRENO, 
levels=c("01"), 
labels=c("presente")) 


TRAM_Fact <- factor(DF_AVQ_A2018$TRAM, 
levels=c("02"), 
labels=c("presente")) 


METRO_Fact <- factor(DF_AVQ_A2018$METRO, 
levels=c("03"), 
labels=c("presente")) 


BUS_Fact <- factor(DF_AVQ_A2018$BUS, 
levels=c("04"), 
labels=c("presente")) 


COR_Fact <- factor(DF_AVQ_A2018$COR, 
levels=c("05"), 
labels=c("presente")) 


PAZSC_Fact <- factor(DF_AVQ_A2018$PAZSC, 
levels=c("06"), 
labels=c("presente")) 


AUTOC_Fact <- factor(DF_AVQ_A2018$AUTOC, 
levels=c("07"), 
labels=c("presente")) 


AUTOP_Fact <- factor(DF_AVQ_A2018$AUTOP, 
levels=c("08"), 
labels=c("presente")) 


MOTO_Fact <- factor(DF_AVQ_A2018$MOTO, 
levels=c("09"), 
labels=c("presente")) 


BICI_Fact <- factor(DF_AVQ_A2018$BICI, 
levels=c("10"), 
labels=c("presente")) 


ALMEZ_Fact <- factor(DF_AVQ_A2018$ALMEZ, 
levels=c("11"), 
labels=c("presente")) 


MTPUSO_Fact <- factor(DF_AVQ_A2018$MTPUSO, 
levels=c("01", 
"02", 
"03", 
"04", 
"05", 
"06", 
"07", 
"08", 
"09", 
"10", 
"11"), 
labels=c("treno", 
"tram", 
"metropolitana", 
"autobus, filobus (all'interno del Comune)", 
"pullman, corriere (tra Comuni diversi)", 
"pullman aziendale/scolastico", 
"auto privata(come conducente)", 
"auto privata(come passeggero)", 
"motocicletta o ciclomotore", 
"bicicletta", 
"altro mezzo")) 


CARPOO_Fact <- factor(DF_AVQ_A2018$CARPOO, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("Tutti i giorni", 
"Una o più volte alla settimana", 
"Più raramente", 
"Mai")) 


PROSOC_Fact <- factor(DF_AVQ_A2018$PROSOC, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


NPROSOM_Fact <- factor(DF_AVQ_A2018$NPROSOM, 
levels=c("01", 
"02", 
"03", 
"04", 
"05"), 
labels=c("1", 
"2", 
"3", 
"4", 
"5 e piu'")) 


GUMED_Fact <- factor(DF_AVQ_A2018$GUMED, 
levels=c("3", 
"4"), 
labels=c("no", 
"sì")) 


NGUMEDM_Fact <- factor(DF_AVQ_A2018$NGUMEDM, 
levels=c("01", 
"02", 
"03", 
"04", 
"05"), 
labels=c("1", 
"2", 
"3", 
"4", 
"5 e piu'")) 


ASSDO_Fact <- factor(DF_AVQ_A2018$ASSDO, 
levels=c("5", 
"6"), 
labels=c("no", 
"sì")) 


NASSDOM_Fact <- factor(DF_AVQ_A2018$NASSDOM, 
levels=c("01", 
"02", 
"03", 
"04", 
"05", 
"06", 
"07", 
"08", 
"09", 
"10", 
"11", 
"12", 
"13", 
"14", 
"15", 
"16", 
"17", 
"18", 
"19", 
"20"), 
labels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6", 
"7", 
"8", 
"9", 
"10", 
"11", 
"12", 
"13", 
"14", 
"15", 
"da 16 a 20", 
"da 21 a 30", 
"da 31 a 40", 
"da 41 a 50", 
"51 e piu'")) 


RICOV_Fact <- factor(DF_AVQ_A2018$RICOV, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


NNRICAM_Fact <- factor(DF_AVQ_A2018$NNRICAM, 
levels=c("01", 
"02", 
"03", 
"04", 
"05"), 
labels=c("1", 
"2", 
"3", 
"4", 
"5 e piu'")) 


GGRICAM_Fact <- factor(DF_AVQ_A2018$GGRICAM, 
levels=c("01", 
"02", 
"03", 
"04", 
"05", 
"06", 
"07", 
"08", 
"09", 
"10", 
"11", 
"12", 
"13", 
"14", 
"15", 
"16", 
"17", 
"18", 
"19", 
"20"), 
labels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6", 
"7", 
"8", 
"9", 
"10", 
"11", 
"12", 
"13", 
"14", 
"15", 
"da 16 a 20", 
"da 21 a 30", 
"da 31 a 40", 
"da 41 a 50", 
"51 e piu'")) 


LRICOV_Fact <- factor(DF_AVQ_A2018$LRICOV, 
levels=c("1", 
"2", 
"3"), 
labels=c("ospedale o istituto di cura pubblico", 
"casa di cura privata accreditata (convenzionata)", 
"casa di cura privata a pagamento intero")) 


CONSPE_Fact <- factor(DF_AVQ_A2018$CONSPE, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


CONDIR_Fact <- factor(DF_AVQ_A2018$CONDIR, 
levels=c("1", 
"3", 
"5"), 
labels=c("spese sanitarie", 
"altre spese (stanza, TV, ecc.)", 
"entrambe")) 


CONASS_Fact <- factor(DF_AVQ_A2018$CONASS, 
levels=c("2", 
"4", 
"6"), 
labels=c("spese sanitarie", 
"altre spese (stanza, TV, ecc.)", 
"entrambe")) 


QASSAM_Fact <- factor(DF_AVQ_A2018$QASSAM, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("molto", 
"abbastanza", 
"poco", 
"per niente", 
"non so")) 


QASSIN_Fact <- factor(DF_AVQ_A2018$QASSIN, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("molto", 
"abbastanza", 
"poco", 
"per niente", 
"non so")) 


QVITTO_Fact <- factor(DF_AVQ_A2018$QVITTO, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("molto", 
"abbastanza", 
"poco", 
"per niente", 
"non so")) 


QSERIG_Fact <- factor(DF_AVQ_A2018$QSERIG, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("molto", 
"abbastanza", 
"poco", 
"per niente", 
"non so")) 


VISMED12_Fact <- factor(DF_AVQ_A2018$VISMED12, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


VSPESA_Fact <- factor(DF_AVQ_A2018$VSPESA, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("non ha pagato nulla", 
"Ha pagato il ticket (consegnando la ricetta rossa del SSN)", 
"Ha pagato interamente (senza rimborsi dallassicurazione)", 
"Ha pagato interamente con rimborso parziale o totale dallassicurazione privata/aziendale")) 


VISPRE_Fact <- factor(DF_AVQ_A2018$VISPRE, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


VISRI1_Fact <- factor(DF_AVQ_A2018$VISRI1, 
levels=c("1"), 
labels=c("no")) 


VISRI2_Fact <- factor(DF_AVQ_A2018$VISRI2, 
levels=c("2"), 
labels=c("presente")) 


VISRI3_Fact <- factor(DF_AVQ_A2018$VISRI3, 
levels=c("3"), 
labels=c("presente")) 


VISRI4_Fact <- factor(DF_AVQ_A2018$VISRI4, 
levels=c("4"), 
labels=c("presente")) 


VISRI5_Fact <- factor(DF_AVQ_A2018$VISRI5, 
levels=c("5"), 
labels=c("presente")) 


VISRI6_Fact <- factor(DF_AVQ_A2018$VISRI6, 
levels=c("6"), 
labels=c("presente")) 


VISRI7_Fact <- factor(DF_AVQ_A2018$VISRI7, 
levels=c("7"), 
labels=c("presente")) 


ANSANG12_Fact <- factor(DF_AVQ_A2018$ANSANG12, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


ACCER12_Fact <- factor(DF_AVQ_A2018$ACCER12, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


ASPESA_Fact <- factor(DF_AVQ_A2018$ASPESA, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("Non ha pagato nulla", 
"Ha pagato il ticket (consegnando la ricetta rossa del SSN)", 
"Ha pagato interamente (senza rimborsi dallassicurazione)", 
"Ha pagato interamente con rimborso parziale o totale dallassicurazione privata/aziendale")) 


ACCPRE_Fact <- factor(DF_AVQ_A2018$ACCPRE, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


ACCRI1_Fact <- factor(DF_AVQ_A2018$ACCRI1, 
levels=c("1"), 
labels=c("no")) 


ACCRI2_Fact <- factor(DF_AVQ_A2018$ACCRI2, 
levels=c("2"), 
labels=c("presente")) 


ACCRI3_Fact <- factor(DF_AVQ_A2018$ACCRI3, 
levels=c("3"), 
labels=c("presente")) 


ACCRI4_Fact <- factor(DF_AVQ_A2018$ACCRI4, 
levels=c("4"), 
labels=c("presente")) 


ACCRI5_Fact <- factor(DF_AVQ_A2018$ACCRI5, 
levels=c("5"), 
labels=c("presente")) 


ACCRI6_Fact <- factor(DF_AVQ_A2018$ACCRI6, 
levels=c("6"), 
labels=c("presente")) 


ACCRI7_Fact <- factor(DF_AVQ_A2018$ACCRI7, 
levels=c("7"), 
labels=c("presente")) 


MINCDO_Fact <- factor(DF_AVQ_A2018$MINCDO, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


MNINCDM_Fact <- factor(DF_AVQ_A2018$MNINCDM, 
levels=c("01", 
"02", 
"03", 
"04", 
"05"), 
labels=c("1", 
"2", 
"3", 
"4", 
"5 e piu'")) 


SPOCON_Fact <- factor(DF_AVQ_A2018$SPOCON, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


SPOSAL_Fact <- factor(DF_AVQ_A2018$SPOSAL, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


ATTFIS_Fact <- factor(DF_AVQ_A2018$ATTFIS, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("no", 
"si, una o più volte a settimana", 
"sì, una o più volte al mese", 
"sì, più raramente")) 


FREQSPO_Fact <- factor(DF_AVQ_A2018$FREQSPO, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6", 
"7"), 
labels=c("cinque o più volte a settimana", 
"tre o quattro volte a settimana", 
"due volte a settimana", 
"una volta a settimana", 
"due o tre volte al mese", 
"una volta al mese", 
"qualche volta durante l'anno")) 


ORESETSP_Fact <- factor(DF_AVQ_A2018$ORESETSP, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6"), 
labels=c("Nell'ultima settimana non ho praticato", 
"Fino a 2 ore", 
"Da più di 2 ore fino a 4 ore", 
"Da più di 4 ore fino a 6 ore", 
"Da più di 6 ore fino a 10 ore", 
"Più di 10 ore")) 


SPPAG_Fact <- factor(DF_AVQ_A2018$SPPAG, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


SPRIV_Fact <- factor(DF_AVQ_A2018$SPRIV, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


RETTA_Fact <- factor(DF_AVQ_A2018$RETTA, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


AMICI_Fact <- factor(DF_AVQ_A2018$AMICI, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6", 
"7"), 
labels=c("tutti i giorni", 
"più di una volta a settimana", 
"una volta alla settimana", 
"qualche volta al mese (meno di 4 volte)", 
"qualche volta durante l'anno", 
"mai", 
"non ho amici")) 


PARENT_Fact <- factor(DF_AVQ_A2018$PARENT, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


AMICI2_Fact <- factor(DF_AVQ_A2018$AMICI2, 
levels=c("1", 
"2", 
"3"), 
labels=c("no", 
"sì", 
"non so")) 


VICINI_Fact <- factor(DF_AVQ_A2018$VICINI, 
levels=c("1", 
"2", 
"3"), 
labels=c("no", 
"sì, una persona o una famiglia", 
"sì, alcune persone o famiglie")) 


CPESO_Fact <- factor(DF_AVQ_A2018$CPESO, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("Sì, tutti i giorni", 
"Sì, almeno una volta a settimana", 
"Sì, almeno una volta al mese", 
"Sì, qualche volta durante l'anno", 
"No")) 


FARM_Fact <- factor(DF_AVQ_A2018$FARM, 
levels=c("1", 
"2", 
"3"), 
labels=c("sì", 
"no", 
"non ricordo")) 


PASTO_Fact <- factor(DF_AVQ_A2018$PASTO, 
levels=c("1", 
"2", 
"3"), 
labels=c("prima colazione", 
"pranzo", 
"cena")) 


COLAZ_Fact <- factor(DF_AVQ_A2018$COLAZ, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6", 
"7"), 
labels=c("no", 
"sì, bevo solo bevande come thè o caffè (escluso latte) senza mangiare niente", 
"sì, bevo thè o caffè (escluso latte) e mangio qualcosa", 
"sì, bevo latte, o caffè e latte, o cappuccino senza mangiare niente", 
"sì, bevo latte, o caffe e latte, o cappuccino e mangio qualcosa", 
"sì, mangio solo qualcosa (biscotti, fette biscottate, pane, brioches) senza bere nulla", 
"sì, faccio un altro tipo di colazione (yogurt, cereali, succhi di frutta, ecc.)")) 


LPRAN_Fact <- factor(DF_AVQ_A2018$LPRAN, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6", 
"7", 
"8", 
"9"), 
labels=c("in casa", 
"in una mensa aziendale", 
"in una mensa scolastica o dell'asilo", 
"in un ristorante, trattoria, tavola calda", 
"in un bar", 
"sul posto di lavoro", 
"a casa di genitori, parenti, amici", 
"in altro luogo", 
"non consuma pranzo")) 


PANPAS_Fact <- factor(DF_AVQ_A2018$PANPAS, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("più di una volta al giorno", 
"una volta al giorno", 
"qualche volta a settimana", 
"meno di una volta a settimana", 
"mai")) 


SALUMI_Fact <- factor(DF_AVQ_A2018$SALUMI, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("più di una volta al giorno", 
"una volta al giorno", 
"qualche volta a settimana", 
"meno di una volta a settimana", 
"mai")) 


POLLO_Fact <- factor(DF_AVQ_A2018$POLLO, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("più di una volta al giorno", 
"una volta al giorno", 
"qualche volta a settimana", 
"meno di una volta a settimana", 
"mai")) 


COV_Fact <- factor(DF_AVQ_A2018$COV, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("più di una volta al giorno", 
"una volta al giorno", 
"qualche volta a settimana", 
"meno di una volta a settimana", 
"mai")) 


CBOV_Fact <- factor(DF_AVQ_A2018$CBOV, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("più di una volta al giorno", 
"una volta al giorno", 
"qualche volta a settimana", 
"meno di una volta a settimana", 
"mai")) 


CMAIAL_Fact <- factor(DF_AVQ_A2018$CMAIAL, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("più di una volta al giorno", 
"una volta al giorno", 
"qualche volta a settimana", 
"meno di una volta a settimana", 
"mai")) 


LATTE_Fact <- factor(DF_AVQ_A2018$LATTE, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("più di una volta al giorno", 
"una volta al giorno", 
"qualche volta a settimana", 
"meno di una volta a settimana", 
"mai")) 


FORM_Fact <- factor(DF_AVQ_A2018$FORM, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("più di una volta al giorno", 
"una volta al giorno", 
"qualche volta a settimana", 
"meno di una volta a settimana", 
"mai")) 


UOVA_Fact <- factor(DF_AVQ_A2018$UOVA, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("più di una volta al giorno", 
"una volta al giorno", 
"qualche volta a settimana", 
"meno di una volta a settimana", 
"mai")) 


PESCE_Fact <- factor(DF_AVQ_A2018$PESCE, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("più di una volta al giorno", 
"una volta al giorno", 
"qualche volta a settimana", 
"meno di una volta a settimana", 
"mai")) 


VERD_Fact <- factor(DF_AVQ_A2018$VERD, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("più di una volta al giorno", 
"una volta al giorno", 
"qualche volta a settimana", 
"meno di una volta a settimana", 
"mai")) 


POMOD_Fact <- factor(DF_AVQ_A2018$POMOD, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("più di una volta al giorno", 
"una volta al giorno", 
"qualche volta a settimana", 
"meno di una volta a settimana", 
"mai")) 


FRUTTA_Fact <- factor(DF_AVQ_A2018$FRUTTA, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("più di una volta al giorno", 
"una volta al giorno", 
"qualche volta a settimana", 
"meno di una volta a settimana", 
"mai")) 


LEGUMI_Fact <- factor(DF_AVQ_A2018$LEGUMI, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("più di una volta al giorno", 
"una volta al giorno", 
"qualche volta a settimana", 
"meno di una volta a settimana", 
"mai")) 


PATATE_Fact <- factor(DF_AVQ_A2018$PATATE, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("più di una volta al giorno", 
"una volta al giorno", 
"qualche volta a settimana", 
"meno di una volta a settimana", 
"mai")) 


SNACK_Fact <- factor(DF_AVQ_A2018$SNACK, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("più di una volta al giorno", 
"una volta al giorno", 
"qualche volta a settimana", 
"meno di una volta a settimana", 
"mai")) 


DOLCI_Fact <- factor(DF_AVQ_A2018$DOLCI, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("più di una volta al giorno", 
"una volta al giorno", 
"qualche volta a settimana", 
"meno di una volta a settimana", 
"mai")) 


CGRAS_Fact <- factor(DF_AVQ_A2018$CGRAS, 
levels=c("1", 
"2", 
"3"), 
labels=c("olio di oliva", 
"altri grassi e oli vegetali (olio di semi, margarina ecc.)", 
"burro o strutto")) 


FGRAS_Fact <- factor(DF_AVQ_A2018$FGRAS, 
levels=c("1", 
"2", 
"3"), 
labels=c("olio di oliva", 
"altri grassi e oli vegetali (olio di semi, margarina ecc.)", 
"burro o strutto")) 


QTSALE_Fact <- factor(DF_AVQ_A2018$QTSALE, 
levels=c("1", 
"2", 
"3"), 
labels=c("No, non presto attenzione", 
"Sì, ne ho ridotto l'uso nel tempo", 
"Sì, ho da sempre fatto attenzione")) 


IODIO_Fact <- factor(DF_AVQ_A2018$IODIO, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


ACMIN_Fact <- factor(DF_AVQ_A2018$ACMIN, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6"), 
labels=c("oltre 1 litro al giorno", 
"da 1/2 litro a 1 litro al giorno", 
"1-2 bicchieri al giorno (meno di 1/2 litro)", 
"più raramente", 
"solo stagionalmente", 
"non ne consuma")) 


BGAS_Fact <- factor(DF_AVQ_A2018$BGAS, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6"), 
labels=c("oltre 1 litro al giorno", 
"da 1/2 litro a 1 litro al giorno", 
"1-2 bicchieri al giorno (meno di 1/2 litro)", 
"più raramente", 
"solo stagionalmente", 
"non ne consuma")) 


BIRRA_Fact <- factor(DF_AVQ_A2018$BIRRA, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6"), 
labels=c("oltre 1 litro al giorno", 
"da 1/2 litro a 1 litro al giorno", 
"1-2 bicchieri al giorno (meno di 1/2 litro)", 
"più raramente", 
"solo stagionalmente", 
"non ne consuma")) 


VINO_Fact <- factor(DF_AVQ_A2018$VINO, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6"), 
labels=c("oltre 1 litro al giorno", 
"da 1/2 litro a 1 litro al giorno", 
"1-2 bicchieri al giorno (meno di 1/2 litro)", 
"più raramente", 
"solo stagionalmente", 
"non ne consuma")) 


BICBIRRAM_Fact <- factor(DF_AVQ_A2018$BICBIRRAM, 
levels=c("01", 
"02", 
"03", 
"04", 
"05", 
"06"), 
labels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6 e piu'")) 


BICVINOM_Fact <- factor(DF_AVQ_A2018$BICVINOM, 
levels=c("01", 
"02", 
"03", 
"04", 
"05", 
"06"), 
labels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6 e piu'")) 


BFPAS_Fact <- factor(DF_AVQ_A2018$BFPAS, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("tutti i giorni", 
"qualche volta alla settimana", 
"più raramente", 
"mai")) 


BICFUORIM_Fact <- factor(DF_AVQ_A2018$BICFUORIM, 
levels=c("01", 
"02", 
"03", 
"04", 
"05", 
"06", 
"07", 
"08", 
"09", 
"10", 
"11"), 
labels=c("01", 
"02", 
"03", 
"04", 
"05", 
"06", 
"07", 
"08", 
"09", 
"10 - 20", 
"21 e piu'")) 


ANAL_Fact <- factor(DF_AVQ_A2018$ANAL, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6"), 
labels=c("più di 2 bicchierini al giorno", 
"1-2 bicchierini al giorno", 
"qualche bicchierino alla settimana", 
"più raramente", 
"eccezionalmente", 
"non ne consumo")) 


ALCOL_Fact <- factor(DF_AVQ_A2018$ALCOL, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6"), 
labels=c("più di 2 bicchierini al giorno", 
"1-2 bicchierini al giorno", 
"qualche bicchierino alla settimana", 
"più raramente", 
"eccezionalmente", 
"non ne consumo")) 


AMAR_Fact <- factor(DF_AVQ_A2018$AMAR, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6"), 
labels=c("più di 2 bicchierini al giorno", 
"1-2 bicchierini al giorno", 
"qualche bicchierino alla settimana", 
"più raramente", 
"eccezionalmente", 
"non ne consumo")) 


LIQUOR_Fact <- factor(DF_AVQ_A2018$LIQUOR, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6"), 
labels=c("più di 2 bicchierini al giorno", 
"1-2 bicchierini al giorno", 
"qualche bicchierino alla settimana", 
"più raramente", 
"eccezionalmente", 
"non ne consumo")) 


BICALTROM_Fact <- factor(DF_AVQ_A2018$BICALTROM, 
levels=c("01", 
"02", 
"03", 
"04", 
"05"), 
labels=c("1", 
"2", 
"3", 
"4 - 5", 
"6 e piu'")) 


ALCOL12_Fact <- factor(DF_AVQ_A2018$ALCOL12, 
levels=c("1", 
"2", 
"3"), 
labels=c("Sì", 
"No, ma ne ho consumato in passato", 
"No, non ne consumo")) 


BICALC_Fact <- factor(DF_AVQ_A2018$BICALC, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


NBICALCM_Fact <- factor(DF_AVQ_A2018$NBICALCM, 
levels=c("001", 
"002", 
"003", 
"004", 
"005", 
"006", 
"007", 
"008", 
"009", 
"010", 
"011", 
"012", 
"013", 
"014", 
"015", 
"016", 
"018", 
"020", 
"021"), 
labels=c("001", 
"002", 
"003", 
"004", 
"005", 
"006", 
"007", 
"008", 
"009", 
"010", 
"011", 
"012", 
"013", 
"014", 
"015", 
"016", 
"018", 
"020", 
"21 e pi¿")) 


DOVCASP_Fact <- factor(DF_AVQ_A2018$DOVCASP, 
levels=c("1"), 
labels=c("presente")) 


DOVAMPA_Fact <- factor(DF_AVQ_A2018$DOVAMPA, 
levels=c("2"), 
labels=c("presente")) 


DOVRISTO_Fact <- factor(DF_AVQ_A2018$DOVRISTO, 
levels=c("3"), 
labels=c("presente")) 


DOVPUB_Fact <- factor(DF_AVQ_A2018$DOVPUB, 
levels=c("4"), 
labels=c("presente")) 


DOVDISCO_Fact <- factor(DF_AVQ_A2018$DOVDISCO, 
levels=c("5"), 
labels=c("presente")) 


DOVSTR_Fact <- factor(DF_AVQ_A2018$DOVSTR, 
levels=c("6"), 
labels=c("presente")) 


DOVALT_Fact <- factor(DF_AVQ_A2018$DOVALT, 
levels=c("7"), 
labels=c("presente")) 


ESIG_Fact <- factor(DF_AVQ_A2018$ESIG, 
levels=c("1", 
"2", 
"3"), 
labels=c("sì", 
"no, ma l'ho usata in passato", 
"no, non l'ho mai usata")) 


FUMO_Fact <- factor(DF_AVQ_A2018$FUMO, 
levels=c("1", 
"2", 
"3"), 
labels=c("Sì", 
"No, ma ho fumato in passato", 
"No, non ho mai fumato")) 


FRFUMO_Fact <- factor(DF_AVQ_A2018$FRFUMO, 
levels=c("1", 
"2"), 
labels=c("Tutti i giorni", 
"Occasionalmente")) 


TFUMO_Fact <- factor(DF_AVQ_A2018$TFUMO, 
levels=c("1", 
"2", 
"3"), 
labels=c("pipa", 
"sigari", 
"sigarette")) 


NSIGARM_Fact <- factor(DF_AVQ_A2018$NSIGARM, 
levels=c("01", 
"02", 
"03", 
"04", 
"05", 
"06", 
"07", 
"08", 
"09", 
"10", 
"11", 
"12", 
"13", 
"14", 
"15", 
"16", 
"17"), 
labels=c("01", 
"02", 
"03", 
"04", 
"05", 
"06", 
"07", 
"08", 
"09", 
"10", 
"11", 
"12", 
"13", 
"14", 
"15", 
"16 - 20", 
"21 e piu'")) 


SALUTE_Fact <- factor(DF_AVQ_A2018$SALUTE, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("molto bene", 
"bene", 
"né bene né male", 
"male", 
"molto male")) 


CRONI_Fact <- factor(DF_AVQ_A2018$CRONI, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


LIMITA_Fact <- factor(DF_AVQ_A2018$LIMITA, 
levels=c("1", 
"2", 
"3"), 
labels=c("limitazioni gravi", 
"limitazioni non gravi", 
"nessuna limitazione")) 


DIAB_Fact <- factor(DF_AVQ_A2018$DIAB, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


IPAR_Fact <- factor(DF_AVQ_A2018$IPAR, 
levels=c("3", 
"4"), 
labels=c("no", 
"sì")) 


INFAR_Fact <- factor(DF_AVQ_A2018$INFAR, 
levels=c("5", 
"6"), 
labels=c("no", 
"sì")) 


CUORE_Fact <- factor(DF_AVQ_A2018$CUORE, 
levels=c("7", 
"8"), 
labels=c("no", 
"sì")) 


BRON_Fact <- factor(DF_AVQ_A2018$BRON, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


ASMA_Fact <- factor(DF_AVQ_A2018$ASMA, 
levels=c("3", 
"4"), 
labels=c("no", 
"sì")) 


ALLER_Fact <- factor(DF_AVQ_A2018$ALLER, 
levels=c("5", 
"6"), 
labels=c("no", 
"sì")) 


TUMOR_Fact <- factor(DF_AVQ_A2018$TUMOR, 
levels=c("7", 
"8"), 
labels=c("no", 
"sì")) 


ULCER_Fact <- factor(DF_AVQ_A2018$ULCER, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


FEGATO_Fact <- factor(DF_AVQ_A2018$FEGATO, 
levels=c("3", 
"4"), 
labels=c("no", 
"sì")) 


CIRRO_Fact <- factor(DF_AVQ_A2018$CIRRO, 
levels=c("5", 
"6"), 
labels=c("no", 
"sì")) 


CALRE_Fact <- factor(DF_AVQ_A2018$CALRE, 
levels=c("7", 
"8"), 
labels=c("no", 
"sì")) 


ARTRO_Fact <- factor(DF_AVQ_A2018$ARTRO, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


OSTEO_Fact <- factor(DF_AVQ_A2018$OSTEO, 
levels=c("3", 
"4"), 
labels=c("no", 
"sì")) 


NEURO_Fact <- factor(DF_AVQ_A2018$NEURO, 
levels=c("5", 
"6"), 
labels=c("no", 
"sì")) 


SF9_Fact <- factor(DF_AVQ_A2018$SF9, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6"), 
labels=c("Sempre", 
"Quasi sempre", 
"Molto tempo", 
"Una parte del tempo", 
"Quasi mai", 
"Mai")) 


SF11_Fact <- factor(DF_AVQ_A2018$SF11, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6"), 
labels=c("Sempre", 
"Quasi sempre", 
"Molto tempo", 
"Una parte del tempo", 
"Quasi mai", 
"Mai")) 


SF13_Fact <- factor(DF_AVQ_A2018$SF13, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6"), 
labels=c("Sempre", 
"Quasi sempre", 
"Molto tempo", 
"Una parte del tempo", 
"Quasi mai", 
"Mai")) 


SF14_Fact <- factor(DF_AVQ_A2018$SF14, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6"), 
labels=c("Sempre", 
"Quasi sempre", 
"Molto tempo", 
"Una parte del tempo", 
"Quasi mai", 
"Mai")) 


SF15_Fact <- factor(DF_AVQ_A2018$SF15, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6"), 
labels=c("Sempre", 
"Quasi sempre", 
"Molto tempo", 
"Una parte del tempo", 
"Quasi mai", 
"Mai")) 


RADIO_Fact <- factor(DF_AVQ_A2018$RADIO, 
levels=c("1", 
"2", 
"3"), 
labels=c("no", 
"sì, tutti i giorni", 
"sì, qualche giorno")) 


TELE_Fact <- factor(DF_AVQ_A2018$TELE, 
levels=c("1", 
"2", 
"3"), 
labels=c("no", 
"sì, tutti i giorni", 
"sì, ogni tanto")) 


PCTEMPO_Fact <- factor(DF_AVQ_A2018$PCTEMPO, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("sì, negli ultimi 3 mesi", 
"sì, da più di 3 mesi a 1 anno fa", 
"sì, più di 1 anno fa", 
"mai")) 


FREQPC12_Fact <- factor(DF_AVQ_A2018$FREQPC12, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("tutti i giorni", 
"qualche volta alla settimana", 
"una volta alla settimana", 
"qualche volta al mese (meno di 4 volte)", 
"meno di una volta al mese")) 


INTTEMPO_Fact <- factor(DF_AVQ_A2018$INTTEMPO, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("sì, negli ultimi 3 mesi", 
"sì, da più 3 mesi a 1 anno fa", 
"sì, più di 1 anno fa", 
"mai")) 


FREQIN12_Fact <- factor(DF_AVQ_A2018$FREQIN12, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("tutti i giorni", 
"qualche volta alla settimana", 
"una volta alla settimana", 
"qualche volta al mese (meno di 4 volte)", 
"meno di una volta al mese")) 


IAIPCSCRI_Fact <- factor(DF_AVQ_A2018$IAIPCSCRI, 
levels=c("1"), 
labels=c("presente")) 


IAIPCPORT_Fact <- factor(DF_AVQ_A2018$IAIPCPORT, 
levels=c("2"), 
labels=c("presente")) 


IAITABLET_Fact <- factor(DF_AVQ_A2018$IAITABLET, 
levels=c("3"), 
labels=c("presente")) 


IAIDISMOB_Fact <- factor(DF_AVQ_A2018$IAIDISMOB, 
levels=c("4"), 
labels=c("presente")) 


IAIALTRO_N_Fact <- factor(DF_AVQ_A2018$IAIALTRO_N, 
levels=c("5"), 
labels=c("presente")) 


DISP_SMA_Fact <- factor(DF_AVQ_A2018$DISP_SMA, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


DISP_LAP_Fact <- factor(DF_AVQ_A2018$DISP_LAP, 
levels=c("3", 
"4"), 
labels=c("no", 
"sì")) 


DISP_TAB_Fact <- factor(DF_AVQ_A2018$DISP_TAB, 
levels=c("5", 
"6"), 
labels=c("no", 
"sì")) 


DISPPDA_Fact <- factor(DF_AVQ_A2018$DISPPDA, 
levels=c("7", 
"8"), 
labels=c("no", 
"Sì")) 


INCOMU5_Fact <- factor(DF_AVQ_A2018$INCOMU5, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


INCOMU1b_Fact <- factor(DF_AVQ_A2018$INCOMU1b, 
levels=c("3", 
"4"), 
labels=c("no", 
"sì")) 


INCOMU34_Fact <- factor(DF_AVQ_A2018$INCOMU34, 
levels=c("5", 
"6"), 
labels=c("no", 
"sì")) 


INCOMU6_Fact <- factor(DF_AVQ_A2018$INCOMU6, 
levels=c("7", 
"8"), 
labels=c("no", 
"sì")) 


INCOMU7_Fact <- factor(DF_AVQ_A2018$INCOMU7, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


INTATT20_Fact <- factor(DF_AVQ_A2018$INTATT20, 
levels=c("3", 
"4"), 
labels=c("no", 
"sì")) 


INTATT21_Fact <- factor(DF_AVQ_A2018$INTATT21, 
levels=c("5", 
"6"), 
labels=c("no", 
"sì")) 


INTATT26_Fact <- factor(DF_AVQ_A2018$INTATT26, 
levels=c("7", 
"8"), 
labels=c("no", 
"sì")) 


INTATT5_Fact <- factor(DF_AVQ_A2018$INTATT5, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


INTATT4_Fact <- factor(DF_AVQ_A2018$INTATT4, 
levels=c("3", 
"4"), 
labels=c("no", 
"sì")) 


INTSAL3_Fact <- factor(DF_AVQ_A2018$INTSAL3, 
levels=c("5", 
"6"), 
labels=c("no", 
"sì")) 


INTATT14_Fact <- factor(DF_AVQ_A2018$INTATT14, 
levels=c("7", 
"8"), 
labels=c("no", 
"sì")) 


INTATT11_Fact <- factor(DF_AVQ_A2018$INTATT11, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


INTATT33_Fact <- factor(DF_AVQ_A2018$INTATT33, 
levels=c("3", 
"4"), 
labels=c("no", 
"sì")) 


INTATT13_Fact <- factor(DF_AVQ_A2018$INTATT13, 
levels=c("5", 
"6"), 
labels=c("no", 
"sì")) 


INTATT17_Fact <- factor(DF_AVQ_A2018$INTATT17, 
levels=c("7", 
"8"), 
labels=c("no", 
"sì")) 


INTATT16_Fact <- factor(DF_AVQ_A2018$INTATT16, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


INTATT10_Fact <- factor(DF_AVQ_A2018$INTATT10, 
levels=c("3", 
"4"), 
labels=c("no", 
"sì")) 


INTATT8_Fact <- factor(DF_AVQ_A2018$INTATT8, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


INTATT31_Fact <- factor(DF_AVQ_A2018$INTATT31, 
levels=c("3", 
"4"), 
labels=c("no", 
"sì")) 


INTATT32_Fact <- factor(DF_AVQ_A2018$INTATT32, 
levels=c("5", 
"6"), 
labels=c("no", 
"sì")) 


INTATT7BN_Fact <- factor(DF_AVQ_A2018$INTATT7BN, 
levels=c("7", 
"8"), 
labels=c("no", 
"sì")) 


INTATT30A_Fact <- factor(DF_AVQ_A2018$INTATT30A, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


INTATT30B_Fact <- factor(DF_AVQ_A2018$INTATT30B, 
levels=c("3", 
"4"), 
labels=c("no", 
"sì")) 


INTATT28A_Fact <- factor(DF_AVQ_A2018$INTATT28A, 
levels=c("5", 
"6"), 
labels=c("no", 
"sì")) 


INTATT28B_Fact <- factor(DF_AVQ_A2018$INTATT28B, 
levels=c("7", 
"8"), 
labels=c("no", 
"sì")) 


CLOUDSAL_Fact <- factor(DF_AVQ_A2018$CLOUDSAL, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


SKL_FRE_Fact <- factor(DF_AVQ_A2018$SKL_FRE, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


SKL_AUTO_Fact <- factor(DF_AVQ_A2018$SKL_AUTO, 
levels=c("3", 
"4"), 
labels=c("no", 
"sì")) 


SKL_PUB_Fact <- factor(DF_AVQ_A2018$SKL_PUB, 
levels=c("5", 
"6"), 
labels=c("no", 
"sì")) 


SKL_DAT_Fact <- factor(DF_AVQ_A2018$SKL_DAT, 
levels=c("7", 
"8"), 
labels=c("no", 
"sì")) 


SKL_COLL_Fact <- factor(DF_AVQ_A2018$SKL_COLL, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


P2P_ACC_Fact <- factor(DF_AVQ_A2018$P2P_ACC, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


P2P_ACCALT_Fact <- factor(DF_AVQ_A2018$P2P_ACCALT, 
levels=c("3", 
"4"), 
labels=c("no", 
"sì")) 


P2P_TRA_Fact <- factor(DF_AVQ_A2018$P2P_TRA, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


P2P_TRALT_Fact <- factor(DF_AVQ_A2018$P2P_TRALT, 
levels=c("3", 
"4"), 
labels=c("no", 
"sì")) 


P2P_FOOD_Fact <- factor(DF_AVQ_A2018$P2P_FOOD, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


P2P_WRK_Fact <- factor(DF_AVQ_A2018$P2P_WRK, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


COSINT9a_Fact <- factor(DF_AVQ_A2018$COSINT9a, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


COSINT9b_Fact <- factor(DF_AVQ_A2018$COSINT9b, 
levels=c("3", 
"4"), 
labels=c("no", 
"sì")) 


COSINT9c_Fact <- factor(DF_AVQ_A2018$COSINT9c, 
levels=c("5", 
"6"), 
labels=c("no", 
"sì")) 


PR_UP_Fact <- factor(DF_AVQ_A2018$PR_UP, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


PR_SM_Fact <- factor(DF_AVQ_A2018$PR_SM, 
levels=c("3", 
"4"), 
labels=c("no", 
"sì")) 


PR_ST_Fact <- factor(DF_AVQ_A2018$PR_ST, 
levels=c("5", 
"6"), 
labels=c("no", 
"sì")) 


PR_CARD_Fact <- factor(DF_AVQ_A2018$PR_CARD, 
levels=c("7", 
"8"), 
labels=c("no", 
"sì")) 


PR_COD_Fact <- factor(DF_AVQ_A2018$PR_COD, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


PR_PIN_Fact <- factor(DF_AVQ_A2018$PR_PIN, 
levels=c("3", 
"4"), 
labels=c("no", 
"sì")) 


PR_ALT_Fact <- factor(DF_AVQ_A2018$PR_ALT, 
levels=c("5", 
"6"), 
labels=c("no", 
"sì")) 


INTUSO1_Fact <- factor(DF_AVQ_A2018$INTUSO1, 
levels=c("1", 
"2", 
"3"), 
labels=c("no", 
"sì, negli ultimi 3 mesi", 
"sì, da 3 mesi a 1 anno fa")) 


INTUSO2_Fact <- factor(DF_AVQ_A2018$INTUSO2, 
levels=c("1", 
"2", 
"3"), 
labels=c("no", 
"sì, negli ultimi 3 mesi", 
"sì, da 3 mesi a 1 anno fa")) 


INTUSO3_Fact <- factor(DF_AVQ_A2018$INTUSO3, 
levels=c("1", 
"2", 
"3"), 
labels=c("no", 
"sì negli ultimi 3 mesi", 
"sì da 3 mesi a 1 anno fa")) 


INTCOM_Fact <- factor(DF_AVQ_A2018$INTCOM, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("sì, negli ultimi 3 mesi", 
"sì, da 3 mesi a 1 anno fa", 
"sì, più di 1 anno fa", 
"mai")) 


NORDINI_Fact <- factor(DF_AVQ_A2018$NORDINI, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("1-2 volte", 
"3-5 volte", 
"6-10 volte", 
"11 o più volte", 
"Non so")) 


SPINTCOM_Fact <- factor(DF_AVQ_A2018$SPINTCOM, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6"), 
labels=c("Meno di 50 euro", 
"Da 50 a meno di 100 euro", 
"Da 100 a meno di 500 euro", 
"Da 500 a meno di 1.000 euro", 
"1.000 euro o più", 
"Non so")) 


COSINT1_Fact <- factor(DF_AVQ_A2018$COSINT1, 
levels=c("01"), 
labels=c("presente")) 


COSINT2_Fact <- factor(DF_AVQ_A2018$COSINT2, 
levels=c("02"), 
labels=c("presente")) 


COSINT19_Fact <- factor(DF_AVQ_A2018$COSINT19, 
levels=c("03"), 
labels=c("presente")) 


COSINT5_Fact <- factor(DF_AVQ_A2018$COSINT5, 
levels=c("04"), 
labels=c("presente")) 


COSINT3_Fact <- factor(DF_AVQ_A2018$COSINT3, 
levels=c("05"), 
labels=c("presente")) 


COSINT22A_Fact <- factor(DF_AVQ_A2018$COSINT22A, 
levels=c("06"), 
labels=c("presente")) 


COSINT22B_Fact <- factor(DF_AVQ_A2018$COSINT22B, 
levels=c("07"), 
labels=c("presente")) 


COSINT21_Fact <- factor(DF_AVQ_A2018$COSINT21, 
levels=c("08"), 
labels=c("presente")) 


COSINT15_Fact <- factor(DF_AVQ_A2018$COSINT15, 
levels=c("09"), 
labels=c("presente")) 


COSINT16_Fact <- factor(DF_AVQ_A2018$COSINT16, 
levels=c("10"), 
labels=c("presente")) 


COSINT7_Fact <- factor(DF_AVQ_A2018$COSINT7, 
levels=c("11"), 
labels=c("presente")) 


COSINT8_Fact <- factor(DF_AVQ_A2018$COSINT8, 
levels=c("12"), 
labels=c("presente")) 


COSINT20_Fact <- factor(DF_AVQ_A2018$COSINT20, 
levels=c("13"), 
labels=c("presente")) 


COSINT18_Fact <- factor(DF_AVQ_A2018$COSINT18, 
levels=c("14"), 
labels=c("presente")) 


COSINT17_Fact <- factor(DF_AVQ_A2018$COSINT17, 
levels=c("15"), 
labels=c("presente")) 


COSINT11_Fact <- factor(DF_AVQ_A2018$COSINT11, 
levels=c("16"), 
labels=c("presente")) 


COSINT12_Fact <- factor(DF_AVQ_A2018$COSINT12, 
levels=c("17"), 
labels=c("presente")) 


COSINT14_Fact <- factor(DF_AVQ_A2018$COSINT14, 
levels=c("18"), 
labels=c("presente")) 


VENDI1_Fact <- factor(DF_AVQ_A2018$VENDI1, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


VENDI2_Fact <- factor(DF_AVQ_A2018$VENDI2, 
levels=c("3", 
"4"), 
labels=c("no", 
"sì")) 


VENDI3_Fact <- factor(DF_AVQ_A2018$VENDI3, 
levels=c("5", 
"6"), 
labels=c("no", 
"sì")) 


VENDI4_Fact <- factor(DF_AVQ_A2018$VENDI4, 
levels=c("7", 
"8"), 
labels=c("no", 
"sì")) 


CT_WORK_Fact <- factor(DF_AVQ_A2018$CT_WORK, 
levels=c("1"), 
labels=c("presente")) 


MAC_WORK_Fact <- factor(DF_AVQ_A2018$MAC_WORK, 
levels=c("2"), 
labels=c("presente")) 


NO_ICTW_Fact <- factor(DF_AVQ_A2018$NO_ICTW, 
levels=c("3"), 
labels=c("presente")) 


WRK_EMA_Fact <- factor(DF_AVQ_A2018$WRK_EMA, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


WRK_DOC_Fact <- factor(DF_AVQ_A2018$WRK_DOC, 
levels=c("3", 
"4"), 
labels=c("no", 
"sì")) 


WRK_SM_Fact <- factor(DF_AVQ_A2018$WRK_SM, 
levels=c("5", 
"6"), 
labels=c("no", 
"sì")) 


WRK_INC_Fact <- factor(DF_AVQ_A2018$WRK_INC, 
levels=c("7", 
"8"), 
labels=c("no", 
"sì")) 


WRK_SOF_Fact <- factor(DF_AVQ_A2018$WRK_SOF, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


WRK_IT_Fact <- factor(DF_AVQ_A2018$WRK_IT, 
levels=c("3", 
"4"), 
labels=c("no", 
"sì")) 


WRK_CAMB_Fact <- factor(DF_AVQ_A2018$WRK_CAMB, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


WRK_NS_Fact <- factor(DF_AVQ_A2018$WRK_NS, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


GIUD_SKL_Fact <- factor(DF_AVQ_A2018$GIUD_SKL, 
levels=c("1", 
"2", 
"3"), 
labels=c("avrei bisogno di ulteriore formazione per svolgere al meglio il mio lavoro", 
"le mie competenze sono adeguate al lavoro che svolgo", 
"ho le compentenze necessarie per far fronte ad incarichi/mansioni più impegnative")) 


TEATRO_Fact <- factor(DF_AVQ_A2018$TEATRO, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("mai", 
"1-3 volte", 
"4-6 volte", 
"7-12 volte", 
"più di 12 volte")) 


CINE_Fact <- factor(DF_AVQ_A2018$CINE, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("mai", 
"1-3 volte", 
"4-6 volte", 
"7-12 volte", 
"più di 12 volte")) 


MUSEO_Fact <- factor(DF_AVQ_A2018$MUSEO, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("mai", 
"1-3 volte", 
"4-6 volte", 
"7-12 volte", 
"più di 12 volte")) 


MUSIC_Fact <- factor(DF_AVQ_A2018$MUSIC, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("mai", 
"1-3 volte", 
"4-6 volte", 
"7-12 volte", 
"più di 12 volte")) 


ACMUS_Fact <- factor(DF_AVQ_A2018$ACMUS, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("mai", 
"1-3 volte", 
"4-6 volte", 
"7-12 volte", 
"più di 12 volte")) 


SPSPO_Fact <- factor(DF_AVQ_A2018$SPSPO, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("mai", 
"1-3 volte", 
"4-6 volte", 
"7-12 volte", 
"più di 12 volte")) 


DISCO_Fact <- factor(DF_AVQ_A2018$DISCO, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("mai", 
"1-3 volte", 
"4-6 volte", 
"7-12 volte", 
"più di 12 volte")) 


MONUM_Fact <- factor(DF_AVQ_A2018$MONUM, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("mai", 
"1-3 volte", 
"4-6 volte", 
"7-12 volte", 
"più di 12 volte")) 


LQUOT_Fact <- factor(DF_AVQ_A2018$LQUOT, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("no", 
"sì, 1 o 2 giorni", 
"sì, 3 o 4 giorni", 
"sì, 5 o 6 giorni", 
"sì, tutti i giorni")) 


LIBRI_Fact <- factor(DF_AVQ_A2018$LIBRI, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


NLIBRIM_Fact <- factor(DF_AVQ_A2018$NLIBRIM, 
levels=c(01, 
02, 
03, 
04, 
05, 
06, 
07, 
08, 
09, 
10, 
11, 
12, 
13, 
14, 
15, 
16, 
17, 
18, 
19, 
20, 
21, 
22, 
23, 
24, 
25), 
labels=c("01", 
"02", 
"03", 
"04", 
"05", 
"06", 
"07", 
"08", 
"09", 
"10", 
"11", 
"12", 
"13", 
"14", 
"15", 
"16", 
"17", 
"18", 
"19", 
"20", 
"21-25", 
"26-30", 
"31-40", 
"41-50", 
"51 e piu'")) 


NLIBRI_CARM_Fact <- factor(DF_AVQ_A2018$NLIBRI_CARM, 
levels=c(01, 
02, 
03, 
04, 
05, 
06, 
07, 
08, 
09, 
10, 
11, 
12, 
13, 
14, 
15, 
16, 
17, 
18, 
19, 
20, 
21, 
22, 
23, 
24, 
25), 
labels=c("01", 
"02", 
"03", 
"04", 
"05", 
"06", 
"07", 
"08", 
"09", 
"10", 
"11", 
"12", 
"13", 
"14", 
"15", 
"16", 
"17", 
"18", 
"19", 
"20", 
"21-25", 
"26-30", 
"31-40", 
"41-50", 
"51 e piu'")) 


NLEBOOM_Fact <- factor(DF_AVQ_A2018$NLEBOOM, 
levels=c(00, 
01, 
02, 
03, 
04, 
05, 
06, 
07, 
08, 
09, 
10, 
11, 
12, 
13, 
14, 
15, 
16, 
17, 
18, 
19, 
20, 
21, 
22, 
23, 
24, 
25), 
labels=c("00", 
"01", 
"02", 
"03", 
"04", 
"05", 
"06", 
"07", 
"08", 
"09", 
"10", 
"11", 
"12", 
"13", 
"14", 
"15", 
"16", 
"17", 
"18", 
"19", 
"20", 
"21-25", 
"26-30", 
"31-40", 
"41-50", 
"51 e piu'")) 


NLAUDIOM_Fact <- factor(DF_AVQ_A2018$NLAUDIOM, 
levels=c(00, 
01, 
02, 
03, 
04), 
labels=c("00", 
"01", 
"02", 
"03", 
"4 e piu'")) 


RIVSET_Fact <- factor(DF_AVQ_A2018$RIVSET, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("no", 
"sì, una o più volte a settimana", 
"sì, qualche volta al mese", 
"sì, più raramente")) 


NOSETT_Fact <- factor(DF_AVQ_A2018$NOSETT, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


CHIES_Fact <- factor(DF_AVQ_A2018$CHIES, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6"), 
labels=c("tutti i giorni", 
"qualche volta alla settimana", 
"una volta alla settimana", 
"qualche volta al mese (meno di 4 volte)", 
"qualche volta l'anno", 
"mai")) 


SITEC_Fact <- factor(DF_AVQ_A2018$SITEC, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto", 
"abbastanza", 
"poco", 
"per niente")) 


SALUT_Fact <- factor(DF_AVQ_A2018$SALUT, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto", 
"abbastanza", 
"poco", 
"per niente")) 


RELFAM_Fact <- factor(DF_AVQ_A2018$RELFAM, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto", 
"abbastanza", 
"poco", 
"per niente")) 


RELAM_Fact <- factor(DF_AVQ_A2018$RELAM, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto", 
"abbastanza", 
"poco", 
"per niente")) 


TEMLIB_Fact <- factor(DF_AVQ_A2018$TEMLIB, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto", 
"abbastanza", 
"poco", 
"per niente")) 


AMBIENTE_Fact <- factor(DF_AVQ_A2018$AMBIENTE, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto", 
"abbastanza", 
"poco", 
"per niente")) 


PAESAGGIO_Fact <- factor(DF_AVQ_A2018$PAESAGGIO, 
levels=c("1", 
"2"), 
labels=c("No", 
"Sì")) 


SODLAV2_Fact <- factor(DF_AVQ_A2018$SODLAV2, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto", 
"abbastanza", 
"poco", 
"per niente")) 


POLIT_Fact <- factor(DF_AVQ_A2018$POLIT, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6"), 
labels=c("tutti i giorni", 
"qualche volta alla settimana", 
"una volta alla settimana", 
"qualche volta al mese", 
"qualche volta l'anno", 
"mai")) 


PPAPO_Fact <- factor(DF_AVQ_A2018$PPAPO, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


PSIND_Fact <- factor(DF_AVQ_A2018$PSIND, 
levels=c("3", 
"4"), 
labels=c("no", 
"sì")) 


PGRVO_Fact <- factor(DF_AVQ_A2018$PGRVO, 
levels=c("5", 
"6"), 
labels=c("no", 
"sì")) 


PAECO_Fact <- factor(DF_AVQ_A2018$PAECO, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


PCULT_Fact <- factor(DF_AVQ_A2018$PCULT, 
levels=c("3", 
"4"), 
labels=c("no", 
"sì")) 


PASPRO_Fact <- factor(DF_AVQ_A2018$PASPRO, 
levels=c("5", 
"6"), 
labels=c("no", 
"sì")) 


COMIZ_Fact <- factor(DF_AVQ_A2018$COMIZ, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


CORTEI_Fact <- factor(DF_AVQ_A2018$CORTEI, 
levels=c("3", 
"4"), 
labels=c("no", 
"sì")) 


DIBPO_Fact <- factor(DF_AVQ_A2018$DIBPO, 
levels=c("5", 
"6"), 
labels=c("no", 
"sì")) 


FINPA_Fact <- factor(DF_AVQ_A2018$FINPA, 
levels=c("7", 
"8"), 
labels=c("no", 
"sì")) 


FINAS_Fact <- factor(DF_AVQ_A2018$FINAS, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


VOLON_Fact <- factor(DF_AVQ_A2018$VOLON, 
levels=c("3", 
"4"), 
labels=c("no", 
"sì")) 


ATGRA_Fact <- factor(DF_AVQ_A2018$ATGRA, 
levels=c("5", 
"6"), 
labels=c("no", 
"sì")) 


VOLPA_Fact <- factor(DF_AVQ_A2018$VOLPA, 
levels=c("7", 
"8"), 
labels=c("no", 
"sì")) 


VOLSI_Fact <- factor(DF_AVQ_A2018$VOLSI, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


POLITI_Fact <- factor(DF_AVQ_A2018$POLITI, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6"), 
labels=c("tutti i giorni", 
"qualche volta alla settimana", 
"una volta alla settimana", 
"qualche volta al mese", 
"qualche volta l'anno", 
"mai")) 


PRADIO_Fact <- factor(DF_AVQ_A2018$PRADIO, 
levels=c("01"), 
labels=c("presente")) 


PTELEV_Fact <- factor(DF_AVQ_A2018$PTELEV, 
levels=c("02"), 
labels=c("presente")) 


PQUOT_Fact <- factor(DF_AVQ_A2018$PQUOT, 
levels=c("03"), 
labels=c("presente")) 


PSETT_Fact <- factor(DF_AVQ_A2018$PSETT, 
levels=c("04"), 
labels=c("presente")) 


PARIV_Fact <- factor(DF_AVQ_A2018$PARIV, 
levels=c("05"), 
labels=c("presente")) 


PAMICI_Fact <- factor(DF_AVQ_A2018$PAMICI, 
levels=c("06"), 
labels=c("presente")) 


PPAREN_Fact <- factor(DF_AVQ_A2018$PPAREN, 
levels=c("07"), 
labels=c("presente")) 


PCONOS_Fact <- factor(DF_AVQ_A2018$PCONOS, 
levels=c("08"), 
labels=c("presente")) 


PCOLAV_Fact <- factor(DF_AVQ_A2018$PCOLAV, 
levels=c("09"), 
labels=c("presente")) 


ORGPOL_Fact <- factor(DF_AVQ_A2018$ORGPOL, 
levels=c("10"), 
labels=c("presente")) 


ORGSIN_Fact <- factor(DF_AVQ_A2018$ORGSIN, 
levels=c("11"), 
labels=c("presente")) 


ALTPOL_Fact <- factor(DF_AVQ_A2018$ALTPOL, 
levels=c("12"), 
labels=c("presente")) 


PWEB_Fact <- factor(DF_AVQ_A2018$PWEB, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


PWEBM1_Fact <- factor(DF_AVQ_A2018$PWEBM1, 
levels=c("1"), 
labels=c("presente")) 


PWEBM2_Fact <- factor(DF_AVQ_A2018$PWEBM2, 
levels=c("2"), 
labels=c("presente")) 


PWEBM3_Fact <- factor(DF_AVQ_A2018$PWEBM3, 
levels=c("3"), 
labels=c("presente")) 


PWEBM4_Fact <- factor(DF_AVQ_A2018$PWEBM4, 
levels=c("4"), 
labels=c("presente")) 


PWEBM5_Fact <- factor(DF_AVQ_A2018$PWEBM5, 
levels=c("5"), 
labels=c("presente")) 


PWEBM6_Fact <- factor(DF_AVQ_A2018$PWEBM6, 
levels=c("6"), 
labels=c("presente")) 


NPOLI_Fact <- factor(DF_AVQ_A2018$NPOLI, 
levels=c("1"), 
labels=c("presente")) 


NTPOLI_Fact <- factor(DF_AVQ_A2018$NTPOLI, 
levels=c("2"), 
labels=c("presente")) 


POLCOM_Fact <- factor(DF_AVQ_A2018$POLCOM, 
levels=c("3"), 
labels=c("presente")) 


SFIPOL_Fact <- factor(DF_AVQ_A2018$SFIPOL, 
levels=c("4"), 
labels=c("presente")) 


NALTPO_Fact <- factor(DF_AVQ_A2018$NALTPO, 
levels=c("5"), 
labels=c("presente")) 


UFFAN_Fact <- factor(DF_AVQ_A2018$UFFAN, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


TUFAN_Fact <- factor(DF_AVQ_A2018$TUFAN, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("fino a 10 minuti", 
"da 11 a 20 minuti", 
"da 21 a 30 minuti", 
"da 31 a 45 minuti", 
"piu di 45 minuti")) 


GORAR_Fact <- factor(DF_AVQ_A2018$GORAR, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("molto comodo", 
"abbastanza comodo", 
"poco comodo", 
"per niente comodo", 
"non so")) 


CORAR_Fact <- factor(DF_AVQ_A2018$CORAR, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6", 
"7"), 
labels=c("l'orario va bene così com'è", 
"orario continuato fino alle 16/17 almeno in alcuni giorni", 
"due aperture (mattina e pomeriggio) dal lunedì al venerdì", 
"possibilità di lunga apertura (es. 8/20) in alcuni periodi fissi (es. 1 volta alla settimana)", 
"altro orario", 
"mi è indifferente", 
"non so")) 


AUTOCE_Fact <- factor(DF_AVQ_A2018$AUTOCE, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


CANAG_Fact <- factor(DF_AVQ_A2018$CANAG, 
levels=c("01", 
"02", 
"03", 
"23"), 
labels=c("no", 
"sì, rivolgendomi direttamente all'ufficio competente", 
"sì, rivolgendomi ad agenzia o privati", 
"sì, rivolgendomi sia all'ufficio competente sia ad agenzia o privati")) 


PRAUT_Fact <- factor(DF_AVQ_A2018$PRAUT, 
levels=c("01", 
"02", 
"03", 
"23"), 
labels=c("no", 
"sì, rivolgendomi direttamente all'ufficio competente", 
"sì, rivolgendomi ad agenzia o privati", 
"sì, rivolgendomi sia all'ufficio competente sia ad agenzia o privati")) 


CERSC_Fact <- factor(DF_AVQ_A2018$CERSC, 
levels=c("01", 
"02", 
"03", 
"23"), 
labels=c("no", 
"sì, rivolgendomi direttamente all'ufficio competente", 
"sì, rivolgendomi ad agenzia o privati", 
"sì, rivolgendomi sia all'ufficio competente sia ad agenzia o privati")) 


CATAS_Fact <- factor(DF_AVQ_A2018$CATAS, 
levels=c("01", 
"02", 
"03", 
"23"), 
labels=c("no", 
"sì, rivolgendomi direttamente all'ufficio competente", 
"sì, rivolgendomi ad agenzia o privati", 
"sì, rivolgendomi sia all'ufficio competente sia ad agenzia o privati")) 


CALTRO_Fact <- factor(DF_AVQ_A2018$CALTRO, 
levels=c("01", 
"02", 
"03", 
"23"), 
labels=c("no", 
"sì, rivolgendomi direttamente all'ufficio competente", 
"sì, rivolgendomi ad agenzia o privati", 
"sì, rivolgendomi sia all'ufficio competente sia ad agenzia o privati")) 


USOSS_Fact <- factor(DF_AVQ_A2018$USOSS, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


TEMSS_Fact <- factor(DF_AVQ_A2018$TEMSS, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("fino a 10 minuti", 
"da 11 a 20 minuti", 
"da 21 a 30 minuti", 
"da 31 a 45 minuti", 
"più di 45 minuti")) 


GOUSL_Fact <- factor(DF_AVQ_A2018$GOUSL, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("molto comodo", 
"abbastanza comodo", 
"poco comodo", 
"per niente comodo", 
"non so")) 


COUSL_Fact <- factor(DF_AVQ_A2018$COUSL, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6", 
"7"), 
labels=c("l'orario va bene così com'è", 
"orario continuato fino alle 16/17 almeno in alcuni giorni", 
"due aperture (mattina e pomeriggio) dal lunedì al venerdì", 
"possibilità di lunga apertura (es. 8/20) in alcuni periodi fissi (es. 1 volta alla settimana)", 
"altro orario", 
"mi è indifferente", 
"non so")) 


UFFPOS_Fact <- factor(DF_AVQ_A2018$UFFPOS, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


RACCO_Fact <- factor(DF_AVQ_A2018$RACCO, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("una o più volte al mese", 
"una o più volte ogni due mesi", 
"qualche volta l'anno", 
"mai")) 


VAGLIA_Fact <- factor(DF_AVQ_A2018$VAGLIA, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("una o più volte al mese", 
"una o più volte ogni due mesi", 
"qualche volta l'anno", 
"mai")) 


VCOC_Fact <- factor(DF_AVQ_A2018$VCOC, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("una o più volte al mese", 
"una o più volte ogni due mesi", 
"qualche volta l'anno", 
"mai")) 


RPENS_Fact <- factor(DF_AVQ_A2018$RPENS, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("una o più volte al mese", 
"una o più volte ogni due mesi", 
"qualche volta l'anno", 
"mai")) 


RPARA_Fact <- factor(DF_AVQ_A2018$RPARA, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("una o più volte al mese", 
"una o più volte ogni due mesi", 
"qualche volta l'anno", 
"mai")) 


TRACC_Fact <- factor(DF_AVQ_A2018$TRACC, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("fino a 10 minuti", 
"da 11 a 20 minuti", 
"da 21 a 30 minuti", 
"da 31 a 45 minuti", 
"più di 45 minuti")) 


TVAGL_Fact <- factor(DF_AVQ_A2018$TVAGL, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("fino a 10 minuti", 
"da 11 a 20 minuti", 
"da 21 a 30 minuti", 
"da 31 a 45 minuti", 
"più di 45 minuti")) 


TCCP_Fact <- factor(DF_AVQ_A2018$TCCP, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("fino a 10 minuti", 
"da 11 a 20 minuti", 
"da 21 a 30 minuti", 
"da 31 a 45 minuti", 
"più di 45 minuti")) 


TRPEN_Fact <- factor(DF_AVQ_A2018$TRPEN, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("fino a 10 minuti", 
"da 11 a 20 minuti", 
"da 21 a 30 minuti", 
"da 31 a 45 minuti", 
"più di 45 minuti")) 


TPARA_Fact <- factor(DF_AVQ_A2018$TPARA, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("fino a 10 minuti", 
"da 11 a 20 minuti", 
"da 21 a 30 minuti", 
"da 31 a 45 minuti", 
"più di 45 minuti")) 


GOSPO_Fact <- factor(DF_AVQ_A2018$GOSPO, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("molto comodo", 
"abbastanza comodo", 
"poco comodo", 
"per niente comodo", 
"non so")) 


COSPO_Fact <- factor(DF_AVQ_A2018$COSPO, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6", 
"7"), 
labels=c("l'orario va bene così com'è", 
"orario continuato fino alle 16/17 almeno in alcuni giorni", 
"due aperture (mattina e pomeriggio) dal lunedì al venerdì", 
"possibilità di lunga apertura (es. 8/20) in alcuni periodi fissi (es. 1 volta alla settimana)", 
"altro orario", 
"mi è indifferente", 
"non so")) 


BANCA_Fact <- factor(DF_AVQ_A2018$BANCA, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


TABAN_Fact <- factor(DF_AVQ_A2018$TABAN, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("fino a 10 minuti", 
"da 11 a 20 minuti", 
"da 21 a 30 minuti", 
"da 31 a 45 minuti", 
"piu di 45 minuti")) 


BANCM_Fact <- factor(DF_AVQ_A2018$BANCM, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


CCRED_Fact <- factor(DF_AVQ_A2018$CCRED, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


NCCREDM_Fact <- factor(DF_AVQ_A2018$NCCREDM, 
levels=c("01", 
"02", 
"03", 
"04"), 
labels=c("1", 
"2", 
"3", 
"4 e piu'")) 


USOTRAM_Fact <- factor(DF_AVQ_A2018$USOTRAM, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6"), 
labels=c("tutti i giorni", 
"qualche volta alla settimana", 
"qualche volta al mese", 
"qualche volta l'anno", 
"mai", 
"non esiste il servizio")) 


FCORS_Fact <- factor(DF_AVQ_A2018$FCORS, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


PUNT_Fact <- factor(DF_AVQ_A2018$PUNT, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


POSSE_Fact <- factor(DF_AVQ_A2018$POSSE, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


VELCO_Fact <- factor(DF_AVQ_A2018$VELCO, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


PULIZ_Fact <- factor(DF_AVQ_A2018$PULIZ, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


COMOF_Fact <- factor(DF_AVQ_A2018$COMOF, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


COLLEG_Fact <- factor(DF_AVQ_A2018$COLLEG, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


COMOR_Fact <- factor(DF_AVQ_A2018$COMOR, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


CPSBI_Fact <- factor(DF_AVQ_A2018$CPSBI, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


USOPUL_Fact <- factor(DF_AVQ_A2018$USOPUL, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("tutti i giorni", 
"qualche volta alla settimana", 
"qualche volta al mese", 
"qualche volta l'anno", 
"mai")) 


FRCMT_Fact <- factor(DF_AVQ_A2018$FRCMT, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


PUNMT_Fact <- factor(DF_AVQ_A2018$PUNMT, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


SEDMT_Fact <- factor(DF_AVQ_A2018$SEDMT, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


VELMT_Fact <- factor(DF_AVQ_A2018$VELMT, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


PULMT_Fact <- factor(DF_AVQ_A2018$PULMT, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


ATTMT_Fact <- factor(DF_AVQ_A2018$ATTMT, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


COLCO_Fact <- factor(DF_AVQ_A2018$COLCO, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


ORAMT_Fact <- factor(DF_AVQ_A2018$ORAMT, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


CBMT_Fact <- factor(DF_AVQ_A2018$CBMT, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


INFMT_Fact <- factor(DF_AVQ_A2018$INFMT, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


USTRE_Fact <- factor(DF_AVQ_A2018$USTRE, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("tutti i giorni", 
"qualche volta alla settimana", 
"qualche volta al mese", 
"qualche volta l'anno", 
"mai")) 


FRTRE_Fact <- factor(DF_AVQ_A2018$FRTRE, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


PUTRE_Fact <- factor(DF_AVQ_A2018$PUTRE, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


PSTRE_Fact <- factor(DF_AVQ_A2018$PSTRE, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


VETRE_Fact <- factor(DF_AVQ_A2018$VETRE, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


PULSTR_Fact <- factor(DF_AVQ_A2018$PULSTR, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


COMAT_Fact <- factor(DF_AVQ_A2018$COMAT, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


COLCOM_Fact <- factor(DF_AVQ_A2018$COLCOM, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


COMORA_Fact <- factor(DF_AVQ_A2018$COMORA, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


COBIG_Fact <- factor(DF_AVQ_A2018$COBIG, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


INFTR_Fact <- factor(DF_AVQ_A2018$INFTR, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


USOAUT_Fact <- factor(DF_AVQ_A2018$USOAUT, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("tutti i giorni", 
"qualche volta alla settimana", 
"qualche volta al mese", 
"qualche volta l'anno", 
"mai")) 


SERRA_Fact <- factor(DF_AVQ_A2018$SERRA, 
levels=c("01"), 
labels=c("presente")) 


ESTINZ_Fact <- factor(DF_AVQ_A2018$ESTINZ, 
levels=c("02"), 
labels=c("presente")) 


CAMCLI_Fact <- factor(DF_AVQ_A2018$CAMCLI, 
levels=c("03"), 
labels=c("presente")) 


SMARIF_Fact <- factor(DF_AVQ_A2018$SMARIF, 
levels=c("04"), 
labels=c("presente")) 


AMRUM_Fact <- factor(DF_AVQ_A2018$AMRUM, 
levels=c("05"), 
labels=c("presente")) 


IARIA_Fact <- factor(DF_AVQ_A2018$IARIA, 
levels=c("06"), 
labels=c("presente")) 


INQSU_Fact <- factor(DF_AVQ_A2018$INQSU, 
levels=c("07"), 
labels=c("presente")) 


INQFIU_Fact <- factor(DF_AVQ_A2018$INQFIU, 
levels=c("08"), 
labels=c("presente")) 


DISDR_Fact <- factor(DF_AVQ_A2018$DISDR, 
levels=c("09"), 
labels=c("presente")) 


CATASTR_Fact <- factor(DF_AVQ_A2018$CATASTR, 
levels=c("10"), 
labels=c("presente")) 


FORES2_Fact <- factor(DF_AVQ_A2018$FORES2, 
levels=c("11"), 
labels=c("presente")) 


INQELET2_Fact <- factor(DF_AVQ_A2018$INQELET2, 
levels=c("12"), 
labels=c("presente")) 


PAESAG2_Fact <- factor(DF_AVQ_A2018$PAESAG2, 
levels=c("13"), 
labels=c("presente")) 


ESRISO2_Fact <- factor(DF_AVQ_A2018$ESRISO2, 
levels=c("14"), 
labels=c("presente")) 


ALTAMB2_Fact <- factor(DF_AVQ_A2018$ALTAMB2, 
levels=c("15"), 
labels=c("presente")) 


GCARTE_Fact <- factor(DF_AVQ_A2018$GCARTE, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("abitualmente", 
"qualche volta", 
"raramente", 
"mai")) 


DOPFIL_Fact <- factor(DF_AVQ_A2018$DOPFIL, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("abitualmente", 
"qualche volta", 
"raramente", 
"mai")) 


ARUMOR_Fact <- factor(DF_AVQ_A2018$ARUMOR, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("abitualmente", 
"qualche volta", 
"raramente", 
"mai")) 


FUTUASP_Fact <- factor(DF_AVQ_A2018$FUTUASP, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("migliorerà", 
"resterà la stessa", 
"peggiorerà", 
"non so")) 


FIDUCIA_Fact <- factor(DF_AVQ_A2018$FIDUCIA, 
levels=c("1", 
"2"), 
labels=c("gran parte della gente è degna di fiducia", 
"bisogna stare molto attenti")) 


FIDU1_Fact <- factor(DF_AVQ_A2018$FIDU1, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto probabile", 
"abbastanza probabile", 
"poco probabile", 
"per niente probabile")) 


FIDU2_Fact <- factor(DF_AVQ_A2018$FIDU2, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto probabile", 
"abbastanza probabile", 
"poco probabile", 
"per niente probabile")) 


FIDU3_Fact <- factor(DF_AVQ_A2018$FIDU3, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto probabile", 
"abbastanza probabile", 
"poco probabile", 
"per niente probabile")) 


BMIMIN_Fact <- factor(DF_AVQ_A2018$BMIMIN, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("Sottopeso", 
"Normopeso", 
"Sovrappeso", 
"Obeso")) 


SENELE_Fact <- factor(DF_AVQ_A2018$SENELE, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


GCONT_Fact <- factor(DF_AVQ_A2018$GCONT, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


GASBAL_Fact <- factor(DF_AVQ_A2018$GASBAL, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


GDISPL_Fact <- factor(DF_AVQ_A2018$GDISPL, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


GCBOL_Fact <- factor(DF_AVQ_A2018$GCBOL, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


GINF_Fact <- factor(DF_AVQ_A2018$GINF, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


GAS5_Fact <- factor(DF_AVQ_A2018$GAS5, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("l'abitazione è allacciata alla rete di distribuzione di gas naturale (metano)", 
"l'abitazione è allacciata alla rete di distribuzione di gas diverso da gas metano (gpl)", 
"il gas viene acquistato in bombole", 
"è istallato un bombolone all'esterno con rifornimento periodico", 
"l'abitazione non dispone nè di gas, nè di bombola, nè di bombolone esterno")) 


SGAS_Fact <- factor(DF_AVQ_A2018$SGAS, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


GASPR2_Fact <- factor(DF_AVQ_A2018$GASPR2, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


FLGAS_Fact <- factor(DF_AVQ_A2018$FLGAS, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


COMBOL_Fact <- factor(DF_AVQ_A2018$COMBOL, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


SERINF_Fact <- factor(DF_AVQ_A2018$SERINF, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


SICURET_Fact <- factor(DF_AVQ_A2018$SICURET, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


SCEFO2_Fact <- factor(DF_AVQ_A2018$SCEFO2, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


CAMFO2_Fact <- factor(DF_AVQ_A2018$CAMFO2, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("no, non ha mai cambiato", 
"sì, il fornitore di energia elettrica", 
"sì, il fornitore di gas", 
"sì, entrambi")) 


NMOTNFE1_Fact <- factor(DF_AVQ_A2018$NMOTNFE1, 
levels=c("1"), 
labels=c("presente")) 


NMOTNFE2_Fact <- factor(DF_AVQ_A2018$NMOTNFE2, 
levels=c("3"), 
labels=c("presente")) 


NMOTNFE3_Fact <- factor(DF_AVQ_A2018$NMOTNFE3, 
levels=c("5"), 
labels=c("presente")) 


NMOTNFE4_Fact <- factor(DF_AVQ_A2018$NMOTNFE4, 
levels=c("7"), 
labels=c("presente")) 


NMOTNFE5_Fact <- factor(DF_AVQ_A2018$NMOTNFE5, 
levels=c("1"), 
labels=c("presente")) 


NMOTNFG1_Fact <- factor(DF_AVQ_A2018$NMOTNFG1, 
levels=c("2"), 
labels=c("presente")) 


NMOTNFG2_Fact <- factor(DF_AVQ_A2018$NMOTNFG2, 
levels=c("4"), 
labels=c("presente")) 


NMOTNFG3_Fact <- factor(DF_AVQ_A2018$NMOTNFG3, 
levels=c("6"), 
labels=c("presente")) 


NMOTNFG4_Fact <- factor(DF_AVQ_A2018$NMOTNFG4, 
levels=c("8"), 
labels=c("presente")) 


NMOTNFG5_Fact <- factor(DF_AVQ_A2018$NMOTNFG5, 
levels=c("2"), 
labels=c("presente")) 


CALLELGA_Fact <- factor(DF_AVQ_A2018$CALLELGA, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("no", 
"sì, solo dell'azienda fornitrice di energia elettrica", 
"sì, solo dell'azienda fornitrice del gas", 
"sì, di entrambe")) 


SODCALL_Fact <- factor(DF_AVQ_A2018$SODCALL, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


PROINT_Fact <- factor(DF_AVQ_A2018$PROINT, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("no", 
"sì, il numero per i guasti elettrici", 
"sì, il numero per il pronto intervento gas", 
"sì, entrambi")) 


SODINT_Fact <- factor(DF_AVQ_A2018$SODINT, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


SPORCO_Fact <- factor(DF_AVQ_A2018$SPORCO, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("molto", 
"abbastanza", 
"poco", 
"per niente", 
"non so")) 


PARCH_Fact <- factor(DF_AVQ_A2018$PARCH, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("molto", 
"abbastanza", 
"poco", 
"per niente", 
"non so")) 


COLMP_Fact <- factor(DF_AVQ_A2018$COLMP, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("molto", 
"abbastanza", 
"poco", 
"per niente", 
"non so")) 


TRAF_Fact <- factor(DF_AVQ_A2018$TRAF, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("molto", 
"abbastanza", 
"poco", 
"per niente", 
"non so")) 


INQAR_Fact <- factor(DF_AVQ_A2018$INQAR, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("molto", 
"abbastanza", 
"poco", 
"per niente", 
"non so")) 


RUMORE_Fact <- factor(DF_AVQ_A2018$RUMORE, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("molto", 
"abbastanza", 
"poco", 
"per niente", 
"non so")) 


CRIM_Fact <- factor(DF_AVQ_A2018$CRIM, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("molto", 
"abbastanza", 
"poco", 
"per niente", 
"non so")) 


ODSGR_Fact <- factor(DF_AVQ_A2018$ODSGR, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("molto", 
"abbastanza", 
"poco", 
"per niente", 
"non so")) 


ILLSTR_Fact <- factor(DF_AVQ_A2018$ILLSTR, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("molto", 
"abbastanza", 
"poco", 
"per niente", 
"non so")) 


CONPAV_Fact <- factor(DF_AVQ_A2018$CONPAV, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("molto", 
"abbastanza", 
"poco", 
"per niente", 
"non so")) 


PARCHI_Fact <- factor(DF_AVQ_A2018$PARCHI, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


TERRAZ_Fact <- factor(DF_AVQ_A2018$TERRAZ, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


GARDEN_Fact <- factor(DF_AVQ_A2018$GARDEN, 
levels=c("3", 
"4"), 
labels=c("no", 
"sì")) 


TELEF_Fact <- factor(DF_AVQ_A2018$TELEF, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


NELENC_Fact <- factor(DF_AVQ_A2018$NELENC, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


RISCAL_Fact <- factor(DF_AVQ_A2018$RISCAL, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


TRISC_Fact <- factor(DF_AVQ_A2018$TRISC, 
levels=c("1", 
"2", 
"3"), 
labels=c("centralizzato", 
"autonomo", 
"solo apparecchi singoli (compresi camini e stufe)")) 


REACQ1_Fact <- factor(DF_AVQ_A2018$REACQ1, 
levels=c("1"), 
labels=c("presente")) 


REACQ2_Fact <- factor(DF_AVQ_A2018$REACQ2, 
levels=c("2"), 
labels=c("presente")) 


REACQ3_Fact <- factor(DF_AVQ_A2018$REACQ3, 
levels=c("3"), 
labels=c("presente")) 


REACQ4_Fact <- factor(DF_AVQ_A2018$REACQ4, 
levels=c("4"), 
labels=c("presente")) 


REACQ5_Fact <- factor(DF_AVQ_A2018$REACQ5, 
levels=c("5"), 
labels=c("presente")) 


SODACQUA_Fact <- factor(DF_AVQ_A2018$SODACQUA, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


AGFORN_Fact <- factor(DF_AVQ_A2018$AGFORN, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


AGPRESS_Fact <- factor(DF_AVQ_A2018$AGPRESS, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


AGODOR_Fact <- factor(DF_AVQ_A2018$AGODOR, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


AGLETTUR_Fact <- factor(DF_AVQ_A2018$AGLETTUR, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


AGFATTUR_Fact <- factor(DF_AVQ_A2018$AGFATTUR, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


AGBOLLET_Fact <- factor(DF_AVQ_A2018$AGBOLLET, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatto", 
"abbastanza soddisfatto", 
"poco soddisfatto", 
"per niente soddisfatto")) 


FOGNA_Fact <- factor(DF_AVQ_A2018$FOGNA, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


SPEAB_Fact <- factor(DF_AVQ_A2018$SPEAB, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


ABIPIC_Fact <- factor(DF_AVQ_A2018$ABIPIC, 
levels=c("3", 
"4"), 
labels=c("no", 
"sì")) 


ABLONF_Fact <- factor(DF_AVQ_A2018$ABLONF, 
levels=c("5", 
"6"), 
labels=c("no", 
"sì")) 


ACQUA_Fact <- factor(DF_AVQ_A2018$ACQUA, 
levels=c("7", 
"8"), 
labels=c("no", 
"sì")) 


ABICC_Fact <- factor(DF_AVQ_A2018$ABICC, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


ERACQ_Fact <- factor(DF_AVQ_A2018$ERACQ, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("sporadicamente", 
"solo nel periodo estivo", 
"durante tutto l'anno", 
"altro")) 


SIACQ_Fact <- factor(DF_AVQ_A2018$SIACQ, 
levels=c("1"), 
labels=c("presente")) 


ACQBRU_Fact <- factor(DF_AVQ_A2018$ACQBRU, 
levels=c("2"), 
labels=c("presente")) 


NOACQ_Fact <- factor(DF_AVQ_A2018$NOACQ, 
levels=c("3"), 
labels=c("presente")) 


GODAB_Fact <- factor(DF_AVQ_A2018$GODAB, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("affitto o subaffitto", 
"proprietà", 
"usufrutto", 
"titolo gratuito", 
"altro")) 


FARMA_Fact <- factor(DF_AVQ_A2018$FARMA, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("nessuna difficoltà", 
"un po' di difficoltà", 
"molta difficoltà", 
"non so")) 


PRSOC_Fact <- factor(DF_AVQ_A2018$PRSOC, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("nessuna difficoltà", 
"un po' di difficoltà", 
"molta difficoltà", 
"non so")) 


UFFPO_Fact <- factor(DF_AVQ_A2018$UFFPO, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("nessuna difficoltà", 
"un po' di difficoltà", 
"molta difficoltà", 
"non so")) 


POLICE_Fact <- factor(DF_AVQ_A2018$POLICE, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("nessuna difficoltà", 
"un po' di difficoltà", 
"molta difficoltà", 
"non so")) 


UFFCOM_Fact <- factor(DF_AVQ_A2018$UFFCOM, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("nessuna difficoltà", 
"un po' di difficoltà", 
"molta difficoltà", 
"non so")) 


NIDO_Fact <- factor(DF_AVQ_A2018$NIDO, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("nessuna difficoltà", 
"un po' di difficoltà", 
"molta difficoltà", 
"non so")) 


SMATER_Fact <- factor(DF_AVQ_A2018$SMATER, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("nessuna difficoltà", 
"un po' di difficoltà", 
"molta difficoltà", 
"non so")) 


SELEM_Fact <- factor(DF_AVQ_A2018$SELEM, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("nessuna difficoltà", 
"un po' di difficoltà", 
"molta difficoltà", 
"non so")) 


SMINF_Fact <- factor(DF_AVQ_A2018$SMINF, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("nessuna difficoltà", 
"un po' di difficoltà", 
"molta difficoltà", 
"non so")) 


MERCAT_Fact <- factor(DF_AVQ_A2018$MERCAT, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("nessuna difficoltà", 
"un po' di difficoltà", 
"molta difficoltà", 
"non so")) 


SMERC_Fact <- factor(DF_AVQ_A2018$SMERC, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("nessuna difficoltà", 
"un po' di difficoltà", 
"molta difficoltà", 
"non so")) 


CASS_Fact <- factor(DF_AVQ_A2018$CASS, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("nessuna difficoltà", 
"un po' di difficoltà", 
"molta difficoltà", 
"non so")) 


SEGAS_Fact <- factor(DF_AVQ_A2018$SEGAS, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("nessuna difficoltà", 
"un po' di difficoltà", 
"molta difficoltà", 
"non so")) 


SLUCE_Fact <- factor(DF_AVQ_A2018$SLUCE, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("nessuna difficoltà", 
"un po' di difficoltà", 
"molta difficoltà", 
"non so")) 


CRARIF_Fact <- factor(DF_AVQ_A2018$CRARIF, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("elevato", 
"adeguato", 
"basso", 
"non so")) 


CERACQ_Fact <- factor(DF_AVQ_A2018$CERACQ, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("elevato", 
"adeguato", 
"basso", 
"non so")) 


CCARTA_Fact <- factor(DF_AVQ_A2018$CCARTA, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("sì, e sono facilmente raggiungibili", 
"sì, ma sono difficilmente raggiungibili", 
"no", 
"non so")) 


CVETRO_Fact <- factor(DF_AVQ_A2018$CVETRO, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("sì, e sono facilmente raggiungibili", 
"sì, ma sono difficilmente raggiungibili", 
"no", 
"non so")) 


CFARM_Fact <- factor(DF_AVQ_A2018$CFARM, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("sì, e sono facilmente raggiungibili", 
"sì, ma sono difficilmente raggiungibili", 
"no", 
"non so")) 


CBAT_Fact <- factor(DF_AVQ_A2018$CBAT, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("sì, e sono facilmente raggiungibili", 
"sì, ma sono difficilmente raggiungibili", 
"no", 
"non so")) 


CLATAL_Fact <- factor(DF_AVQ_A2018$CLATAL, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("sì, e sono facilmente raggiungibili", 
"sì, ma sono difficilmente raggiungibili", 
"no", 
"non so")) 


CPLAS_Fact <- factor(DF_AVQ_A2018$CPLAS, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("sì, e sono facilmente raggiungibili", 
"sì, ma sono difficilmente raggiungibili", 
"no", 
"non so")) 


CRORG_Fact <- factor(DF_AVQ_A2018$CRORG, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("sì, e sono facilmente raggiungibili", 
"sì, ma sono difficilmente raggiungibili", 
"no", 
"non so")) 


CTESSILI_Fact <- factor(DF_AVQ_A2018$CTESSILI, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("sì, e sono facilmente raggiungibili", 
"sì, ma sono difficilmente raggiungibili", 
"no", 
"non so")) 


CALT_Fact <- factor(DF_AVQ_A2018$CALT, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("sì, e sono facilmente raggiungibili", 
"sì, ma sono difficilmente raggiungibili", 
"no", 
"non so")) 


POAPO_Fact <- factor(DF_AVQ_A2018$POAPO, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


R_CARTA_Fact <- factor(DF_AVQ_A2018$R_CARTA, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"24"), 
labels=c("cassonetti, sempre", 
"cassonetti, qualche volta", 
"porta a porta, sempre", 
"porta a porta, qualche volta", 
"no", 
"cassonetti e porta a porta, qualche volta")) 


R_VETRO_Fact <- factor(DF_AVQ_A2018$R_VETRO, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"24"), 
labels=c("cassonetti, sempre", 
"cassonetti, qualche volta", 
"porta a porta, sempre", 
"porta a porta, qualche volta", 
"no", 
"cassonetti e porta a porta, qualche volta")) 


R_FARM_Fact <- factor(DF_AVQ_A2018$R_FARM, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"24"), 
labels=c("cassonetti, sempre", 
"cassonetti, qualche volta", 
"porta a porta, sempre", 
"porta a porta, qualche volta", 
"no", 
"cassonetti e porta a porta, qualche volta")) 


R_BAT_Fact <- factor(DF_AVQ_A2018$R_BAT, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"24"), 
labels=c("cassonetti, sempre", 
"cassonetti, qualche volta", 
"porta a porta, sempre", 
"porta a porta, qualche volta", 
"no", 
"cassonetti e porta a porta, qualche volta")) 


R_LATAL_Fact <- factor(DF_AVQ_A2018$R_LATAL, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"24"), 
labels=c("cassonetti, sempre", 
"cassonetti, qualche volta", 
"porta a porta, sempre", 
"porta a porta, qualche volta", 
"no", 
"cassonetti e porta a porta, qualche volta")) 


R_PLAS_Fact <- factor(DF_AVQ_A2018$R_PLAS, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"24"), 
labels=c("cassonetti, sempre", 
"cassonetti, qualche volta", 
"porta a porta, sempre", 
"porta a porta, qualche volta", 
"no", 
"cassonetti e porta a porta, qualche volta")) 


R_RORG_Fact <- factor(DF_AVQ_A2018$R_RORG, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"24"), 
labels=c("cassonetti, sempre", 
"cassonetti, qualche volta", 
"porta a porta, sempre", 
"porta a porta, qualche volta", 
"no", 
"cassonetti e porta a porta, qualche volta")) 


R_TESSILI_Fact <- factor(DF_AVQ_A2018$R_TESSILI, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"24"), 
labels=c("cassonetti, sempre", 
"cassonetti, qualche volta", 
"porta a porta, sempre", 
"porta a porta, qualche volta", 
"no", 
"cassonetti e porta a porta, qualche volta")) 


R_ALT_Fact <- factor(DF_AVQ_A2018$R_ALT, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"24"), 
labels=c("cassonetti, sempre", 
"cassonetti, qualche volta", 
"porta a porta, sempre", 
"porta a porta, qualche volta", 
"no", 
"cassonetti e porta a porta, qualche volta")) 


SODPOAPO_Fact <- factor(DF_AVQ_A2018$SODPOAPO, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("molto soddisfatta", 
"abbastanza soddisfatta", 
"poco soddisfatta", 
"per niente soddisfatta")) 


NOSPO1_Fact <- factor(DF_AVQ_A2018$NOSPO1, 
levels=c("1"), 
labels=c("presente")) 


NOSPO7_Fact <- factor(DF_AVQ_A2018$NOSPO7, 
levels=c("2"), 
labels=c("presente")) 


NOSPO2_Fact <- factor(DF_AVQ_A2018$NOSPO2, 
levels=c("3"), 
labels=c("presente")) 


NOSPO3_Fact <- factor(DF_AVQ_A2018$NOSPO3, 
levels=c("4"), 
labels=c("presente")) 


NOSPO4_Fact <- factor(DF_AVQ_A2018$NOSPO4, 
levels=c("5"), 
labels=c("presente")) 


NOSPO5_Fact <- factor(DF_AVQ_A2018$NOSPO5, 
levels=c("6"), 
labels=c("presente")) 


NOSPO8_Fact <- factor(DF_AVQ_A2018$NOSPO8, 
levels=c("7"), 
labels=c("presente")) 


NOSPO6_Fact <- factor(DF_AVQ_A2018$NOSPO6, 
levels=c("8"), 
labels=c("presente")) 


ECOSTAZ_Fact <- factor(DF_AVQ_A2018$ECOSTAZ, 
levels=c("1", 
"2", 
"3"), 
labels=c("no", 
"sì", 
"non so")) 


USOECO2_Fact <- factor(DF_AVQ_A2018$USOECO2, 
levels=c("1", 
"2", 
"3"), 
labels=c("No", 
"sì, negli ultimi 12 mesi", 
"sì, più di 1 anno fa")) 


ECOCAR_Fact <- factor(DF_AVQ_A2018$ECOCAR, 
levels=c("01"), 
labels=c("presente")) 


ECOVET_Fact <- factor(DF_AVQ_A2018$ECOVET, 
levels=c("02"), 
labels=c("presente")) 


ECOPLA_Fact <- factor(DF_AVQ_A2018$ECOPLA, 
levels=c("03"), 
labels=c("presente")) 


ECOPNE_Fact <- factor(DF_AVQ_A2018$ECOPNE, 
levels=c("04"), 
labels=c("presente")) 


ECOMET_Fact <- factor(DF_AVQ_A2018$ECOMET, 
levels=c("05"), 
labels=c("presente")) 


ECOLEG_Fact <- factor(DF_AVQ_A2018$ECOLEG, 
levels=c("06"), 
labels=c("presente")) 


ECOFAR_Fact <- factor(DF_AVQ_A2018$ECOFAR, 
levels=c("07"), 
labels=c("presente")) 


ECOBAT_Fact <- factor(DF_AVQ_A2018$ECOBAT, 
levels=c("08"), 
labels=c("presente")) 


ECOING_Fact <- factor(DF_AVQ_A2018$ECOING, 
levels=c("09"), 
labels=c("presente")) 


ECOINE_Fact <- factor(DF_AVQ_A2018$ECOINE, 
levels=c("10"), 
labels=c("presente")) 


ECOELE_Fact <- factor(DF_AVQ_A2018$ECOELE, 
levels=c("11"), 
labels=c("presente")) 


ECOOLI_Fact <- factor(DF_AVQ_A2018$ECOOLI, 
levels=c("12"), 
labels=c("presente")) 


ECOINF_Fact <- factor(DF_AVQ_A2018$ECOINF, 
levels=c("13"), 
labels=c("presente")) 


ECOPOT_Fact <- factor(DF_AVQ_A2018$ECOPOT, 
levels=c("14"), 
labels=c("presente")) 


ECOTESS_Fact <- factor(DF_AVQ_A2018$ECOTESS, 
levels=c("15"), 
labels=c("presente")) 


ECOALT_Fact <- factor(DF_AVQ_A2018$ECOALT, 
levels=c("16"), 
labels=c("presente")) 


NOECO_Fact <- factor(DF_AVQ_A2018$NOECO, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6"), 
labels=c("Non ne abbiamo avuto bisogno", 
"Sono troppo lontane dalla nostra abitazione", 
"Non abbiamo un mezzo adeguato a trasportare questo tipo di rifiuti", 
"Abbiamo utilizzato un servizio pubblico o privato a domicilio", 
"Li abbiamo lasciati in appositi cassonetti", 
"Altro")) 


SPIDIF1_Fact <- factor(DF_AVQ_A2018$SPIDIF1, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


SPIDIF2_Fact <- factor(DF_AVQ_A2018$SPIDIF2, 
levels=c("3", 
"4"), 
labels=c("no", 
"sì")) 


SPIDIF3_Fact <- factor(DF_AVQ_A2018$SPIDIF3, 
levels=c("5", 
"6"), 
labels=c("no", 
"sì")) 


SPIDIF4_Fact <- factor(DF_AVQ_A2018$SPIDIF4, 
levels=c("7", 
"8"), 
labels=c("no", 
"sì")) 


SPIDIF5_Fact <- factor(DF_AVQ_A2018$SPIDIF5, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


SPIDIF6_Fact <- factor(DF_AVQ_A2018$SPIDIF6, 
levels=c("3", 
"4"), 
labels=c("no", 
"sì")) 


SPIDIF7_Fact <- factor(DF_AVQ_A2018$SPIDIF7, 
levels=c("5", 
"6"), 
labels=c("no", 
"sì")) 


SPIDIF8_Fact <- factor(DF_AVQ_A2018$SPIDIF8, 
levels=c("7", 
"8"), 
labels=c("no", 
"sì")) 


CAMAB_Fact <- factor(DF_AVQ_A2018$CAMAB, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


PCAMAB_Fact <- factor(DF_AVQ_A2018$PCAMAB, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


ASSCA_Fact <- factor(DF_AVQ_A2018$ASSCA, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


COLFAGG_Fact <- factor(DF_AVQ_A2018$COLFAGG, 
levels=c("01", 
"02"), 
labels=c("no", 
"sì, italiano o sia italiano sia straniero o sì, straniero")) 


BABYSAGG_Fact <- factor(DF_AVQ_A2018$BABYSAGG, 
levels=c("01", 
"02"), 
labels=c("no", 
"sì, italiano o sia italiano sia straniero o sì, straniero")) 


ASSANZAGG_Fact <- factor(DF_AVQ_A2018$ASSANZAGG, 
levels=c("01", 
"02"), 
labels=c("no", 
"sì, italiano o sia italiano sia straniero o sì, straniero")) 


AVVOC_Fact <- factor(DF_AVQ_A2018$AVVOC, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


NOTAIO_Fact <- factor(DF_AVQ_A2018$NOTAIO, 
levels=c("3", 
"4"), 
labels=c("no", 
"sì")) 


COMMER_Fact <- factor(DF_AVQ_A2018$COMMER, 
levels=c("5", 
"6"), 
labels=c("no", 
"sì")) 


NOMOD_Fact <- factor(DF_AVQ_A2018$NOMOD, 
levels=c("1"), 
labels=c("presente")) 


COMFAM_Fact <- factor(DF_AVQ_A2018$COMFAM, 
levels=c("2"), 
labels=c("presente")) 


NONPAG_Fact <- factor(DF_AVQ_A2018$NONPAG, 
levels=c("3"), 
labels=c("presente")) 


PAGAM_Fact <- factor(DF_AVQ_A2018$PAGAM, 
levels=c("4"), 
labels=c("presente")) 


PINSER_Fact <- factor(DF_AVQ_A2018$PINSER, 
levels=c("1", 
"2", 
"3"), 
labels=c("sì, più volte nel corso dell'anno", 
"sì, una volta", 
"no")) 


LAVST_Fact <- factor(DF_AVQ_A2018$LAVST, 
levels=c("1", 
"2"), 
labels=c("No", 
"Sì")) 


LAVATR_Fact <- factor(DF_AVQ_A2018$LAVATR, 
levels=c("3", 
"4"), 
labels=c("No", 
"Sì")) 


VIDER_Fact <- factor(DF_AVQ_A2018$VIDER, 
levels=c("5", 
"6"), 
labels=c("No", 
"Sì")) 


VIDEO_Fact <- factor(DF_AVQ_A2018$VIDEO, 
levels=c("7", 
"8"), 
labels=c("No", 
"Sì")) 


DVD_Fact <- factor(DF_AVQ_A2018$DVD, 
levels=c("1", 
"2"), 
labels=c("No", 
"Sì")) 


HIFI_Fact <- factor(DF_AVQ_A2018$HIFI, 
levels=c("3", 
"4"), 
labels=c("No", 
"Sì")) 


SEGTEL_Fact <- factor(DF_AVQ_A2018$SEGTEL, 
levels=c("5", 
"6"), 
labels=c("No", 
"Sì")) 


NSEGTM_Fact <- factor(DF_AVQ_A2018$NSEGTM, 
levels=c("1", 
"2"), 
labels=c("1", 
"2 e piu'")) 


FAX_Fact <- factor(DF_AVQ_A2018$FAX, 
levels=c("7", 
"8"), 
labels=c("No", 
"Sì")) 


TELCOL_Fact <- factor(DF_AVQ_A2018$TELCOL, 
levels=c("1", 
"2"), 
labels=c("No", 
"Sì")) 


ANTEPA_Fact <- factor(DF_AVQ_A2018$ANTEPA, 
levels=c("3", 
"4"), 
labels=c("No", 
"Sì")) 


CLIMAT_Fact <- factor(DF_AVQ_A2018$CLIMAT, 
levels=c("5", 
"6"), 
labels=c("No", 
"Sì")) 


BIC_Fact <- factor(DF_AVQ_A2018$BIC, 
levels=c("7", 
"8"), 
labels=c("No", 
"Sì")) 


MOTOR_Fact <- factor(DF_AVQ_A2018$MOTOR, 
levels=c("1", 
"2"), 
labels=c("No", 
"Sì")) 


NMOTORM_Fact <- factor(DF_AVQ_A2018$NMOTORM, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("1", 
"2", 
"3", 
"4 e piu'")) 


AMOTO_Fact <- factor(DF_AVQ_A2018$AMOTO, 
levels=c("3", 
"4"), 
labels=c("No", 
"Sì")) 


NMOTOM_Fact <- factor(DF_AVQ_A2018$NMOTOM, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("1", 
"2", 
"3", 
"4 e piu'")) 


ABBTV_Fact <- factor(DF_AVQ_A2018$ABBTV, 
levels=c("1", 
"2", 
"3"), 
labels=c("Sì, un abbonamento", 
"Sì, una carta prepagata senza abbonamento", 
"No")) 


SMARTV_Fact <- factor(DF_AVQ_A2018$SMARTV, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


AUTO_Fact <- factor(DF_AVQ_A2018$AUTO, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


NAUTOM_Fact <- factor(DF_AVQ_A2018$NAUTOM, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("1", 
"2", 
"3", 
"4", 
"5 e piu'")) 


LIBFAM_Fact <- factor(DF_AVQ_A2018$LIBFAM, 
levels=c("1", 
"2", 
"3", 
"4", 
"5", 
"6", 
"7", 
"8"), 
labels=c("nessuno", 
"da 1 a 10", 
"da 11 a 25", 
"da 26 a 50", 
"da 51 a 100", 
"da 101 a 200", 
"da 201 a 400", 
"oltre 400")) 


TELCEL_Fact <- factor(DF_AVQ_A2018$TELCEL, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


TELCIN_Fact <- factor(DF_AVQ_A2018$TELCIN, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


PC_Fact <- factor(DF_AVQ_A2018$PC, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


MODEM_Fact <- factor(DF_AVQ_A2018$MODEM, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


VGIOC_Fact <- factor(DF_AVQ_A2018$VGIOC, 
levels=c("3", 
"4"), 
labels=c("no", 
"sì")) 


EBOOK_Fact <- factor(DF_AVQ_A2018$EBOOK, 
levels=c("5", 
"6"), 
labels=c("no", 
"sì")) 


MP3_Fact <- factor(DF_AVQ_A2018$MP3, 
levels=c("7", 
"8"), 
labels=c("no", 
"sì")) 


FOTODIG_Fact <- factor(DF_AVQ_A2018$FOTODIG, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


NAVSAT_Fact <- factor(DF_AVQ_A2018$NAVSAT, 
levels=c("3", 
"4"), 
labels=c("no", 
"sì")) 


AINTERN_Fact <- factor(DF_AVQ_A2018$AINTERN, 
levels=c("1", 
"2"), 
labels=c("no", 
"sì")) 


CIDSLWIFI_Fact <- factor(DF_AVQ_A2018$CIDSLWIFI, 
levels=c("1"), 
labels=c("presente")) 


CISFPAL_Fact <- factor(DF_AVQ_A2018$CISFPAL, 
levels=c("2"), 
labels=c("presente")) 


CISFMOD_Fact <- factor(DF_AVQ_A2018$CISFMOD, 
levels=c("3"), 
labels=c("presente")) 


CIBASTR_Fact <- factor(DF_AVQ_A2018$CIBASTR, 
levels=c("4"), 
labels=c("presente")) 


MOTNOAI1_Fact <- factor(DF_AVQ_A2018$MOTNOAI1, 
levels=c("1"), 
labels=c("presente")) 


MOTNOAI3_Fact <- factor(DF_AVQ_A2018$MOTNOAI3, 
levels=c("2"), 
labels=c("presente")) 


MOTNOAI4_Fact <- factor(DF_AVQ_A2018$MOTNOAI4, 
levels=c("3"), 
labels=c("presente")) 


MOTNOAI5_Fact <- factor(DF_AVQ_A2018$MOTNOAI5, 
levels=c("4"), 
labels=c("presente")) 


MOTNOAI6_Fact <- factor(DF_AVQ_A2018$MOTNOAI6, 
levels=c("5"), 
labels=c("presente")) 


MOTNOAI8_Fact <- factor(DF_AVQ_A2018$MOTNOAI8, 
levels=c("6"), 
labels=c("presente")) 


MOTNOAI10_Fact <- factor(DF_AVQ_A2018$MOTNOAI10, 
levels=c("7"), 
labels=c("presente")) 


MOTNOAI9_Fact <- factor(DF_AVQ_A2018$MOTNOAI9, 
levels=c("8"), 
labels=c("presente")) 


SITE_Fact <- factor(DF_AVQ_A2018$SITE, 
levels=c("1", 
"2", 
"3", 
"4", 
"5"), 
labels=c("molto migliorata", 
"un po' migliorata", 
"rimasta più o meno la stessa", 
"un po' peggiorata", 
"molto peggiorata")) 


RISEC_Fact <- factor(DF_AVQ_A2018$RISEC, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("ottime", 
"adeguate", 
"scarse", 
"assolutamente insufficienti")) 


BMI_Fact <- factor(DF_AVQ_A2018$BMI, 
levels=c("1", 
"2", 
"3", 
"4"), 
labels=c("Sottopeso", 
"Normopeso", 
"Sovrappeso", 
"Obeso")) 

save.image (file="DF_AVQ_A2018.RData")
