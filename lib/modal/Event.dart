// To parse this JSON data, do
//
//     final event = eventFromJson(jsonString);

import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

List<Event> eventFromJson(String str) => new List<Event>.from(json.decode(str).map((x) => Event.fromJson(x)));

String eventToJson(List<Event> data) => json.encode(new List<dynamic>.from(data.map((x) => x.toJson())));

class Event {
  String eventName;
  String eventUrl;
  String eventDate;
  String address;
  String city;
  double latitude;
  double longitude;
  String textMessage;
  String htmlMessage;
  String description;

  Event({
    this.eventName,
    this.eventUrl,
    this.eventDate,
    this.address,
    this.city,
    this.latitude,
    this.longitude,
    this.textMessage,
    this.htmlMessage,
    this.description,
  });

  Event.fromSnapshot(DocumentSnapshot snapshot)
    : eventName = snapshot['eventName'],
      city = snapshot['city'],
      textMessage = snapshot['text'],
      eventDate = snapshot['eventDate'],
      eventUrl = snapshot['eventUrl'];

  factory Event.fromJson(Map<String, dynamic> json) => new Event(
    eventName: json["event_name"],
    eventUrl: json["event_url"],
    eventDate: json["event_date"],
    address: json["address"],
    city: json["city"],
    latitude: json["latitude"].toDouble(),
    longitude: json["longitude"].toDouble(),
    textMessage: json["text_message"],
    htmlMessage: json["html_message"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "event_name": eventName,
    "event_url": eventUrl,
    "event_date": eventDate,
    "address": address,
    "city": city,
    "latitude": latitude,
    "longitude": longitude,
    "text_message": textMessage,
    "html_message": htmlMessage,
    "description": description,
  };
}
