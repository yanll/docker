echo 'build start'
docker build -f Dockerfile -t techforge/baseos:beta .
echo 'build success'
#docker run --name baseos -i -t -v /usr/local/software/:/mnt/software/ techforge/baseos:beta /bin/bash

