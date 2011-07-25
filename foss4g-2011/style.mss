/* Palette */
@land:    #f2efe9;
@water:   #99b3cc;
@park:    #b5d29c;
@building:#d1d0cd;

Map { background-color: @water; }

#land { polygon-fill: @land; }

#landuse[type='park'],
#landuse[type='meadow'] { polygon-fill: @park; }

#landuse { line-opacity: 0.5; }