FROM ubuntu:16.04
MAINTAINER Paul Manninger, paul.manninger@inspection.gc.ca

#Environmental Variables/Paths
ENV DEBIAN_FRONTEND interactive
ENV PATH="/centrifuge/:${PATH}"
ENV TERM=xterm

RUN apt-get update -y
RUN apt-get install -y build-essential
RUN apt-get install -y wget 
RUN apt-get install -y zip
RUN apt-get install -y bash
RUN apt-get install -y python
RUN apt-get install -y make
RUN apt-get install -y nano
RUN apt-get install -y ncbi-blast+

		
#Download Centrifuge
RUN wget https://github.com/infphilo/centrifuge/archive/v1.0.4-beta.zip
RUN unzip v1.0.4-beta.zip -d /
RUN mv centrifuge-1.0.4-beta centrifuge
RUN rm v1.0.4-beta.zip
RUN make
