import 'package:flutter/material.dart';
import 'event_planning.dart';

class PlanEvent extends StatelessWidget {
  Widget build(BuildContext context) {
    EventPlanningState data = EventPlanning.of(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.amber,
      child: Row(
        children: [
          Text(data.topics[data.currentTopic]),
          RaisedButton(
            child: Text('Next >>'),
            onPressed: data.nextTopic,
          )
        ]
      )
    );
  }
}