/* ==== HIGHWAY PALETTE =========================================== */

@aeroway:       rgb(180,180,180);
@bridge:        rgb(136,136,136);
@motorway_fill: #fd923a;
@motorway_line: #BA6E27;
@trunk_fill:    #ffc345;
@trunk_line:    #DD9F11;
@primary_fill:  #fffd8b;
@primary_line:  #c7baa8;
@secondary_fill:#fffd8b;
@secondary_line:#c7baa8;
@standard_fill: #fff;
@standard_line: #C1B59D;
@rail:          #777;
@ped_line:      @standard_line;
@ped_fill:      #FAFAF5;
@track:         #aaa;

/* ==== ROADS ===================================================== */

#roads_gen0[zoom=5] {
  ::line, ::case, ::fill {
    line-cap:round;
    line-join:round;
    line-width:0; /* Hides styles that have no further width set */
  }
  [type='trunk'], [type='trunk_link'] {
    ::line { line-color:@trunk_fill; }
  }
  [type='motorway'], [type='motorway_link'] {
    ::line { line-color:rgb(253,146,58); }
  }
}
#roads_gen1[zoom>=6][zoom<=8] {
  ::line, ::case, ::fill {
    line-cap:round;
    line-join:round;
    line-width:0; /* Hides styles that have no further width set */
  }
  [type='primary'], [type='primary_link'] {
    ::line, ::case { line-color:rgb(193,181,157); }
    ::fill { line-color:rgb(255,253,139); }
  }
  [type='trunk'], [type='trunk_link'] {
    ::line { line-color:@trunk_fill; }
    ::case { line-color:@trunk_line; }
    ::fill { line-color:@trunk_fill; }
  }
  [type='motorway'], [type='motorway_link'] {
    ::line { line-color:rgb(253,146,58); }
    ::case { line-color:rgb(186,110,39); }
    ::fill { line-color:rgb(253,146,58); }
  }
}
#roads10[zoom>=9][zoom<=10] {
  ::line, ::case, ::fill {
    line-cap:round;
    line-join:round;
    line-width:0; /* Hides styles that have no further width set */
  }
  [type='tertiary'], [type='tertiary_link'],
  [type='secondary'], [type='secondary_link'],
  [type='primary'], [type='primary_link'] {
    ::line, ::case { line-color:rgb(193,181,157); }
    ::fill { line-color:rgb(255,253,139); }
  }
  [type='trunk'], [type='trunk_link'] {
    ::line { line-color:@trunk_fill; }
    ::case { line-color:@trunk_line; }
    ::fill { line-color:@trunk_fill; }
  }
  [type='motorway'], [type='motorway_link'] {
    ::line { line-color:rgb(253,146,58); }
    ::case { line-color:rgb(186,110,39); }
    ::fill { line-color:rgb(253,146,58); }
  }
}
#roads11[zoom=11] {
  ::line, ::case, ::fill {
    line-cap:round;
    line-join:round;
    line-width:0; /* Hides styles that have no further width set */
  }
  [type='unclassified'], [type='residential'],
  [type='service'], [type='road'], [type='living_street'] {
    ::line, ::case { line-color:rgb(193,181,157); }
    ::fill { line-color:rgb(255,255,255); }
  }
  [type='tertiary'], [type='tertiary_link'],
  [type='secondary'], [type='secondary_link'],
  [type='primary'], [type='primary_link'] {
    ::line, ::case { line-color:rgb(193,181,157); }
    ::fill { line-color:rgb(255,253,139); }
  }
  [type='trunk'], [type='trunk_link'] {
    ::line { line-color:@trunk_fill; }
    ::case { line-color:@trunk_line; }
    ::fill { line-color:@trunk_fill; }
  }
  [type='motorway'], [type='motorway_link'] {
    ::line { line-color:rgb(253,146,58); }
    ::case { line-color:rgb(186,110,39); }
    ::fill { line-color:rgb(253,146,58); }
  }
}
#roads12[zoom>=12][zoom<=13],
#roads14[zoom>=14][zoom<=15],
#roads16[zoom>=16] {
  ::line, ::case, ::fill {
    line-cap:round;
    line-join:round;
    line-width:0; /* Hides styles that have no further width set */
  }
  [type='pedestrian'] {
    ::line { line-color:@ped_fill; }
    ::case { line-color:@ped_line; }
    ::fill { line-color:@ped_fill; }
  }
  [type='footway'] {
    ::line { line-color:#fff; line-dasharray:2,3; }
  }
  [type='track'] {
    ::line { line-dasharray:2,2; line-color:@track; }
  }
  [type='unclassified'], [type='residential'],
  [type='service'], [type='road'], [type='living_street'] {
    ::line, ::case { line-color:rgb(193,181,157); }
    ::fill { line-color:rgb(255,255,255); }
  }
  [type='tertiary'], [type='tertiary_link'],
  [type='secondary'], [type='secondary_link'],
  [type='primary'], [type='primary_link'] {
    ::line, ::case { line-color:rgb(193,181,157); }
    ::fill { line-color:rgb(255,253,139); }
  }
  [type='trunk'], [type='trunk_link'] {
    ::line { line-color:@trunk_fill; }
    ::case { line-color:@trunk_line; }
    ::fill { line-color:@trunk_fill; }
  }
  [type='motorway'], [type='motorway_link'] {
    ::line { line-color:rgb(253,146,58); }
    ::case { line-color:rgb(186,110,39); }
    ::fill { line-color:rgb(253,146,58); }
  }
}
/* Bridges & Tunnels */
#roads14[zoom>=14][zoom<=15],
#roads16[zoom>=16] {
  ::fill[tunnel=1] { line-opacity:0.4; }
  ::bcase {
    line-cap:butt;
    line-join:round;
    line-color:@bridge;
    line-width:0;
  }
  ::bfill {
    line-cap:round;
    line-join:round;
    line-width:0; /* Hides styles that have no further width set */
  }
  [type='pedestrian'] {
    ::bfill { line-color:@ped_fill; }
  }
  [type='unclassified'], [type='residential'],
  [type='service'], [type='road'], [type='living_street'] {
    ::bfill { line-color:rgb(255,255,255); }
  }
  [type='tertiary'], [type='tertiary_link'],
  [type='secondary'], [type='secondary_link'],
  [type='primary'], [type='primary_link'] {
    ::bfill { line-color:rgb(255,253,139); }
  }
  [type='trunk'], [type='trunk_link'] {
    ::bfill { line-color:@trunk_fill; }
  }
  [type='motorway'], [type='motorway_link'] {
    ::bfill { line-color:rgb(253,146,58); }
  }
}

