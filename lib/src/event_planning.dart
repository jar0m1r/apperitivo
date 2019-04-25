import 'package:flutter/material.dart';

class EventPlanning extends InheritedWidget {

  EventPlanning({
    @required Widget child, 
    this.data
  }): super(child: child);

  final data;

  Widget build(BuildContext context){
    return child; 
  }

  void addItem(item){
    setState((){
      data.add(item);
    });
  }

   static EventPlanning of(BuildContext context) {
      return context.inheritFromWidgetOfExactType(EventPlanning);
   }

  @override
  bool updateShouldNotify(EventPlanning oldWidget) => data != oldWidget.data;
}