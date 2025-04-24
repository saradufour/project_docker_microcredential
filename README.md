# Project Docker Microcredential
micro-credential VIB/UGent - Reproducible data analysis

In this project, you will train, run and serve a machine learning model using Docker. Furthermore, you will store the Docker images on your own account on Docker hub. Using the image of the training step, you will build an Apptainer image on the HPC of UGent.

## Deliverables

- [X] Clone this repository to your personal github account
- [X] Containerize training the machine learning model
- [X] Containerize serving of the machine learning model
- [X] Train and run the machine learning model using Docker
- [X] Run the Docker container serving the machine learning model
- [X] Store the Docker images on your personal account on Docker Hub
- [X] Provide the resulting Dockerfiles in GitHub
- [ ] Build an Apptainer image on a HPC of your choice
- [ ] Provide the logs of the slurm job in GitHub
- [ ] Document the steps in a text document in GitHub

## Proposed steps - containerize and run training the machine learning model

Complete file named `Dockerfile.train`

[X] Copy requirements.txt and install dependencies
[X] Copy train.py to the working directory
[X] Set the command to run train.py
[X] Run the training of the model on your computer
[X] Document the command as comment in the Dockerfile
[X] Store the created Dockerfile in your cloned github repository

## Proposed steps - containerize and serve the machine learning model

[X] Correct the order of the instructions in the Dockerfile.infer
[X] Document the steps in the Dockerfile.infer as comments
[X] Document the succesful `docker run` command in the Dockerfile.infer as a comment

## Proposed steps - store images on Dockerhub and build an Apptainer image on the HPC

[X] Create an account on Dockerhub
[X] Store the built images on your account
- Create a shell script on the HPC of your preference
- Store the shell script in your cloned github repository



