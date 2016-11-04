# spatial-dataviz-for-data-scientists
A two day class for introducing concepts and modern tools of geospatial data visualization to data scientists.

These workshops are designed to be very hands-on, with many examples that can be extended as exercises. However, we know it would be impossible to go in-depth with everything that we could find interesting in web mapping! So our goal is to give you a good understanding of the mapping landscape, with some concrete experience with some key mapping tools. The hope is that after going through these examples in class and on your own you will feel empowered to swap in your own data and leverage hundreds of examples in your own data visualization projects!

## Day 1
Covers the basics of web mapping, commonly used geospatial data structures for the web, and a range of options for how to create interactive spatial data Visualizations. Day one will leave you in good shape for diving deeper into interactively visualizing spatial data on the web.

### Part 0: Anatomy of a Web Map
Introduction to tiled maps and web friendly geospatial data structures.

![anatomy slide](https://raw.githubusercontent.com/stamen/spatial-dataviz-for-data-scientists/master/images/anatomy-of-a-web-map.png)


### Part 1: Hands on with Leaflet.JS & MapboxGL.JS
[Leaflet.JS](http://leafletjs.com) is a well known javascript library that allows for creating highly customized interactive web maps. We will demonstrate how get up and running with Leaflet by adding a Tile Layer and GeoJSON Layer. We will also take a quick look at MapboxGL and Mapzen's Tangram, tools that allow for utilizing the CPU graphics card to improve performance and expand what's capable with web mapping.

#### Getting your first Leaflet map working with [Blockbuilder.org](http://blockbuilder.org)

- Example 1: Create a bl.ock, load [Leaflet starter](http://blockbuilder.org/almccon/6d632572739217d2804fd2d429b9fa23)

- Example 2: Change tile provider. [Leaflet starter (Toner basemap)](http://bl.ocks.org/almccon/48ad757db4c4be5fee5cf046df0d94bc)

- Example 3: [Leaflet with scale bar and URL hash](http://bl.ocks.org/almccon/0dff3feb062c11c88b8cc150aef60235) using plugins.

- Example 4: [Leaflet starter with GeoJSON overlay](http://bl.ocks.org/almccon/89c3b7da30f8686d3777fdeb65d73250)

- Example 5: [Leaflet with GeoJSON styling and interaction](http://bl.ocks.org/almccon/5ec33135bea51edfe17c32f1331c5182)

  Observe the stark difference between the raster _basemap_ and the vector data _overlay_. These two parts of the map are created differently, they behave differently, and the even _look_ different! For a long time this is what all web maps were like. But from here on out we'll see how the boundaries between basemap and overlay are starting to blur:

#### Basemaps (and overlays) in the world of WebGL

- Quick demo of MapboxGL (compare to leaflet w/ same data): Example 6: [MapboxGL vs Leaflet](http://bl.ocks.org/lewis500/4bfd4c87cbb3f17661e6414a910ff89c)

- Tangram is another GL-based renderer. Example 7: [Tangram simple demo](http://bl.ocks.org/almccon/65cdd4aef3f6e5884e8217fcc95efbf2)

### Part 2: Hands on with CARTO Builder & Leaflet
[CARTO](https://carto.com) is a web based platform for analyzing and visualizing spatial data. The new CARTO [Builder](https://carto.com/builder/) platform (being rolled out this month!) is a revamp of their previous Editor and allows users to perform complex spatial analysis, create widgets, and share maps without having to write a line of code. CARTO has a suite of API's which makes it a great "backend" for data visualizations on the web, allowing developers to leverage SQL, PostGIS, and CartoCSS in their web applications. We will give a brief tour of the platform and demonstrate how to incorporate data ("tables") from CARTO into Leaflet.

#### Introduction to CARTO:
- Dashboard overview
- Data vs. Maps views
- [Data Library](https://carto.com/data-library)
- [Data Observatory](https://carto.com/data-observatory/)
- Widgets & Analysis
- Exporting Data
- Integrating the CARTO SQL API with Leaflet
- Creating a Leaflet `tileLayer` from a CARTO table
- Resources for [learning more](https://carto.com/learn/guides)

#### Integrating CARTO with Leaflet
Using [Carto.JS](https://carto.com/docs/carto-engine/carto-js/getting-started/) and the [Carto SQL API](https://carto.com/docs/carto-engine/sql-api/making-calls/) we can load data from a table located in CARTO into a Leaflet map.

- Example 1: [Loading GeoJSON from a Carto Table](http://bl.ocks.org/clhenrick/31196ab4b71d444582b7f8a6535f4c7c)

- Example 2: [Loading a Carto Table as a TileLayer](http://bl.ocks.org/clhenrick/c07d946c3e5f982bc7afadc79b0c5716)

- Example 1 extended: [Advanced GeoJSON usage](http://bl.ocks.org/clhenrick/59513f45bc99bf40ba55de923c490f09)

- Example 2 extended: [Advanced Carto TileLayer usage](http://bl.ocks.org/clhenrick/cd1a348eec8474cb2fca1b503c82f6c1)

### Part 3: Hands on with D3.JS

[D3.js](http://d3js.org) is a client-side javascript visualization and mapping library that differs from Leaflet and CARTO in many fundamental ways. Rather than relying on raster map tiles rendered on a server, D3 draws geometries in the browser using SVG or canvas. In the final section of today's workshop, we'll explore some of the possibilities that D3 opens up.

#### Your first D3 map (GeoJSON in D3)

- Example 1: [D3 map demo](http://bl.ocks.org/almccon/6ab03506d2e3ff9d843f69fa2d5c29cf)

#### TopoJSON
Before we get too far into D3 mapping we need to talk about [TopoJSON](https://github.com/mbostock/topojson), which is an extension of GeoJSON that encodes topology. One of the biggest benefits of this is that file sizes can be significantly smaller.

A couple tools that can be used to orient yourself with TopoJSON files:
- [Inspect TopoJSON](http://blockbuilder.org/enjalot/63d06e2ccadad0cb30dc5f920efd1cdf)
- [Preview TopoJSON](http://blockbuilder.org/enjalot/fe2a8ee0ad59a58ce295f035419d9e63)

- Example 2: [D3 with TopoJSON](http://bl.ocks.org/almccon/410b4eb5cad61402c354afba67a878b8)

You can create TopoJSON using the command line tools, or using a tool like [MapShaper](http://www.mapshaper.org/), which also gives you the ability to _generalize_ your shapes. Generalizing reduces the level of detail in your data, which makes for smaller file sizes, and is often desirable for more elegant and visually pleasing maps.

- Example 3: [Generalizing in MapShaper](http://bl.ocks.org/almccon/0af7228853c736f467cae8a9b906b008)

#### Map projections in D3

[Map projections](https://en.wikipedia.org/wiki/Map_projection) are an important concept, and we need at least a basic grasp
of how they work to make the kinds of [custom maps](https://hi.stamen.com/an-ode-to-d3-js-projections-9d6477d6da0b#.bemxsm2j1) that showcase the power of D3.

One point we need to emphasize is that projections introduce distortion,
to get a sense for how different projections distort the geometry of the earth play with [this example](http://blockbuilder.org/enjalot/bd552e711b8325c64729):

Modify our Example 1 to use one of D3's [many other projections](https://github.com/d3/d3/blob/master/API.md#projections).

- Example 4: [D3 map using Winkel Tripel projection](http://bl.ocks.org/almccon/7cba55415b3bc19e1f383043746756f2)

#### Choosing a projection
Unless you are using a tiled basemap, you should choose an appropriate projection based on the needs of your visualization:
- If you're making a choropleth (we'll talk about these later), use an equal area projection.
- Map of the US, use Albers USA which has built-in sub-projections for Alaska and Hawaii!
- Say, California, use EPSG:3310 California Albers
- Map of the world, consider a Winkel Tripel (although it's not an equal area projection)
- For a city, maybe it doesn't matter if you use Mercator.

Now that we've seen a variety of projections, why do tiled web maps use Mercator? For one thing the whole world fits (almost) perfectly in the square [zoom 0 tile](http://maps.stamen.com/toner/#0/0/0). All other tiles are subdivisions of this one.

[<img src="images/toner-zoom0.png">](http://maps.stamen.com/toner/#0/0/0)

#### Projection codes, and how to use them in CARTO and PostGIS
Note: D3 is convenient and it gives all these projections _names_, but if you're using anything other than D3, you might need to know your projection's [EPSG code](http://epsg.io).

A few you might memorize after a while:
  * [EPSG:4326](http://epsg.io/4326) "unprojected" latitude / longitude (a "geographic" projection)
  * [EPSG:3857](http://epsg.io/3857) Web ("Google") Mercator  (old docs will use EPSG:900913)
  * [EPSG:2163](http://epsg.io/2163) [US National Atlas Azimuthal Equal Area](http://bl.ocks.org/mbostock/5050837)
  * [EPSG:3310](http://epsg.io/3310) [California Albers](http://bl.ocks.org/mbostock/5557726)

Finally, we can switch back to CARTO and put these projection codes to work: With [the right PostGIS query](https://mappingmashups.carto.com/viz/2421c766-1305-11e6-a981-0ecd1babdde5/public_map) we are able to use raster tiles in non-Mercator projections! Just don't try to overlay them with any other raster maps!

```
SELECT ST_Transform(the_geom, 2163) AS the_geom_webmercator FROM tablename
```

For more information about projections in CARTO, see [Free Your Maps From Web Mercator](https://carto.com/blog/free-your-maps-web-mercator/)



## Day 2

(we may modify this based on specific interests and progress from Day 1)

### Choropleths, Classification, Analysis

- Spatial analysis queries in SQL

- Styling with CartoCSS in CARTO

- Classification in D3.js

### Advanced D3

- Streaming data

- Voronois

- Simulation/Modeling?

### Advanced tiled maps

- Vector tiles

- Tippecanoe and tile-reduce
