import 'package:flutter/material.dart';
import 'package:flutterwtsp/models/chatm.dart';

class Chat extends StatefulWidget {
  @override
  ChatState createState() {
    return new ChatState();
  }
}

class ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: dummydata.length,
      itemBuilder: (context,i)=>new Column(
        children: <Widget>[
          new Divider(
            height: 10.0,
          ),
          new ListTile(
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage(dummydata[i].avatar),
            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  dummydata[i].name,
                  style: new TextStyle(fontWeight: FontWeight.bold),
                ),
                new Text(
                  dummydata[i].time,
                  style: new TextStyle(color: Colors.grey),
                ),
              ],
            ) ,
            subtitle: new Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: new Text(
                  dummydata[i].msg,
                  style: new TextStyle(color: Colors.grey),                
              ),
            ),
          )
        ],
      ),
    );
  }
}