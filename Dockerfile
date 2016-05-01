FROM alpine:3.1
COPY ansiweather ansiweather 
RUN apk add --update curl && \
    apk add jq && \
    apk add bc  

ENTRYPOINT ["./ansiweather"] 
