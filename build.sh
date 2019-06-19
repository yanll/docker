echo 'build start'

docker build -t techforge/baseserver:1.0.0-SNAPSHOT -f dockerfiles/Dockerfile .

echo 'build success'