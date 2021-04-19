FROM strapi/strapi:3.5.4
WORKDIR /app
COPY . . 
RUN yarn
RUN yarn run build
EXPOSE 1337
CMD ["strapi", "start"]
