import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DataGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          delegate: SliverChildListDelegate(
            [
              BodyWidget(Colors.blue),
              BodyWidget(Colors.green),
              BodyWidget(Colors.yellow),
              BodyWidget(Colors.orange),
              BodyWidget(Colors.blue),
              BodyWidget(Colors.red),
            ],
          ),
        );

  }
}
class BodyWidget extends StatelessWidget {
  final Color color;

  BodyWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: color,
      alignment: Alignment.center,

    );
  }
}