# docker-hub-demo

1. Clone this repository
2. `docker login`
3. `docker build -t username/reponame .` this will create an image based on the contents of `Dockerfile`
4. `docker run username/reponame` to test the image created in the previous step
5. `docker push username/reponame`
