FROM debian
MAINTAINER K4ch0w
WORKDIR /lfs
COPY check check/
COPY start.sh start.sh
RUN apt-get update && apt-get install -y   bash bzip2 gawk gcc g++ m4 make patch g++ coreutils diffutils findutils perl sed tar  flex bison  xz-utils texinfo && ln -sf bash /bin/sh
CMD [ "start.sh ]
