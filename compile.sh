# To execute for compiling
# docker run -it -rm --name nameOfContainer -v "/path/to/project/to/compile:/path/in/container/to/store/project" -w /path/in/container/to/store/project (set working directory in the container) imageToRun cmdToExec
# docker run -it (as usualy)
# -rm (remove the container automatically when exit)
# --name nameOfContainer (as usually)
# -v "/path/to/project/to/compile:/path/in/container/to/store/project" (Bind mount a volume)
# -w /path/in/container/to/store/project (set working directory in the container)
# imageToRun (here eclairiuss/maven)
# cmdToExec (here mvn clean install)
docker run -it --rm --name my-maven-project -v "/home/eclairiuss/Documents/stage/training-java:/root/mymaven" -w /root/mymaven eclairiuss/maven mvn clean install
