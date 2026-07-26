/* ============================================================
   IK GA LEVEN — hoofdmenu (gedeeld op elke pagina met een .site-header)

   1. Hamburger: onder 900px klapt het menu open en dicht.
   2. Submenu "Gratis": op desktop opent het op hover (CSS) en houdt een
      klik het vast; een tweede klik, een klik ernaast of het wegtabben
      sluit het weer. Op mobiel staan de drie links altijd open, dus daar
      doet de knop niets.

   LET OP: gebruik hier NOOIT de Esc-toets om iets te sluiten. Esc is op
   deze site de snel-weg-toets (assets/js/safety.js).
   ============================================================ */
(function () {
  var MOBILE = window.matchMedia('(max-width: 900px)');

  /* 1. Hamburger */
  var toggle = document.getElementById('navToggle');
  var nav = document.getElementById('siteNav');
  if (toggle && nav) {
    toggle.addEventListener('click', function () {
      var open = nav.classList.toggle('open');
      toggle.setAttribute('aria-expanded', open ? 'true' : 'false');
    });
  }

  /* 2. Submenu's */
  var items = [].slice.call(document.querySelectorAll('.nav-item'));
  if (!items.length) { return; }

  function setOpen(item, open) {
    var btn = item.querySelector('.nav-sub-toggle');
    item.classList.toggle('open', open);
    if (btn) { btn.setAttribute('aria-expanded', open ? 'true' : 'false'); }
  }

  function closeAll() {
    items.forEach(function (item) { setOpen(item, false); });
  }

  items.forEach(function (item) {
    var btn = item.querySelector('.nav-sub-toggle');
    if (!btn) { return; }

    btn.addEventListener('click', function (event) {
      if (MOBILE.matches) { return; }   // mobiel staat het submenu al open
      event.stopPropagation();
      var open = !item.classList.contains('open');
      closeAll();
      setOpen(item, open);
      // Dichtgeklikt met de muis er nog boven: hover even blokkeren,
      // anders klapt het meteen weer open en lijkt de klik te mislukken.
      if (!open) { item.classList.add('hover-off'); }
    });

    item.addEventListener('mouseleave', function () {
      item.classList.remove('hover-off');
    });

    // Wegtabben uit het submenu sluit het (toetsenbordgebruikers).
    item.addEventListener('focusout', function (event) {
      if (MOBILE.matches) { return; }
      if (!item.contains(event.relatedTarget)) { setOpen(item, false); }
    });
  });

  // Een klik ergens anders op de pagina sluit een vastgezet submenu.
  document.addEventListener('click', function (event) {
    var inside = event.target && event.target.closest ? event.target.closest('.nav-item') : null;
    if (!inside) { closeAll(); }
  });

  /* Bij wisselen tussen mobiel en desktop de standen weer laten kloppen:
     mobiel is het submenu altijd zichtbaar (dus aria-expanded true),
     desktop begint dicht. */
  function syncToLayout() {
    if (MOBILE.matches) {
      items.forEach(function (item) {
        var btn = item.querySelector('.nav-sub-toggle');
        item.classList.remove('open', 'hover-off');
        if (btn) { btn.setAttribute('aria-expanded', 'true'); }
      });
    } else {
      closeAll();
      if (nav) { nav.classList.remove('open'); }
      if (toggle) { toggle.setAttribute('aria-expanded', 'false'); }
    }
  }
  syncToLayout();
  if (MOBILE.addEventListener) { MOBILE.addEventListener('change', syncToLayout); }
  else if (MOBILE.addListener) { MOBILE.addListener(syncToLayout); }
})();
