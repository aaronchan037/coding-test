cd coding
echo "########### pdflatex ###########"
pdflatex test.tex && pdflatex test.tex
echo "########### lualatex ###########"
lualatex simple.tex && lualatex simple.tex

echo "########### Python3 ###########"
python3 test.py



# docker
# 在线拉取镜像
docker pull texlive/texlive:latest
# 离线导入
docker load -i texlive.tar


mkdir -p /mnt/test
# Test pdflatex
docker run -v /mnt/test:/work -w /work texlive/texlive:latest pdflatex test.tex
# Test xelatex
docker run -v /mnt/test:/work -w /work texlive/texlive:latest xelatex simple.tex
# Test lualatex
docker run -v /mnt/test:/work -w /work texlive/texlive:latest lualatex simple.tex


# 启动并以交互式进入容器
docker run -it -v /mnt/test:/work -w /work texlive/texlive:latest /bin/bash

docker exec -it <ID> /bin/bash


# 运行docker-compose
docker-compose up