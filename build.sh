echo 'build start'

docker build -f dockerfiles/Dockerfile -t techforge/baseserver:1.0.0-SNAPSHOT .

echo 'build success'