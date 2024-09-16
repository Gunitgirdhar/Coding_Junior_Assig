# Flutter Project

This is a responsive Flutter application with three main screens demonstrating a user profile, popular courses, and a payment success page. The app adapts to different screen sizes and orientations, ensuring a smooth user experience across various devices.

## Features

- **Screen 1**: A responsive home page featuring a user profile, popular courses, and navigation options.
- **Screen 2**: A dynamic course listing screen that shows course details, participant info, and course reviews.
- **Screen 3**: A payment success screen showing a summary of the transaction.

## Screens

### 1. Home Screen
- Displays the user’s avatar and a brief message.
- Features a card showing course details like completion status and hours spent.
- Bottom navigation bar for quick access to Home, Favorites, Notifications, and Profile sections.

### 2. Course Listing Screen
- A list of popular courses, each displayed with an image, course title, rating, and participant info.
- Includes options to view all courses or explore individual course details.

### 3. Payment Success Screen
- Confirms successful payment for a course.
- Displays the transaction amount, user name, course name, transaction ID, invoice date, and a barcode.
- Includes a large checkmark icon for visual confirmation.
- Button to acknowledge the payment and return to the app flow.

## Dependencies

- **Flutter**: The app uses Flutter's framework for UI development. Ensure you have the latest version of Flutter installed on your machine.

## Packages Used

- **material.dart**: For building Material Design UI components.
- **media_query.dart**: Used to adapt UI elements to the screen size and resolution of the device.

## How to Run the Project

1. Clone the repository to your local machine.
2. Open the project directory in your preferred IDE (like VS Code or Android Studio).
3. Run the following command in the terminal to install dependencies:

   ```bash
   flutter pub get
## Project Structure

## Project Structure

Here is the directory structure of the project:

```bash
lib/
├── Screens/
│   ├── Screen01.dart      # Code for the Home Screen (Video of Course)
│   ├── Screen02.dart      # Code for the Course Listing Screen and Popular Courses
│   └── Screen03.dart      # Code for the Payment Success Screen
├── assets/
│   ├── img_01.jpeg        # User Profile Image
│   ├── ps_01.jpeg         # Photoshop Course Image
│   ├── ai.jpeg            # Illustrator Course Image
│   ├── xd.jpeg            # Adobe Xd Course Image
│   └── barcode.png        # Barcode image for Payment Success screen
├── main.dart              # Main entry point of the application
└── README.md              # Project documentation

- **lib/**: This directory contains the main code for the Flutter application.
  - **Screens/**: Contains the three screens used in the app.
  - **main.dart**: This is the main file where the app starts.
  
- **assets/**: Contains image files used in the app, including profile images and course images.

Make sure the assets are properly linked in the `pubspec.yaml` file.

   
