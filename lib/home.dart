import 'package:flutter/material.dart';
import 'UI/folder_style/ui_constants.dart';
import 'UI/folder_style/AppStyles.dart';
import 'UI/folder_style/colors.dart';
import 'Model/service.dart';


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
  Widget buildWelcomeText() {
    return Container(
        width: welcom_width,
        height: welcom_height,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
          Text(
            'Welcom',
            style: welcometextStyle,
          )
        ]));
  }

  Widget buildCard(String image, String title) {
    var card = Card(
      elevation: 5.0,
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
              children: <Widget>[
                Image.asset("$image"),
                Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text(
                      title,
                      style: textStyleH4a,
                    ))
              ],
            ),
            padding: EdgeInsets.all(7.0),
          ),
        ));
    return SizedBox(width: 100.0, height: 100.0, child: card);
  }

  Widget buildPidType() {
    var widget = Container(
        height: petType_height,
        width: petType_width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: bottom_padding),
              child: Text(
                'Chooes Species',
                style: textStyleH2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                buildCard("assets/dog.png", 'Dog'),
                SizedBox(
                  width: 10.0,
                ),
                buildCard("assets/cat.png", 'Cat'),
              ],
            )
          ],
        ));

    return widget;
  }

  Widget buildServiceType() {
    var widget = Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: bottom_padding,top: page_padding),
          child: Text(
            'What does your pet need today',
            style: textStyleH2,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            buildCard("assets/health.png", 'HealthCare'),
            SizedBox(
              width: 10.0,
            ),
            buildCard("assets/hair_brush.png", 'Grooming'),
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
        elevation: 5.0,
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

    return   Container(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        Padding(
        padding: EdgeInsets.only(bottom: 5.0,top: page_padding),
    child: Text("Chooes your service",style: textStyleH2,)
        ,),
        Row( children: list)

    ])) ;
  }

  Widget build_othercard(IconData myicon, String name) {
   var card= Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: InkWell(
          onTap: () {},
          child: Padding(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

              Text(
                  "$name",
                  style: textStyleH4a,
                ),
              Icon(
                myicon,
                size: 16.0,
              ),
            ]),
 padding: EdgeInsets.all(page_padding),
       ),)
    );
   return SizedBox(width: 80.0, height: 50.0, child: card);

  }
  Widget build_next_button(){
return Container(
  height: next_button_height,
  width: next_button_width,

  child: Padding(padding: EdgeInsets.only(top: page_padding),
    child:  RaisedButton(
      elevation: 5.0,
        onPressed: () {
          Navigator.pushNamed(context, '/request_information');
        },

        color:clrgray,
        child: Text(
          'Next',
          style: textStyleH4a,
        ),

      )
  ),

    );
  }
Widget build_Estimated(){
  return Container(
            padding: EdgeInsets.only( top: top_padding),
            alignment: Alignment.bottomCenter,
            child: Text("ESTIMETD PRICE:800_1000" , style: textStyleH3,),
          );
}
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.amber),
      //  backgroundColor: Colors.white70,
        body: Padding(
            padding: EdgeInsets.only(left: page_margin),
            child: Column(children: <Widget>[
              buildWelcomeText(),
              buildPidType(),
              buildServiceType(),
            service_Card(_tags_service),
//
              build_othercard(Icons.add, 'Other'),
              build_next_button(),
              build_Estimated(),
            ])));
  }
}

//          Row(
//            children: <Widget>[
//              new GestureDetector(
//                onTap: () {
//                  Navigator.pushNamed(context, '/pet_profile');
//                },
//                child: Padding(
//                  padding: const EdgeInsets.only(top: 10.0, right: 5.0),
//                  child: Card(
//                    color: Colors.black12,
//                    shape: RoundedRectangleBorder(
//                      borderRadius: BorderRadius.circular(60.0),
//                    ),
//                    child: new Container(
//                      child: new Column(
//                        children: <Widget>[
//                          Padding(
//                              padding: const EdgeInsets.all(10.0),
//                              child: Icon(
//                                Icons.add,
//                                size: 20.0,
//                                color: Colors.white,
//                              )),
//                        ],
//                      ),
//                    ),
//                  ),
//                ),
//              ),
//              new GestureDetector(
//                onTap: () {
//                  Navigator.pushNamed(context, '/pet_profile');
//                },
//                child: Padding(
//                  padding: const EdgeInsets.only(top: 10.0),
//                  child: Text(
//                    "Add this pet for future use",
//                    style:
//                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
//                  ),
//                ),
//              ),
//            ],
//          ),
//          Row(
//            crossAxisAlignment: CrossAxisAlignment.center,
//            children: <Widget>[
//              Padding(
//                padding:
//                    const EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0),
//                child: SizedBox(
//                  width: 90.0,
//                  height: 60.0,
//                  child: RaisedButton(
//                    onPressed: () {
//                      Navigator.pushNamed(context, '/request_information');
//                    },
//                    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
//                    color: Colors.white,
//                    child: Text(
//                      'Next',
//                      style: TextStyle(
//                        fontSize: 30.0,
//                        color: Colors.black,
//                      ),
//                    ),
//                  ),
//                ),
//              ),
//            ],
//          ),
//          Container(
//            padding: EdgeInsets.only(left: 10.0, top: 5.0),
//            alignment: Alignment.bottomCenter,
//            child: Text("ESTIMETD PRICE:800_1000"),
//          )
