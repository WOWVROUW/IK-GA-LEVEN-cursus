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
| Primair — koppen, knoppen, kaders | Pruim | `--plum` | `#6B1953` |
| Hover (op pruim) | Diep pruim | `--plum-hover` | `#4E1240` |
| Secundair — zachte vlakken | Roos | `--rose` | `#D585AE` |
| Bandtint — lichte roze secties | Roos-tint | `--rose-tint` | `#F5E3EE` |
| Accent | Mint | `--mint` | `#B8E5D7` |
| Lichte band | Boter | `--butter` | `#FFF8D1` |
| Pop — spaarzaam, **max 1 element per pagina** | Magenta | `--magenta` | `#CE12AE` |
| Paginabasis (achtergrond) | Ecru | `--ecru` | `#F6F1EA` |
| Hoofdtekst | Warm donkergrijs | `--text` | `#5C5556` |

**Regels:**
- Magenta is de enige "pop"-kleur en verschijnt **hooguit één keer per pagina** — nooit
  als vlak/achtergrond, alleen als klein accent (bv. één woord, één stip, één CTA-detail
  op een moment dat echt urgentie verdient). Nooit voor gewone foutmeldingen.
- De pagina is nooit puur wit — wit is gereserveerd voor kaarten die op de ecru
  achtergrond "liggen".
- Roos is de zachte, warme vlakkleur (banden, tint-achtergronden). Mint is het frisse
  accent — spaarzaam, als lichtpunt, niet als grote achtergrond.

**Afgeleide tinten** (`--rose-hover`, `--mint-hover`, `--border-rose`, `--text-muted`)
zijn *niet* expliciet door Hiltje bevestigd — het zijn redelijke afleidingen voor hover-
en randstaten. Vraag het na als iets daarvan niet goed voelt.

---

## 3. Typografie

Drie lagen, elk met een duidelijke taak. Alle drie gratis op Google Fonts.

- **Koppen — Source Serif 4**, altijd de **Light-variant** (weight 300), nooit vetter.
  (Source Serif 4 is de huidige Google Fonts-uitgave van Source Serif Pro; zelfde letter.)
- **Body / labels / knoppen — Work Sans**, altijd **Regular** (weight 400).
  Besluit Hiltje 2026-07-08: geen medium (500) of semibold (600) meer, ook niet voor
  eyebrows, knoppen of labels. Nadruk komt uit kapitalen, tracking en kleur, niet uit gewicht.
- **Joy-laag — Special Elite** (typemachine-gevoel), *uitsluitend* voor hoop/herstel-
  content — een losse zin, een citaat, nooit een hele alinea.

### Exacte maten (desktop; mobiel later terugschalen met `clamp()`)

| Rol | Font | Grootte | Weight | Line-height | Tracking | Kapitalen |
|---|---|---|---|---|---|---|
| Hero-kop | Source Serif 4 | clamp 34-58px | 300 | ≈1.2 | 0.4px | nee |
| Testimonial-kop | Source Serif 4 | clamp 28-46px | 300 | ≈1.2 | 0.4px | nee |
| Opt-in-kop | Source Serif 4 | clamp 24-36px | 300 | ≈1.2 | 0.4px | nee |
| Kop onder beeld | Source Serif 4 | 24px | 300 | ≈1.2 | 0.4px | nee |
| Eyebrow-label | Work Sans | 15px | 400 | ≈1.3 (19.5px) | 1.5px | **JA** |
| Body | Work Sans | 17px | 400 | 34px (≈2.0) | normaal | nee |
| Knop | Work Sans | 13px | 400 | ≈1.3 (16.9px) | 0.06em | **JA** |

(Kopgroottes 2026-07-08 opgeschaald naar de echte ChicSpark-demo-maat via `clamp()`;
de oude vaste waarden waren 42/36/32.)

Bevestigd: eyebrow én knoppen in kapitalen; de ruime 34px body line-height is bewust
(leesbaarheid, rust).

---

## 4. Vorm & ritme

- **Knoppen bijna recht** — radius `2px` (token `--radius`, systeembreed gebruikt voor
  knoppen, kaders en inputs — niets in deze site is sterk afgerond).
- Twee knopstijlen: **pruim vlak** (`.btn`) of **pruim rand** (`.btn--outline`). Een
  pijltje (`→`) schuift naar rechts op hover.
- **Genummerde cirkels** met pruim rand (geen vulling) voor de "1/2/3"-stappen —
  `.step-num`, 52px doorsnede.
- **Scheidslijnen**: 1px roos op 50% dekking (`--border-rose`).
- **Genereuze witruimte**: sectiepadding tot ~7rem (`--section-padding`), 3rem op mobiel.
- **Schaduw alleen op zwevende objecten** (bv. het ebook-mockup) — nooit op gewone
  kaarten of secties. Token: `--shadow-float`.

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
10. **Footer** — links, socials, veiligheidsregel + acute hulproute (112, Veilig Thuis
    0800-2000).

**Bewust weggelaten uit ChicSpark:** de "$5M / mastermind"-cijferrij, "Take the quiz",
de drie concurrerende knoppen naast elkaar, de mediologo's-balk.

---

## 6. Traumageïnformeerde regels — niet onderhandelbaar

1. **Snel-weg-knop** rechtsboven, altijd zichtbaar ("Verlaat deze site snel"), stuurt
   naar een neutrale site en houdt de pagina uit de geschiedenis. Werkt ook op **Esc**.
2. **Geen autoplay** van video of geluid, ooit.
3. **Footerregel** over veilig browsen + acute hulproute (112, Veilig Thuis).
4. **Rust en voorspelbaarheid** boven verrassende animaties — geen countdown-timers,
   geen schaarste-trucs, geen pop-ups die de aandacht grijpen.
5. Taal is **je/jij**, informeel, nooit "u"; nooit clinisch ("slachtoffer",
   "stoornis") — persoonsgericht ("jij", "wat er is gebeurd").
6. **Uitwegen zijn altijd zichtbaar en schaamtevrij** — weggaan voelt nooit als
   opgeven.

Deze regels gelden voor élke pagina op de site, niet alleen de salespagina.

---

## 7. Bestanden in deze map

- `tokens.css` — alle kleuren, fonts en maten als CSS-variabelen, plus de
  herbruikbare klassen: `.btn` / `.btn--outline`, `.eyebrow`, `.step-num`,
  `.section--band` / `.section--butter` / `.section--plum`, `.h-hero` /
  `.h-testimonial` / `.h-optin` / `.h-under-image`, `.card` / `.card--float`,
  `.divider`, `.joy`.
- `ik-ga-leven-design-system.md` — dit bestand (bestandsnaam bevat "ik ga leven" om verwarring met het aparte WOW! Vrouw / Claude Design-systeem te voorkomen — zie de verzoening bovenaan).
- `preview.html` — levende styleguide; open 'm in de browser om alles te zien.

## 8. Openstaande / niet-bevestigde punten

- Afgeleide hover-/randtinten (§2) zijn ingevuld, niet expliciet bevestigd.
- Card-radius volgt nu dezelfde `--radius: 2px` als knoppen (consistent met "bijna
  recht"); zeg het als kaarten iets ronder mogen.
- Snel-weg-knop en de crisis-melding (§6.1, 6.3) zijn nog niet als concrete
  componenten gebouwd — dat gebeurt bij het bouwen van de salespagina zelf.
