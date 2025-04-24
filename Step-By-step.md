# Clone this repository to your personal github account
git clone git@github.com:saradufour/project_docker_microcredential.git

# Containerize training the machine learning model

command for image build
`docker build . --tag python-train-sd:v1.0.0 -f Dockerfile.train`


# Containerize serving of the machine learning model

command for image build
`docker build . --tag python-server-sd:v1.0.0 -f Dockerfile.infer`


# Train and run the machine learning model using Docker


command to run the docker image (train)
`docker run -v .:/my-workdir python-train-sd:v1.0.0`
output ot the docker run: Model training complete and saved as iris_model.pkl


# Run the Docker container serving the machine learning model

command to run the docker image (server)
`docker run --detach --name python_server_docker -p 4441:8080 -v .:/my-workdir python-server-sd:v1.0.0`

access the running docker locally via: http://127.0.0.1:4441/


# Store the Docker images on your personal account on Docker Hub

`docker images`
`docker login`
`docker tag python-server-sd:v1.0.0 saradufour/python-server-sd:v1.0.0`
`docker push saradufour/python-server-sd:v1.0.0`
`docker tag python-train-sd:v1.0.0 saradufour/python-train-sd:v1.0.0`
`docker push saradufour/python-train-sd:v1.0.0`


# Provide the resulting Dockerfiles in GitHub
`git add *`
`git commit -m "..."`

# Apptainer
see VSC folder in github repository

`sbatch docker-project.sh`
