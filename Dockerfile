###################################################
#   Agda
###################################################

# Note: Give your Docker instance 4 CPUs and 8GB RAM minimum or the build may randomly fail

ARG JEKYLL_STACK_IMAGE=ednutting/jekyll-haskell-stack:latest

FROM $JEKYLL_STACK_IMAGE

RUN apk add icu-libs
ENV PATH=/root/.local/bin:$PATH

# Download Agda
WORKDIR /
ARG AGDA_VERSION="2.6.1"
RUN echo "Installing Agda version: ${AGDA_VERSION}"
RUN git clone --branch "release-${AGDA_VERSION}" https://github.com/agda/agda.git

# Install Agda
WORKDIR /agda
RUN cp stack-8.6.5.yaml stack.yaml
RUN stack install
