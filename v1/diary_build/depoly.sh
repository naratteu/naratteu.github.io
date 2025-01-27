cd $(dirname "$0")

git clone https://github.com/naratteu/diary || (cd diary; git pull)

docker run --rm -it \
    -v $PWD/diary/public:/input \
    -v $PWD/../diary:/output \
    josercoelho/quartz npx quartz build -d /input -o /output
