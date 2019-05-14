import 'package:flutter/material.dart';
import 'visualization_widget.dart';
import 'status_widget.dart';

class Profile extends StatelessWidget {

 @override
 Widget build(BuildContext context) {
   return Scaffold(
    body: Container(
      height: 400.0,
      child: CustomScrollView(
        scrollDirection: Axis.horizontal,
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
              Status(),
              ],
            ),
          ),
          DataGrid()
        ],
      ),
    ),
  );
 }
}