#roads_gen0[zoom=5] {
  [type='trunk'],
  [type='motorway'] {
    ::line { line-width:0.5; }
  }
}

#roads_gen1[zoom=6] {
  [type='trunk'],
  [type='motorway'] {
    ::line { line-width:0.5; }
  }
}

#roads_gen1[zoom=7] {
  [type='trunk'],
  [type='motorway'] {
    ::case { line-width:0.5+1; }
    ::fill { line-width:0.5; }
  }
}
  
#roads_gen1[zoom=8] {
  [type='primary'], [type='primary_link'] {
    ::line { line-width:0.5; }
  }
  [type='trunk'],
  [type='motorway'] {
    ::case { line-width:1+1; }
    ::fill { line-width:1; }
  }
}

#roads10[zoom=9] {
  [type='secondary'], [type='secondary_link'] {
    ::line { line-width:0.5; }
  }
  [type='primary'], [type='primary_link'],
  [type='trunk_link'],
  [type='motorway_link'] {
    ::case { line-width:0.75+1; }
    ::fill { line-width:0.75; }
  }
  [type='trunk'],
  [type='motorway'] {
    ::case { line-width:2+1; }
    ::fill { line-width:2; }
  }
}

#roads10[zoom=10] {
  [type='tertiary'], [type='tertiary_link'] {
    ::line { line-width:0.5; }
  }
  [type='secondary'], [type='secondary_link'] {
    ::case { line-width:0.75+1; }
    ::fill { line-width:0.75; }
  }
  [type='primary'], [type='primary_link']{
    ::case { line-width:1+1; }
    ::fill { line-width:1; }
  }
  [type='trunk_link'],
  [type='motorway_link'] {
    ::case { line-width:1+2; }
    ::fill { line-width:1; }
  }
  [type='trunk'],
  [type='motorway'] {
    ::case { line-width:3+2; }
    ::fill { line-width:3; }
  }
}

