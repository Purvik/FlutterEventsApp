import 'package:flutter/material.dart';
import 'package:flutter_events_week3/modal/Event.dart';

class EventCard extends StatelessWidget {
  final Event event;

  EventCard({this.event});

  final topSection = new Expanded(
    child: new Container(
      child: new Row(
        children: <Widget>[
          new Text('Event Name'),
          new Text('Event Date'),
        ],
      ),
    ),
  );

  final middleSection = new Expanded(
      child: new Container(
    child: Text('Event Text'),
  ));

  final bottomSection = new Expanded(
      child: new Container(
    child: Text('Event Address & City Name'),
  ));

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 1.5, color: Colors.orangeAccent),
            borderRadius: BorderRadius.circular(5.0)
        ),
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 4.0, top : 0.0, right : 4.0,bottom :4.0),
                  child: Text(
                    event.eventName,
                    style: new TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    event.textMessage,
                    style: new TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.normal,
                        fontSize: 16.0),
                  ),
                ),
                //Bottom Section
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        decoration : BoxDecoration(
                          color: Colors.orangeAccent,
                          border: Border.all(color: Colors.white, width: 1.0),
                            borderRadius: BorderRadius.circular(4.0)
                        ),
                        padding: const EdgeInsets.only(left: 6, top: 4, right: 6, bottom: 4),
                        child: Text(
                          event.eventDate,
                          style: new TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0),
                        ),
                      ),
                      Container(
                        decoration : BoxDecoration(
                            color: Colors.orangeAccent,
                            border: Border.all(color: Colors.white, width: 1.0),
                            borderRadius: BorderRadius.circular(4.0)
                        ),
                        padding: const EdgeInsets.only(left: 6, top: 4, right: 6, bottom: 4),

                        child: Text(
                          event.city,
                          style: new TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    ));
  }
}
