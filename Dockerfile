FROM nginx:alpine
WORKDIR /usr/share/nginx/html
ADD https://www.free-css.com/assets/files/free-css-templates/download/page295/sbs.zip ./
RUN rm -rf /usr/share/nginx/html/index.html
RUN apk add --no-cache unzip
RUN unzip sbs.zip && mv sbs-html/* ./
EXPOSE 80