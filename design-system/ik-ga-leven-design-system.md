# IK GA LEVEN — Design System

Website & salespagina's voor **Ik ga leven** — een 10-weekse training voor vrouwen die
geweld in hun relatie meemaken of hebben meegemaakt. Site: `ikgalevencursus.nl`.

**Bron van waarheid:** dit bestand + `tokens.css` reconstrueren de HANDOFF-brief
(kleuren en typografie, door Hiltje bevestigd met exacte maten) als losstaand,
niet-technisch naslagwerk. Zie `preview.html` voor de levende styleguide.

> **Verzoening met het Claude Design-project (2026-07-06).** Er bestond ook een
> apart Claude Design-project (Figma-afgeleid, namespace `IkGaLevenDesignSystem_3e322b`)
> met een ánder systeem: Cormorant Garamond/Nunito Sans/Dancing Script,
> een `#FFFAF7`-achtergrond met pruim-bruine tekst, afgeronde knoppen (12px), en
> roos/mint in omgekeerde rollen. Op elk van die 4 punten heeft Hiltje expliciet
> gekozen voor **de HANDOFF-versie** — dat is dus wat hieronder staat. Twee dingen
> uit het Claude Design-project zijn wél overgenomen omdat ze niet conflicteren:
> **magenta strikt als crisis/urgent-only kleur** (nooit decoratief) en het concept
> van een **altijd-zichtbare snel-weg-knop** + **gegradeerde crisis-melding** — beide
> vielen al onder de traumaregels in §6 hieronder.

---

## 1. Logo

Het echte merklogo is een handgetekende ("graffiti-stijl") stapel-wordmark:
**"IK GA"** boven **"LEVEN"** verticaal. Eén ontwerp, drie kleurvarianten,
aangeleverd door Hiltje via Drive (2026-07-06) — dit zijn de definitieve
bestanden, eerdere logo-varianten in het project zijn vervangen. Bestanden
staan in `assets/logo/`:

| Bestand | Gebruik |
|---|---|
| `logo-bordeaux.png` | **Primair** — op lichte vlakken (header op ecru, footer) |
| `logo-original.png` | Op een zachte roos-tint achtergrond (`.section--band`) |
| `logo-roos.png` | Lichtste variant — op donkere pruim-vlakken of over foto's |

Alle drie zijn transparante PNG's op 2000×2000px — ruim voldoende resolutie voor
retina-headers; schaal ze naar beneden, nooit op.

---

## 2. Kleur

Vijf merkkleuren, elk met precies één rol. Geen kleur wordt buiten zijn rol gebruikt.

| Rol | Naam | Token | Hex |
|---|---|---|---|
| Primair — knoppen-accent, kaders, pruim-koppen | Pruim | `--plum` | `#6B1953` |
| Hover (op pruim) | Diep pruim | `--plum-hover` | `#4E1240` |
| Secundair — eyebrows, zachte vlakken | Roos | `--rose` | `#D585AE` |
| Accent — dividers, onderranden | Mint | `--mint` | `#B8E5D7` |
| Lichte band | Boter | `--butter` | `#FFF8D1` |
| Pop — alleen snel-weg-knop en 112-regel | Magenta | `--magenta` | `#CE12AE` |
| Paginabasis (achtergrond) | Wit | `--white` | `#FFFFFF` |
| Koppen én hoofdtekst | Aubergine-zwart (ink) | `--text` / `--ink` | `#2D1422` |

> **Besluit 2026-07-09 (website-document Hiltje):** de paginabasis is **wit** met
> gekleurde banden per sectie; ecru `#F6F1EA` is vervallen als achtergrond. Tekst
> en koppen staan in **ink `#2D1422`**; het oude warm grijs `#5C5556` is vervallen.
> Statistieken- en testimonialkoppen zijn de uitzondering: die staan in pruim
> (klasse `.h--plum`).

> **Naamgeving:** Hiltje's website-document nummert tinten soms anders dan de
> schalen in `tokens.css` (bv. "roos 200" in het doc = `#ECBED6` = `--rose-300`
> hier). **De hex-waarde is altijd leidend**, niet de naam.

### Bandkleuren per sectie (homepage, uit het website-document)

