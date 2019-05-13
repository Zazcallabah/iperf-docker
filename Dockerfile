FROM alpine:latest

RUN apk add iperf3

ENTRYPOINT ["iperf3" , "--port" , "22222" , "--server"]
