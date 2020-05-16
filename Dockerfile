FROM jekyll/jekyll:4

RUN gem install github-pages

ENTRYPOINT [ "jekyll" ]
