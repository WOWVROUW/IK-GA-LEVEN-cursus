/* ============================================================
   IK GA LEVEN — veiligheidsscript (gedeeld op elke pagina)

   1. Snel-weg: de knop #exitBtn en de Esc-toets vervangen deze
      pagina direct door een neutrale site. location.replace()
      haalt de huidige pagina uit de terug-stack, zodat de
      terugknop vanaf de neutrale site niet hierheen leidt.
   2. bfcache-slot: probeert de browser de pagina na een snel-weg
      toch uit het terug-vooruit-geheugen te tonen, dan vertrekken
      we opnieuw.
   3. Interne navigatie loopt via replace: een bezoek laat zo maar
      één item van deze site in de terug-stack achter in plaats
      van een spoor van pagina's.

   EERLIJKHEID (niet onderhandelbaar): een website kan de
   browsergeschiedenis NIET wissen; geen enkele site kan dat.
   Beloof dat dus nergens in de teksten. De pagina Veilig meelezen
   legt uit hoe de bezoeker zelf wist of incognito gebruikt.
   ============================================================ */
(function () {
  var NEUTRAL = 'https://www.buienradar.nl';

  function quickExit() {
    try { sessionStorage.setItem('igl-exit', '1'); } catch (e) { /* private mode */ }
    window.location.replace(NEUTRAL);
  }

  var btn = document.getElementById('exitBtn');
  if (btn) { btn.addEventListener('click', quickExit); }

  document.addEventListener('keydown', function (e) {
    if (e.key === 'Escape') { quickExit(); }
  });

  // Terug-vooruit-geheugen: nooit deze pagina teruggeven na een snel-weg.
  window.addEventListener('pageshow', function (e) {
    var exited = false;
    try { exited = sessionStorage.getItem('igl-exit') === '1'; } catch (err) {}
    if (e.persisted && exited) { quickExit(); }
  });

  // Interne links via replace: minder sporen in de terug-stack.
  document.addEventListener('click', function (e) {
    var a = e.target && e.target.closest ? e.target.closest('a') : null;
    if (!a) { return; }
    var href = a.getAttribute('href') || '';
    if (!href || href.charAt(0) === '#') { return; }          // anker op de pagina zelf
    if (a.target === '_blank' || a.hasAttribute('download')) { return; }
    if (/^(mailto:|tel:)/i.test(href)) { return; }
    var url;
    try { url = new URL(a.href, window.location.href); } catch (err) { return; }
    if (url.origin !== window.location.origin) { return; }    // externe links normaal
    e.preventDefault();
    window.location.replace(a.href);
  });
})();
