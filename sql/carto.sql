--- These are sample SQL queries from CARTO demos, which you can run in the SQL Panel in the Data View.

--- Our tornado dataset has values for date and time, but they're strings.
--- we'll create a new column with a date-time (timestamp) data type so we can filter by date more easily
ALTER TABLE tornado ADD COLUMN date_time timestamp without time zone;

--- We can then populate our tornado data column "date_time" to valid date data types by
--- concatenating values from the columns "date" and "time".
UPDATE tornado SET date_time = ("date" || ' ' || "time")::timestamp without time zone

--- We can also create a column in SQL by doing something like:
ALTER TABLE tornado ADD COLUMN mag_cat text;

--- To populate values in our duplicate "mag" column do:
UPDATE tornado set mag_cat = mag::text

--- Check that both "mag" and "mag_cat" look the same:
SELECT mag, mag_cat FROM tornado_1 LIMIT 10

--- To work with the tornado data on your own computer, download the table as a CSV,
--- import into a local PostGIS enabled db, then update the geomery column
ALTER TABLE tornado
ALTER COLUMN the_geom TYPE geometry(MultiLineString, 4326)
USING ST_SetSRID(the_geom::geometry, 4326);
