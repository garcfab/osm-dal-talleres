@roads: #52afd4;

#roads[highway!='cycleway'][zoom>9] {
  line-width:1;
  //line-color:#3ec8ff;
  line-color:@roads;
  [zoom=10]{
    line-width:.25;
    line-opacity:.25;
  }
  [zoom=11]{
    line-width:.45;
    line-opacity:.5;
  }
  [zoom=12]{
    line-width:.5;
    line-opacity:.75;
  }
  [zoom=13]{ line-width:.75;}
  [zoom=14]{ line-width:1;}
  [zoom=15]{ line-width:2;}
  [zoom=16]{ line-width:3;}
  [highway='footway']{line-dasharray:4,2;}
  [highway='railway']{line-width:1; line-dasharray:4,2;}
}


#road-labels[zoom>=15][name!='PATH']{
  text-name:'[name]';
  text-face-name:'Futura Medium';
  text-size:11;
  text-placement:line;
  text-fill:#fff;
  text-halo-fill:@roads;
  text-halo-radius:1;
  text-character-spacing:1;
  }
