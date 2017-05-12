FROM kyma/docker-nginx
COPY public/ /var/www
CMD 'nginx'
EXPOSE 80
EXPOSE 443
