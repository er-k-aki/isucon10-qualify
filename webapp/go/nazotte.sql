SELECT
    *
FROM
    estate
WHERE
    latitude between ? and ?
    and
    longitude between ? and ?
    and ST_Contains(ST_PolygonFromText(%s), ST_GeomFromText(%s))
ORDER BY
    popularity DESC,
    id ASC
