# syntax=docker/dockerfile:1.1.1-experimental
FROM maven:3.9.0
COPY . /src
WORKDIR /src
RUN rm -rf .git
RUN --mount=type=cache,target=/root/.m2,sharing=private mvn -B -ntp clean verify
