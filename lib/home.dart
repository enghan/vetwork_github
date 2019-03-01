import 'package:flutter/material.dart';
import 'UI/folder_style/AppStyles.dart';
import 'service.dart';
import 'UI/folder_style/ui_constant.dart';

class home extends StatefulWidget {
  @override
  _State createState() => new _State();
}

List<Service> item_service = [
  Service(name: 'checkup', Price: 10.0),
  Service(name: 'Vaccine', Price: 30.0),
  Service(name: 'X/ray', Price: 30.0),
  Service(name: 'Deworming', Price: 30.0),
];
bool selected = false;


class _State extends State<home> {
  MediaQuery querydata;
  @override
  void _handleTap() {
    setState(() {
      selected = !selected;
    });
  }

//  buildAppContainer() {
//    buildWelcomeText();
//    buildPidType();
//    buildServiceType();
//    buildServices();
//  }
  Widget buildCard(String image, String title) {
    var card = Card(
        child: new InkWell(
          onTap: (){print("tapped");},
      child: Padding(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              radius: 20.0,
              backgroundImage: AssetImage("$image"),
            ),
            Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  title,
                  style: textStyleH3,
                ))
          ],
        ),
        padding: EdgeInsets.all(10.0),
      ),
        ) );
    return SizedBox(width: 100.0, height: 100.0, child: card);
  }

  Widget buildPidType() {
    var widget = Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Chooes Species',
              style: textStyleH2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                buildCard("assets/dog.jpg", 'Dog'),
                SizedBox(
                  width: 20.0,
                ),
                buildCard("assets/dog.jpg", 'Cat'),
              ],
            )
          ],
        ));

    return widget;
  }

  Widget buildWelcomeText() {
    return Container(
        width: 90.0, //px=177.5
        height: 30.0, //px=50
        child: Column(children: <Widget>[
          Text(
            'Welcom',
            style: textStyleH2,
          ),
        ]));
  }

  Widget buildServiceType() {
    var widget = Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'What does your pet need today',
              style: textStyleH2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                buildCard("assets/dog.jpg", 'Dog'),
                SizedBox(
                  width: 20.0,
                ),
                buildCard("assets/dog.jpg", 'Cat'),
              ],
            )
          ],
        ));
    return widget;
  }

  Widget buildServices() {
    for (int i = 0; i < item_service.length; i++) {
      var widget = Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Card(
                  child: Text('name${item_service[i].name}'),
                ),
              ]));
      return widget;
    }
  }

  Widget service_Card(
      String service_name,
      ) {
    return Container(
        child: Column(children: <Widget>[
          GestureDetector(
            onTap: _handleTap,
            child: Card(
              color: selected ? Colors.blue : Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "$service_name",
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ]));
  }

  Widget build(BuildContext context) {

    for (int i = 0; i < item_service.length; i++) {
      print('name :${item_service[i].name}');
    }
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.amber),
        backgroundColor: Colors.white70,
        body: Padding(
            padding: EdgeInsets.only(left: page_padding, top: top_padding),
            child: Column(children: <Widget>[
              buildWelcomeText(),
              buildPidType(),
              buildServiceType(),
              buildServices(),
            ])));}}