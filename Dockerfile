FROM ubuntu:latest

WORKDIR /var/www

# Write wrong string inside testong.yml during build
RUN echo "wrong" >> testong.yml

CMD tail -f /dev/null
