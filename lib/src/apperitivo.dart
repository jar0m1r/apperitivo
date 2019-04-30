import 'package:flutter/material.dart';
import 'event_summary.dart';
import 'plan_event.dart';
import 'event_planning.dart';

class Apperitivo extends StatelessWidget {

  Widget build(BuildContext context){
    return MaterialApp(
      home: EventPlanning(
          topics: ['when', 'where', 'who', 'options'],
          child : Scaffold(
            body: Column(
              children: [
                Expanded(flex: 6, child: PlanEvent()),
                Expanded(flex: 4, child: EventSummary())
                ]
            ),
          ),
      ),
    );
  }

}