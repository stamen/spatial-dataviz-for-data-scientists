# spatial-dataviz-for-data-scientists
A two day class for introducing concepts and modern tools of geospatial data visualization to data scientists.

These workshops are designed to be very hands-on, with many examples that can be extended as exercises. However, we know it would be impossible to go in-depth with everything that we could find interesting in web mapping! So our goal is to give you a good understanding of the mapping landscape, with some concrete experience with some key mapping tools. The hope is that after going through these examples in class and on your own you will feel empowered to swap in your own data and leverage hundreds of examples in your own data visualization projects!

## Day 1
Covers the basics of web mapping, commonly used geospatial data structures for the web, and a range of options for how to create interactive spatial data Visualizations. Day one will leave you in good shape for diving deeper into interactively visualizing spatial data on the web.

### Anatomy of a Web Map
Introduction to tiled maps and web friendly geospatial data structures.

![anatomy slide](https://raw.githubusercontent.com/maptime/anatomy-of-a-web-map/gh-pages/images/anatomy-of-a-web-map.png)


### Hands on with Leaflet.JS & MapboxGL.JS
[Leaflet.JS](http://leafletjs.com) is a well known javascript library that allows for creating highly customized interactive web maps. We will demonstrate how get up and running with Leaflet by adding a Tile Layer and GeoJSON Layer. We will also take a quick look at MapboxGL and Mapzen's Tangram, tools that allow for utilizing the CPU graphics card to improve performance and expand what's capable with web mapping.

- Getting your first Leaflet map working with [Blockbuilder.org](http://blockbuilder.org). Example 1: [Leaflet starter](http://blockbuilder.org/almccon/6d632572739217d2804fd2d429b9fa23)

- Loading tiles

- GeoJSON

- Quick demo of MapboxGL (compare to leaflet w/ same data)

- Tangram

### Hands on with CARTO Builder & Leaflet
[CARTO](https://carto.com) is a web based platform for analyzing and visualizing spatial data. The new CARTO [Builder](https://carto.com/builder/) platform (being rolled out this month!) is a revamp of their previous Editor and allows users to perform complex spatial analysis, create widgets, and share maps without having to write a line of code. CARTO has a suite of API's which makes it a great "backend" for data visualizations on the web, allowing developers to leverage SQL, PostGIS, and CartoCSS in their web applications. We will give a brief tour of the platform and demonstrate how to incorporate data ("tables") from CARTO into Leaflet.

#### Introduction to CARTO:
- Dashboard overview
- Data vs. Maps views
- Data Library
- Data Observatory
- Widgets & Analysis
- Exporting Data
- Integrating the CARTO SQL API with Leaflet
- Creating a Leaflet `tileLayer` from a CARTO table

#### Integrating CARTO with Leaflet
Using Carto.JS and the Carto SQL API we can load data from a table in Carto into a Leaflet map.

- Example 1: [Loading GeoJSON from a Carto Table](http://bl.ocks.org/clhenrick/31196ab4b71d444582b7f8a6535f4c7c)

- Example 2: [Loading a Carto Table as a TileLayer](http://bl.ocks.org/clhenrick/c07d946c3e5f982bc7afadc79b0c5716)

- Example 1 extended: [Adding Interactivity to GeoJSON Layer](http://bl.ocks.org/clhenrick/59513f45bc99bf40ba55de923c490f09)

### Hands on with D3.JS

- GeoJSON & TopoJSON

- Map projections

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
