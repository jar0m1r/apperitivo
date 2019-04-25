import 'package:flutter/material.dart';
import 'event_planning.dart';

class PlanEvent extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.amber,
      child: Text(EventPlanning.of(context).data[0])
    );
  }
}