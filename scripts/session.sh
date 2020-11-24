#doitlive shell: /bin/bash
#doitlive speed: 2
#doitlive prompt: {nl}{dir} $

pip install mlcube-docker
git clone https://github.com/mlperf/mlcube_examples.git
cd mlcube_examples
ls
cd emdenoise
tree -P '*.yaml'
cat mlcube.yaml
cat platforms/docker.yaml
ls tasks
cat tasks/train.yaml
ls run
cat run/train.yaml
mlcube_docker run --mlcube=. --platform=platforms/docker.yaml --task=run/download.yaml
mlcube_docker run --mlcube=. --platform=platforms/docker.yaml --task=run/preprocess.yaml
mlcube_docker run --mlcube=. --platform=platforms/docker.yaml --task=run/train.yaml
mlcube_docker run --mlcube=. --platform=platforms/docker.yaml --task=run/test.yaml
tree workspace
clear

