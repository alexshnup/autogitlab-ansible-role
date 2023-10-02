docker build -t docker-python3:24.0.2-dind .
docker pull gitlab/gitlab-ce:latest
docker save gitlab/gitlab-ce | gzip > molecule/files/gitlab-ce.tar.gz
docker pull gitlab/gitlab-runner:latest
docker save gitlab/gitlab-runner | gzip > molecule/files/gitlab-runner.tar.gz