This is a simple web application that allows users to place orders online. 

Installation
Clone this repository to your local machine using git clone.

Import the database.sql file into your MySQL database to create the necessary tables.

Update the database configuration settings in process_order.php to match your local MySQL database settings.

Start a PHP development server by running php -S localhost:8000 from the command line in the project directory.

Open a web browser and navigate to http://localhost:8000/index.php to access the order form.

NOTE: to get the mail working configure your mail with proper credintials.

Usage
Fill out the order form with your name, address, and phone number, and select the items you want to order from the available products list.

The application will validate the form data and display any errors if necessary. If the form data is valid, the application will calculate the total cost of the order and store the order data in the MySQL database.

An email notification will be sent to the store's staff with the order details, including the customer's name, address, and phone number, as well as the items they ordered and the total cost.

After submitting the order, you will be redirected back to the order form page, where a success or error message will be displayed.
