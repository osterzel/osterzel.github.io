FROM jekyll/jekyll

RUN apk add nodejs autoconf automake 
RUN npm install -g yarn gulp
WORKDIR /data
