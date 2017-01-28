FROM gliderlabs/alpine
MAINTAINER K4ch0w
WORKDIR /lfs
COPY sources sources/
COPY start.sh start.sh
RUN apk add --no-cache bash binutils bison bzip2 coreutils diffutils findutils gawk gcc g++ glibc grep gzip m4 make patch perl sed tar texinfo xz
CMD [ "start.sh ]
