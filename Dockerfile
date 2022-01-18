FROM nvidia/cuda:10.1-base
RUN apt update && apt install -y wget unzip curl bzip2 git python3-pip
RUN curl -LO http://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN bash Miniconda3-latest-Linux-x86_64.sh -p /miniconda -b
RUN rm Miniconda3-latest-Linux-x86_64.sh
ENV PATH=/miniconda/bin:${PATH}
RUN conda update -y conda
RUN conda install -y pytorch torchvision -c pytorch
RUN pip3 install dominate
RUN mkdir /workspace/
COPY . /workspace/
RUN cd /workspace/
WORKDIR /workspace
