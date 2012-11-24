Map {
  background-color: #b8dee6;
}

#countries {
  ::outline {
    line-color: #85c5d3;
    line-width: 2;
    line-join: round;
  }
  polygon-fill: #fff;
}
 
#irapuatopolygons {
  [landuse='residential'] {
  	line-color:#ccc;
  	line-width:0.5;
    polygon-opacity:1;
    polygon-fill:#f5f5f5;
  }
}

#irapuatopoints {
  marker-width:6;
  marker-fill:#ff9099;
  marker-line-color:#d53d68;
  marker-allow-overlap:true;
}
