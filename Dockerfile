FROM strapi/strapi:latest
WORKDIR /app
COPY . . 
RUN yarn
RUN yarn run build
EXPOSE 1337
CMD ["strapi", "start"]
