import 'package:flutter/material.dart';
import 'package:system32online_portal/helpers/helpSys.dart';
import 'package:system32online_portal/webview_container/webview_container.dart';

class HomePortal2 extends StatelessWidget {
  static final links = ['https://google.com', 'https://google.com'];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: new Container(
                child: new Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    new Text(
                      "Dashboard",
                      style: new TextStyle(
                        fontSize: 20.0,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                new SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    new Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          // ignore: deprecated_member_use
                          child: FlatButton(
                      padding: const EdgeInsets.only(right: 5.0),
                      
                      color: Color(0xFFFD7384),
                      onPressed: () {
                          _handleURLButtonPress(context, Links.activeOrdersLink);
                      },
                      child: new Container(
                          height: 100.0,
                          decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(3.0),
                              ),
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Icon(
                                Icons.web,
                                color: Colors.white,
                              ),
                              new Text("Active",
                                  style: new TextStyle(color: Colors.white)),
                            ],
                          ),
                      ),
                    ),
                        )),
                    new Expanded(
                        child: new Container(
                      height: 100.0,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              // ignore: deprecated_member_use
                              child: FlatButton(
                                color: Colors.greenAccent,
                                padding:
                                    const EdgeInsets.only( right: 2.5),
                                onPressed: () { 
                                  _handleURLButtonPress(context, Links.invoiceLink);
                                 },
                                child: new Container(
                                  decoration: new BoxDecoration(
                                      // color: Color(0XFF2BD093),
                                      borderRadius: new BorderRadius.circular(5.0)),
                                  child: new Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(right: 2.0),
                                        child: new Icon(
                                          Icons.money,
                                          color: Colors.white,
                                        ),
                                      ),
                                      new Text('Invoices',
                                          style: new TextStyle(color: Colors.white))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              // ignore: deprecated_member_use
                              child: FlatButton(
                                color: Colors.orange[700],
                                padding:
                                    const EdgeInsets.only(right: 2.5),
                                onPressed: () { 
                                  _handleURLButtonPress(context, Links.activeOrdersLink);
                                 },
                                child: new Container(
                                  decoration: new BoxDecoration(
                                      // color: Color(0XFFFC7B4D),
                                      borderRadius: new BorderRadius.circular(5.0)),
                                  child: new Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(right: 2.0),
                                        child: new Icon(
                                          Icons.beenhere,
                                          color: Colors.white,
                                        ),
                                      ),
                                      new Text('Orders',
                                          style: new TextStyle(color: Colors.white))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                    new Expanded(
                        child: new Container(
                      height: 100.0,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              // ignore: deprecated_member_use
                              child: FlatButton(
                                color: Colors.blueAccent,
                                padding:
                                    const EdgeInsets.only(left: 2.5),
                                onPressed: () { 
                                  _handleURLButtonPress(context, Links.supportLink);
                                 },
                                child: new Container(
                                  decoration: new BoxDecoration(
                                      // color: Color(0XFF53CEDB),
                                      borderRadius: new BorderRadius.circular(5.0)),
                                  child: new Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(right: 2.0),
                                        child: new Icon(
                                          Icons.chat,
                                          color: Colors.white,
                                        ),
                                      ),
                                      new Text('Ticket',
                                          style: new TextStyle(color: Colors.white))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // Expanded(
                          //   child: Padding(
                          //     padding: const EdgeInsets.only(left: 2.5),
                          //     child: new Container(
                          //       decoration: new BoxDecoration(
                          //               color: Colors.redAccent,
                          //           // color: Color(0XFFF1B069),
                          //           borderRadius: new BorderRadius.circular(5.0)),
                          //       child: new Row(
                          //         mainAxisAlignment: MainAxisAlignment.center,
                          //         children: <Widget>[
                          //           Padding(
                          //             padding: const EdgeInsets.all(1.0),
                          //             child: FlatButton(
                          //               padding: const EdgeInsets.only(right: 2.0),
                          //               onPressed: () { 
                          //                 _handleURLButtonPress(context, Links.supportLink);
                          //                },
                          //               child: new Icon(
                          //                 Icons.question_answer,
                          //                 color: Colors.white,
                          //               ),
                          //             ),
                          //           ),
                          //           new Text('Help',
                          //               style: new TextStyle(color: Colors.white)),
                          //         ],
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    )),
                  ],
                ),
                new SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: <Widget>[
                    new Expanded(
                        child: new Text("Extras",
                            style: new TextStyle(fontSize: 18.0))),
                    new Expanded(
                        child: new Text(
                      "",
                      style: new TextStyle(color: Color(0XFF2BD093)),
                      textAlign: TextAlign.end,
                    ))
                  ],
                ),
                new SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    new Expanded(
                      child: Container(
                        height: 150.0,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 100.0,
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  image: new DecorationImage(
                                      image:
                                          new AssetImage('assets/whatisblog.png'),
                                      fit: BoxFit.cover)),
                            ),
                            new Text(
                              "Blog",
                              style: new TextStyle(fontSize: 12.0),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                    new SizedBox(
                      width: 5.0,
                    ),
                    new Expanded(
                      child: Container(
                        height: 150.0,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 100.0,
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  image: new DecorationImage(
                                      image: new AssetImage(
                                          'assets/Finding_Happiness.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            new Text("shopping",
                                style: new TextStyle(fontSize: 12.0),
                                textAlign: TextAlign.center)
                          ],
                        ),
                      ),
                    ),
                    new SizedBox(
                      width: 5.0,
                    ),
                    new Expanded(
                      child: Container(
                        height: 150.0,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 100.0,
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  image: new DecorationImage(
                                      image: new AssetImage(
                                          'assets/information.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            new Text('Information',
                                style: new TextStyle(fontSize: 12.0),
                                textAlign: TextAlign.center)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                new SizedBox(
                  height: 1.0,
                ),
                Row(
                  children: <Widget>[
                    new Expanded(
                        child: new Text("Promos",
                            style: new TextStyle(fontSize: 18.0))),
                    new Expanded(
                        child: new Text(
                      "",
                      style: new TextStyle(color: Color(0XFF2BD093)),
                      textAlign: TextAlign.end,
                    ))
                  ],
                ),
                new SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    new Expanded(
                      child: Container(
                        height: 150.0,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              height: 100.0,
                              decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  image: new DecorationImage(
                                      image: new AssetImage('assets/promo.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            new Text(
                              "Popular Promos",
                              style: new TextStyle(fontSize: 16.0),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                    new SizedBox(
                      width: 5.0,
                    ),
                  ],
                ),
              ],
            )),
          )
        ],
      ),
    );
  }

  void _handleURLButtonPress(BuildContext context, String url) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => WebViewContainer(url)));
  }
}
