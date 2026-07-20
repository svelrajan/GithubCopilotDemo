FROM alpine:3.18
WORKDIR /app
COPY helloworld.c ./
RUN apk add --no-cache gcc musl-dev
RUN gcc -Wall -Wextra -std=c11 -o /app/helloworld /app/helloworld.c
CMD ["/app/helloworld"]
