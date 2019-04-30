import 'package:flutter/material.dart';
import 'event_planning.dart';

class EventSummary extends StatelessWidget {
  Widget build(BuildContext context) {
    EventPlanningState data = EventPlanning.of(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.teal,
      child: Text(data.topics[data.currentTopic])
    );
  }
}