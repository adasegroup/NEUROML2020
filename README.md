# seminar-4

GLM Seminar


1.First follow the instruction for geting the docker image:

https://miykael.github.io/nipype_tutorial/notebooks/introduction_docker.html

2.Then clone this repository.

3.Then run the container and mount the folder:

docker run -it --rm -p 8888:8888 -v /path_to_seminar-4:/home/neuro/nipype_tutorial/seminar miykael/nipype_tutorial jupyter notebook 