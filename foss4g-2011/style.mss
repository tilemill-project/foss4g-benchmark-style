/* ---- PALETTE ---- */

/* Landuse areas, etc */
@building:#d1d0cd;
@forest:  #c4d0bc;
@land:    #f2efe9;
@park:    #b5d29c;
@water:   #99b3cc;

Map { background-color:@water; }

#land { polygon-fill:@land; }

#landuse[type='forest'] { polygon-fill:@forest; }
#landuse[type='park'] { polygon-fill:@park; }

#border[adm0='US']{
  line-opacity: 0.5;
}