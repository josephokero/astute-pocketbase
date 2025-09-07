FROM alpine:latest
WORKDIR /pb
ADD ./pocketbase /pb/pocketbase
RUN chmod +x /pb/pocketbase
EXPOSE 8090
CMD ["./pocketbase", "serve", "--http=0.0.0.0:8090"]
