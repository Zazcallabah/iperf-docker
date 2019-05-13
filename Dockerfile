FROM gcr.io/google-containers/ubuntu-slim:0.14

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt-get install -y --no-install-recommends curl sudo wget ca-certificates util-linux software-properties-common

RUN apt-get install -y --no-install-recommends iperf3

ENTRYPOINT ["iperf3" , "--port" , "22222" , "--server"]
