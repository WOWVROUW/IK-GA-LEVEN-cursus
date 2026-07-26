# Canva-prompts: Dagboek bij de bijeenkomst

Bron van waarheid is `dagboek-bij-de-bijeenkomst.html` en de PDF ernaast. Dit bestand is de
vertaling van dat ontwerp naar prompts voor de Canva AI-tool, met alle waarden omgerekend van
pixels naar mm en pt.

**Werkwijze in Canva:** nieuw ontwerp, A4 document, merkkit "IK GA LEVEN cursus" aanzetten,
DEEL 1 plakken, daarna per pagina het blok uit DEEL 3.

**Wat Canva structureel fout doet** (loop dit na op elke pagina):
1. Lettertypen pakt hij niet vanzelf. Zet Source Serif Pro handmatig op Light, niet op Regular.
2. Em-dashes zet hij er alsnog in. Zoek op het teken en vervang het.
3. Invullijnen tekent hij zelden goed. Maak er één, groepeer hem, dupliceer.
4. **Tussenruimte tussen twee lijnenblokken negeert hij.** Los dit op met de lege-rechthoek-truc
   uit DEEL 2. Dit is de fout die in de praktijk het vaakst voorkwam.
5. Vastgezette panelen onderaan een pagina schuift hij omhoog tegen de tekst aan.

---
---

# DEEL 1 · Het format

Plak dit eerst, als allereerste bericht.

```
Maak een A4 werkboek (210 x 297 mm, staand) in het Nederlands. Volg deze specificaties exact.

MARGES
Boven 14 mm, links en rechts 17,5 mm, onder 24 mm. Alle inhoud blijft binnen die marges.

KLEUREN (gebruik alleen deze)
Pruim #6B1953 voor koppen, labels en paginanummers
Roos #D585AE voor lijnen, cijfers en accenten
Roze tint #F5E3EE als paginavulling
Boter #FFF8D1 als paginavulling
Ecru #F6F1EA als paginavulling
Wit #FFFFFF als paginavulling
Tekstgrijs #5C5556 voor lopende tekst
Gedempt grijs #8A8283 voor bijschriften en kop- en voetregels
Schrijflijnroze #E0C8D6 voor invullijnen
Magenta #C41E7A alleen voor de noodregel op de laatste pagina

LETTERTYPEN
Koppen: Source Serif Pro, Light (300). Nooit vet. (In Canva heet deze letter "Source Serif Pro";
op de website en in de HTML heet dezelfde Adobe-letter "Source Serif Pro". Kies in Canva altijd
Source Serif Pro.)
Lopende tekst en labels: Work Sans, Regular (400). Labels en knoppen in Medium (500).
In elke kop staat het laatste of belangrijkste woord in cursief.

TYPOGRAFIE
Paginakop: Source Serif Pro Light, 30 pt, pruim, regelafstand 1,2
Tussenkop: Source Serif Pro Light, 15 pt, pruim
Eyebrow boven de kop: Work Sans Medium, 9 pt, HOOFDLETTERS, letterafstand 1,6 pt, pruim
Lopende tekst: Work Sans Regular, 11 pt, tekstgrijs, regelafstand 1,75
Vraag: Source Serif Pro Light cursief, 14 pt, pruim
Toelichting onder een vraag: Work Sans Regular, 9,5 pt, gedempt grijs
Kop- en voetregel: Work Sans Medium, 8 pt, HOOFDLETTERS, letterafstand 1 pt, gedempt grijs

VASTE ELEMENTEN OP ELKE PAGINA
Bovenaan een kopregel: links het hoofdstuk, rechts het onderdeel, met daaronder een haarlijn van
1 px in roos op 50% dekking over de volle tekstbreedte.
Onderaan een voetregel met dezelfde haarlijn erboven: links "IK GA LEVEN CURSUS", rechts
"IKGALEVENCURSUS.NL" gevolgd door een punt en het paginanummer in pruim, met een nul ervoor
(01, 02).
Onder elke paginakop een streepje van 37 mm breed, 1 px, in roos op 50% dekking.

INVULLIJNEN
Horizontale haarlijnen van 1 px in schrijflijnroze #E0C8D6, om de 8 mm herhaald, over de volle
tekstbreedte. Een blok van 8 lijnen is 63 mm hoog. Laat boven elk lijnenblok 12 mm lucht.

GENUMMERD VRAAGBLOK
Links een volgnummer (01, 02) in Source Serif Pro Light cursief, 22 pt, in roos.
Rechts daarnaast een label in Work Sans Medium, 10 pt, HOOFDLETTERS, letterafstand 1,2 pt, in
pruim. Daaronder de vraag, en daaronder het lijnenblok. Vraag en lijnen springen 14 mm in ten
opzichte van het volgnummer. Twee vraagblokken per pagina.

AANKRUISVAKJES
Een vierkantje van 4 mm met een rand van 1,5 px in pruim en witte vulling, met de optie ernaast
in Work Sans Regular 11 pt. Opties naast elkaar met 9 mm ertussen.

PANEEL
Een gevuld vlak zonder rand en zonder ronde hoeken, in boter, roze tint of wit, met 7 mm
binnenmarge rondom. Gebruik dit voor tips en waarschuwingen.

CITAAT IN DE TEKST
Source Serif Pro Light, 19 pt, pruim, met links een verticale lijn van 2 px in roos en 6 mm ruimte
tussen lijn en tekst.

CURSIEVE AANWIJZING
Source Serif Pro Light cursief, 11,5 pt, gedempt grijs, met links een verticale lijn van 2 px in
roos.

TABEL FABEL EN FEIT
Twee kolommen: links 34% breed, rechts de rest, met 6 mm ertussen.
Kopregel "FABEL" en "FEIT" in Work Sans Medium, 8 pt, HOOFDLETTERS, pruim, met daaronder een lijn
van 1 px in roos. Linkerkolom in Source Serif Pro Light cursief, 11 pt, pruim. Rechterkolom in
Work Sans Regular, 9,5 pt, tekstgrijs. Tussen de rijen een haarlijn van 1 px in roos op 50%
dekking. Rijen boven uitlijnen, 4 mm ruimte boven en onder elke rij.

TOON EN REGELS
Alle tekst in het Nederlands. Rustig, warm, geen uitroeptekens.
Gebruik NOOIT een lange gedachtestreep (em-dash). Gebruik een komma, een punt of een dubbele punt.
Veel witruimte. Geen decoratieve iconen, geen kaders met ronde hoeken, geen schaduwen.
Wissel de paginavulling af: werkpagina's wit, rustpunten in ecru, boter of roze tint.
```

---
---

# DEEL 2 · De lege-rechthoek-truc

Canva behandelt "8 mm lucht" als een suggestie en negeert het. Twee lijnenblokken worden dan één
lang blok en de pagina voelt als een schrift. Geef de tussenruimte daarom als object:

```
Zet tussen de twee blokken een LEGE RECHTHOEK van 175 mm breed en 8 mm hoog, zonder vulling en
zonder rand, puur als tussenruimte. Deze rechthoek moet als los element in het ontwerp staan.
```

Reparatie achteraf, zonder opnieuw genereren: teken zelf een rechthoek van 175 bij 8 mm tussen de
blokken, zet vulling en rand op geen, en schuif het onderste blok eronder.

---
---

# DEEL 3 · De twintig pagina's

## 01 · Cover (handmatig gebouwd door Hiltje, bewaar als template)

Deze cover heeft Hiltje zelf gemaakt, in lijn met de veiligheidsplan-cover: een groot
cirkelsegment met de foto bovenin, de tekst rustig onderin op ecru. Afgeleid uit het echte
Canva-bestand (design DAHQUXGUyCg), kleuren pixel voor pixel gemeten. LET OP: de titel en de
eyebrow zijn hier OMGEDRAAID ten opzichte van het binnenwerk. "DAGBOEK BIJ DE BIJEENKOMST" is
de eyebrow, en de vraag is de grote titel. Canva AI maakt die gebogen fotorand zelden goed;
bouw dit één keer als Brand Template en hergebruik het.

