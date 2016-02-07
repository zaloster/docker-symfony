FROM ruby:2.2

RUN gem install mailcatcher --no-rdoc --no-ri

# smtp port
EXPOSE 1025

# webserver port
EXPOSE 1080

CMD ["mailcatcher", "-f", "--ip=0.0.0.0"]
