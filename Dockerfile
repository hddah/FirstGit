FROM ubuntu:latest

RUN apt-get update && apt-get install -y bash

COPY hello.sh /hello.sh

RUN chmod +x /hello.sh

CMD ["/hello.sh"]
