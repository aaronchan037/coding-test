docker load -i chanzz0_texlive.tar

docker run -it -v /mnt/install:/work --name debian chanzz0/debian /bin/bash


apt-get install p7zip-full
7z x texlive.iso -o iso


sudo mount -o loop texlive2024.iso /mnt/install/iso
docker run -it -e PATH="/usr/local/texlive/2024/bin/x86_64-linux:$PATH" -v /mnt/install:/work --name debian chanzz0/debian /bin/bash
cd /work
perl /work/iso/install-tl --profile=texlive.profile


