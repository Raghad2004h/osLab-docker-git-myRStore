FROM nginx:alpine
COPY . /usr/share/nginx/html
EXPOSE 80
RUN apk add --no-cache curl
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
  CMD curl -f http://localhost/ || exit 1
CMD ["nginx", "-g", "daemon off;"]
