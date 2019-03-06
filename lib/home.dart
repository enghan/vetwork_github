import 'package:flutter/material.dart';
import 'UI/folder_style/ui_constant.dart';
import 'UI/folder_style/AppStyles.dart';
import 'service.dart';

//import 'package:flutter_tags/selectable_tags.dart';
class home extends StatefulWidget {
  @override
  _State createState() => new _State();
}

List<Service> _tags_service = [
  Service(name: 'checkup', Price: 10.0),
  Service(name: 'Vaccine', Price: 30.0),
  Service(name: 'X/ray', Price: 30.0),
  Service(name: 'Deworming', Price: 30.0),
];
bool selected = false;
bool Click = false;
String result = "";

class _State extends State<home> {
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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: new InkWell(
          onTap: () {
            setState(() {
              result = "$title";
              if (result == "Dog") {
                service_Card(_tags_service);
              }
              print("$title");
            });
          },
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
                      style: textStyleH4,
                    ))
              ],
            ),
            padding: EdgeInsets.all(10.0),
          ),
        ));
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
            buildCard("assets/dog.jpg", 'HealthCare'),
            SizedBox(
              width: 20.0,
            ),
            buildCard("assets/dog.jpg", 'Grooming'),
          ],
        )
      ],
    ));
    return widget;
  }

  Widget service_Card(List<Service> Service) {
    List<Widget> list = List<Widget>();
    for (var i = 0; i < Service.length; i++) {
      list.add(Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: new InkWell(
              onTap: () {
                var price = double.parse('${Service[i].Price}');

                print(price);
              },
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(('${Service[i].name}')),
              ))));
    }

    return Row(
      children: <Widget>[
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: list)
      ],
    );
  }

  Widget build_othercard(IconData myicon, String name) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: InkWell(
          onTap: () {},
          child: Padding(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "$name",
                  style: TextStyle(fontSize: 14.0),
                ),
                Icon(
                  myicon,
                  size: 16.0,
                ),
              ],
            ),
            padding: EdgeInsets.all(10.0),
          )),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.amber),
        backgroundColor: Colors.white70,
        body: Padding(
            padding: EdgeInsets.only(left: page_padding, top: top_padding),
            child: Column(children: <Widget>[
              buildWelcomeText(),
              buildPidType(),
              buildServiceType(),
              //buildServices(),

              build_othercard(Icons.add, 'Other'),
            ])));
  }
}
