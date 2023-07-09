import 'package:flutter/material.dart';
import 'package:split_app/custom/CustomScaffold.dart';

class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(child: Container(color: Colors.pink));
  }
}