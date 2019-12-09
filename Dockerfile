ARG GCLOUD_VERSION="272.0.0-slim"

FROM google/cloud-sdk:${GCLOUD_VERSION}

RUN apt-get install software-properties-common dirmngr -y && \
    apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xF1656F24C74CD1D8 && \ 
    add-apt-repository -y "deb [arch=amd64] http://sfo1.mirrors.digitalocean.com/mariadb/repo/10.4/debian stretch main" && \
    apt-get clean && rm -rf /var/lib/apt/lists/*


RUN apt-get update && \
    apt-get install mariadb-server -y && \
    apt-get clean && rm -rf /var/lib/apt/lists/*