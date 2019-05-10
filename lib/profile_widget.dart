import 'package:flutter/material.dart';
import 'visualization_widget.dart';
import 'status_widget.dart';

class Profile extends StatelessWidget {

 @override
 Widget build(BuildContext context) {
   return Scaffold(
    body: Container(
      child: CustomScrollView(
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