| Blok | Achtergrond | Token |
|---|---|---|
| Veiligheidsbanner | `#ECBED6` | `--rose-300` (`--surface-banner`) |
| Menu + hero | `#FDF5F9` | `--plum-50` (`--surface-menu`) |
| Opt-in veiligheidsplan | `#F8DCEA` | `--rose-200` (`.section--band`, randen 1px `--rose-300`) |
| Herkenning / persona's | `#FFFDF2` | `--butter-100` |
| Zit ik in een relatie (video-CTA) | `#FFFBEA` | `--butter-200` |
| Statistieken | wit, onderrand `--mint-500` | `.section--stats` |
| Over Hiltje | `#FDF0F5` | `--rose-100` |
| Testimonials | wit | — |
| Podcast | `#E2C2D5` | `--plum-200` |
| Vandaag beginnen | wit | — |
| Signature-aanbod | `#ECBED6` | `--rose-300` |
| Als het veilig is (nieuwsbrief) | `#FFF8D1` | `--butter-300` |
| Footer + veilig verder browsen | `#F8DCEA` | `--rose-200` |
| Copyright | wit, 11,2px | — |

Videopagina: banner en hero op `--rose-300` (hero met gebogen onderrand die overloopt
in wit), opt-in op `--rose-200` met bodytekst `--plum-400`, "Wat je hierna kunt doen"
en het veiligheidsblok op `--butter-100`.

**Regels:**
- Magenta is de enige "pop"-kleur en verschijnt **hooguit één keer per pagina** — nooit
  als vlak/achtergrond. Vaste rollen: de snel-weg-knop en "Bel 112".
- Roos is de zachte, warme vlakkleur (banden, tint-achtergronden) en de eyebrow-kleur.
  Mint is het frisse accent — dividers en onderranden, niet als grote achtergrond.
  Vaste mint-accenten: onderrand statistieken (`--mint-500`), divider video-blok
  (`--mint-400`), divider Over Hiltje (`--mint-700`), rand citaat-cirkel (`--mint-500`),
  IG-kop footer (`--mint-700`).

**Afgeleide tinten** (`--rose-hover`, `--mint-hover`, `--border-rose`, `--text-muted`)
zijn *niet* expliciet door Hiltje bevestigd — het zijn redelijke afleidingen voor hover-
en randstaten. Vraag het na als iets daarvan niet goed voelt.

---

## 3. Typografie

Drie lagen, elk met een duidelijke taak. Alle drie gratis op Google Fonts.

- **Koppen — Source Serif 4**, altijd de **Light-variant** (weight 300), nooit vetter.
  (Source Serif 4 is de huidige Google Fonts-uitgave van Source Serif Pro; zelfde letter.)
- **Body — Work Sans Regular** (weight 400) voor alle lopende tekst.
- **Eyebrows, knoppen en het ervaring/statistieken-blok — Work Sans Medium** (weight 500).
  Bevestigd door Hiltje 2026-07-08. Semibold (600) wordt nergens gebruikt; meer nadruk dan
  Medium komt uit kapitalen, tracking en kleur.
- **Joy-laag — Special Elite** (typemachine-gevoel), *uitsluitend* voor hoop/herstel-
  content — een losse zin, een citaat, nooit een hele alinea.

### Exacte maten (desktop; mobiel later terugschalen met `clamp()`)

| Rol | Font | Grootte | Weight | Line-height | Tracking | Kapitalen |
|---|---|---|---|---|---|---|
| Hero-kop | Source Serif 4 | 42px (clamp 30-42) | 300 | ≈1.2 (50.4px) | 0.4px | nee |
| Testimonial-kop | Source Serif 4 | 36px (clamp 26-36) | 300 | ≈1.2 | 0.4px | nee |
| Opt-in-kop | Source Serif 4 | 32px (clamp 24-32) | 300 | ≈1.2 | 0.4px | nee |
| Kop onder beeld | Source Serif 4 | 24px | 300 | ≈1.2 | 0.4px | nee |
| Eyebrow-label | Work Sans | 15px | 500 | ≈1.3 (19.5px) | 1.5px | **JA** |
| Body | Work Sans | 17px | 400 | 34px (≈2.0) | normaal | nee |
| Hoofdknop | Work Sans | 15px | 500 | ≈1.3 | normaal | **JA** |
| Open/kaart-knop | Work Sans | 13px | 500 | ≈1.3 | normaal | **JA** |
| Menu | Work Sans | 14px | 500 | — | 0.06em | **JA** |
| Statistieken-labels | Work Sans | 14px | 500 | ≈1.3 | 1.5px | **JA** |
| Copyright | Work Sans | 11,2px | 400 | — | — | nee |

