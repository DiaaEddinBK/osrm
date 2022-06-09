
FROM osrm/osrm-backend:v5.25.0 as RUNTIME
COPY --from=osrm-pbf-files /data/arabs-latest.osm.pbf /data/
RUN osrm-extract -p /opt/foot.lua /data/arabs-latest.osm.pbf
RUN osrm-partition /data/arabs-latest.osm.pbf
RUN osrm-customize /data/arabs-latest.osm.pbf
ENTRYPOINT [ "osrm-routed" , "--algorithm" , "mld", "/data/arabs-latest.osrm"]
