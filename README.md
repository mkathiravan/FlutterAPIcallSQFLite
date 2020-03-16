# flutter_task

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## What is meant by Future?
Future operations are which take time to perform and return the result later. To handle this problem we use asynchronous functions.
Long running tasks are common in mobile apps. The way the flutter/Dart is handled by using a Feature. A Feature allows you to run work asynchronosly to free up any other threads that should not be locked.

## What is the use of await function in flutter?
It tells flutter is to wait at that line of code until the function has returned a value, as code after await may be dependable on value returned by the functions.

--> We should not write too much code in the main() itself. This may increase the load.

--> In flutter, screens and pages are called routes. The remainder of this receipe refers to routes.

![image](https://user-images.githubusercontent.com/39657409/76778199-6fcfc500-67cf-11ea-98cf-db120d24703e.png)
![image](https://user-images.githubusercontent.com/39657409/76778274-8a09a300-67cf-11ea-9e09-2d000c7d1e3b.png)
![image](https://user-images.githubusercontent.com/39657409/76778292-942ba180-67cf-11ea-8bed-b2b2fd10ceeb.png)
![image](https://user-images.githubusercontent.com/39657409/76778320-9f7ecd00-67cf-11ea-963d-f96dbd39dc38.png)
