# commands used 

docker run -d \
  --name my-gh-runner \
  -e GH_REPO_URL=https://github.com/kishan1988-hub/devops-upskill-log \
  -e GH_RUNNER_TOKEN=AQVU2LP7BIT3X4P237EU6P3INVKTA\
  -e GH_RUNNER_NAME=docker-runner-01 \
  gh-runner
# check for top process running in the container
docker top my-gh-runner
# images list
docker images
# remove existing image
docker rmi <image name>

# contineous monitor the container execution performance
docker stats <container running name>

# logging
docker logs <container name>

# remove container 
docker rm <container name>
