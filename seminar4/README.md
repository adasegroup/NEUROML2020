# seminar-4

# GLM


1.First follow the instruction for geting the docker image:

https://miykael.github.io/nipype_tutorial/notebooks/introduction_docker.html

2.Clone this repository.

3.Run the container and mount the folder:

docker run -it --rm -p 8888:8888 -v /path_to_seminar-4:/home/neuro/nipype_tutorial/notebooks/seminar miykael/nipype_tutorial jupyter notebook 

#### Dataset:
* A test-retest fMRI dataset for motor, language and spatial attention functions https://www.openfmri.org/dataset/ds000114/
