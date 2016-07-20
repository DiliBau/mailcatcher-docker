FROM ruby:2.3.1
RUN gem install mailcatcher
EXPOSE 1025 1080
COPY mailcatcher-foreground /usr/local/bin/mailcatcher-foreground
RUN chmod 777 /usr/local/bin/mailcatcher-foreground
CMD ["mailcatcher-foreground"]
