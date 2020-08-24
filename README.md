[![taurelas](https://circleci.com/gh/taurelas/ndproject3.svg?style=svg)](https://circleci.com/gh/taurelas/ndproject3)

# A summary of the project
This is an example of operationalization of a ML app written in Flask for Nanodegree Project.

# Instructions
You can download or clone the code and run the code as follows

> make setup 
> make install
> make lint

> ./run_docker.sh

> ./make_prediction.sh

> ./upload_docker.sh

dependant on your system configuration you may need to precede the following command with `sudo`

> ./run_kubernetes.sh

> ./make prediction.sh

# A short explanation of the files in the repository.

Dockerfile - configuration of the ML app for Docker
Makefile - a make file that has the following recipes:
- `setup` to setup python virtual environment
- `install` to install and upgrade libraries as per the `requirements.txt` file
- `lint` to run linting of both the dockerfile and the web app

app.py - the actual web app
make_prediction.sh - script that calls the app's api on localhost port 80
run_docker.sh - script that builds the Docker image and launches it
upload_docker.sh - script that uplads the Docker image to Docker hub
run_kubernetes.sh - script that deploys the Docker image into Kubernetes
