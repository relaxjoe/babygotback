# Baby Got Back E-Commerce Backend

## Description
This project involves developing the backend for an e-commerce site using Express.js and Sequelize to interact with a MySQL database. The application is designed for internet retail managers who want to leverage the latest technologies to enhance their company's competitive edge in the e-commerce industry.

## Installation

1. **Clone the repository**
    ```bash
    git clone https://github.com/relaxjoe/babygotback.git
    ```

2. **Navigate to the directory**
    ```bash
    cd babygotback
    ```

3. **Install dependencies**
    ```bash
    npm install
    ```

4. **Create and seed the database**
    ```bash
    npm run seed
    ```

5. **Set up environment variables**
    - Create a `.env` file in the root directory.
    - Include the following variables:
      ```bash
      DB_NAME='ecommerce_db'
      DB_USER='your_mysql_username'
      DB_PW='your_mysql_password'
      ```
## Usage

To start the server, run:
```bash
npm start
```
This will sync the Sequelize models to the MySQL database and start the application on your local server.

## Features

Database Models: Includes models for Category, Product, Tag, and ProductTag with associations and validations as specified.
API Routes: Supports RESTful CRUD operations for categories, products, and tags via Express.js.
Secure Environment Variables: Utilizes the dotenv package to manage sensitive information securely.


## Technologies Used

```bash
Node.js
Express.js
MySQL2
Sequelize
dotenv
```