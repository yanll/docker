echo 'build start'

docker build -f Dockerfile -t techforge/baseos:beta .

echo 'build success'
echo 'os start'
docker run -i -t -v /usr/local/software/:/mnt/software/ techforge/baseos:beta /bin/bash

