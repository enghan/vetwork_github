import 'package:flutter/material.dart';


class home extends StatefulWidget {
  @override
  _State createState() => new _State();
}

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

  Widget buildWelcomeText() {
    return Container(
        child: Column(children: <Widget>[
          Text(
            'Welcom',
            style: TextStyle(fontSize: 34.0, fontWeight: FontWeight.bold),
          ),
        ]));
  }

  Widget buildPidType(String name, String image) {
    return Container(
        child: Column(children: <Widget>[
          new GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(right: 5.0, top: 3.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: new Container(
                  child: new Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, bottom: 8.0, top: 10.0),
                        child: CircleAvatar(
                          radius: 20.0,
                          backgroundImage: AssetImage("$image"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5.0),
                        child: Text(
                          "$name",
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ]));
  }

  Widget buildServiceType() {
    return Container(
        child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 10.0, left: 10.0),
            child: Text(
              "what do you need to do ?",
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
            ),
          )
        ]));
  }

  buildServices() {}
  /////////////////////////////////////////////
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
    final querydata = MediaQuery.of(context);
    double devicePixelRatio = querydata.devicePixelRatio;
    final maxWidth = MediaQuery.of(context).size.width;
    final maxHeight = MediaQuery.of(context).size.height;
    print("maxWidth = $maxWidth / maxHeight = $maxHeight");
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.amber),
        backgroundColor: Colors.white70,
        body: Column(children: <Widget>[
          Padding(
              padding: EdgeInsets.only(
                left: 24.0,
              ),
              child: Row(children: <Widget>[
                buildWelcomeText(),
              ])),
          Row(
            children: <Widget>[
              buildPidType("Dog", "assets/dog.jpg"),
              buildPidType("Cat", "assets/dog.jpg"),
            ],
          ),
          Row(
            children: <Widget>[buildServiceType()],
          ),
          Row(
            children: <Widget>[
              buildPidType("HealthCare", "assets/dog.jpg"),
              buildPidType("Grooming", "assets/dog.jpg"),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0, right: 5.0, left: 10.0),
            child: Row(
              children: <Widget>[
                service_Card("checkup"),
                service_Card("Vaccine"),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0, right: 5.0, left: 10.0),
            child: Row(children: <Widget>[
              service_Card("Deworming"),
              service_Card("Anal sac evacuation"),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0, right: 5.0, left: 10.0),
            child: Row(
              children: <Widget>[
                service_Card("Insecticiding"),
                service_Card("Veterinary drug shot"),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 13.0, bottom: 7.0, left: 10.0),
            child: Row(
              children: <Widget>[
                service_Card("Human drug shot"),
                service_Card("X-ray / Sonar"),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 13.0, bottom: 7.0, left: 10.0),
              child: Row(
                children: <Widget>[
                  new GestureDetector(
                    onTap: () {},
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: new Container(
                        child: new Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                "Other",
                                style: TextStyle(fontSize: 14.0),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 4.0),
                              child: Icon(
                                Icons.add,
                                size: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          Row(
            children: <Widget>[
              new GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/pet_profile');
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, right: 5.0),
                  child: Card(
                    color: Colors.black12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60.0),
                    ),
                    child: new Container(
                      child: new Column(
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.add,
                                size: 20.0,
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              new GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/pet_profile');
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    "Add this pet for future use",
                    style:
                    TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding:
                const EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0),
                child: SizedBox(
                  width: 90.0,
                  height: 60.0,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/request_information');
                    },
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                    color: Colors.white,
                    child: Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 10.0, top: 5.0),
            alignment: Alignment.bottomCenter,
            child: Text("ESTIMETD PRICE:800_1000"),
          )
        ]));
  }
}
