FROM alpine:latest

COPY lib/main.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/main.sh
RUN echo "alias aoc-dx='/usr/local/bin/main.sh'" >> ~/.bashrc

CMD ["/bin/sh", "-c", "source ~/.bashrc && exec /bin/sh"]