(Besluit Hiltje 2026-07-09: definitief terug naar de gemeten maten 42/36/32/24 uit het
website-document; de tijdelijke opschaling naar 58px van 2026-07-08 is teruggedraaid.)

Bevestigd: eyebrow én knoppen in kapitalen; de ruime 34px body line-height is bewust
(leesbaarheid, rust).

---

## 4. Vorm & ritme

- **Knoppen bijna recht** — radius `2px` (token `--radius`, systeembreed gebruikt voor
  knoppen, kaders en inputs — niets in deze site is sterk afgerond).
- Knopstijlen (besluit 2026-07-09, website-document):
  - **Hoofdknop** (`.btn`): vlak `--plum-300` met 3px onderrand in pruim, tekst pruim,
    15px kapitalen; hover vult naar pruim met `--plum-50` tekst.
  - **Massief** (`.btn--solid`): pruim vlak, `--plum-50` tekst — voor de opt-in.
  - **Open** (`.btn--open` / `.btn--outline` / `.btn--fill`): 13px, dunne `--plum-300`
    rand, vulling volgt de sectie (transparant of wit); hover vult naar vol
    `--plum-300`, de tekst blijft pruim.
  - **Snel-weg** (`.exit-btn`, gedeeld component in tokens.css): massief magenta
    gevuld met witte tekst; hover naar `--magenta-600` (besluit 2026-07-09).
  Een pijltje (`→`) schuift naar rechts op hover.
- **Genummerde cirkels** met pruim rand (geen vulling) voor de "1/2/3"-stappen —
  `.step-num`, 52px doorsnede.
- **Scheidslijnen**: 1px roos op 50% dekking (`--border-rose`).
- **Genereuze witruimte**: sectiepadding tot ~7rem (`--section-padding`), 3rem op mobiel.
- **Schaduw alleen op zwevende objecten** (bv. het ebook-mockup) — nooit op gewone
  kaarten of secties. Token: `--shadow-float`.

### Mockup-PNG's: altijd strak bijsnijden — geen transparante rand

**Regel: een mockup-PNG (telefoon, ebook, cover) wordt bijgesneden tot het onderwerp
zelf. Nul transparante rand.** Dit geldt voor élke mockup op de site, ook als hij uit
Canva of een mockup-generator komt — die exporteren standaard mét lucht eromheen.

Waarom dit niet cosmetisch is:

- CSS meet de **PNG-box**, niet wat je ziet. Zit er lucht omheen, dan liggen alle maten
  ernaast: `width: 260px` levert een zichtbaar kleinere telefoon op, en een uitlijning
  als "de telefoon valt met 1/3 over de witte kaart" klopt wel in de code maar niet
  voor het oog. Bij het podcastblok scheelde dat 56px aan weerszijden.
- Een mockup die zijn toegewezen breedte niet vult, oogt te klein in blokken waar hij
  het beeld moet dragen (opt-in, podcast).

Praktisch:

- Snijd bij op de **alpha-bounding-box** (de buitenste niet-transparante pixel). Op deze
  pc kan dat zonder extra software met System.Drawing in PowerShell; er is geen
  Python/Node/ImageMagick.
- **Levert Hiltje een nieuwe export, dan moet die opnieuw worden bijgesneden.** Dat is
  onzichtbaar als je het niet weet: het bestand ziet er goed uit, de pagina schuift stil
  scheef. Controleer het bij elke vervanging.
- Rekent CSS met de verhouding van de mockup (zoals `--podcast-phone-h` uit 970x1920),
  loop die token dan na zodra de afmetingen veranderen.

### Opt-in-blok (mockup + Flodesk-form) — gedeeld component

Gebruikt op de video-, homepage- en veiligheidsplan-pagina. De klassen staan in
`tokens.css`; herbruik ze op nieuwe pagina's in plaats van per pagina opnieuw te stylen.

- **Krappe strook**: geef de opt-in-sectie naast `.section--band` ook `.section--optin`.
  Dat zet de boven/ondermarge op ~1,5 regelhoogte (`1.5rem`, mobiel `1.25rem`) in plaats
  van de standaard ~7rem sectiepadding.