```
Maak de omslagpagina. Deze wijkt bewust af van het binnenwerk.

Paginavulling: ecru #F6F1EA (de hele pagina)
Geen kopregel, geen streepje, geen zichtbaar paginanummer.

1. BEELDVLAK BOVENIN
   Een foto die de bovenste tweederde van de pagina vult, met een gebogen onderrand: de
   onderkant is een brede cirkelboog die in het midden het diepst hangt (laagste punt op
   ongeveer 87% van de paginahoogte) en naar de zijkanten omhoog loopt. De foto raakt de boven-,
   linker- en rechterrand. Aan de rechterkant loopt een smalle ecru strook mee.
   Foto: zachte, lichte witte bloesem met een groen takje, onscherpe lichte achtergrond. Geen
   mensen, geen gezichten.

2. EYEBROW
   Onder de boog, horizontaal gecentreerd, in Work Sans Medium, HOOFDLETTERS, letterafstand
   1,6 pt, in roos #D585AE:

   DAGBOEK BIJ DE BIJEENKOMST

3. TITEL
   Daaronder, gecentreerd, in Source Serif Pro Light cursief, ongeveer 34 pt, in pruim #6B1953,
   regelafstand 1,25, over twee regels:

   Zit ik in een relatie
   met psychisch geweld?

4. LOGO
   Rechtsonder het IK GA LEVEN-logo, ongeveer 22 mm breed. Gebruik het standaard logobestand
   (roos 500 #D585AE met pruim slagschaduw), dan komt de schaduw vanzelf goed.

5. URL
   Linksonder, op logohoogte, in Work Sans Medium, klein, HOOFDLETTERS, in roos #D585AE:

   IKGALEVENCURSUS.NL

Geen "WERKBOEK"-label, geen streepje, geen paneel. De rust zit in de grote boog en de lege
ecru ruimte eronder.
```

**Herbruikbaar over merken.** De STRUCTUUR (boogfoto bovenin, gecentreerde eyebrow, cursieve
serif-titel, logo rechtsonder, url linksonder, verder leeg) is merk-neutraal. Voor een
Zelfcompassie Booster-cover blijft dit skelet staan, maar wissel de tokens: ecru wordt crème
#FAF3E9, pruim wordt aubergine #24141C, roos wordt rozehout #B04A63 of magenta #FF2398, en de
fonts worden Newsreader italic + Hanken Grotesk. De losse waarden lees je NIET van dit IK GA
LEVEN-bestand af, die staan in de Booster-designsystem.

---

## 02 · Welkom

```
Maak de volgende pagina in het format hierboven.

Paginavulling: wit #FFFFFF
Kopregel links: DAGBOEK BIJ DE BIJEENKOMST
Kopregel rechts: WELKOM
Eyebrow: VOOR JE BEGINT
Kop: Dit boekje is van jou.
     (het woord "jou" cursief, de punt niet)
Paginanummer: 02

Inhoud, in deze volgorde:

1. Streepje van 37 mm onder de kop.

2. Twee alinea's lopende tekst, Work Sans Regular 11 pt, tekstgrijs:

Dit dagboek hoort bij de bijeenkomst. Het is bedoeld om in te schrijven, in te tekenen, of gewoon
open te laten liggen tot je er zin in hebt.

Er is geen goed antwoord. Er is geen volgorde die moet. Je mag pagina's overslaan, halverwege
stoppen, of alleen de zinnen lezen zonder iets in te vullen. Alles wat je hier opschrijft blijft
van jou. Niemand kijkt mee.

3. Een paneel in roze tint #F5E3EE, 7 mm binnenmarge, met deze tekst. De eerste vier woorden in
   Work Sans Medium in pruim, de rest gewoon:

Denk even aan je veiligheid. Als het thuis niet veilig is om dit boekje te bewaren, laat het dan
bij iemand die je vertrouwt, of schrijf alleen losse woorden op die voor niemand anders te lezen
zijn. Wat je onthoudt, ben je niet kwijt.

4. Een tussenkop in Source Serif Pro Light, 15 pt, pruim:

Wat je in dit boekje vindt

5. Daaronder een regel in Work Sans Regular 11 pt, tekstgrijs, met de onderdelen gescheiden door
   een klein rondje:

Het eiland · Het schema van Biderman · Waarom bestaat misbruik · De boom van Bancroft ·
De zieke planeet · De relatiequiz · De grondslag voor een gezonde relatie · Hoop en dankbaarheid

6. Onderaan de pagina een paneel in boter #FFF8D1, 7 mm binnenmarge, met twee regels. De eerste
   in Work Sans Medium in pruim, de tweede in Work Sans Regular 9,5 pt in gedempt grijs:

Neem je tijd.
Sommige stukken in dit boekje gaan over dingen die zwaar kunnen zijn om te lezen. Merk je dat het
te veel wordt, leg het dan weg. Het loopt niet weg.

Laat tussen de blokken ruim wit. De pagina mag rustig aanvoelen, niet vol.
```

**Tekstwijzigingen door Hiltje in het echte Canva-bestand (2026-07-24), overal doorvoeren:**
- "boekje" wordt overal "dagboek" (ook de kop: "Dit dagboek is van jou.").
- "Denk even aan je veiligheid" wordt "Denk aan je veiligheid".
- In het boterpaneel achteraan is "Volg je eigen tempo." toegevoegd als slotzin.
- De eerste alinea is licht ingekort naar "of gewoon te laten tot je er zin in hebt"; controleer
  of daar niet per ongeluk het woord "liggen" is weggevallen.

---

## 03 · Het eiland, de opdracht

```
Maak de volgende pagina in het format hierboven.

Paginavulling: wit #FFFFFF
Kopregel links: HET EILAND
Kopregel rechts: DE OPDRACHT
Eyebrow: HET EILAND
Kop: Teken wat je ziet.
     (het woord "ziet" cursief, de punt niet)
Paginanummer: 03

Inhoud, in deze volgorde:

1. Streepje van 37 mm onder de kop.

2. Eén genummerd vraagblok, zonder invullijnen:

01  DE OPDRACHT
    Teken de vrouw en de koning op het eiland.
    Toelichting: Beschrijf de fysieke en emotionele gevolgen van het leven op het eiland.

3. Daaronder een groot leeg tekenvlak over de volle tekstbreedte: 175 mm breed, 148 mm hoog.
   Een rand van 1 px in roos #D585AE op 50% dekking, witte vulling, geen ronde hoeken,
   geen schaduw, geen tekst erin.

Verder niets. Het tekenvlak mag ruim zijn, dat is het punt van de pagina.
```

---

## 04 · Het eiland, het verhaal (deel 1)

