FROM ruby:2.7.1

# 作業スペースの指定
WORKDIR /var/www

# ローカルのソースコードを作業スペースにコピー
COPY ./src /var/www

RUN bundle confi --local set path "vender/bundle" \
  && bundle install

CMD [ "bundle", "exec", "ruby", "app.rb" ]
