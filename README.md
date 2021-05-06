# Qovery Strapi Template

Welcome to the Qovery Strapi template guide. In the next lines, you'll see how to initialize a strapi application in the environment setup by Qovery.

Before you begin, this guide assumes you have create a Strapi app with Qovery's template and have MySQL 8 running locally.

#### Hint
You can run a mysql db with the followin command:
```bash
docker run --name strapi -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 mysql:8
```

### Setting things up

1. Clone the repository created by Qovey
2. Initialize Strapi in the project cloned with one of the following command:

      ```bash
      yarn create strapi-app strapi-app --quickstart
      ```
      
      or
      
      ```bash
      npx create-strapi-app strapi-app --quickstart
      ```
        
3. Edit strapi-app/config/database.js to have:

      ```js
        settings: {
            client: env("DATABASE_CLIENT", "mysql"),
            host: env("DATABASE_HOST", "localhost"),
            port: env.int("DATABASE_PORT", 3306),
            database: env("DATABASE_NAME", "strapi"),
            username: env("DATABASE_USERNAME", "strapi"),
            password: env("DATABASE_PASSWORD", "strapi"),
        }
      ```
        
4. Open a terminal with path set to strapi-app folder
5. Run one of the following command:

      ```bash
      yarn add mysql
      ```
      
      or
      
      ```bash
      npm i mysql
      ```
      
6. Run the project locally with 
      ```bash
      yarn run develop
      ```
8. Create your admin user at localhost:1337/admin
9. Push all the changes on your remote branch
10. Wait for Qovery to deploy your app 8)
