/* ---- FONTS ---- */
@sans: "Lucida Sans Regular","DejaVu Sans Book";
@sans_md: "Lucida Sans Demibold", "DejaVu Sans Book";
@sans_bd: "Lucida Sans Bold", "DejaVu Sans Bold";
@sans_it: "Lucida Sans Oblique", "DejaVu Sans Oblique";
@sans_bd_it: "Lucida Sans Bold Oblique", " DejaVu Sans Bold Oblique";

/* ---- PLACES ---- */

#place::city[type='city'][zoom>4] {
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

#place::town[type='town'][zoom>6] {
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

#water_label[zoom>11][area>2000000],
#water_label[zoom>12][area>1000000],
#water_label[zoom>13][area>500000],
#water_label[zoom>14][area>250000],
#water_label[zoom>15][area>125000],
#water_label[zoom>16][area>612500],
#water_label[zoom>17] {
  text-name:'[name]';
  text-face-name:@sans;
  text-fill:darken(@water,20);
  text-halo-fill:#fff;
  text-halo-radius:2;
  text-placement:interior;
  text-size:11;
  text-wrap-width:20;
}

/* ---- LANDUSAGES ---- */

#landuse_label[zoom>11][area>2000000],
#landuse_label[zoom>12][area>1000000],
#landuse_label[zoom>13][area>500000],
#landuse_label[zoom>14][area>250000],
#landuse_label[zoom>15][area>125000],
#landuse_label[zoom>16][area>612500],
#landuse_label[zoom>17] {
  text-name:'[name]';
  text-face-name:@sans;
  text-fill:#000;
  text-halo-fill:#fff;
  text-halo-radius:2;
  text-placement:interior;
  text-size:11;
  text-wrap-width:20;
  [zoom>14] { text-size:12; }
}

/* ---- ROADS ---- */

#motorway_label[type='motorway'][zoom>9],
#motorway_label[type='trunk'][zoom>9] {
  text-name:'[ref]';
  text-face-name:@sans_bd;
  text-placement:line;
  text-fill:#444;
  text-min-distance:60;
  text-size:10;
  [zoom=11] { text-min-distance:70; }
  [zoom=12] { text-min-distance:80; }
  [zoom=13] { text-min-distance:100; }
}

#mainroad_label[type='primary'][zoom>12],
#mainroad_label[type='secondary'][zoom>13],
#mainroad_label[type='tertiary'][zoom>13] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:line;
  text-fill:#222;
  text-halo-fill:#fff;
  text-halo-radius:1;
  text-min-distance:60;
  text-size:11;
}


#minorroad_label[zoom>14] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:line;
  text-fill:#222;
  text-halo-fill:#fff;
  text-halo-radius:1;
  text-min-distance:60;
  text-size:11;
}
