/* Palette */
@motorway_fill: #fd923a;
@motorway_line: desaturate(darken(@motorway_fill,15),15);
@trunk_fill:    #ffc345;
@primary_fill:  #fffd8b;
@secondary_fill:#fffd8b;
@standard_fill: #fff;
@rail:          #777;

#motorway_line[type='motorway'] {
  [zoom>9] { line-color:@motorway_line; }
  [zoom=10]{ line-width:1.5 + 1.6; }
  [zoom=11]{ line-width:1.5 + 1.6; }
}
#motorway_fill[type='motorway'] {
  [zoom>9] { line-color:@motorway_fill; }
  [zoom=10]{ line-width:1.5; }
  [zoom=11]{ line-width:1.5; }
}

/* ---- RAILWAY ---- */

#rail {
  line-color:@rail;
  line-dasharray:2,2;
}