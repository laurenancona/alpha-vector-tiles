//
//   City of Philadelphia Base Vector Tiles [draft] 
//   created 3/20/15 | Lauren S. Ancona | lauren.ancona@phila.gov

//   for use with alpha.phila.gov
//   see http://cityofphiladelphia.github.io/patterns 

/*--------------------------------------------------------------*/

// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';
@house_num: '[house_num]';

// Fonts // 
// TODO: needs official alpha secondary typeface

@sans: 'Source Sans Pro Regular';
@sans_italic: 'Source Sans Pro Italic';
@sans_bold: 'Source Sans Pro Semibold';
@montserrat-regular-webfont: 'Montserrat Regular';
@montserrat-regular-webfont: 'Montserrat Bold';

// Alpha pattern colors // 

@ben-franklin-blue: #027ea4;
@bell-yellow: #f2ba13;
@white: #fff;
@ghost-gray: #f1f3f1;
@whitesmoke: #edf4f7;
@geyser: #dbe1e3;
@manatee: #9299A5;
@mine-shaft: #353535;
@black: #000000;

// Common Colors //

@land: #fff;
@water: #027ea4;
@accent: #f2ba13;

// Constants //

Map { background-color: @land;
      font-directory: url("fonts/");
}

// Textures //



// Political boundaries //
#admin[admin_level=2][maritime=0] {
  line-join: round;
  line-color: @geyser;
  line-width: 1.4;
  [zoom>=6] { line-width: 2; }
  [zoom>=8] { line-width: 4; }
  [disputed=1] { line-dasharray: 4,4; }
}

// Water Features //

#water {
  polygon-fill: @water;
  polygon-gamma: 0.6;
}

#waterway {
  [type='river'],
  [type='canal'] {
    line-color: @water;
    line-width: 0.5;
    [zoom>=12] { line-width: 1; }
    [zoom>=14] { line-width: 2; }
    [zoom>=16] { line-width: 3; }
  }
  [type='stream'] {
    line-color: @water;
    line-width: 0.5;
    [zoom>=14] { line-width: 1; }
    [zoom>=16] { line-width: 2; }
    [zoom>=18] { line-width: 3; }
  }
}

// Curbs //

#philadelphiacurbedges201201 [zoom>=16] {
   line-color: @geyser;
   line-opacity: 1;
}

// Buildings //

 #buildingfootprints { [zoom>=14]{
  line-color: @manatee;
  line-width: 0.8;
 // building-height: 1;
 //  building-fill: #f1f3f1;
//  building-fill-opacity:1;
  [zoom>=12] {
    line-width: 0.4;
    line-opacity: 0.4;
    }
  }
}

#building [osm_id=3000000296483] {
  polygon-fill: @bell-yellow;
}

// Landuse //

#landuse [class='park'] {
//   polygon-fill: @bell-yellow;
//   polygon-opacity: 0.8;
   polygon-pattern-file: url("images/squairy_light_@2X.png");
//   direct-image-filters: colorize-alpha(yellow);
}

// Terrain //

//#hillshade {
//  polygon-opacity: 0.3;
//  [class='shadow'] { polygon-fill: #234; }
//  [class='highlight'] { polygon-fill: white; }
//}

//#contour {
//  line-width: 0.3;
//  line-opacity: 0.5;
//  line-dasharray: 1,0,0,0,1;
//  line-color: @ghost-gray;
//}

