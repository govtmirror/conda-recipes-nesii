#!/usr/bin/env bash


DIMAGE=bekozi/nbuild-centos6

## UPDATE DOCKER IMAGE ##
#conda update --all
#yum -y update && yum clean all
#docker commit -m "Updated libraries" ekozi/nbuild-centos6 bekozi/nbuild-centos6
#docker push bekozi/nbuild-centos6

########################################################################################################################
## BUILD DOCKER IMAGE ##

#file=DockerFile
#docker build -t ${dimage} --file ${file} .

########################################################################################################################
docker pull ${DIMAGE}
docker run --cpuset-cpus=3 -it -v ~/l/project:/project ${DIMAGE} bash
