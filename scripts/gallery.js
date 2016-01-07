$(document).ready(function() {
  Galleria.loadTheme('scripts/galleria/themes/classic/galleria.classic.min.js');
  Galleria.configure({
    debug: false,
    autoplay: 4000
  });
  Galleria.run('#gallery');
});
