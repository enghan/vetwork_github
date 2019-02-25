import 'package:flutter/material.dart';

class home extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber),
      backgroundColor: Colors.white70,
      body: new Row(mainAxisAlignment: MainAxisAlignment.start, children: <
          Widget>[
        Padding(padding: EdgeInsets.only(left: 15.0)),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          Text(
            'Welcom',
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.only(top: 6.0),
            child: Text(
              "What is your pet type ?",
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: <Widget>[
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
                                left: 20.0,
                                right: 20.0,
                                bottom: 8.0,
                                top: 10.0),
                            child: CircleAvatar(
                              radius: 20.0,
                              backgroundImage: AssetImage("assets/dog.jpg"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 5.0),
                            child: Text(
                              "Dog",
                              style: TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              new GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(top: 3.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: new Container(
                      child: new Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0,
                                right: 20.0,
                                bottom: 8.0,
                                top: 10.0),
                            child: CircleAvatar(
                              radius: 20.0,
                              backgroundImage: AssetImage("assets/dog.jpg"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 5.0),
                            child: Text(
                              "Cat",
                              style: TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.0,
            ),
            child: Text(
              "what do you need to do ?",
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: <Widget>[
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
                                left: 20.0,
                                right: 20.0,
                                bottom: 8.0,
                                top: 10.0),
                            child: CircleAvatar(
                              radius: 20.0,
                              backgroundImage: AssetImage("assets/dog.jpg"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 5.0),
                            child: Text(
                              "HealthCare",
                              style: TextStyle(
                                  fontSize: 12.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              new GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(top: 3.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: new Container(
                      child: new Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0,
                                right: 20.0,
                                bottom: 8.0,
                                top: 10.0),
                            child: CircleAvatar(
                              radius: 20.0,
                              backgroundImage: AssetImage("assets/dog.jpg"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 5.0),
                            child: Text(
                              "Grooming",
                              style: TextStyle(
                                  fontSize: 12.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 13.0, bottom: 7.0),
            child: Text(
              "Choose your service",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: <Widget>[
              new GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: new Container(
                      child: new Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "Checkup",
                              style: TextStyle(fontSize: 14.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              new GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: new Container(
                      child: new Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "Vaccine",
                              style: TextStyle(fontSize: 14.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              new GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: new Container(
                      child: new Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "Deworming",
                              style: TextStyle(fontSize: 14.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              new GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: new Container(
                      child: new Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "Anal sac evacuation",
                              style: TextStyle(fontSize: 14.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              new GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: new Container(
                      child: new Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "Insecticiding",
                              style: TextStyle(fontSize: 14.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              new GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: new Container(
                      child: new Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "Veterinary drug shot",
                              style: TextStyle(fontSize: 14.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              new GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: Card(

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: new Container(
                      child: new Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "Human drug shot",
                              style: TextStyle(fontSize: 14.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              new GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: new Container(
                      child: new Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "X-ray / Sonar",
                              style: TextStyle(fontSize: 14.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
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
          ),
          Row(
            children: <Widget>[
              new GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'pet_profile');

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
                  Navigator.pushNamed(context, 'pet_profile');
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
              new GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 30.0 ,right: 30.0),
                  child: SizedBox(
                    width: 380.0,
                    height: 60.0,
                    child: RaisedButton(
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
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 100.0, top: 20.0),
            alignment: Alignment.bottomCenter,
            child: Text("ESTIMETD PRICE:800_1000"),
          )
        ])
      ]),
    );
  }
}