- **Layout** (mockup links, Flodesk-form rechts, gecentreerd en gebalanceerd paar):

  ```html
  <section class="section section--band section--optin">
    <div class="container optin-container">
      <div class="optin-narrow">
        <img class="optin-mock" src="…" alt="…">
        <div id="fd-form-XXXX"></div>   <!-- Flodesk inline-form -->
      </div>
    </div>
  </section>
  ```

- **Per pagina instelbaar** met CSS-variabelen (op `.optin-narrow` of de sectie):
  - `--optin-form-w` — vaste breedte van het Flodesk-form; matcht de breedte die je in
    Flodesk zélf instelt (video = **753px**, tevens de standaard). Te smal en Flodesk klapt
    de knop onder de velden en de titel over meer regels; de omslag ligt rond **800px**.
  - `--optin-mock-max` — maximale mockupbreedte (standaard **380px**).
- Onder **1080px** stapelt het automatisch: mockup boven, formulier op volle breedte.
- Heeft het blok een eigen kop/tekst (zoals de homepage-veiligheidsplan-opt-in), gebruik
  dan alleen `.section--optin` voor de krappe strook en houd de eigen layout eromheen.
- De mockup staat strak bijgesneden, zonder transparante rand — zie "Mockup-PNG's"
  hierboven; dat geldt site-breed, niet alleen hier.

---

## 5. Pagina-blauwdruk (salespagina, 10-weekse training)

Structuur ontleend aan het ChicSpark-thema, ontdaan van de business-coach-huid:

1. **Aankondigingsbalk** (optioneel) — één kalme regel. Niet "Buy theme now".
2. **Header** — logo "ik ga leven" (Source Serif, pruim) links, rustige nav, + de
   snel-weg-knop (zie §6) rechtsboven, altijd zichtbaar.
3. **Hero** — witte kaart over foto: eyebrow, grote Source Serif-kop, korte zin, één
   kalme CTA (`.btn`).
4. **Opt-in band** (`.section--band`, roos-tint) — weggever/ebook + formulier (naam +
   e-mail). Het ebook-mockup mag als enige element een schaduw dragen (`.card--float`).
5. **Drie paden** (genummerd `.step-num` 1-2-3) — echte ingangen in háár taal:
   - "Ik zit er nu middenin"
   - "Het is voorbij maar laat me niet los"
   - "Ik wil weten of dit herkenbaar is"
6. **Waar dit vandaan komt** — vervangt "Featured in ..."-balk: podcast *Van Geweld
   Naar Geluk* + *Own My Life* (wereldwijd 20.000+ vrouwen).
7. **Geruststelling** — vervangt de dollar-cijferrij: **geen** geld/mastermind-taal.
   Wel: 10 weken, kleine groep, Own My Life, gratis kennismaking.
8. **Over Hiltje** — warme foto, korte persoonlijke tekst.
9. **Slot-CTA** — kennismakingsgesprek via Calendly. Eén kalme knop.
10. **Footer** — links, socials, veiligheidsregel + acute hulproute (alleen 112; Veilig
    Thuis NIET noemen, besluit 2026-07-07, tenzij Hiltje er expliciet om vraagt).

**Bewust weggelaten uit ChicSpark:** de "$5M / mastermind"-cijferrij, "Take the quiz",
de drie concurrerende knoppen naast elkaar, de mediologo's-balk.

---

## 6. Traumageïnformeerde regels — niet onderhandelbaar

1. **Snel-weg-knop** rechtsboven, altijd zichtbaar ("Verlaat deze site snel"), stuurt
   naar een neutrale site (buienradar.nl, overal dezelfde). Werkt ook op **Esc**.
   Techniek: gedeeld script `assets/js/safety.js` — `location.replace()` haalt de
   pagina uit de terug-stack, een bfcache-slot voorkomt dat de terugknop de pagina
   uit het browsergeheugen terughaalt, en interne links navigeren via replace zodat
   een bezoek maar één item in de terug-stack achterlaat.
