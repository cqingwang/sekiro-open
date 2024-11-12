FROM openjdk:17-ea-17-jdk-slim
WORKDIR /root
COPY ./target/deploy ./deploy

ENTRYPOINT ["./deploy/bin/sekiro.sh"]

EXPOSE 5612