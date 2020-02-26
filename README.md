# docker-jekyll-agda

Agda (using Haskell Stack, GHC 8.6.5) on jekyll/builder (on Alpine Linux)

See [ednutting/jekyll-agda on Docker](https://hub.docker.com/repository/docker/ednutting/jekyll-agda)

See my other repositories for GHC-Up, GHC and Stack on Jekyll/builder.

## Using this docker image

Don't `FROM` this image directly. You don't need to. You only need a subset of the files included
in this image in order to use `ghc`.

E.g.

```dockerfile
WORKDIR /

ENV PATH=/root/.local/bin:$PATH
COPY --from=ednutting/jekyll-agda /agda/.stack-work/install /agda/.stack-work/install
COPY --from=ednutting/jekyll-agda /root/.local/bin/agda /root/.local/bin/agda
```
