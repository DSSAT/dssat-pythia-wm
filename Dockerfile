FROM bitnami/minideb:bullseye

RUN install_packages build-essential gfortran cmake \
python3-pip python3-venv python3-setuptools python3-wheel python3-dev \
r-base libcurl4-openssl-dev libgdal-dev libudunits2-dev libssl-dev \
tmux vim-tiny git curl

# Install DSSAT
RUN cd /usr/local/src && \
git clone https://github.com/DSSAT/dssat-csm-os && \
cd dssat-csm-os && git checkout tags/v4.8.0.23hf2 -b 4.8.0.23hf2 && \
mkdir build && cd build && cmake -DCMAKE_INSTALL_PREFIX=/opt/dssat -DCMAKE_BUILD_TYPE=RELEASE .. && \
make && make install

RUN curl -sSL https://install.python-poetry.org/ | python3 - && \
cd /usr/local/src && \
git clone https://github.com/DSSAT/pythia && cd pythia && \
git checkout tags/2.1.6 -b 2.1.6 && \
/root/.local/bin/poetry build && cd dist && pip3 install pythia-2.1.6-py3-none-any.whl

# Install pythia-analytics
RUN cd /opt && git clone https://github.com/DSSAT/supermaas-aggregate-pythia-outputs pythia-analytics && \
cd pythia-analytics && git checkout 4062c972097b80ab62309e2d2cea1061264b3f5d -b dev1

# Copy large assets
RUN curl --create-dirs -o /usr/local/share/world-modelers/global-base-latest.tar.bz2 https://data.agmip.org/darpa/global-base-20220218.tar.bz2 && \
curl --create-dirs -o /usr/local/share/world-modelers/ethiopia-base-latest.tar.bz2 https://data.agmip.org/darpa/ethiopia-base-20220326-1.tar.bz2 && \
chmod 755 /usr/local/share/world-modelers

# Install dojo-scripts
RUN cd /usr/local/src && git clone https://github.com/DSSAT/dojo-scripts && \
cd dojo-scripts && git checkout fa49985927699bcfe3085632fba3c1e47d82f9a5 -b eth

# Symlink scripts into /usr/local/bin
RUN ln -s /usr/local/src/dojo-scripts/pipeline.sh /usr/local/bin/pipeline && \
ln -s /usr/local/src/dojo-scripts/update-image.sh /usr/local/bin/update-image && \
ln -s /usr/local/src/dojo-scripts/tag-images.sh /usr/local/bin/tag-images && \
ln -s /usr/local/src/dojo-scripts/fix-images.sh /usr/local/bin/fix-images
