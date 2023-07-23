FROM mcr.microsoft.com/devcontainers/base:jammy

RUN . /etc/os-release \
    && apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get install -y  \
        build-essential \
        ccache \
        clang \
        curl \
        file \
        g++-multilib \
        gawk \
        gcc-multilib \
        gettext \
        git \
        libdw-dev \
        libelf-dev \
        libncurses5-dev \
        locales \
        pv \
        pwgen \
        python3 \
        python3-pip \
        qemu-utils \
        rsync \
        signify-openbsd \
        subversion \
        sudo \
        swig \
        unzip \
        wget \
        zlib1g-dev \
    && apt-get -y autoremove && apt-get clean -y && rm -rf /var/lib/apt/lists/*

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>

# [Optional] Uncomment if you want to install an additional version of node using nvm
# ARG EXTRA_NODE_VERSION=10
# RUN su node -c "source /usr/local/share/nvm/nvm.sh && nvm install ${EXTRA_NODE_VERSION}"

# [Optional] Uncomment if you want to install more global node modules
# RUN su node -c "npm install -g <your-package-list-here>"

