FROM amazoncorretto:11

RUN curl -s https://get.nextflow.io | bash
RUN chmod +x nextflow
RUN mv nextflow /usr/local/bin
RUN nextflow self-update

# set current working directory to /home/nf
WORKDIR /root

COPY ./script/tutorial.nf tutorial.nf