echo 'build start'

docker build -f dockerfiles/Dockerfile -t baseos:beta .

echo 'build success'