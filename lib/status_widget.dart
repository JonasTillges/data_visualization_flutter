import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  var statusText = "";
  var color = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: RaisedButton(
        color: color,
        onPressed: () {},
        child: Text(statusText, 
        style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  void getStatus() async {
          var serverStatusUrl = "https://fortnite-public-api.theapinetwork.com/prod09/status/fortnite_server_status";
          var playerStatsUrlGames = "https://fortnite-public-api.theapinetwork.com/prod09/users/public/br_stats_v2?user_id=";
          var playerStats = await http.get(serverStatusUrl);
          if (playerStats.statusCode == 200) {
            var jsonPlayerStatsResponse = convert.jsonDecode(playerStats.body);
            var status = jsonPlayerStatsResponse['message'];
            var shortStatus = jsonPlayerStatsResponse['status'];
            setState(() {
              statusText = status;
              if(shortStatus == "DOWN") {
                color = Colors.red;
              }else{
                color = Colors.green;
              }
            });
            print("http response: $status.");
          } else {
            print("Request failed with status: ${playerStats.statusCode}.");
          }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getStatus();
  }
}