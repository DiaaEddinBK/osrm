
FROM osrm/osrm-backend:v5.25.0 as RUNTIME
COPY --from=BUILD /data/gcc-states-latest.osm.pbf /data/
RUN osrm-extract -p /opt/car.lua /data/gcc-states-latest.osm.pbf