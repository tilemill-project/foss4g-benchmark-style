/* **************************************************************** */
/* FOSS4G 2011 WMS BENCHMARK STYLE FOR MAPNIK                       */
/* **************************************************************** */

/* ---- PALETTE ---- */

/* Landuse areas, etc */
@cemetery:  #d1d1d1;
@forest:    #c4d0bc;
@hospital:  #e5c6c3;
@land:      #f2efe9;
@park:      #b5d29c;
@parking:   #d1d0cd;
@school:    #ded2ac;
@water:     #99b3cc;

Map { background-color:@water; }

#land { polygon-fill:@land; }

#water_gen0[zoom>2][zoom<=9],
#water_gen1[zoom>9][zoom<=12],
#water[zoom>12] {
  polygon-fill:@water;
}

#landuse_gen1[type='cemetery'][zoom>9][zoom<=12],
#landuse[type='cemetery'][zoom>12] {
  polygon-fill:@cemetery;
}

#landuse_gen0[type='forest'][zoom>4][zoom<=9],
#landuse_gen1[type='forest'][zoom>9][zoom<=12],
#landuse[type='forest'][zoom>12] {
  polygon-fill:@forest;
}

#landuse_gen0[type='golf_course'][zoom>4][zoom<=9],
#landuse_gen1[type='golf_course'][zoom>9][zoom<=12],
#landuse[type='golf_course'][zoom>12],
#landuse_gen0[type='park'][zoom>4][zoom<=9],
#landuse_gen1[type='park'][zoom>9][zoom<=12],
#landuse[type='park'][zoom>12] {
  polygon-fill:@park;
}

#landuse_gen1[type='hospital'][zoom>9][zoom<=12],
#landuse[type='hospital'][zoom>12] {
  polygon-fill:@hospital;
}

#landuse_gen1[type='pitch'][zoom>9][zoom<=12],
#landuse[type='pitch'][zoom>12],
#landuse_gen1[type='school'][zoom>9][zoom<=12],
#landuse[type='school'][zoom>12],
#landuse_gen1[type='stadium'][zoom>9][zoom<=12],
#landuse[type='stadium'][zoom>12],
#landuse_gen1[type='university'][zoom>9][zoom<=12],
#landuse[type='university'][zoom>12] {
  polygon-fill:@school;
}

/* separate attachment to force z-order */
#landuse_gen1::parking[type='parking'][zoom>9][zoom<=12],
#landuse::parking[type='parking'][zoom>12] {
  polygon-fill:@parking;
}

#border[adm0='US']{
  line-opacity: 0.5;
}