FROM openjdk:17-jdk

RUN sed -i 's#http://deb.debian.org#https://mirrors.ustc.edu.cn#g' /etc/apt/sources.list
RUN sed -i 's|security.debian.org/debian-security|mirrors.ustc.edu.cn/debian-security|g' /etc/apt/sources.list
RUN apt-get update \
    && apt-get install -y procps wget net-tools telnet curl inetutils-ping vim fontconfig xfonts-utils \
    &&cd /usr/share/fonts/ \
    &&mkfontscale \
    &&mkfontdir \
    &&fc-cache

CMD java -version