```
Maak de volgende pagina in het format hierboven.

Paginavulling: ecru #F6F1EA
Kopregel links: HET EILAND
Kopregel rechts: HET VERHAAL
Eyebrow: HET VERHAAL
Kop: Het eiland
Paginanummer: 04

Inhoud, in deze volgorde:

1. Streepje van 37 mm onder de kop.

2. Vijf alinea's lopende tekst, Work Sans Regular 11 pt, tekstgrijs, regelafstand 1,75, met 4 mm
   tussen de alinea's:

Er was eens een vrouw. Ze besloot op een lastminutevakantie te gaan. Ze ging naar het reisbureau
en hoorde daar over een prachtig eiland. Het weer was er heerlijk en het was erg goedkoop om
erheen te gaan. Ze boekte een vakantie van twee weken en vloog de week daarop naar het eiland.

De vrouw kwam aan bij haar hotel op het eiland en was diep onder de indruk van het prachtige
hotel, de vriendelijke mensen en het adembenemende landschap. Bij de receptie van het hotel kreeg
ze te horen dat ze haar paspoort moest afgeven. Ze deed dit met tegenzin. De receptionist legde
uit dat dit om veiligheidsredenen was.

De vrouw beleefde twee heerlijke weken op het eiland: plezier, ontspanning en lekker eten. Ze
maakte zelfs iets bijzonders mee: ze ontmoette de koning van het eiland. Hij toonde grote
belangstelling voor haar en al snel ontstond er een wervelende vakantieromance.

Op de dag dat de vrouw zou vertrekken, verraste de koning haar bij het hotel. Hij vertelde dat hij
verliefd op haar was geworden en wilde dat ze als zijn koningin op het eiland zou blijven. De
vrouw voelde zich nerveus, maar ook opgewonden. Ze stemde ermee in om nog een paar weken te
blijven en te zien hoe het zou lopen.

Na een paar dagen besefte de vrouw dat er iets goed mis was met het eiland. De eilandbewoners
leken minder vriendelijk en het eten minder lekker. Op een dag hoorde ze toevallig een fluisterend
gesprek: ze ontdekte dat de koning een wrede dictator was die alles op het eiland in zijn greep
hield.

3. Onderaan, in Work Sans Regular 9,5 pt, gedempt grijs:

Het verhaal gaat verder op de volgende pagina.

Dit is een leespagina. Geen invullijnen, geen kaders.
```

---

## 05 · Het eiland, het verhaal (deel 2)

```
Maak de volgende pagina in het format hierboven.

Paginavulling: ecru #F6F1EA
Kopregel links: HET EILAND
Kopregel rechts: HET VERHAAL
Paginanummer: 05

Deze pagina heeft GEEN eyebrow en GEEN kop. Het verhaal loopt door.

Inhoud, in deze volgorde:

1. Drie alinea's lopende tekst, Work Sans Regular 11 pt, tekstgrijs:

De vrouw was geschokt. Ze haastte zich naar het paleis van de koning om hem hiermee te
confronteren. De koning werd woedend en sloot haar op in de harem bij zijn vele vrouwen. De vrouw
was doodsbang en wist niet wat ze moest doen.

Na vele dagen wist de vrouw te ontsnappen en een bericht in een fles te versturen om hulp te
vragen. Maar al snel werd ze weer gevangengenomen en teruggebracht naar het paleis van de koning.
Maanden later werd het bericht gevonden en arriveerde er een reddingsploeg.

De redders slaagden erin de vrouw van het eiland te halen en in veiligheid te brengen.

2. Daaronder een citaat in de tekst: Source Serif Pro Light, 19 pt, pruim, met links een verticale
   lijn van 2 px in roos. Laat er 8 mm lucht boven en onder. GEEN aanhalingstekens:

Maar dit was niet het einde van het verhaal: de vrouw had veel hulp en steun nodig om te
herstellen van alles wat ze had meegemaakt.

3. Daaronder een cursieve aanwijzing, Source Serif Pro Light cursief 11,5 pt, gedempt grijs, met
   links een verticale lijn van 2 px in roos:

Gebruik de ruimte hieronder om bij het verhaal stil te staan en iets op te schrijven.

4. Daaronder een blok van twaalf invullijnen, om de 8 mm, over de volle tekstbreedte.
```

---

## 06 · Het schema van Biderman

```
Maak de volgende pagina in het format hierboven.

Paginavulling: wit #FFFFFF
Kopregel links: HET SCHEMA VAN BIDERMAN
Kopregel rechts: WAT HET MET JE DOET
Eyebrow: BIDERMAN
Kop: Het schema van Biderman
     (het woord "Biderman" cursief)
Paginanummer: 06

Inhoud, in deze volgorde:

1. Streepje van 37 mm onder de kop.

2. Daaronder 6 mm lucht, dan een stelling over de volle tekstbreedte, zonder volgnummer en zonder
   inspringing, in Source Serif Pro Light cursief, 14 pt, pruim:

Ontdekken wat het schema van Biderman weergeeft, heeft me geholpen mijn ervaringen en wat mij is
aangedaan te begrijpen.

3. Daaronder 4 mm lucht, dan drie aankruisvakjes naast elkaar met 9 mm ertussen. Elk vakje is
   4 mm, rand 1,5 px pruim, witte vulling, de optie ernaast in Work Sans Regular 11 pt:

Eens   Oneens   Ik weet het niet

4. Daaronder 6 mm lucht, dan een cursieve aanwijzing in Source Serif Pro Light cursief, 11,5 pt,
   gedempt grijs, met links een verticale lijn van 2 px in roos #D585AE en 5 mm ruimte tussen
   lijn en tekst:

Gebruik de ruimte hieronder om gedachten over de tabel van Biderman op te schrijven of te tekenen.

5. Daaronder 5 mm lucht, dan een leeg werkvlak over de volle tekstbreedte: 175 mm breed, 79 mm
   hoog. Rand van 1 px in roos #D585AE op 50% dekking, witte vulling, geen ronde hoeken, geen
   schaduw, geen tekst erin.

6. Daaronder 6 mm lucht, dan zes invullijnen, om de 8 mm, over de volle tekstbreedte, in
   schrijflijnroze #E0C8D6.

Het werkvlak en de zes lijnen zijn twee losse dingen: eerst ruimte om te tekenen, daarna ruimte
om te schrijven. Voeg ze niet samen.

Verder niets op deze pagina.
```

---

## 07 · Waarom bestaat misbruik?

```
Maak de volgende pagina in het format hierboven.

Paginavulling: wit #FFFFFF
Kopregel links: WAAROM BESTAAT MISBRUIK?
Kopregel rechts: JOUW ANTWOORD
Eyebrow: DE VRAAG ERONDER
Kop: Waarom bestaat misbruik?
     (het woord "misbruik" cursief, het vraagteken niet)
Paginanummer: 07

Inhoud, in deze volgorde:

1. Streepje van 37 mm onder de kop.

2. Daaronder 12 mm lucht, dan het eerste genummerde vraagblok:

   Volgnummer 01 in Source Serif Pro Light cursief, 22 pt, roos #D585AE.
   Ernaast, op dezelfde regel, het label in Work Sans Medium, 10 pt, HOOFDLETTERS,
   letterafstand 1,2 pt, pruim:

   WAT IK ZELF DENK

   Daaronder, 14 mm ingesprongen ten opzichte van het volgnummer, de vraag in Source Serif Pro
   Light cursief, 14 pt, pruim:

   Ik denk dat misbruik plaatsvindt omdat...

   Daaronder 6 mm lucht, dan acht invullijnen, om de 8 mm, in schrijflijnroze #E0C8D6.
   De lijnen springen even ver in als de vraag en lopen door tot de rechtermarge.

3. Daaronder 15 mm lucht, dan het tweede blok, op precies dezelfde manier opgebouwd:

   02
   WAT IK HOORDE OF LAS

   Wat ik over misbruik heb gehoord of gelezen, suggereert dat misbruik plaatsvindt omdat...

   Daaronder acht invullijnen, gelijk aan het eerste blok.

Geen toelichtingsregel onder de vragen. Geen kaders. Verder niets op deze pagina.

De drie puntjes aan het eind van beide vragen zijn drie losse punten, geen beletselteken-teken.
```

---

## 08 · Fabels en feiten (1 van 2)

