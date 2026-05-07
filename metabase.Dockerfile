FROM eclipse-temurin:21-jdk-alpine-3.21 as runner

ARG METABASE_VERSION=v0.55.12
ENV FC_LANG en-US LC_CTYPE en_US.UTF-8

WORKDIR /app/

# install necessary packages
RUN apk update && apk upgrade && apk add --no-cache \
  ttf-dejavu \
  curl \
  bash \
  && rm -rf /var/cache/apk/* \
  && \
  # download version-pinned Metabase JAR
  curl -fsSL https://downloads.metabase.com/${METABASE_VERSION}/metabase.jar -o metabase.jar && \
  # download version-pinned run script
  curl -fsSL https://raw.githubusercontent.com/metabase/metabase/${METABASE_VERSION}/bin/docker/run_metabase.sh -o run_metabase.sh && \
  chmod +x run_metabase.sh && \
  # cleanup
  rm -rf /var/cache/apk/* && \
  chown -R nobody:nogroup /app

USER nobody

# expose the default runtime port
EXPOSE 3000

# set entry point to run the Metabase application
ENTRYPOINT ["/app/run_metabase.sh"]