1b. **Eerlijkheid over de geschiedenis (niet onderhandelbaar):** een website kán de
   browsergeschiedenis niet wissen — geen enkele site kan dat. Beloof dat dus nooit
   in teksten. Zeg wél wat waar is: de knop verlaat de site direct en de terugknop
   brengt je niet terug, maar het bezoek kan in de geschiedenis blijven staan; de
   pagina Veilig meelezen legt uit hoe je zelf wist of incognito gebruikt. Voor deze
   doelgroep is een valse belofte gevaarlijker dan geen belofte.
2. **Geen autoplay** van video of geluid, ooit.
3. **Footerregel** over veilig browsen + acute hulproute (alleen 112; Veilig Thuis
   staat sinds 2026-07-07 bewust niet in content, tenzij Hiltje er expliciet om vraagt).
4. **Rust en voorspelbaarheid** boven verrassende animaties — geen countdown-timers,
   geen schaarste-trucs, geen pop-ups die de aandacht grijpen.
5. Taal is **je/jij**, informeel, nooit "u"; nooit clinisch ("slachtoffer",
   "stoornis") — persoonsgericht ("jij", "wat er is gebeurd").
6. **Uitwegen zijn altijd zichtbaar en schaamtevrij** — weggaan voelt nooit als
   opgeven.

Deze regels gelden voor élke pagina op de site, niet alleen de salespagina.

### Video-embeds (Vimeo) — vaste instellingen

Vastgelegd 2026-07-08 bij de bouw van video.html. Elke Vimeo-embed op de site krijgt:

1. **Niet volgen:** `dnt=1` in de speler-URL, zodat Vimeo geen kijkgedrag bijhoudt.
   Voor dit publiek is dat een veiligheidsmaatregel, geen detail.
2. **Speler-chrome uit:** `title=0&byline=0&portrait=0`, dus geen titel, naam of
   avatar over het beeld.
3. **Responsive:** geen vaste width/height op de iframe, maar een wrapper met
   `aspect-ratio: 16/9` en de iframe op 100% breed en hoog.
4. **Autoplay uit:** geen `autoplay` in de URL en niet in het `allow`-attribuut.
   De vrouw start de video zelf (regel 2 hierboven).

Voorbeeld-URL: `https://player.vimeo.com/video/ID?h=HASH&dnt=1&title=0&byline=0&portrait=0`
met `allow="fullscreen; picture-in-picture; clipboard-write; encrypted-media; web-share"`,
`loading="lazy"` en een beschrijvende `title` op de iframe. Werkend voorbeeld: video.html.
NB: een vimeo.com/share/…-link is geen embed-URL; haal ID + hash uit de embed-code of
de share-pagina.

---

## 7. Bestanden in deze map

- `tokens.css` — alle kleuren, fonts en maten als CSS-variabelen, plus de
  herbruikbare klassen: `.btn` / `.btn--solid` / `.btn--open` / `.btn--outline` /
  `.btn--fill`, `.exit-btn`, `.eyebrow`, `.step-num`, de sectie-bandkleuren
  (`.section--band`, `.section--butter`, `.section--plum`, en per tint
  `.section--plum50` t/m `.section--butter300`), `.section--stats`, `.h-hero` /
  `.h-testimonial` / `.h-optin` / `.h-under-image` / `.h--plum`, `.card` /
  `.card--float`, `.divider` (+ hairline/kleur-modifiers), `.quote-circle`, `.joy`.
- `../assets/js/safety.js` — het gedeelde veiligheidsscript (snel-weg, Esc,
  bfcache-slot, replace-navigatie). Elke pagina laadt dit onderaan.
- `ik-ga-leven-design-system.md` — dit bestand (bestandsnaam bevat "ik ga leven" om verwarring met het aparte WOW! Vrouw / Claude Design-systeem te voorkomen — zie de verzoening bovenaan).
- `preview.html` — levende styleguide; open 'm in de browser om alles te zien.

## 8. Openstaande / niet-bevestigde punten

- Afgeleide hover-/randtinten (§2) zijn ingevuld, niet expliciet bevestigd.
- Card-radius volgt nu dezelfde `--radius: 2px` als knoppen (consistent met "bijna
  recht"); zeg het als kaarten iets ronder mogen.
- De volledige lijst openstaande beslissingen wordt bijgehouden in
  `brein/open-beslissingen.md` in de werkmap (Operations/Claude CODE), niet hier.

(Bijgewerkt 2026-07-08: snel-weg-knop en crisis-melding zijn inmiddels gebouwd en
staan op alle pagina's.)
