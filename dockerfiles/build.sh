echo 'build start'

docker build -f dockerfiles/Dockerfile -t techforge/baseos:beta .

echo 'build success'