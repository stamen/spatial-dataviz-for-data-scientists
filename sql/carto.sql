--- our tornado dataset has values for date and time, but they're strings.
--- we'll create a new column with a date-time (timestamp) data type so we can filter by date more easily
ALTER TABLE "stamen-builder".tornado ADD COLUMN date_time timestamp without time zone;

--- We can then populate our tornado data column "date_time" to valid date data types by
--- concatenating values from the columns "date" and "time".
UPDATE "stamen-builder".tornado SET date_time = ("date" || ' ' || "time")::timestamp without time zone

--- to work with the data on your own computer, download the table as a CSV, import into PostGIS, then update the geomery column
ALTER TABLE tornado ALTER COLUMN the_geom TYPE geometry(MultiLineString, 4326) USING ST_SetSRID(the_geom::geometry, 4326);