#roads11[zoom=11] {
  [type='unclassified'], [type='residential'],
  [type='service'], [type='road'], [type='living_street'] {
    ::line { line-width:0.5; }
  }
  [type='tertiary'], [type='tertiary_link'] {
    ::line { line-width:0.75; }
  }
  [type='secondary'], [type='secondary_link'] {
    ::case { line-width:1+1; }
    ::fill { line-width:1; }
  }
  [type='primary'], [type='primary_link'],
  [type='trunk_link'],
  [type='motorway_link'] {
    ::case { line-width:1.5+2; }
    ::fill { line-width:1.5; }
  }
  [type='trunk'],
  [type='motorway'] {
    ::case { line-width:3+2; }
    ::fill { line-width:3; }
  }
}

#roads12[zoom=12] {
  [type='pedestrian'],
  [type='track'] {
    ::line { line-width:0.75; }
  }
  [type='unclassified'], [type='residential'],
  [type='service'], [type='road'], [type='living_street'] {
    ::line { line-width:0.5; }
  }
  [type='tertiary'], [type='tertiary_link'] {
    ::case { line-width:1+1; }
    ::fill { line-width:1; }
  }
  [type='secondary'], [type='secondary_link'] {
    ::case { line-width:1.5+1; }
    ::fill { line-width:1.5; }
  }
  [type='primary'], [type='primary_link'],
  [type='trunk_link'],
  [type='motorway_link'] {
    ::case { line-width:2+2; }
    ::fill { line-width:2; }
  }
  [type='trunk'],
  [type='motorway'] {
    ::case { line-width:4+2; }
    ::fill { line-width:4; }
  }
}

#roads12[zoom=13] {
  [type='pedestrian'] {
    ::case { line-width:1+1; }
    ::fill { line-width:1; }
  }
  [type='track'] {
    ::line { line-width:0.75; }
  }
  [type='unclassified'], [type='residential'],
  [type='service'], [type='road'], [type='living_street'] {
    ::line { line-width:0.5; }
  }
  [type='tertiary'], [type='tertiary_link'] {
    ::case { line-width:1.5+1; }
    ::fill { line-width:1.5; }
  }
  [type='secondary'], [type='secondary_link'] {
    ::case { line-width:2+2; }
    ::fill { line-width:2; }
  }
  [type='primary'], [type='primary_link'],
  [type='trunk_link'],
  [type='motorway_link'] {
    ::case { line-width:2.5+2; }
    ::fill { line-width:2.5; }
  }
  [type='trunk'],
  [type='motorway'] {
    ::case { line-width:4+2; }
    ::fill { line-width:4; }
  }
}

#roads14[zoom=14] {
  [type='pedestrian'] {
    ::case, ::bcase[bridge=1] { line-width:1.5+1; }
    ::fill, ::bfill[bridge=1] { line-width:1.5; }
  }
  [type='track'] {
    ::line { line-width:0.75; }
  }
  [type='unclassified'], [type='residential'],
  [type='service'], [type='road'], [type='living_street'] {
    ::case, ::bcase[bridge=1] { line-width:2.5+1; }
    ::fill, ::bfill[bridge=1] { line-width:2.5; }
  }
  [type='tertiary'], [type='tertiary_link'] {
    ::case, ::bcase[bridge=1] { line-width:2+1; }
    ::fill, ::bfill[bridge=1] { line-width:2; }
  }
  [type='secondary'], [type='secondary_link'] {
    ::case, ::bcase[bridge=1] { line-width:2.5+2; }
    ::fill, ::bfill[bridge=1] { line-width:2.5; }
  }
  [type='primary'], [type='primary_link'],
  [type='trunk_link'],
  [type='motorway_link'] {
    ::case, ::bcase[bridge=1] { line-width:3+2; }
    ::fill, ::bfill[bridge=1] { line-width:3; }
  }
  [type='trunk'],
  [type='motorway'] {
    ::case, ::bcase[bridge=1] { line-width:5+2; }
    ::fill, ::bfill[bridge=1] { line-width:5; }
  }
}

