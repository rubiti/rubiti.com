FROM nginx
RUN apt-get update -qq && apt-get -y install apache2-utils
ENV RAILS_ROOT /var/www/rails
WORKDIR $RAILS_ROOT
RUN mkdir -p log
COPY nginx/app.conf /tmp/docker_rails.nginx
RUN envsubst '$RAILS_ROOT' < /tmp/docker_rails.nginx > /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD [ "nginx", "-g", "daemon off;" ]