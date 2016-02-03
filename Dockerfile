FROM nginx:latest

RUN rm -f /etc/nginx/conf.d/default.conf

COPY entry.sh /

COPY nginx.conf /etc/nginx/conf.d/nginx.conf

ENTRYPOINT ["/entry.sh"]
CMD ["nginx", "-g", "daemon off;"]
