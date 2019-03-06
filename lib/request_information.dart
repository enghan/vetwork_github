import 'package:flutter/material.dart';
import 'UI/folder_style/AppStyles.dart';
import 'UI/folder_style/ui_constants.dart';
import 'Model/exist_address.dart';

class request_information extends StatefulWidget {
  @override
  _State createState() => new _State();
}

List<exist_address> address = [
  exist_address(
      name: "John Doe",
      address: "11 EL Yassmine villa ,Fifth settlement,new",
      phone: "(+20)123456789"),

];
bool Visit_check = false;
bool priority_check = false;
bool selected = false;
Widget build_request_informaiton() {
  return Padding(
      padding: EdgeInsets.only(top: top_padding ,left: page_margin),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Request Information',
              style: welcometextStyle,
            ),
            Padding(
              padding: EdgeInsets.only(top: top_padding),
              child: Text(
                "finish your request by adding the information displayed now ",
                style: textStyleH5,
              ),
            )
          ]));
}

Widget service_Card(List<exist_address> Service) {
  List<Widget> list = List<Widget>();
  for (var i = 0; i < Service.length; i++) {
    list.add(
      Card(
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: InkWell(
              onTap: () {
                var price = double.parse('${Service[i].phone}');

                print(price);
              },
              child: Padding(
                padding: EdgeInsets.all(page_padding),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('${Service[i].name}'),
                      Padding(
                        padding: EdgeInsets.only(top: top_padding),
                        child: Text('${Service[i].address}'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: top_padding),
                        child: Text('${Service[i].phone}'),
                      )
                    ]),
              ))),
    );
  }
  return Container(child: Row(children: list));
}

Widget build_cardaddress() {
  return Container(
      child:Column(children: <Widget>[
    Padding(
      padding: EdgeInsets.only(top: page_padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Checkbox(value: selected, onChanged: null),
          SizedBox(
            width: 10.0,
          ),
          service_Card(address),
        ],
      ),
  )
  ]));
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
  return SizedBox(width: 217.0, height: 50.0, child: card);

}
Widget build_check(String title, bool  boolValue){
  return Container(

    child: Padding(padding: EdgeInsets.only(left: page_margin),child:
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[

        Checkbox(
          value: boolValue,
          onChanged: (bool value) {


          },
        ),
        Text(title),
      ],
    )
      ,));
}
class _State extends State<request_information> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(backgroundColor: Colors.amber),
        backgroundColor: Colors.white,
        body: Column(children: <Widget>[
          build_request_informaiton(),
          build_cardaddress(),
          build_othercard(Icons.add,"Add new address"),
          build_check("Schedule a Visit",Visit_check),
          build_check("Priority Service",priority_check),
        ]));
  }
}
//                  Checkbox(
//                      value: isChecked,
//                      onChanged: (value) {
//                        setState(() {
//                          isChecked = value;
//                        });
//                      },
//                    ),
//                    Padding(
//                      padding: const EdgeInsets.only(left: 20.0),
//                      child: Card(
//                        shape: RoundedRectangleBorder(
//                          borderRadius: BorderRadius.circular(15.0),
//                        ),
//                        child: new Container(
//                          width: 300.0,
//                          height: 90.0,
//                          child: Padding(
//                            padding: const EdgeInsets.all(12.0),
//                            child: Text(
//                              "Checkupfnfujffffyy \t kmjnhtrind\tojdndgteo",
//                              style: TextStyle(fontSize: 14.0),
//                            ),
//                          ),
//                        ),
//                      ),
//                    ),
//                  ],
//                ),
//                Padding(
//                  padding: const EdgeInsets.only(left: 70.0, top: 15.0),
//                  child: Row(
//                    children: <Widget>[
//                      new GestureDetector(
//                        onTap: () {},
//                        child: Card(
//                          shape: RoundedRectangleBorder(
//                            borderRadius: BorderRadius.circular(15.0),
//                          ),
//                          child: new Container(
//                            width: 150.0,
//                            child: new Row(
//                              children: <Widget>[
//                                Padding(
//                                  padding: const EdgeInsets.all(5.0),
//                                  child: Text(
//                                    "Add new address",
//                                    style: TextStyle(fontSize: 14.0),
//                                  ),
//                                ),
//                                Padding(
//                                  padding: const EdgeInsets.only(right: 4.0),
//                                  child: Icon(
//                                    Icons.add,
//                                    size: 16.0,
//                                  ),
//                                ),
//                              ],
//                            ),
//                          ),
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//              ],
//            ),
//            Padding(
//                padding: const EdgeInsets.only(left: 70.0),
//                child: Row(children: <Widget>[
//                  Checkbox(
//                    value: isChecked2,
//                    onChanged: (value) {
//                      setState(() {
//                        isChecked2 = value;
//                      });
//                    },
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.all(5.0),
//                    child: Text(
//                      "Requesr service later",
//                      style: TextStyle(fontSize: 14.0),
//                    ),
//                  ),
//                ])),
//            Align(
//              alignment: Alignment.bottomCenter,
//            ),
//          ],
//        ),
//        persistentFooterButtons: <Widget>[
//          SizedBox(
//              width: 450.0,
//              height: 60.0,
//              child: new Padding(
//                padding: EdgeInsets.only(left: 20.0, right: 20.0),
//                child: RaisedButton(
//                  child: new Text('Next', style: TextStyle(color: Colors.grey)),
//                  onPressed: () {
//                    Navigator.pushNamed(context, '/add_address');
//                  },
//                ),
//              )),
//        ]);
////      ),
////    ],
////  ),}
