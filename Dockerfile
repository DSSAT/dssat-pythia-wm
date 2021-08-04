from debian:buster-slim

# Gotta love base issues
RUN sed -i "s/^exit 101$/exit 0/" /usr/sbin/policy-rc.d && \
apt update && \
apt install -y --no-install-recommends sudo git curl build-essential gfortran cmake \
python3 python3-pip \
r-base libcurl4-openssl-dev libgdal-dev libudunits2-dev libssl-dev


# Add the default clouseau user
RUN useradd --home-dir /home/clouseau --groups sudo --no-log-init --create-home --user-group --shell /bin/bash clouseau && \
mkdir /userdata && mkdir /data && \
chown clouseau /opt && chown clouseau /data && chown clouseau /userdata
# echo 'clouseau ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# Add the root level scripts
RUN curl --create-dirs -o /usr/local/bin/load_kenya https://data.agmip.org/darpa/load_kenya.sh && \
curl --create-dirs -o /usr/local/bin/load_ethiopia https://data.agmip.org/darpa/load_ethiopia.sh && \
curl --create-dirs -o /usr/local/bin/pipeline https://data.agmip.org/darpa/pipeline.sh && \
chmod 755 /usr/local/bin/load_kenya && chown clouseau /usr/local/bin/load_kenya && \
chmod 755 /usr/local/bin/load_ethiopia && chown clouseau /usr/local/bin/load_ethiopia && \
chmod 755 /usr/local/bin/pipeline && chown clouseau /usr/local/bin/pipeline 

USER clouseau
WORKDIR /home/clouseau

# Install DSSAT
RUN mkdir /home/clouseau/src && cd /home/clouseau/src && \
git clone https://github.com/DSSAT/dssat-csm-os && \
cd dssat-csm-os && git checkout 3ccad41098ac7c7a162f1d463bd09c82e8931845 -b 4.7.5.42 && \
mkdir build && cd build && cmake -DCMAKE_INSTALL_PREFIX=/opt/dssat -DCMAKE_BUILD_TYPE=RELEASE .. && \
make && make install

# Install pythia
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/install-poetry.py | python3 - && \
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc && \
export PATH="$HOME/.local/bin:$PATH" && \
cd /home/clouseau/src && git clone https://github.com/DSSAT/pythia && cd pythia && \
git checkout develop && \
poetry build && cd dist && pip3 install --user pythia-2.0.0b0-py3-none-any.whl

# Install pythia-analytics
RUN cd /opt && git clone https://github.com/DSSAT/supermaas-aggregate-pythia-outputs pythia-analytics && \
cd pythia-analytics && git checkout develop && Rscript install-deps-lite.R

# Download the base data to the image
RUN curl --create-dirs -o $HOME/downloads/global-base-latest.tar.bz2 https://data.agmip.org/darpa/global-base-latest.tar.bz2 && \
cd /data && tar xjvf $HOME/downloads/global-base-latest.tar.bz2


