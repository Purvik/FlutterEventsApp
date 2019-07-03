import 'package:flutter_events_week3/modal/Event.dart';
import 'package:http/http.dart' as http;

Future<List<Event>> getEvents() async {
  String url = 'https://flutterevents.com/feed';
  final response = await http.get(url);
  return eventFromJson(response.body);
}
