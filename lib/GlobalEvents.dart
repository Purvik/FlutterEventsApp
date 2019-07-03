import 'package:flutter/material.dart';
import 'package:flutter_events_week3/EventCard.dart';
import 'package:flutter_events_week3/modal/Event.dart';
import 'package:flutter_events_week3/services/api_services.dart';

class GlobalEvents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(8.0),
          child: FutureBuilder<List<Event>>(
              future: getEvents(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) => EventCard(
                            event: snapshot.data[index],
                          ));
                } else {
                  return Container(
                    alignment: Alignment.center,
                    child: CircularProgressIndicator(),
                  );
                }
              })),
    );
  }
}
