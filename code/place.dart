import 'package:flutter/material.dart';
import 'package:creating_app/main.dart';

class Place extends StatefulWidget {
  @override
  _PlaceState createState() => _PlaceState();
}

class _PlaceState extends State<Place> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        Container(
        alignment: Alignment.center,
        child: Text('Place'),
      ),
          ],
      ),
    );
  }
}
