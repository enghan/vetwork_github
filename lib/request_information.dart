import 'package:flutter/material.dart';
import 'UI/folder_style/AppStyles.dart';
import 'UI/folder_style/ui_constants.dart';
import 'Model/exist_address.dart';
import 'add_address.dart';
import 'UI/folder_style/colors.dart';
class request_information extends StatelessWidget {
  final Widget child;
  BuildContext _context;
  request_information({Key key, this.child}) : super(key: key);
  List<exist_address> address = [
    exist_address(
        name: "John Doe",
        address: "11 EL Yassmine villa ,Fifth settlement,new",
        phone: "(+20)123456789"),
    exist_address(
        name: "John Doe",
        address: "11 EL Yassmine villa ,Fifth settlement,new",
        phone: "(+20)123456789"),
  ];
  bool Visit_check = false;
  bool priority_check = false;
  bool selected = false;
  @override

  Widget build(BuildContext context) {
    _context = context;
    return Scaffold(
      backgroundColor: Colors.white,
      body: buildPageContainer(),
    );}
  Widget buildPageContainer() {
    var listview = Container(
      color: clrgray,
      child: ListView(
        children: <Widget>[
          buildHeader(),
          SizedBox(
            height: page_margin,
          ),
          buildContent(),
        ],
      ),
    );

    var stack = Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Positioned(
          child: Align(
            alignment: FractionalOffset.topLeft,
            child: listview,
          ),
        ),
        Positioned(
          child: Align(
            child: buildFooter(),
            alignment: FractionalOffset.bottomCenter,
          ),
        ),
      ],
    );

    var pageContainer = Container(
      child: stack,
    );
    return Padding(
      child: pageContainer,
      padding: EdgeInsets.all(page_margin),
    );
  }

  buildHeader() {


    return Text("hi");
  }


  buildFooter() {

  }

  buildContent() {
    return build_cardaddress();
  }





//    return new Scaffold(
//        backgroundColor: Colors.amber,
//        // appBar: AppBar(backgroundColor: Colors.amber),
//        body: Stack(children: <Widget>[
//          Container(
//            padding: EdgeInsets.only(top: 50.0),
//            width: 300.0,
//            height: 200.0,
//            child: build_request_informaiton(),
//          ),
//          Container(
//            padding: EdgeInsets.only(top: 190.0),
//            child: build_cardaddress(),
//          ),
//          Container(
//            padding: EdgeInsets.only(top: 410.0, left: page_margin),
//            child: build_othercard(Icons.add, "Add new address"),
//          ),
//          build_check("Schedual Visit", Visit_check),
//          build_check("Priority Service", priority_check)
//        ]
////          build_request_informaiton(),
////
//        ));
//  }
//


  Widget cancel_back() {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.topRight,
          child: Card(
            child: Text("hello"),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Card(
            child: Text("hello"),
          ),
        ),
      ],
    );
  }

  Widget build_request_informaiton() {
    return Padding(
        padding: EdgeInsets.only(
            top: top_padding, left: page_margin, bottom: page_padding),
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

  Widget service_Card(List<exist_address> Service, int position) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Checkbox(value: selected, onChanged: null),

          // service_Card(address),

          Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.all(page_padding),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('${Service[position].name}'),
                          Padding(
                            padding: EdgeInsets.only(top: top_padding),
                            child: Text('${Service[position].address}'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: top_padding),
                            child: Text('${Service[position].phone}'),
                          )
                        ]),
                  )))
        ]);
  }

  Widget build_cardaddress() {
    return Container(
        child: ListView.builder(
            itemCount: address.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, int position) {
              return service_Card(address, position);
            }));
  }

  Widget build_othercard(IconData myicon, String name) {
    var card = Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: InkWell(
          onTap: () {

          },
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
          ),
        ));
    return SizedBox(width: 217.0, height: 50.0, child: card);
  }

  Widget build_check(String title, bool boolValue) {
    return Container(
        child: Padding(
          padding: EdgeInsets.only(left: page_margin),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Checkbox(
                value: boolValue,
                onChanged: (bool value) {},
              ),
              Text(title),
            ],
          ),
        ));
  }

}