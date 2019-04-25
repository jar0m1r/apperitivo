import 'package:flutter/material.dart';

class EventSummary extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.teal,
      child: Text('Summary')
    );
  }
}