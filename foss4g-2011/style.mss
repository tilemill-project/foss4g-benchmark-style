/* ---- PALETTE ---- */

/* Landuse areas, etc */
@forest:    #c4d0bc;
@hospital:  #e5c6c3;
@land:      #f2efe9;
@park:      #b5d29c;
@parking:   #d1d0cd;
@school:    #ded2ac;
@water:     #99b3cc;

Map { background-color:@water; }

#land { polygon-fill:@land; }

#water { polygon-fill:@water; }

#landuse[type='forest'] { polygon-fill:@forest; }

#landuse[type='golf_course'],
#landuse[type='park'] { polygon-fill:@park; }

#landuse[type='hospital'] { polygon-fill:@hospital; }

#landuse[type='pitch'],
#landuse[type='school'],
#landuse[type='stadium'],
#landuse[type='university'] { polygon-fill:@school; }

/* separate attachment to force z-order */
#landuse::parking[type='parking'] { polygon-fill:@parking; }

#border[adm0='US']{
  line-opacity: 0.5;
}