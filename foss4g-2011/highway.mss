/* ---- PALETTE ---- */

@motorway_fill: #fd923a;
@motorway_line: desaturate(darken(@motorway_fill,20),15);
@trunk_fill:    #ffc345;
@trunk_line:    desaturate(darken(@trunk_fill,20),15);
@primary_fill:  #fffd8b;
@primary_line:  #c7baa8;
@secondary_fill:#fffd8b;
@secondary_line:#c7baa8;
@standard_fill: #fff;
@standard_line: lighten(#c7baa8,5);
@rail:          #777;

/* ---- ROADS ---- */

/* Motorway */
#motorway_line[type='motorway'] {
  [zoom>6] { 
    line-color:@motorway_line;
    line-cap:round;
    line-join:round;
  }
  [zoom=7] { line-width:0.6 + 1; }
  [zoom=8] { line-width:0.8 + 1; }
  [zoom=9] { line-width:1.0 + 1; }
  [zoom=10]{ line-width:1.5 + 1.6; }
  [zoom=11]{ line-width:2 + 1.6; }
  [zoom=12]{ line-width:3 + 1.8; }
  [zoom=13]{ line-width:4 + 1.8; }
  [zoom=14]{ line-width:5 + 2; }
  [zoom=15]{ line-width:6 + 2; }
}
#motorway_fill[type='motorway'] {
  [zoom>6] { 
    line-color:@motorway_fill;
    line-cap:round;
    line-join:round;
  }
  [zoom=7] { line-width:0.6; }
  [zoom=8] { line-width:0.8; }
  [zoom=9] { line-width:1.0; }
  [zoom=10]{ line-width:1.5; }
  [zoom=11]{ line-width:2; }
  [zoom=12]{ line-width:3; }
  [zoom=13]{ line-width:4; }
  [zoom=14]{ line-width:5; }
  [zoom=15]{ line-width:6; }
}

/* Trunk */
#motorway_line[type='trunk'] {
  [zoom>6] {
    line-color:@trunk_line;
    line-cap:round;
    line-join:round;
  }
  [zoom=7] { line-width:0.6 + 1; }
  [zoom=8] { line-width:0.8 + 1; }
  [zoom=9] { line-width:1.0 + 1; }
  [zoom=10]{ line-width:1.2 + 1.6; }
  [zoom=11]{ line-width:1.8 + 1.6; }
  [zoom=12]{ line-width:2.5 + 1.8; }
  [zoom=13]{ line-width:3.5 + 1.8; }
  [zoom=14]{ line-width:4.5 + 2; }
  [zoom=15]{ line-width:5.5 + 2; }
}
#motorway_fill[type='trunk'] {
  [zoom>6] {
    line-color:@trunk_fill;
    line-cap:round;
    line-join:round;
  }
  [zoom=7] { line-width:0.6; }
  [zoom=8] { line-width:0.8; }
  [zoom=9] { line-width:1.0; }
  [zoom=10]{ line-width:1.2; }
  [zoom=11]{ line-width:1.8; }
  [zoom=12]{ line-width:2.5; }
  [zoom=13]{ line-width:3.5; }  
  [zoom=14]{ line-width:4.5; }
  [zoom=16]{ line-width:5.5; }
}

/* Primary */
#mainroad_line[type='primary'] {
  [zoom>8] {
    line-color:@primary_line;
    line-cap:round;
    line-join:round;
  }
  [zoom=9] { line-width:0.5 + 1; }
  [zoom=10]{ line-width:1.0 + 1; }
  [zoom=11]{ line-width:1.4 + 1.6; }
  [zoom=12]{ line-width:2.2 + 1.6; }
  [zoom=13]{ line-width:2.6 + 1.8; }
  [zoom=14]{ line-width:3 + 1.8; }
  [zoom=15]{ line-width:4 + 2; }
}
#mainroad_fill[type='primary'] {
  [zoom>8] {
    line-color:@primary_fill;
    line-cap:round;
    line-join:round;
  }
  [zoom=9] { line-width:0.4; }
  [zoom=10]{ line-width:1.0; }
  [zoom=11]{ line-width:1.4; }
  [zoom=12]{ line-width:2.2; }
  [zoom=13]{ line-width:2.6; }
  [zoom=14]{ line-width:3; }
  [zoom=15]{ line-width:4; }
}

/* Secondary */
#mainroad_line[type='secondary'] {
  [zoom>9] {
    line-color:@secondary_line;
    line-cap:round;
    line-join:round;
  }
  [zoom=10]{ line-width:0.8 + 1; }
  [zoom=11]{ line-width:1.0 + 1.6; }
  [zoom=12]{ line-width:1.6 + 1.8; }
  [zoom=13]{ line-width:1.8 + 1.8; }
  [zoom=14]{ line-width:2 + 1.8; }
  [zoom=15]{ line-width:3 + 2; }
}
#mainroad_fill[type='secondary'] {
  [zoom>9] {
    line-color:@secondary_fill;
    line-cap:round;
    line-join:round;
  }
  [zoom=10]{ line-width:0.8; }
  [zoom=11]{ line-width:1.0; }
  [zoom=12]{ line-width:1.6; }
  [zoom=13]{ line-width:1.8; }
  [zoom=14]{ line-width:2; }
  [zoom=15]{ line-width:3; }
}

/* Default */
#minorroad_line[type='residential'],
#minorroad_line[type='road'],
#minorroad_line[type='unclassified'],
#minorroad_line[type='unknown'] {
  [zoom>10]{
    line-color:@standard_line;
    line-cap:round;
    line-join:round;
  }
  [zoom=11]{ line-width:0.5; }
  [zoom=12]{ line-width:0.8; }
  [zoom=13]{ line-width:1.0; }
  [zoom=14]{ line-width:2 + 1.6; }
  [zoom=15]{ line-width:3 + 1.8; }
}
#minorroad_fill[type='residential'],
#minorroad_fill[type='road'],
#minorroad_fill[type='unclassified'],
#minorroad_fill[type='unknown'] {
  [zoom>13]{
    line-color:@standard_fill;
    line-cap:round;
    line-join:round;
  }
  [zoom=14]{ line-width:2; }
  [zoom=15]{ line-width:3; }
}

/* ---- RAILWAY ---- */

#rail {
  line-color:@rail;
  line-dasharray:2,2;
}