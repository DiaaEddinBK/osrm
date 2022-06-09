FROM ubuntu:22.10 as BUILD 
RUN apt update 
RUN apt install wget osmium-tool -y
WORKDIR /data
RUN wget https://download.geofabrik.de/asia/gcc-states-latest.osm.pbf
RUN wget https://download.geofabrik.de/asia/syria-latest.osm.pbf
RUN wget https://download.geofabrik.de/africa/egypt-latest.osm.pbf
RUN osmium merge gcc-states-latest.osm.pbf egypt-latest.osm.pbf syria-latest.osm.pbf -o arabs-latest.osm.pbf

