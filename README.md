# agile-fitness-web-app
This repository contains the source code and documentation for a fitness web application built using Agile methodologies. The platform offers various features such as workout tracking, nutrition guidance, user accounts, and progress monitoring.

# Agile Fitness Web App

## Overview
The Agile Fitness Web App is a comprehensive fitness platform designed to provide users with tools to manage their fitness goals. Developed through iterative sprints in an Agile environment, the app focuses on offering personalized workout plans, tracking progress, and providing nutritional advice. The application was built using Node.js, Express, MongoDB, and other modern web technologies, ensuring scalability and a seamless user experience.

## Technologies Used
- **Node.js**: Backend server built with Node.js, providing scalability and performance.
- **Express.js**: Web framework used to handle routing and middleware.
- **MongoDB**: NoSQL database used for storing user data, workout logs, and nutrition information.
- **HTML/CSS**: Markup and styling for the user interface.
- **JavaScript**: Client-side logic and backend API integration.
- **npm**: Dependency management using npm.
- **Bootstrap**: Frontend framework for responsive design.
- **JWT Authentication**: Secure user login and session management.

## Features
- **User Authentication**: Users can register, log in, and securely manage their accounts.
- **Personalized Workout Plans**: Tailored workout routines based on user preferences and goals.
- **Nutrition Tracker**: Track meals and get nutritional advice based on fitness goals.
- **Progress Monitoring**: Visualize fitness progress with charts, including weight tracking and muscle growth.
- **Exercise Library**: A collection of exercises with descriptions and videos.
- **REST API**: Endpoints for accessing and managing data, such as user profiles, workouts, and nutrition.
- **Responsive Design**: The app is fully responsive, providing a seamless experience across mobile, tablet, and desktop devices.

## Getting Started
To run this project locally, follow these steps:

1. Clone the repository:
    ```bash
    git clone https://github.com/your-username/agile-fitness-web-app.git
    ```

2. Navigate to the project directory:
    ```bash
    cd agile-fitness-web-app
    ```

3. Install dependencies:
    ```bash
    npm install
    ```

4. Start the application:
    ```bash
    npm run start
    ```

5. Open your browser and go to [http://localhost:3000](http://localhost:3000) to interact with the app.

## Project Structure
- **index.js**: Main entry point for the Node.js server, configuring routes and middleware.
- **package.json**: Contains project metadata and dependencies.
- **db_schema.sql**: SQL schema for creating the database structure.
- **database.db**: Stores application data (user data, workouts, nutrition logs).
- **routes/**: Defines the backend routes for user authentication, workouts, and nutrition.
- **views/**: Contains view templates rendered on the frontend.
- **public/**: Static files, including images, CSS, and JavaScript for the frontend.
- **node_modules/**: Contains installed project dependencies.

## Features in Detail

### User Authentication
- **Login & Registration**: Users can sign up and log in securely using email and password. JWT tokens are used for authentication.
- **Account Management**: Users can update their profile details and change their password.

### Personalized Workout Plans
- **Workout Routines**: Users can receive personalized workout plans based on their fitness level and goals (e.g., weight loss, strength training, endurance).
- **Exercise Library**: The app includes a wide variety of exercises categorized by muscle group, with descriptions and instructional videos.
- **Progress Tracking**: Users can log their completed workouts and track their performance over time.

### Nutrition Tracker
- **Meal Logging**: Users can log their meals and track their calorie intake, macronutrients (protein, carbs, fats), and micronutrients.
- **Nutritional Advice**: Based on the user’s fitness goals, the app provides personalized meal recommendations and suggestions for a balanced diet.

### Progress Monitoring
- **Weight & Fitness Tracking**: Users can log their weight and monitor their fitness progress using charts and graphs.
- **Goal Setting**: Users can set fitness goals, such as losing weight or increasing muscle mass, and track their progress toward these goals.

### REST API
- **User Data**: The API allows interaction with user accounts, providing endpoints for updating profile details, logging in, and managing workouts and nutrition.
    - `GET /api/user`: Fetch the user's profile data.
    - `POST /api/user`: Create a new user.
    - `PUT /api/user`: Update user information.
    - `GET /api/workouts`: Retrieve workouts for the user.
    - `POST /api/workouts`: Log a new workout.
    - `GET /api/nutrition`: Get logged nutrition data.

### Responsive Design
- **Mobile-First**: The application is designed with a mobile-first approach, ensuring it works seamlessly on smartphones, tablets, and desktops.
- **UI/UX**: The user interface is designed to be intuitive, with easy navigation between workout routines, nutrition tracking, and progress reports.

## Contributing
We welcome contributions to the project! If you'd like to contribute, please fork the repository, create a new branch for your feature or bug fix, and submit a pull request.

### How to contribute:
1. Fork the repository.
2. Create a new branch for your feature (`git checkout -b feature-branch`).
3. Commit your changes (`git commit -am 'Add new feature'`).
4. Push to your branch (`git push origin feature-branch`).
5. Submit a pull request.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments
- This project was created as part of an Agile-based development process. Thanks to the development team for their dedication and hard work in building and improving the application.

