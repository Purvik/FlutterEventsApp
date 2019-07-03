# flutter_events_week3

A Flutter application to list ongoing Flutter Events from world wide.

## Project Details
This Project is made from FlutterBootCamp Week 3 Workshop day. This is built from the learning session of API calling, parsing JSON response, Firebase Storage Data Retrieving covered by [Pooja Bhaumik (GDE Expert for Flutter)](https://medium.com/@poojabhaumik).

### Project File Structure Details

* lib/main.dart

  This dart file is the entry point of our Flutter application. This class extends a `StatelessWidget` & return a new class `SplashScreen` to display as entry screen for this application.

* lib/SplashScreen.dart

  This class displays a `SplashScreen` with an Image in center retrieved from Web URL using `Image.network()`. It also makes use of   `Future<Timer>` class to navigate to our application `HomeScreen` after completion of several seconds of time. `loadTimer()` methos will get called when `SplashScreen` starts visible to user and it'll wait for 5 seconds (as I've specified for `Timer` instance) then it'll call `navigate` method to move to `HomeScreen`.

* lib/HomeScreen.dart

  This one is also a `StatelessWidget`class having `DefaultTabController` to display two `Tab` options on the  `TabBar`. Inside the `Scaffold`'s `appBar`, widget with name `TabBar` is used to display Text and Icon for the `Tab`. 

  For the body of these `Tab`s, inside `body`, widget `TabBarView` is used that contains property named `children` having screens (`GlobalEvents` & `LocalEvents`) to display for each `Tab` specified earlier.
  
* lib/GlobalEvents.dart

  This class contains a `FutureBuilder` with parameter of `List<Events>` waiting for the response to be arrived from `getEvents()` method of `services/api_services.dart` class. Once the response is available, `ListView.builder` will get use this response to display information of each `Event` by passing it (each `Event` object) to `EventCard` class (`EventCard.dart` file). `EventCard` is like a component that returns a view by mapping `Event` object parameters to display at proper place.
  

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.io/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.io/docs/cookbook)

For help getting started with Flutter, view our 
[online documentation](https://flutter.io/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
