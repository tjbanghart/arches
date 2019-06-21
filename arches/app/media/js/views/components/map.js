define([
    'jquery',
    'underscore',
    'arches',
    'knockout',
    'mapbox-gl',
    'mapbox-gl-geocoder',
    'bindings/mapbox-gl',
    'bindings/sortable'
], function($, _, arches, ko, mapboxgl, MapboxGeocoder) {
    var viewModel = function(params) {
        var self = this;
        var geojsonSourceFactory = function() {
            return {
                "type": "geojson",
                "data": {
                    "type": "FeatureCollection",
                    "features": []
                }
            };
        };

        var x = params.x || arches.mapDefaultX;
        var y = params.y || arches.mapDefaultY;
        var zoom = params.zoom || arches.mapDefaultZoom;
        var bounds = params.bounds || arches.hexBinBounds;
        var sources = Object.assign({
            "resource": geojsonSourceFactory(),
            "search-results-hex": geojsonSourceFactory(),
            "search-results-hashes": geojsonSourceFactory(),
            "search-results-points": geojsonSourceFactory()
        }, arches.mapSources, params.sources);
        var mapLayers = params.mapLayers || arches.mapLayers;

        this.basemaps = [];
        this.overlays = ko.observableArray();
        this.activeBasemap = ko.observable();
        this.activeTab = ko.observable();
        this.hideSidePanel = function() {
            self.activeTab(undefined);
        };

        mapLayers.forEach(function(layer) {
            if (!layer.isoverlay) {
                self.basemaps.push(layer);
                if (layer.addtomap) self.activeBasemap(layer);
            }
            else {
                layer.opacity = ko.observable(layer.addtomap ? 100 : 0);
                layer.onMap = ko.pureComputed({
                    read: function() { return layer.opacity() > 0; },
                    write: function(value) {
                        layer.opacity(value ? 100 : 0);
                    }
                });
                self.overlays.push(layer);
            }
        });

        _.each(sources, function(sourceConfig) {
            if (sourceConfig.tiles) {
                sourceConfig.tiles.forEach(function(url, i) {
                    if (url.startsWith('/')) {
                        sourceConfig.tiles[i] = window.location.origin + url;
                    }
                });
            }
        });

        var multiplyStopValues = function(stops, multiplier) {
            _.each(stops, function(stop) {
                if (Array.isArray(stop[1])) {
                    multiplyStopValues(stop[1], multiplier);
                } else {
                    stop[1] = stop[1] * multiplier;
                }
            });
        };

        var updateOpacity = function(layer, val) {
            var opacityVal = Number(val) / 100.0;
            layer = JSON.parse(JSON.stringify(layer));
            if (layer.paint === undefined) {
                layer.paint = {};
            }
            _.each([
                'background',
                'fill',
                'line',
                'text',
                'icon',
                'raster',
                'circle',
                'fill-extrusion',
                'heatmap'
            ], function(opacityType) {
                var startVal = layer.paint ? layer.paint[opacityType + '-opacity'] : null;

                if (startVal) {
                    if (parseFloat(startVal)) {
                        layer.paint[opacityType + '-opacity'].base = startVal * opacityVal;
                    } else {
                        layer.paint[opacityType + '-opacity'] = JSON.parse(JSON.stringify(startVal));
                        if (startVal.base) {
                            layer.paint[opacityType + '-opacity'].base = startVal.base * opacityVal;
                        }
                        if (startVal.stops) {
                            multiplyStopValues(layer.paint[opacityType + '-opacity'].stops, opacityVal);
                        }
                    }
                } else if (layer.type === opacityType ||
                     (layer.type === 'symbol' && (opacityType === 'text' || opacityType === 'icon'))) {
                    layer.paint[opacityType + '-opacity'] = opacityVal;
                }
            }, self);
            return layer;
        };

        var layers = ko.pureComputed(function() {
            var layers = self.activeBasemap().layer_definitions.slice(0);
            self.overlays().forEach(function(layer) {
                if (layer.onMap()) {
                    var opacity = layer.opacity();
                    layer.layer_definitions.forEach(function(layer) {
                        layers.push(updateOpacity(layer, opacity));
                    });
                }
            });
            if (params.layers) {
                layers = layers.concat(ko.unwrap(params.layers));
            }
            return layers;
        }, this);

        this.mapOptions = {
            style: {
                version: 8,
                sources: sources,
                sprite: arches.mapboxSprites,
                glyphs: arches.mapboxGlyphs,
                layers: layers(),
                center: [x, y],
                zoom: zoom
            },
            bounds: bounds
        };

        this.toggleTab = function(tabName) {
            if (self.activeTab() === tabName) {
                self.activeTab(null);
            } else {
                self.activeTab(tabName);
            }
        };

        this.setupMap = function(map) {
            if (ko.isObservable(params.map)) params.map(map);

            map.addControl(new mapboxgl.NavigationControl(), 'top-left');
            map.addControl(new MapboxGeocoder({
                accessToken: mapboxgl.accessToken,
                mapboxgl: mapboxgl,
                placeholder: arches.geocoderPlaceHolder,
                bbox: bounds
            }), 'top-right');

            layers.subscribe(function(layers) {
                var style = map.getStyle();
                style.layers = layers;
                map.setStyle(style);
            });
        };
    };
    ko.components.register('arches-map', {
        viewModel: viewModel,
        template: {
            require: 'text!templates/views/components/map.htm'
        }
    });
    return viewModel;
});