#roads14[zoom=15] {
  [type='pedestrian'] {
    ::case, ::bcase[bridge=1] { line-width:2+1; }
    ::fill, ::bfill[bridge=1] { line-width:2; }
  }
  [type='footway'],
  [type='track'] {
    ::line { line-width:1; line-color:#fff; }
  }
  [type='unclassified'], [type='residential'],
  [type='service'], [type='road'], [type='living_street'] {
    ::case, ::bcase[bridge=1] { line-width:4+1; }
    ::fill, ::bfill[bridge=1] { line-width:4; }
  }
  [type='tertiary'], [type='tertiary_link'] {
    ::case, ::bcase[bridge=1] { line-width:2.5+2; }
    ::fill, ::bfill[bridge=1] { line-width:2.5; }
  }
  [type='secondary'], [type='secondary_link'] {
    ::case, ::bcase[bridge=1] { line-width:3.5+2; }
    ::fill, ::bfill[bridge=1] { line-width:3.5; }
  }
  [type='primary'], [type='primary_link'],
  [type='trunk_link'],
  [type='motorway_link'] {
    ::case, ::bcase[bridge=1] { line-width:4+2; }
    ::fill, ::bfill[bridge=1] { line-width:4; }
  }
  [type='trunk'],
  [type='motorway'] {
    ::case, ::bcase[bridge=1] { line-width:6+2; }
    ::fill, ::bfill[bridge=1] { line-width:6; }
  }
}

#roads16[zoom=16] {
  [type='pedestrian'] {
    ::case, ::bcase[bridge=1] { line-width:2.5+1; }
    ::fill, ::bfill[bridge=1] { line-width:2.5; }
  }
  [type='footway'],
  [type='track'] {
    ::line { line-width:1; line-color:#fff; }
  }
  [type='unclassified'], [type='residential'],
  [type='service'], [type='road'], [type='living_street'] {
    ::case, ::bcase[bridge=1] { line-width:6+1; }
    ::fill, ::bfill[bridge=1] { line-width:6; }
  }
  [type='tertiary'], [type='tertiary_link'] {
    ::case, ::bcase[bridge=1] { line-width:5+2; }
    ::fill, ::bfill[bridge=1] { line-width:5; }
  }
  [type='secondary'], [type='secondary_link'] {
    ::case, ::bcase[bridge=1] { line-width:6+2; }
    ::fill, ::bfill[bridge=1] { line-width:6; }
  }
  [type='primary'], [type='primary_link'],
  [type='trunk_link'],
  [type='motorway_link'] {
    ::case, ::bcase[bridge=1] { line-width:7+2; }
    ::fill, ::bfill[bridge=1] { line-width:7; }
  }
  [type='trunk'],
  [type='motorway'] {
    ::case, ::bcase[bridge=1] { line-width:8+2; }
    ::fill, ::bfill[bridge=1] { line-width:8; }
  }
}

