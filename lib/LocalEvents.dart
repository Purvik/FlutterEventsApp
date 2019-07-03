import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_events_week3/EventCard.dart';

import 'firbase/FirestoreDatabase.dart';
import 'modal/Event.dart';

class LocalEvents extends StatefulWidget {
  @override
  _LocalEventsState createState() => _LocalEventsState();
}

class _LocalEventsState extends State<LocalEvents> {
  FirestoreDatabase firestoreDatabase = new FirestoreDatabase();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(8.0),
          child: StreamBuilder<QuerySnapshot>(
              stream: firestoreDatabase.getLocalEvents(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  var newEvent = snapshot.data.documents.map((snapshot) {
                    return Event.fromSnapshot(snapshot);
                  }).toList();

                  return ListView.builder(
                      itemCount: newEvent.length,
                      itemBuilder: (context, index) => EventCard(
                            event: newEvent[index],
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
