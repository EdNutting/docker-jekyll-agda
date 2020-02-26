###################################################
#   Agda
###################################################

FROM ednutting/jekyll-haskell-stack

RUN apk add icu-libs

ENV PATH=/root/.local/bin:$PATH

# Download and install Agda
WORKDIR /
RUN git clone https://github.com/agda/agda.git
WORKDIR /agda
RUN cp stack-8.6.5.yaml stack.yaml
RUN stack install