#roads16[zoom=17] {
  [type='pedestrian'] {
    ::case, ::bcase[bridge=1] { line-width:3+2; }
    ::fill, ::bfill[bridge=1] { line-width:3; }
  }
  [type='footway'],
  [type='track'] {
    ::line { line-width:1; line-color:#fff; }
  }
  [type='unclassified'], [type='residential'],
  [type='service'], [type='road'], [type='living_street'] {
    ::case, ::bcase[bridge=1] { line-width:6+2; }
    ::fill, ::bfill[bridge=1] { line-width:6; }
  }
  [type='tertiary'], [type='tertiary_link'] {
    ::case, ::bcase[bridge=1] { line-width:6+2; }
    ::fill, ::bfill[bridge=1] { line-width:6; }
  }
  [type='secondary'], [type='secondary_link'] {
    ::case, ::bcase[bridge=1] { line-width:7+2; }
    ::fill, ::bfill[bridge=1] { line-width:7; }
  }
  [type='primary'], [type='primary_link'],
  [type='trunk_link'],
  [type='motorway_link'] {
    ::case, ::bcase[bridge=1] { line-width:8+2; }
    ::fill, ::bfill[bridge=1] { line-width:8; }
  }
  [type='trunk'],
  [type='motorway'] {
    ::case, ::bcase[bridge=1] { line-width:9+2; }
    ::fill, ::bfill[bridge=1] { line-width:9; }
  }
}

#roads16[zoom=18] {
  [type='pedestrian'] {
    ::case, ::bcase[bridge=1] { line-width:3.5+2; }
    ::fill, ::bfill[bridge=1] { line-width:3.5; }
  }
  [type='footway'],
  [type='track'] {
    ::line { line-width:1; line-color:#fff; }
  }
  [type='unclassified'], [type='residential'],
  [type='service'], [type='road'], [type='living_street'] {
    ::case, ::bcase[bridge=1] { line-width:6+2; }
    ::fill, ::bfill[bridge=1] { line-width:6; }
  }
  [type='tertiary'], [type='tertiary_link'] {
    ::case, ::bcase[bridge=1] { line-width:7+2; }
    ::fill, ::bfill[bridge=1] { line-width:7; }
  }
  [type='secondary'], [type='secondary_link'] {
    ::case, ::bcase[bridge=1] { line-width:8+2; }
    ::fill, ::bfill[bridge=1] { line-width:8; }
  }
  [type='primary'], [type='primary_link'],
  [type='trunk_link'],
  [type='motorway_link'] {
    ::case, ::bcase[bridge=1] { line-width:9+2; }
    ::fill, ::bfill[bridge=1] { line-width:9; }
  }
  [type='trunk'],
  [type='motorway'] {
    ::case, ::bcase[bridge=1] { line-width:10+2; }
    ::fill, ::bfill[bridge=1] { line-width:10; }
  }
}

/* ==== RAILWAY =================================================== */

#rail_gen1[zoom>=8][zoom<=11],
#rail[zoom>11][zoom<=18],
 {
  line-color:@rail;
  line-dasharray:2,2;
  line-width:0.5;
  [tunnel=1] { line-opacity:0.5; }
  [zoom>9] { line-width:1; }
}

/* ==== AEROWAY =================================================== */

#aeroway[zoom>9] {
  line-color:@aeroway;
  line-cap:butt;
  line-join:miter;
  [type='runway'] {
    [zoom=10]{ line-width:1; }
    [zoom=11]{ line-width:2; }
    [zoom=12]{ line-width:3; }
    [zoom=13]{ line-width:5; }
    [zoom=14]{ line-width:7; }
    [zoom=15]{ line-width:11; }
    [zoom=16]{ line-width:15; }
    [zoom=17]{ line-width:19; }
    [zoom>17]{ line-width:23; }
  }
  [type='taxiway'] {
    [zoom=10]{ line-width:0.2; }
    [zoom=11]{ line-width:0.2; }
    [zoom=12]{ line-width:0.2; }
    [zoom=13]{ line-width:1; }
    [zoom=14]{ line-width:1.5; }
    [zoom=15]{ line-width:2; }
    [zoom=16]{ line-width:3; }
    [zoom=17]{ line-width:4; }
    [zoom>17]{ line-width:5; }
  }
}
#aeroway::pattern[zoom>14] {
/* multiple zoom level filters are required to workaround Carto 
 * attachment-ordering misbehavior. */
  [type='runway'][zoom>14] {
    line-color:rgb(80,80,80);
    line-cap:butt;
    line-dasharray:2,2;
  }
}
