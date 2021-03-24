FROM strapi/strapi:3.5.3

EXPOSE 1337

RUN npm run build

CMD ["strapi", "start"]
