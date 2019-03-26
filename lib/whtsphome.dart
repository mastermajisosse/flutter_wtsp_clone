import 'package:flutter/material.dart';
import 'package:flutterwtsp/page/calls.dart';
import 'package:flutterwtsp/page/camra.dart';
import 'package:flutterwtsp/page/chat.dart';
import 'package:flutterwtsp/page/status.dart';

class whtsphome extends StatefulWidget {
  @override
  _whtsphomeState createState() => _whtsphomeState();
}

class _whtsphomeState extends State<whtsphome> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
    void initState() {
      // TODO: implement initState
      super.initState();
      _tabController = new TabController(vsync: this, initialIndex:1,length: 4);
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("whatsapp"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white ,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text: "calls"),
            new Tab(text: "status"),
            new Tab(text: "calls"),
          ],
        ),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0),),
          new Icon(Icons.more_vert),
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new Camra(),
          new Chat(),
          new Status(),
          new Calls(),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.message),
        onPressed: ()=> print("open"),
      ),
    );
  }
}