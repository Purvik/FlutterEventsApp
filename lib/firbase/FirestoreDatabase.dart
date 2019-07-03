
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_events_week3/modal/Event.dart';

class FirestoreDatabase {

  getLocalEvents(){
    return Firestore.instance.collection('LocalEvent').snapshots();
  }

  storeNewEvent(Event event, context){
    Firestore.instance.collection('LocalEvent').add({
      'eventName' : event.eventName,
      'city' : event.city,
      'text' : event.textMessage,
      'eventDate' : event.eventDate,
    }).then((value) {

    }).catchError((e) {
      print(e);
    });
  }
}