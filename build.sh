echo 'build start'

docker build -f dockerfiles/Dockerfile -t baseserver:1.0.0-SNAPSHOT .

echo 'build success'