```
Maak de volgende pagina in het format hierboven.

Paginavulling: wit #FFFFFF
Kopregel links: DE BOOM VAN BANCROFT
Kopregel rechts: FABEL EN FEIT · 1 VAN 2
Eyebrow: BANCROFT
Kop: De boom van Bancroft
     (het woord "Bancroft" cursief)
Paginanummer: 08

Inhoud, in deze volgorde:

1. Streepje van 37 mm onder de kop.

2. Eén regel in Source Serif Pro Light cursief, 14 pt, gedempt grijs:

Wat we over plegers geloven, en wat er werkelijk aan de hand is.

3. Daaronder de tabel Fabel en Feit volgens de tabelspecificatie, met deze vijf rijen:

FABEL: Plegers van mishandeling zijn meestal zelf als kind mishandeld.
FEIT: Ongeveer 50% van de plegers van misbruik heeft zelf als kind misbruik ervaren. Iemand
misbruiken is echter een keuze en aangeleerd gedrag; het komt niet voort uit trauma.

FABEL: Alcohol- of drugsgebruik is een reden waarom sommige mensen zich misdragen of gewelddadig
gedragen.
FEIT: Hoewel alcohol- of drugsgebruik het risico vergroten en een rol spelen bij mishandeling,
ligt de oorzaak bij de onderliggende opvattingen over bezit en recht hebben op (entitlement), en
niet bij het middelengebruik zelf.

FABEL: Therapie helpt plegers.
FEIT: Plegers moeten zich richten op hun eigen gedrag en de gevoelens van anderen. Begeleiding
richt zich echter op hun gevoelens en het gedrag van anderen. Individuele begeleiding of
relatietherapie kan gevaarlijk zijn en extra trauma veroorzaken.

FABEL: Autisme, diabetes en andere medische aandoeningen kunnen iemand tot misbruikend gedrag
aanzetten.
FEIT: Hoewel medische problemen het risico kunnen vergroten en een rol spelen bij misbruik, maken
ze iemand niet tot een misbruiker of pleger van geweld. Gewelddadig gedrag dat voortkomt uit
opvattingen over bezit en recht hebben op (entitlement) kan door gezondheidsproblemen worden
verergerd, maar de oorzaak ligt in die opvattingen zelf.

FABEL: Misbruik ontstaat meestal door stress of een gebrek aan goede communicatieve vaardigheden.
FEIT: Stress kan bestaand gewelddadig gedrag verergeren, maar is niet de oorzaak ervan.
Vaardigheden op het gebied van relaties, zoals communicatie of onderhandelen, helpen een pleger
van mishandeling niet. Misbruik is geen relatieprobleem; het is een probleem van de pleger.

Verder niets op deze pagina. Geen invullijnen.
```

---

## 09 · Fabels en feiten (2 van 2)

```
Maak de volgende pagina in het format hierboven.

Paginavulling: wit #FFFFFF
Kopregel links: DE BOOM VAN BANCROFT
Kopregel rechts: FABEL EN FEIT · 2 VAN 2
Paginanummer: 09

Deze pagina heeft GEEN eyebrow, GEEN kop en GEEN streepje. De tabel begint meteen onder de
kopregel, met 9 mm lucht ertussen. Het is een doorlopende tabel, geen nieuw hoofdstuk.

De tabel volgt de tabelspecificatie, met opnieuw de kopregel FABEL en FEIT, en deze vier rijen:

FABEL: Mishandelaars en plegers van geweld kampen vrijwel altijd met psychische problemen of zijn
narcisten.
FEIT: De meeste mensen met psychische problemen vertonen geen gewelddadig of misbruikend gedrag.
Hoewel het grillige en onvoorspelbare gedrag van iemand die zich schuldig maakt aan misbruik kan
lijken op een psychisch probleem, richt diegene zijn acties doorgaans uitsluitend op de partner,
wat erop wijst dat er wel degelijk sprake is van zelfbeheersing.

Bij mannelijke plegers komen specifieke stoornissen significant vaker voor dan gemiddeld.
Internationaal longitudinaal onderzoek toont aan dat bijna alle psychiatrische diagnoses het
risico op partnergeweld met een factor 2 tot 8 verhogen vergeleken met de algemene bevolking. In
grootschalige registers en enquêtes onder de normale bevolking, dus los van klinieken of
reclassering, rapporteert het overgrote deel van de actieve plegers geen psychiatrische stoornis.
Ongeveer 10% tot 15% van de mensen die milde tot matige vormen van partnergeweld gebruiken, heeft
een gediagnosticeerde psychische stoornis.

Onderzoek van de Universiteit Leiden naar partnerdoding (femicide) in Nederland toont aan dat bij
ongeveer een derde van de daders die hun partner om het leven brachten, officieel een
psychiatrische stoornis was vastgesteld ten tijde van het delict.

FABEL: Bij misbruik en geweld draait het om woede en een verlies van controle.
FEIT: Cursussen woedebeheersing zijn nooit een geschikte interventie voor plegers van geweld en
kunnen zelfs gevaarlijk zijn. Plegers proberen mensen via hun gedrag te controleren; door boos
over te komen of zichzelf op te winden, kunnen ze hun gedrag rechtvaardigen.

FABEL: Mishandelaars hebben meestal een laag zelfbeeld.
FEIT: Hoewel sommige plegers van geweld een laag zelfbeeld hebben, ligt het eigenlijke probleem
bij de overtuiging dat ze superieur zijn aan hun partner, dat ze hun partner bezitten en dat ze
het recht hebben zich te gedragen zoals ze doen.

FABEL: Religie en cultuur spelen een grote rol bij de redenen waarom sommige mensen zich schuldig
maken aan geweld of mishandeling.
FEIT: Opvattingen over eigendom en recht hebben op (entitlement) kunnen hun oorsprong vinden in
religie en culturele contexten; er bestaat een direct verband tussen culturen en gemeenschappen
die vrouwen waarderen en vrouwenrechten bevorderen, en de mate van geweld tegen vrouwen. Plegers
van geweld zijn echter in elke gemeenschap ter wereld te vinden. Alle religies zijn geworteld in
waarden als respect en zorgzaamheid en keuren mishandeling niet goed.

LET OP: de eerste rij is heel lang en bestaat uit drie alinea's in de rechterkolom, met 4 mm
tussen de alinea's. De linkerkolom blijft daarbij boven uitgelijnd, met alleen die ene zin.

Verder niets op deze pagina. Geen invullijnen.
```

---

## 10 · Bancroft, wat je zelf had geloofd

```
Maak de volgende pagina in het format hierboven.

Paginavulling: roze tint #F5E3EE
Kopregel links: DE BOOM VAN BANCROFT
Kopregel rechts: WAT HET MET JE DOET
Eyebrow: BANCROFT
Kop: Wat je zelf had geloofd
     (het woord "geloofd" cursief)
Paginanummer: 10

Inhoud, in deze volgorde:

1. Streepje van 37 mm onder de kop.

2. Daaronder 10 mm lucht, dan het eerste genummerde vraagblok:

   Volgnummer 01 in Source Serif Pro Light cursief, 22 pt, roos #D585AE.
   Ernaast, op dezelfde regel, het label in Work Sans Medium, 10 pt, HOOFDLETTERS,
   letterafstand 1,2 pt, pruim:

   DE FABEL

   Daaronder, 14 mm ingesprongen ten opzichte van het volgnummer, de vraag in Source Serif Pro
   Light cursief, 14 pt, pruim:

   Welke fabel had jij zelf geloofd?

   Daaronder, met dezelfde inspringing, een toelichting in Work Sans Regular, 9,5 pt,
   gedempt grijs:

   Misschien meerdere. Misschien een die hier niet tussen staat.

   Daaronder 6 mm lucht, dan acht invullijnen, om de 8 mm, in schrijflijnroze #E0C8D6.
   De lijnen springen even ver in als de vraag en lopen door tot de rechtermarge.

3. Daaronder 13 mm lucht, dan het tweede blok, op dezelfde manier opgebouwd maar ZONDER
   toelichtingsregel:

   02
   WAT HET VERANDERT

   Wat verandert er als die fabel niet waar blijkt te zijn?

   Daaronder acht invullijnen, gelijk aan het eerste blok.

De invullijnen moeten op de roze ondergrond zichtbaar blijven. Maak ze niet lichter.

Geen kaders. Verder niets op deze pagina.
```

