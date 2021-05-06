FROM strapi/strapi:3.6.1
WORKDIR /app
COPY ./strapi-app .
COPY .env .env
RUN yarn
RUN yarn build
EXPOSE 1337
CMD ["strapi", "start"]
