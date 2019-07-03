import 'package:flutter/material.dart';
import 'package:flutter_events_week3/GlobalEvents.dart';
import 'package:flutter_events_week3/LocalEvents.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
              tabs: [
                Tab(text: 'Global Events', icon: Icon(Icons.home),),
                Tab(text: 'Local Events', icon: Icon(Icons.map),),
              ]
          ),
          title: Text('Flutter Events : Know What\'s happening around..',
            style: TextStyle(
              fontSize: 16
            ),),
        ),
        body: TabBarView(
            children: <Widget>[
              GlobalEvents(),
              LocalEvents(),
            ]
        )
      ),
    );
  }
}
