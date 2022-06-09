docker build osm-downloads -t osrm-pbf-files

docker build osrm-car -t osrm-car 
docker build osrm-bicycle -t osrm-bicycle 
docker build osrm-foot -t osrm-foot 

echo "done"