---

## 11 · Biderman en gedrag

```
Maak de volgende pagina in het format hierboven.

Paginavulling: wit #FFFFFF
Kopregel links: BIDERMAN EN GEDRAG
Kopregel rechts: JOUW AANTEKENINGEN
Eyebrow: BIDERMAN
Kop: Biderman en gedrag
     (het woord "gedrag" cursief)
Paginanummer: 11

Inhoud, in deze volgorde:

1. Streepje van 37 mm onder de kop.

2. Daaronder een introregel in Source Serif Pro Light cursief, 14 pt, gedempt grijs, ZONDER
   verticale lijn ervoor, over de volle tekstbreedte:

Ruimte om te noteren wat je herkent, wat je opvalt, of wat je nog niet kunt plaatsen.

3. Daaronder 7 mm lucht, dan een leeg werkvlak over de volle tekstbreedte: 175 mm breed, 95 mm
   hoog. Rand van 1 px in roos #D585AE op 50% dekking, witte vulling, geen ronde hoeken, geen
   schaduw, geen tekst erin.

4. Daaronder 6 mm lucht, dan tien invullijnen, om de 8 mm, over de volle tekstbreedte, in
   schrijflijnroze #E0C8D6. Deze lijnen springen NIET in en lopen van marge tot marge.

Geen genummerde blokken, geen aankruisvakjes, geen kaders. Verder niets op deze pagina.
```

---

## 12 · De zieke planeet

```
Maak de volgende pagina in het format hierboven.

Paginavulling: boter #FFF8D1
Kopregel links: DE ZIEKE PLANEET
Kopregel rechts: DE WERELD EROMHEEN
Eyebrow: DE ZIEKE PLANEET
Kop: De zieke planeet
     (het woord "planeet" cursief)
Paginanummer: 12

Inhoud, in deze volgorde:

1. Streepje van 37 mm onder de kop.

2. Drie alinea's lopende tekst, Work Sans Regular 11 pt, tekstgrijs, regelafstand 1,75, met 4 mm
   tussen de alinea's:

Er heerst een kwaal in onze samenleving, en wereldwijd, waardoor vrouwen, net als de eenhoorns in
het verhaal, slecht worden behandeld en benadeeld. Door de jaren heen hebben velen deze kwaal
aangeduid als patriarchaat. Een patriarch is het mannelijk gezinshoofd, zoals Vito Corleone in de
Godfather-films of de paus in de katholieke kerk, en een patriarchaat is een maatschappelijk of
bestuurlijk systeem waarin mannen de macht in handen hebben en vrouwen daar grotendeels van zijn
uitgesloten.

Ook al heeft een land een vrouwelijke regeringsleider, denk aan Margaret Thatcher, Theresa May,
Nicola Sturgeon in Schotland of Jacinda Ardern in Nieuw-Zeeland, de macht blijft vaak onevenredig
verdeeld onder mannen, doorgaans witte mannen met een goede gezondheid uit de midden- of hogere
klasse, terwijl vrouwen er doorgaans buiten worden gehouden.

In onze samenleving is het de meesten van ons waarschijnlijk wel opgevallen dat mannen en vrouwen
verschillend worden behandeld. Mannen bekleden nog steeds de meeste belangrijke functies en lijken
beter te presteren in banen die goed betaald worden en gepaard gaan met macht. Vrouwen doen over
het algemeen het slecht betaalde of onbetaalde werk, zelfs wanneer daarvoor dezelfde vaardigheden
vereist zijn. Zo zijn goedbetaalde chef-koks bijvoorbeeld bijna altijd mannen. Thuis zijn het
echter doorgaans de vrouwen die koken, schoonmaken en voor de kinderen zorgen.

3. Onderaan de pagina een paneel, VASTGEZET tegen de onderkant: de onderrand van het paneel ligt
   27,5 mm boven de onderrand van de pagina, dus vlak boven de voetregel. Het paneel loopt over de
   volle tekstbreedte, heeft een WITTE vulling #FFFFFF op de boterkleurige pagina, geen rand, geen
   ronde hoeken, geen schaduw, en 7 mm binnenmarge rondom.

   In het paneel één regel. De eerste vier woorden in Work Sans Medium in pruim, de rest in
   Work Sans Regular 11 pt in tekstgrijs:

Waar het om gaat. Een pleger bedenkt zijn opvattingen niet in zijn eentje. Hij haalt ze ergens
vandaan.

Dit is een leespagina. Geen invullijnen, geen genummerde blokken, geen tekenvlak.
Laat het gat tussen de derde alinea en het paneel gewoon leeg; dat wit hoort erbij.
```

---

## 13 · De zieke planeet, waar komt het vandaan

```
Maak de volgende pagina in het format hierboven.

Paginavulling: wit #FFFFFF
Kopregel links: DE ZIEKE PLANEET
Kopregel rechts: JOUW ANTWOORD
Eyebrow: DE ZIEKE PLANEET
Kop: Waar komt het vandaan?
     (het woord "vandaan" cursief, het vraagteken niet)
Paginanummer: 13

Inhoud, in deze volgorde:

1. Streepje van 37 mm onder de kop.

2. Daaronder 10,5 mm lucht, dan het eerste genummerde vraagblok:

   Volgnummer 01 in Source Serif Pro Light cursief, 22 pt, roos #D585AE.
   Ernaast, op dezelfde regel, het label in Work Sans Medium, 10 pt, HOOFDLETTERS,
   letterafstand 1,2 pt, pruim:

   DE HERKOMST

   Daaronder, 14 mm ingesprongen ten opzichte van het volgnummer, de vraag in Source Serif Pro
   Light cursief, 14 pt, pruim. Deze vraag loopt over twee regels:

   Waar zouden de opvattingen van een pleger over eigendom en aanspraak (entitlement, recht
   hebben op) op de ander vandaan kunnen komen?

   Daaronder 6 mm lucht, dan acht invullijnen, om de 8 mm, in schrijflijnroze #E0C8D6, even ver
   ingesprongen als de vraag, doorlopend tot de rechtermarge.

3. Daaronder 14 mm lucht, dan het tweede blok. Dit blok heeft VIER onderdelen onder elkaar,
   allemaal 14 mm ingesprongen:

   Volgnummer 02 met daarnaast het label:

   NOREEN

   Dan de eerste vraag in Source Serif Pro Light cursief, 14 pt, pruim:

   Herken je je in Noreen, de roze eenhoorn?

   Dan drie aankruisvakjes naast elkaar met 9 mm ertussen, elk vakje 4 mm met een rand van
   1,5 px in pruim en witte vulling, de optie ernaast in Work Sans Regular 11 pt:

   Ja   Nee   Weet ik niet zeker

   Dan een tweede vraag, in dezelfde stijl maar iets kleiner: Source Serif Pro Light cursief,
   13 pt, pruim:

   Waarom wel? Of waarom niet?

   Dan 6 mm lucht en vijf invullijnen, gelijk ingesprongen.

De aankruisvakjes springen net als de vraag 14 mm in, ze staan niet tegen de linkermarge.

Geen toelichtingsregels. Geen kaders. Verder niets op deze pagina.
```

---

## 14 · De zieke planeet, hoe gaat de wereld ermee om

