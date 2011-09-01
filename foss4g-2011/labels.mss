/* ==== FONTS ===================================================== */

@sans: "Lucida Sans Regular","DejaVu Sans Book";
@sans_md: "Lucida Sans Demibold", "DejaVu Sans Book";
@sans_bd: "Lucida Sans Bold", "DejaVu Sans Bold";
@sans_it: "Lucida Sans Oblique", "DejaVu Sans Oblique";
@sans_bd_it: "Lucida Sans Bold Oblique", " DejaVu Sans Bold Oblique";

/* ==== PLACES ==================================================== */

#place::country[type='country'][zoom>1][zoom<9] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:rgb(100,100,100);
  text-size:10;
}

#place::city[type='city'][zoom>2][zoom<16] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:rgb(68,68,68);
  text-size:10;
  text-halo-fill:#fff;
  text-halo-radius:1;
  text-wrap-width: 50;
  [zoom>8] { text-halo-radius:2; text-fill:#000; text-size:11; }
  [zoom>9] { text-size:12; }
  [zoom>10]{ text-size:13; }
  [zoom>12]{ text-size:14; }
  [zoom>14]{ text-size:15; }
}

#place::town[type='town'][zoom>7] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:#666;
  text-size:10;
  text-halo-fill:#fff;
  text-halo-radius:1;
  text-wrap-width: 50;
  [zoom>8] { text-halo-radius:2; }
  [zoom>10]{ text-size:11; text-fill:#000; }
  [zoom>11]{ text-size:12; }
  [zoom>14]{ text-size:13; }
}

#place::village[type='village'][zoom>10] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:#444;
  text-size:10;
  text-halo-fill:#fff;
  text-halo-radius:1;
  text-wrap-width: 50;
  [zoom>12] { text-size:11; text-fill:#000; }
  [zoom>14] { text-size:12; }
}

#place::small[type='suburb'][zoom>12],
#place::small[type='hamlet'][zoom>12],
#place::small[type='locality'][zoom>12] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:#444;
  text-size:10;
  text-halo-fill:#fff;
  text-halo-radius:1;
  text-wrap-width: 50;
  [zoom>14] { text-size:11; text-fill:#000; }
}

/* ==== WATER BODIES ============================================== */

#water_label[zoom>10][area>1600000],
#water_label[zoom>11][area>4000000],
#water_label[zoom>12][area>1000000],
#water_label[zoom>13][area>500000],
#water_label[zoom>14][area>250000],
#water_label[zoom>15][area>125000],
#water_label[zoom>16][area>62500],
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

/* ==== LANDUSAGES ================================================ */

/* Z11+
 *  - industrial/commercial/parking
 *  - park/golf_course 
 * Z12+
 *  - forest/wood
 *  - residential
 *  - pedestrian
 *  - cemetery
 *  - hospital
 *  - school/college/university
 *  - sports_center/stadium/pitch
 */

#landuse_label[zoom>12][area>1000000] {
  [type='industrial'],[type='commercial'],[type='parking'],
  [type='park'],[type='golf_course'] {
    text-name:'[name]';
    text-face-name:@sans;
    text-fill:#000;
    text-halo-fill:#fff;
    text-halo-radius:2;
    text-placement:interior;
    text-size:11;
    text-wrap-width:20;
  }
}
#landuse_label[zoom>12][area>1000000],
#landuse_label[zoom>13][area>500000],
#landuse_label[zoom>14][area>250000],
#landuse_label[zoom>15][area>125000],
#landuse_label[zoom>16][area>62500],
#landuse_label[zoom>17] {
  text-name:'[name]';
  text-face-name:@sans;
  text-fill:#000;
  [type='pedestrian'] { text-fill:#333; }
  text-halo-fill:#fff;
  text-halo-radius:2;
  text-placement:interior;
  text-size:11;
  text-wrap-width:20;
  [zoom>14] { text-size:12; }
}

/* ==== ROADS ===================================================== */

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

/* ==== WATERWAYS ================================================= */

#waterway_label[type='river'][zoom>5],
#waterway_label[type='canal'][zoom>9],
#waterway_label[type='stream'][zoom>11] {
  text-name:'[name]';
  text-face-name:@sans;
  text-fill:darken(@water,20);
  text-halo-fill:#fff;
  text-halo-radius:2;
  text-placement:line;
  text-min-distance:400;
  text-size:10;
}
