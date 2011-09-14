/* ==== FONTS ===================================================== */

@sans: "DejaVu Sans Book";
@sans_bd: "DejaVu Sans Bold";

/* ==== PLACES ==================================================== */

#place::country[type='country'][zoom>1][zoom<9] {
  text-name:'[name]';
  text-label-position-tolerance:1;
  text-min-path-length:96;
  text-face-name:@sans;
  text-placement:point;
  text-fill:rgb(100,100,100);
  text-size:10;
}

#place::city[type='city'][zoom>2][zoom<10] {
  shield-name:'[name]';
  shield-file:url(images/dot-gray.png);
  [zoom>7] { shield-file:url(images/dot-white.png); }
  shield-text-dy:-10;
  shield-face-name:@sans;
  shield-placement:point;
  shield-fill:rgb(68,68,68);
  shield-size:10;
  shield-halo-fill:#fff;
  shield-halo-radius:1;
  [zoom>8] { shield-halo-radius:2; shield-fill:#000; shield-size:11; }
}
#place::city[type='city'][zoom>=10][zoom<16] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:rgb(0,0,0);
  text-size:12;
  text-halo-fill:#fff;
  text-halo-radius:2;
  [zoom>10]{ text-size:13; }
  [zoom>12]{ text-size:14; }
  [zoom>14]{ text-size:15; }
}

#place::town[type='town'][zoom>7][zoom<12] {
  shield-name:'[name]';
  shield-file:url(images/dot-gray.png);
  shield-text-dy:-10;
  shield-face-name:@sans;
  shield-placement:point;
  shield-fill:#666;
  shield-size:10;
  shield-halo-fill:#fff;
  shield-halo-radius:1;
  [zoom>8] { shield-halo-radius:2; }
  [zoom>10]{ shield-size:11; shield-fill:#000; }
}
#place::town[type='town'][zoom>=12] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:#000;
  text-size:12;
  text-halo-fill:#fff;
  text-halo-radius:1;
  [zoom>14]{ text-size:13; }
}

#place::village[type='village'][zoom>10][zoom<14] {
  shield-name:'[name]';
  shield-file:url(images/dot-gray.png);
  shield-text-dy:-10;
  shield-face-name:@sans;
  shield-placement:point;
  shield-fill:#444;
  shield-size:10;
  shield-halo-fill:#fff;
  shield-halo-radius:1;
  [zoom>12] { shield-size:11; shield-fill:#000; }
}
#place::village[type='village'][zoom>=14] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:#000;
  text-halo-fill:#fff;
  text-halo-radius:1;
  text-size:12;
}

#place::small[type='suburb'][zoom>12],
#place::small[type='hamlet'][zoom>12],
#place::small[type='locality'][zoom>12] {
  text-name:'[name]';
  text-label-position-tolerance:1;
  text-min-path-length:96;
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

#waterareas[zoom>10] {
  text-name:'[name]';
  text-label-position-tolerance:1;
  text-min-path-length:96;
  text-face-name:@sans;
  text-fill:darken(@water,20);
  text-halo-fill:#fff;
  text-halo-radius:2;
  text-placement:interior;
  text-size:11;
  text-wrap-width:20;
}

/* ==== LANDUSAGES ================================================ */

#landuse[zoom>12] {
  [type='industrial'],[type='commercial'],[type='parking'],
  [type='park'],[type='golf_course'] {
    text-name:'[name]';
    text-label-position-tolerance:1;
    text-min-path-length:96;
    text-face-name:@sans;
    text-fill:#000;
    text-halo-fill:#fff;
    text-halo-radius:2;
    text-placement:interior;
    text-size:11;
    text-wrap-width:20;
  }
}
#landuse[zoom>12] {
  text-name:'[name]';
  text-label-position-tolerance:1;
  text-min-path-length:96;
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

#roads10[zoom=10],
#roads11[zoom=11],
#roads12[zoom>=12][zoom<=13],
#roads14[zoom>=14][zoom<=15],
#roads16[zoom>=16] {
  [type='motorway'],
  [type='trunk'] {
  text-name:'[ref]';
  text-label-position-tolerance:1;
  text-min-path-length:96;
  text-face-name:@sans_bd;
  text-placement:line;
  text-fill:#444;
  text-min-distance:60;
  text-size:10;
  [zoom=11] { text-min-distance:70; }
  [zoom=12] { text-min-distance:80; }
  [zoom=13] { text-min-distance:100; }
  }
}

#roads12[zoom=13],
#roads14[zoom>=14][zoom<=15],
#roads16[zoom>=16] {
  [type='primary'] {
  text-name:'[name]';
  text-label-position-tolerance:1;
  text-min-path-length:96;
  text-face-name:@sans;
  text-placement:line;
  text-fill:#222;
  text-halo-fill:#fff;
  text-halo-radius:1;
  text-min-distance:60;
  text-size:11;
  }
}

#roads14[zoom>=14][zoom<=15],
#roads16[zoom>=16] {
  [type='secondary'],
  [type='tertiary'] {
  text-name:'[name]';
  text-label-position-tolerance:1;
  text-min-path-length:96;
  text-face-name:@sans;
  text-placement:line;
  text-fill:#222;
  text-halo-fill:#fff;
  text-halo-radius:1;
  text-min-distance:60;
  text-size:11;
  }
}

#roads14[zoom=15],
#roads16[zoom>=16] {
  [type='road'],
  [type='residential'],
  [type='living_street'],
  [type='unclassified'],
  [type='unknown'] {
  text-name:'[name]';
  text-label-position-tolerance:1;
  text-min-path-length:96;
  text-face-name:@sans;
  text-placement:line;
  text-fill:#222;
  text-halo-fill:#fff;
  text-halo-radius:1;
  text-min-distance:60;
  text-size:11;
  }
}

/* ==== WATERWAYS ================================================= */

#waterway[type='river'][zoom>5],
#waterway[type='canal'][zoom>9],
#waterway[type='stream'][zoom>11] {
  text-name:'[name]';
  text-label-position-tolerance:1;
  text-min-path-length:96;
  text-face-name:@sans;
  text-fill:darken(@water,20);
  text-halo-fill:#fff;
  text-halo-radius:2;
  text-placement:line;
  text-min-distance:400;
  text-size:10;
}