```
Maak de volgende pagina in het format hierboven.

Paginavulling: wit #FFFFFF
Kopregel links: DE ZIEKE PLANEET
Kopregel rechts: JOUW ANTWOORD
Eyebrow: DE ZIEKE PLANEET
Kop: Hoe gaat de wereld ermee om?
     (alleen het woord "om" cursief, het vraagteken niet)
Paginanummer: 14

Inhoud, in deze volgorde:

1. Streepje van 37 mm onder de kop.

2. Daaronder 7 mm lucht, dan een cursieve aanwijzing in Source Serif Pro Light cursief, 11,5 pt,
   gedempt grijs, met links een verticale lijn van 2 px in roos #D585AE en 5 mm ruimte tussen
   lijn en tekst. De tekst loopt over drie regels:

Gebruik de ruimte hieronder om na te denken over de manier waarop onze samenleving omgaat met
plegers van misbruik en geweld en de schade die zij aanrichten. Lijkt dit op de zieke planeet?

3. Daaronder 9 mm lucht, dan een blok van TWAALF invullijnen, om de 8 mm, over de volle
   tekstbreedte, in schrijflijnroze #E0C8D6. Niet ingesprongen, van marge tot marge.

4. Daaronder een LEGE RECHTHOEK van 175 mm breed en 8 mm hoog, zonder vulling en zonder rand,
   puur als tussenruimte. Deze moet als los element in het ontwerp staan.

5. Daaronder een TWEEDE blok van ZES invullijnen, precies gelijk aan het eerste.

Het zijn bewust twee losse blokken met een gat ertussen, geen doorlopend blok van achttien lijnen.

Geen genummerde blokken, geen aankruisvakjes, geen kaders, geen tekenvlak.
Verder niets op deze pagina.
```

---

## 15 · De relatiequiz

```
Maak de volgende pagina in het format hierboven.

Paginavulling: roze tint #F5E3EE
Kopregel links: DE RELATIEQUIZ
Kopregel rechts: WAT JE OPVIEL
Eyebrow: DE RELATIEQUIZ
Kop: Wat je over jezelf merkte
     (het woord "merkte" cursief)
Paginanummer: 15

Inhoud, in deze volgorde:

1. Streepje van 37 mm onder de kop.

2. Daaronder 12 mm lucht, dan een vraag over de volle tekstbreedte, ZONDER volgnummer en ZONDER
   inspringing, in Source Serif Pro Light cursief, 14 pt, pruim:

Wat merkte je op over je eigen ideeën over relaties?

3. Direct daaronder een toelichting in Work Sans Regular, 9,5 pt, gedempt grijs:

Er is geen goed of fout. Schrijf wat er opkwam, ook als het je verraste.

4. Daaronder 6 mm lucht, dan een blok van TWAALF invullijnen, om de 8 mm, over de volle
   tekstbreedte, in schrijflijnroze #E0C8D6. Niet ingesprongen.

5. Daaronder een LEGE RECHTHOEK van 175 mm breed en 8 mm hoog, zonder vulling en zonder rand,
   puur als tussenruimte. Deze rechthoek moet als los element in het ontwerp staan.

6. Daaronder een TWEEDE blok van VIER invullijnen, precies gelijk aan het eerste blok.

De twee lijnenblokken raken elkaar niet. Voeg ze nooit samen tot één blok van zestien lijnen.

Geen genummerde blokken, geen aankruisvakjes, geen kaders. Verder niets op deze pagina.
```

---

## 16 · De grondslag voor een gezonde relatie

```
Maak de volgende pagina in het format hierboven.

Paginavulling: wit #FFFFFF
Kopregel links: EEN GEZONDE RELATIE
Kopregel rechts: DE GRONDSLAG
Eyebrow: DE GRONDSLAG
Kop: Waar een gezonde relatie op rust
     (het woord "rust" cursief)
Paginanummer: 16

Inhoud, in deze volgorde:

1. Streepje van 37 mm onder de kop.

2. Daaronder een introregel in Source Serif Pro Light cursief, 14 pt, gedempt grijs, ZONDER
   verticale lijn ervoor, over de volle tekstbreedte:

Ruimte om op te schrijven of te tekenen wat volgens jou de bodem is waar een relatie op mag staan.

3. Daaronder 7 mm lucht, dan een leeg werkvlak over de volle tekstbreedte: 175 mm breed, 90 mm
   hoog. Rand van 1 px in roos #D585AE op 50% dekking, witte vulling, geen ronde hoeken, geen
   schaduw, geen tekst erin.

4. Daaronder een LEGE RECHTHOEK van 175 mm breed en 6 mm hoog, zonder vulling en zonder rand,
   puur als tussenruimte. Deze moet als los element in het ontwerp staan.

5. Daaronder TIEN invullijnen, om de 8 mm, over de volle tekstbreedte, in schrijflijnroze
   #E0C8D6. Niet ingesprongen, van marge tot marge.

Het werkvlak en de lijnen zijn twee losse dingen: eerst ruimte om te tekenen, daarna ruimte om te
schrijven. Plak ze niet aan elkaar en maak van het werkvlak geen kader met lijnen erin.

Geen genummerde blokken, geen aankruisvakjes. Verder niets op deze pagina.
```

_Tien lijnen is wat er in de PDF staat. Zes of zeven mag ook; pas dan alleen het getal in punt 5 aan._

---

## 17 · Hoop en dankbaarheid

```
Maak de volgende pagina in het format hierboven.

Paginavulling: wit #FFFFFF
Kopregel links: HOOP EN DANKBAARHEID
Kopregel rechts: EÉN WOORD
Eyebrow: TOT SLOT
Kop: Hoop en dankbaarheid
     (het woord "dankbaarheid" cursief)
Paginanummer: 17

Inhoud, in deze volgorde:

1. Streepje van 37 mm onder de kop.

2. Daaronder 7 mm lucht, dan een cursieve aanwijzing in Source Serif Pro Light cursief, 11,5 pt,
   gedempt grijs, met links een verticale lijn van 2 px in roos #D585AE en 5 mm ruimte tussen
   lijn en tekst:

Gebruik de ruimte hieronder om je woord of zin die de bijeenkomst voor je samenvat op te schrijven.

3. Daaronder 9 mm lucht, dan ZES invullijnen, om de 8 mm, over de volle tekstbreedte, in
   schrijflijnroze #E0C8D6. Niet ingesprongen, van marge tot marge.

4. Onderaan de pagina een paneel, VASTGEZET tegen de onderkant: de onderrand van het paneel ligt
   45 mm boven de onderrand van de pagina. Het paneel loopt over de volle tekstbreedte, heeft een
   vulling in roze tint #F5E3EE, geen rand, geen ronde hoeken, geen schaduw, en 7 mm binnenmarge
   rondom.

   In het paneel staan twee dingen onder elkaar. Eerst een label in Work Sans Medium, 9 pt,
   HOOFDLETTERS, letterafstand 1,6 pt, in pruim:

   ALS JE NOG EVEN ZIN HEBT

   Daaronder, met 2 mm ertussen, een regel in Work Sans Regular 11 pt in tekstgrijs:

Schrijf op wat je vandaag hebt gehoord en wat je wilt onthouden. Niet omdat het moet. Omdat het
jouw dag was.

Laat het wit tussen de zes lijnen en het paneel gewoon leeg. Dat gat hoort erbij.

Geen genummerde blokken, geen aankruisvakjes, geen tekenvlak. Verder niets op deze pagina.
```

---

## 18 · Het citaat

