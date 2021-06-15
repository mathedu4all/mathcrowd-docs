# Sphinx Docker image
# ==============================================

FROM ubuntu

# Using local apt-cacher
RUN echo 'Acquire::http { Proxy "http://192.168.10.159:3142"; };' >> /etc/apt/apt.conf.d/01proxy

RUN apt-get update && \
    apt-get -y install ca-certificates  gnupg2 && \
    apt-key update

RUN apt-get -y install make python3 python3-pip

RUN ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

WORKDIR /opt

COPY . /opt

RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple  -r /opt/requirements.txt


CMD ["make", "html"]