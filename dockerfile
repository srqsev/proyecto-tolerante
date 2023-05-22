#stage 1
FROM nginx:alpine


RUN rm -rf /usr/share/nginx/src/*


CMD ["nginx", "-g", "daemon off;"]
