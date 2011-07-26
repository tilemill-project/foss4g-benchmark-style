/* ---- FONTS ---- */
@sans: "Lucida Sans Regular","DejaVu Sans Book";
@sans_bd: "Lucida Sans Demibold", "DejaVu Sans Bold";
@sans_it: "Lucida Sans Oblique", "DejaVu Sans Oblique";
@sans_bd_it: "Lucida Sans Demibold Oblique", " DejaVu Sans Bold Oblique";

/* ---- PLACES ---- */

#place[type='city'][zoom>4] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-size:10;
  text-halo-fill:#fff;
  text-halo-radius:1;
  text-wrap-width: 50;
  [zoom=6] { text-size:11; }
  [zoom>6] { text-halo-radius:2; }
  [zoom=7] { text-size:12; }
  [zoom>7] { text-size:13; }
  [zoom>11]{ text-size:14; }
}

#place[type='town'][zoom>5] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:#666;
  text-size:10;
  text-halo-fill:#fff;
  text-halo-radius:1;
  text-wrap-width: 50;
  [zoom>7] { text-size:11; }
  [zoom>7] { text-halo-radius:2; }
  [zoom>10]{ text-size:12; }
  [zoom>11]{ text-fill:#000; }
}

/* ---- WATER BODIES ---- */
