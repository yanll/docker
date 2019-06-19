echo 'build start'

docker build -f Dockerfile -t techforge/baseos:beta .

echo 'build success'
