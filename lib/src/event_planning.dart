import 'package:flutter/material.dart';

class EventPlanning extends StatefulWidget {
  final Widget child;
  final topics;

  EventPlanning({this.child, this.topics});

  @override
  EventPlanningState createState() => new EventPlanningState(topics: this.topics);

  static EventPlanningState of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(_InheritedEventPlanning) as _InheritedEventPlanning).data;
  }
}

class EventPlanningState extends State<EventPlanning> {
   int _currentTopic = 0;
  // // only expose a getter to prevent bad usage
  int get currentTopic => _currentTopic;

  void nextTopic() {
    setState(() {
      _currentTopic++;
    });
  }

  List<String> topics;

  EventPlanningState({this.topics});

  @override
  Widget build(BuildContext context) {
    return new _InheritedEventPlanning(
      data: this,
      child: widget.child,
    );
  }
}

/// Only has MyInheritedState as field.
class _InheritedEventPlanning extends InheritedWidget {
  final EventPlanningState data;

  _InheritedEventPlanning({Key key, this.data, Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(_InheritedEventPlanning old) {
    return true;
  }
}
