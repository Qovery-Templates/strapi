# Qovery Strapi Template

Welcome to the Qovery Strapi template guide. In the next lines, you'll see how to initialize a strapi application in the environment setup by Qovery.

Before you begin, this guide assumes you have create a Strapi app with Qovery's template and have MySQL 8 running locally.

#### Hint
You can run a mysql db with the followin command:
```bash
docker run --name strapi -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 mysql:8
```

### Setting things up

1. Clone the repository created by Qovery
2. Initialize Strapi in the project cloned with one of the following command:

      ```bash
      yarn create strapi-app strapi-app --quickstart --no-run
      ```
      
      or
      
      ```bash
      npx create-strapi-app strapi-app --quickstart --no-run
      ```
        
3. Create new subfolders in `./strapi-app/config` like so: `/env/production/`, then create a new `database.js`
4. Be sure that your path match the following: `./strapi-app/config/env/production/database.js`
5. Edit **settings object** in `./strapi-app/config/env/production/database.js` to have:

      ```js
        settings: {
            client: env("DATABASE_CLIENT", "mysql2"),
            host: env("DATABASE_HOST", "localhost"),
            port: env.int("DATABASE_PORT", 3306),
            database: env("DATABASE_NAME", "strapi"),
            username: env("DATABASE_USERNAME", "root"),
            password: env("DATABASE_PASSWORD", "root"),
        }
      ```
        
6. Open a terminal with path set to strapi-app folder
7. Run one of the following command:

      ```bash
      yarn add mysql2
      ```
      
      or
      
      ```bash
      npm i mysql2
      ```
      
8. Run the project locally with 
      ```bash
      yarn develop
      ```
      
      or
      
      ```bash
      npm run develop
      ```
      
9. Create your admin user at http://localhost:1337/admin
10. Push all the changes on your remote branch
11. Wait for Qovery to deploy your app
