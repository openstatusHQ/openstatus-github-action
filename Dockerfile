FROM alpine:3.21.3

RUN apk --no-cache add curl

WORKDIR /home/openstatus

COPY entrypoint.sh .

RUN  curl -o cli.tar.gz -L  https://github.com/openstatusHQ/cli/releases/latest/download/cli_Linux_x86_64.tar.gz

RUN tar -xf ./cli.tar.gz

ENTRYPOINT ["/home/openstatus/entrypoint.sh"]
