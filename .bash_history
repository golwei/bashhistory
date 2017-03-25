hostname wpc
source  .bashrc 
apt update
curl -sSL http://get.docker.com |sh
curl -sSL https://get.daocloud.io/daotools/set_mirror.sh | sh -s http://f5e9332a.m.daocloud.io
service docker restart
docker pull golang
docker run --rm -it -v ~/go:/go -p 8080:8080 golang bash
docker pull mbrt/golang-vim-dev
docker pull mariadb
