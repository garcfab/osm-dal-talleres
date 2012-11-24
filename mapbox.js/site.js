/* 
    Background
    http://mapbox.com/blog/2012-09-05-mapping-crowdsourced-locations-google-docs/
    http://developmentseed.org/blog/2012/sept/13/mapping-dynamic-data-google-spreadsheet/

    More examples http://mapbox.com/mapbox.js/examples/

*/

mapbox.auto('map', 'lxbarth.map-f3xswnpx', function(map) {
    map.ui.hash.add();
    mapbox.converters.googledocs('0ArzvFoWSNEwWdG1qY2VwREdXSnFhYUo5WHFQczAwYWc', 'od6', function(data) {

        // Create markers layer and add data.
        var markerLayer = mapbox.markers.layer();
        var interaction = mapbox.markers.interaction(markerLayer);
        interaction.formatter(function(feature) {
            var p = feature.properties;
            var o = '<a target="_blank" href="' + p.url + '">' +
                '<img src="' + p.picture + '" width="400">' +
                '<div class="by">' + p.date + ' ' + p.location + ' de ' + p.reporter + '</div>' +
                '<h2>' + p.title + '</h2>' +
                '</a>';

            return o;
        });
        map.addLayer(markerLayer);
        for (i in data) {
            data[i].properties['marker-size'] = 'medium';
            data[i].properties['marker-symbol'] = 'star-stroked';
            data[i].properties['marker-color'] = '00bcce';
        }
        markerLayer.features(data);
    });
});
