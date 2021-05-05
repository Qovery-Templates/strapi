# Qovery Strapi Template


Welcome to the Qovery Strapi template guide. In the next lines, you'll see how to initialize a strapi application in the environment setup by Qovery.

### Setting things up

Before you begin, this guide assumes you have create a Strapi app with Qovery's template.

1. Clone the repository created by Qovey
2. Initialize Strapi in the project cloned with one of the following command:

      ```bash
      yarn create strapi-app <my-project> --quickstart
      
      OR
      
      npx create-strapi-app <my-project> --quickstart
      ```
        
3. Edit strapi-app/config/database.js to have:

      ```js
        settings: {
        client: env("DATABASE_CLIENT", "mysql"),
        host: env("DATABASE_HOST", "0.0.0.0"),
        port: env.int("DATABASE_PORT", 3306),
        database: env("DATABASE_NAME", "strapi"),
        username: env("DATABASE_USERNAME", "strapi"),
        password: env("DATABASE_PASSWORD", "strapi"),
        }
      ```
        
4. Push the changes on your remote branch
5. Wait for Qovery to deploy your app 8)
