import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DataGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          delegate: SliverChildListDelegate(
            [
              WinsWidget(Colors.blue),
              KillsWidget(Colors.blue),
              KillsWidget(Colors.blueGrey),
              WinsWidget(Colors.yellowAccent),
              KillsWidget(Colors.orangeAccent),
              WinsWidget(Colors.redAccent),
              WinsWidget(Colors.yellow),
              WinsWidget(Colors.orange),
              
            ],
          ),
        );
  }
}
class WinsWidget extends StatelessWidget {
  final Color color;

  WinsWidget(this.color);

@override
  Widget build(BuildContext context) {
    return FlatButton(
        padding: EdgeInsets.all(0.0),
        onPressed: () {},
        child: Card(
      margin: EdgeInsets.all(8.0),
      child: Container(
      color: color,
      alignment: Alignment.center,
      child: Text("WINS", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
      ),
    ),
    );
  }

  
}

class KillsWidget extends StatelessWidget {
  final Color color;

  KillsWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        padding: EdgeInsets.all(0.0),
        onPressed: () {},
        child: Card(
      margin: EdgeInsets.all(8.0),
      child: Container(
      color: color,
      alignment: Alignment.center,
      child: Text("KILLS", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
      ),
    ),
    );
  }

  
}