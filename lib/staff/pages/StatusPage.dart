import 'package:flutter/material.dart';
//import 'package:ocms/bloc%20navigation/navigation_block.dart';
import 'package:ocms/staff/StaffNavigation.dart';
import 'ClearencePage.dart';

class StaffStatusPage extends StatelessWidget with StaffNavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StaffClearencePage()));
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                )),
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 16.0, top: 6),
                child: ClipOval(),
              )
            ]),
        body: Column(children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Notifications',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15.0),
                        child: Text('View All'),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              )
            ],
          ), //to show the clock

          Expanded(
              child: GestureDetector(
                  onTap: () {
                    print('Tapped');
                  },
                  child: Container(
                      width: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            topLeft: Radius.circular(35),
                          ),
                          ),
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        children: const [
                          SizedBox(
                            height: 20,
                          ),
                          ListTile(
                            //leading: ClipOval(),
                            title: Text.rich(TextSpan(children: <TextSpan>[
                              TextSpan(
                                  text: 'Estate manager',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(
                                text: ' Cleared your tu',
                              )
                            ])),
                            subtitle: Text('9 mins ago'),
                            trailing: Icon(Icons.delete, color: Colors.black),
                          ),
                          ListTile(
                            //leading: ClipOval(),
                            title: Text.rich(TextSpan(children: <TextSpan>[
                              TextSpan(
                                  text: 'Bursar',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(
                                text: ' postponed till hall payment',
                              )
                            ])),
                            subtitle: Text('47 mins ago'),
                            trailing: Icon(Icons.delete, color: Colors.black),
                          ),
                          ListTile(
                            //leading: ClipOval(),
                            title: Text.rich(TextSpan(children: <TextSpan>[
                              TextSpan(
                                  text: 'Head of department',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(
                                text: ' Cleared you',
                              )
                            ])),
                            subtitle: Text('9 mins ago'),
                            trailing: Icon(Icons.delete, color: Colors.black),
                          ),
                        ],
                      ))))
        ]));
  }
}