```
Maak de volgende pagina in het format hierboven, met één uitzondering: deze pagina heeft GEEN
kopregel bovenaan en GEEN streepje. Alleen de voetregel onderaan blijft staan.

Paginavulling: ecru #F6F1EA
Paginanummer: 18

Deze pagina heeft één blok, dat zowel horizontaal als verticaal in het midden van de pagina staat.
Alle tekst is gecentreerd. Het blok is maximaal 164 mm breed.

Van boven naar beneden:

1. Een label in Work Sans Medium, 9 pt, HOOFDLETTERS, letterafstand 1,6 pt, in pruim:

OM MEE TE NEMEN

2. Daaronder het citaat in Source Serif Pro Light cursief, 20 pt, pruim, regelafstand 1,5, MET
   dubbele aanhalingstekens eromheen. Laat het over twee of drie regels lopen:

"Nothing is more beautiful than the smile that has struggled through the tears."

3. Daaronder 7 mm lucht, dan een horizontaal streepje van 40 mm breed, 1 px, in roos #D585AE,
   gecentreerd.

4. Daaronder 7 mm lucht, dan de bronvermelding in Source Serif Pro Light cursief, 13 pt, gedempt
   grijs:

Demi Lovato

Verder niets op deze pagina. Geen kader om het citaat, geen verticale lijn ernaast, geen
aanhalingsteken als los grafisch element, geen invullijnen.

Het citaat blijft in het Engels. Vertaal het niet.
```

---

## 19 · Vervolg naar IK GA LEVEN

```
Maak de volgende pagina in het format hierboven.

Paginavulling: wit #FFFFFF
Kopregel links: VERVOLG
Kopregel rechts: NAAR IK GA LEVEN
Eyebrow: VERVOLG
Kop: Naar IK GA LEVEN
     (de woorden "IK GA LEVEN" cursief)
Paginanummer: 19

Inhoud, in deze volgorde:

1. Streepje van 37 mm onder de kop.

2. Drie alinea's lopende tekst, Work Sans Regular 11 pt, tekstgrijs, regelafstand 1,75, met 4 mm
   tussen de alinea's:

Dit dagboek hoort bij de gratis online bijeenkomst "Zit ik in een relatie met psychisch geweld?".
Misschien heb je dit boekje in handen gekregen zonder dat je weet waar het vandaan komt. Daarom
hier kort waar het bij hoort.

IK GA LEVEN is een cursus van tien weken voor vrouwen die te maken hebben of hebben gehad met
psychisch geweld in hun relatie. Het is de Nederlandse bewerking van Own My Life, een programma
dat in het Verenigd Koninkrijk en Ierland al door meer dan 20.000 vrouwen is gevolgd. Je doet het
in een kleine groep, samen met andere vrouwen.

Er wordt niets van je verwacht. Je hoeft niets uit te leggen, niets te beslissen en niets aan je
situatie te veranderen om mee te doen. De cursus geeft je taal voor wat er gebeurt, laat zien hoe
geweld werkt en waarom het niet jouw schuld is, en helpt je terugvinden wie je was voordat dit
begon.

3. Daaronder 7 mm lucht, dan een paneel over de volle tekstbreedte, met een vulling in roze tint
   #F5E3EE, geen rand, geen ronde hoeken, geen schaduw, 7 mm binnenmarge rondom. Dit paneel loopt
   gewoon mee met de tekst, het staat NIET vastgezet onderaan de pagina.

   Bovenin het paneel een label in Work Sans Medium, 9 pt, HOOFDLETTERS, letterafstand 1,6 pt,
   in pruim:

   WAAR JE TERECHT KUNT

   Daaronder 4 mm lucht, dan vier items onder elkaar met 2,5 mm ertussen. Elk item bestaat uit
   TWEE regels boven elkaar. De bovenste regel is een omschrijving in Work Sans Regular, 8 pt,
   HOOFDLETTERS, letterafstand 1,1 pt, in gedempt grijs. De onderste regel is het adres in
   Work Sans Medium, 10,5 pt, in pruim:

   ALLES OVER DE CURSUS
   ikgalevencursus.nl/informatie

   AANMELDEN VOOR DE GRATIS ONLINE BIJEENKOMST
   ikgalevencursus.nl/bijeenkomst

   GRATIS VEILIGHEIDSPLAN OM TE DOWNLOADEN
   ikgalevencursus.nl/veiligheidsplan

   VRAGEN OF EVEN PRATEN
   info@ikgalevencursus.nl

4. Onder het paneel 6 mm lucht, dan één regel in Work Sans Regular, 9,5 pt, gedempt grijs, met de
   twee namen in Work Sans Medium in pruim:

Instagram: @ikgalevencursus · Podcast: Van Geweld naar Geluk

De vier adressen staan in kleine letters en blijven precies zoals hierboven. Maak er geen klikbare
links van, zet er geen https:// of www. voor, en laat de automatische correctie de hoofdletters
niet aanpassen. Maak er geen opsomming met bolletjes van.

Verder niets op deze pagina.
```

---

## 20 · Over Hiltje

```
Maak de volgende pagina in het format hierboven.

Paginavulling: ecru #F6F1EA
Kopregel links: OVER
Kopregel rechts: HILTJE
Eyebrow: WIE DIT MAAKTE
Kop: Over Hiltje
     (het woord "Hiltje" cursief)
Paginanummer: 20

Inhoud, in deze volgorde:

1. Streepje van 37 mm onder de kop.

2. Daaronder een blok van twee kolommen naast elkaar, met 8 mm ertussen.

   LINKS een foto van 55,5 mm breed en 69 mm hoog. De bovenkant van de foto is een halve cirkel,
   een boogvorm, en de onderste twee hoeken zijn heel licht afgerond (1,5 mm). Geen rand, geen
   schaduw.

   RECHTS, boven uitgelijnd met de foto, twee alinea's in Work Sans Regular 11 pt, tekstgrijs,
   regelafstand 1,75, met 4 mm ertussen:

Ik ben Hiltje. Als huisarts en als arts bij Veilig Thuis heb ik gewerkt met geweld in
afhankelijkheidsrelaties, zoals partnergeweld en kindermishandeling.

Ik heb te vaak gezien wat er gebeurt als een vrouw geen taal heeft voor wat haar overkomt, en
hoeveel er verandert zodra ze die taal wel krijgt. Daarom bracht ik IK GA LEVEN naar Nederland.

3. Daaronder 8 mm lucht, dan een paneel over de volle tekstbreedte met een WITTE vulling #FFFFFF
   op de ecru pagina, geen rand, geen ronde hoeken, geen schaduw, 7 mm binnenmarge rondom. Eén
   regel erin, in Work Sans Regular 11 pt tekstgrijs, met alleen het e-mailadres in Work Sans
   Medium in pruim:

Heb je vragen, of wil je even praten, dan mag je mij altijd een bericht sturen op
info@ikgalevencursus.nl. Geen verplichtingen, geen vragen die je niet wil beantwoorden. Ik lees
mee, in jouw tempo.

4. Daaronder 10,5 mm lucht, dan een korte regel in Source Serif Pro Light, 19 pt, pruim, NIET
   cursief, met links een verticale lijn van 2 px in roos #D585AE en 6 mm ruimte tussen lijn en
   tekst:

Ik ben er.

5. Daaronder 4 mm lucht, dan de ondertekening in Source Serif Pro Light CURSIEF, 16,5 pt, pruim,
   zonder lijn ervoor, links uitgelijnd:

Hiltje

6. Onderaan de pagina, VASTGEZET: de onderkant van dit blok ligt 27,5 mm boven de onderrand van
   de pagina, dus vlak boven de voetregel. Het loopt over de volle tekstbreedte en heeft BOVENAAN
   een haarlijn van 1 px in roos #D585AE op 50% dekking, met 4 mm ruimte tussen de lijn en de
   tekst eronder.

   Twee regels onder elkaar. De eerste in Work Sans Medium, 9,5 pt, in magenta #C41E7A. De tweede
   in Work Sans Regular, 9,5 pt, in gedempt grijs:

Bij acuut gevaar, of als iemand gewond is, bel je 112.
Denk je aan zelfdoding, bel dan 0800-0113.

Laat het wit tussen de ondertekening en dat onderste blok gewoon leeg.

Geen invullijnen, geen genummerde blokken, geen tekenvlak. Verder niets op deze pagina.
```

---
---

# DEEL 4 · Varianten met beeld

Niet in de PDF, wel eerder gevraagd. Gebruik deze als je het schema van Biderman en de boom van
Bancroft als afbeelding wilt opnemen. Ze komen dan vóór de bestaande pagina's te staan en de
nummering schuift op.

## Variant · Biderman, het schema als afbeelding

```
Maak de volgende pagina in het format hierboven.

Paginavulling: wit #FFFFFF
Kopregel links: HET SCHEMA VAN BIDERMAN
Kopregel rechts: HET SCHEMA
Eyebrow: BIDERMAN
Kop: Het schema van Biderman
     (het woord "Biderman" cursief)
Paginanummer: [nn]

1. Streepje van 37 mm onder de kop.

2. Eén regel in Source Serif Pro Light cursief, 14 pt, gedempt grijs:

Acht manieren om iemand murw te maken, opgeschreven door een onderzoeker die bestudeerde hoe
krijgsgevangenen werden gebroken.

3. Daaronder een leeg beeldkader over de volle tekstbreedte: 175 mm breed, 150 mm hoog. Rand van
   1 px in roos #D585AE op 50% dekking, witte vulling, geen ronde hoeken, geen schaduw. Zet er
   als plaatsaanduiding "AFBEELDING: schema van Biderman" in het midden, in Work Sans Regular
   9,5 pt, gedempt grijs.

4. Onder het kader een bijschrift in Work Sans Regular 9,5 pt, gedempt grijs:

Herken je iets, dan is dat geen toeval. Dit schema beschrijft geen slechte relatie. Het beschrijft
een methode.

Verder niets op deze pagina. De afbeelding is de pagina.
```

## Variant · Biderman, jouw vragen

```
Maak de volgende pagina in het format hierboven.

Paginavulling: roze tint #F5E3EE
Kopregel links: HET SCHEMA VAN BIDERMAN
Kopregel rechts: JOUW ANTWOORD
Eyebrow: BIDERMAN
Kop: Wat je hierin herkent
     (het woord "herkent" cursief)
Paginanummer: [nn]

1. Streepje van 37 mm onder de kop.

2. Een stelling in Source Serif Pro Light cursief, 14 pt, pruim:

Ontdekken wat het schema van Biderman weergeeft, heeft me geholpen mijn ervaringen en wat mij is
aangedaan te begrijpen.

3. Daaronder drie aankruisvakjes naast elkaar, 9 mm ertussen:
   Eens   Oneens   Ik weet het niet

4. Daarna twee genummerde vraagblokken, elk met acht invullijnen:

01  WAT JE HERKENT
    Welk vak uit het schema herken je het sterkst?
    Toelichting: Je hoeft er niets bij uit te leggen. Eén woord mag ook.

02  WAT HET DUIDELIJK MAAKT
    Wat wordt er duidelijk nu je het zo op een rij ziet staan?

Laat tussen de twee blokken 15 mm lucht, met een lege rechthoek als tussenruimte.
```

## Variant · De boom van Bancroft als afbeelding

```
Maak de volgende pagina in het format hierboven.

Paginavulling: ecru #F6F1EA
Kopregel links: DE BOOM VAN BANCROFT
Kopregel rechts: HET BEELD
Eyebrow: BANCROFT
Kop: De boom van Bancroft
     (het woord "Bancroft" cursief)
Paginanummer: [nn]

1. Streepje van 37 mm onder de kop.

2. Eén regel in Source Serif Pro Light cursief, 14 pt, gedempt grijs:

De takken zijn wat je ziet gebeuren. De wortels zijn waar het vandaan komt.

3. Daaronder een leeg beeldkader, gecentreerd: 140 mm breed, 165 mm hoog. Rand van 1 px in roos
   #D585AE op 50% dekking, witte vulling, geen ronde hoeken, geen schaduw. Zet er als
   plaatsaanduiding "AFBEELDING: de boom van Bancroft" in het midden, in Work Sans Regular
   9,5 pt, gedempt grijs.

4. Onder het kader een bijschrift in Work Sans Regular 9,5 pt, gedempt grijs:

Wat er aan de takken hangt verandert per relatie. De wortels zijn overal hetzelfde.

Verder niets op deze pagina.
```

---
---

# DEEL 5 · Wat niet uit het Google Doc komt

Deze teksten heeft de assistent geschreven, niet Hiltje. Nakijken voor gebruik.

- Pagina 02, de hele welkomstpagina.
- Pagina 10, beide vragen ("Welke fabel had jij zelf geloofd?" en "Wat verandert er als die fabel
  niet waar blijkt te zijn?").
- Pagina 12, het paneel "Waar het om gaat".
- Pagina 16 en 11, de introregels boven het werkvlak.
- Pagina 17, het paneel "Als je nog even zin hebt".
- Pagina 19 en 20, de hele tekst over IK GA LEVEN en over Hiltje, inclusief de linkenlijst.
- In DEEL 4: de introregels, de bijschriften en de twee vragen op de Biderman-vragenpagina.

De bio op pagina 20 volgt de vaste zelfomschrijving: Veilig Thuis altijd in de verleden tijd.

---
---

# DEEL 6 · Referentiepagina voor de Brand Template

Plak dit op de laatste pagina van het Canva-ontwerp (de referentiepagina die Canva zelf aanmaakt).
Zo blijft Canva AI on-brand terwijl je pagina's toevoegt of laat aanvullen. Deze pagina hoort NIET
in de uiteindelijke PDF; verwijder hem voor je exporteert.

```
MERKKAART · IK GA LEVEN werkboek. Houd je in dit hele ontwerp aan onderstaande regels.

KLEUREN (gebruik alleen deze)
Pruim #6B1953        koppen, labels, paginanummers
Roos #D585AE         lijnen, cijfers, accenten, url (roos 500)
Roze tint #F5E3EE    paginavulling en panelen
Boter #FFF8D1        paginavulling en panelen
Ecru #F6F1EA         paginavulling (rustpunten en cover)
Wit #FFFFFF          paginavulling (werkpagina's) en panelen
Tekstgrijs #5C5556   lopende tekst
Gedempt grijs #8A8283  bijschriften, kop- en voetregels
Schrijflijnroze #E0C8D6  invullijnen
Magenta #C41E7A      alleen de noodregel op de laatste pagina

LETTERS
Koppen: Source Serif Pro, Light. Nooit vet. Laatste of belangrijkste woord cursief.
Tekst en labels: Work Sans, Regular. Labels, eyebrows en knoppen in Medium, in HOOFDLETTERS.

VASTE ONDERDELEN PER PAGINA
Kopregel boven: links het hoofdstuk, rechts het onderdeel, met een haarlijn in roos 50% eronder.
Voetregel onder: links IK GA LEVEN CURSUS, rechts IKGALEVENCURSUS.NL en het paginanummer met een
nul ervoor, met een haarlijn in roos 50% erboven.
Onder elke paginakop een streepje van 37 mm, roos 50%.
Marges: boven 14, zijkant 17,5, onder 24 mm.

INVULLIJNEN
Haarlijnen in schrijflijnroze #E0C8D6, om de 8 mm. Twee losse lijnenblokken houden altijd een
zichtbaar gat, nooit aan elkaar geplakt.

TOON
Nederlands, rustig, warm, geen uitroeptekens. NOOIT een lange gedachtestreep (em-dash); gebruik
een komma, punt of dubbele punt. Veel witruimte. Geen ronde hoeken, geen schaduwen, geen iconen.
```

**Voor de Zelfcompassie Booster:** maak een APARTE merkkaart. Ander merk, andere waarden:
crème #FAF3E9, aubergine #24141C, rozehout #B04A63, magenta #FF2398, letters Newsreader (koppen,
cursief) + Hanken Grotesk (tekst). De opbouw van deze kaart mag je overnemen, de waarden niet.
