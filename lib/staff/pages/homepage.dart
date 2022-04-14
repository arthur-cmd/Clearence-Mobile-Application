import 'package:flutter/material.dart';
//import 'package:ocms/bloc%20navigation/navigation_block.dart';
import 'package:ocms/staff/StaffNavigation.dart';

class StaffHomepage extends StatefulWidget with StaffNavigationStates {
  @override
  State<StaffHomepage> createState() => _StaffHomepageState();
}

class _StaffHomepageState extends State<StaffHomepage> {
  String Name = "";
  String Regno = "";
  String Room_no = "";
  String Programme = "";
  String Hall = "";
  String Sponsor = "";

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Widget BuildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: '     name'),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'enter your name';
        }
      },
      onSaved: (String? value) {
        Name = value!;
      },
    );
  }

  Widget BuildReg() {
    return TextFormField(
      decoration: InputDecoration(labelText: '     Registration number'),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'enter your registration number';
        }
      },
      onSaved: (String? value) {
        Regno = value!;
      },
    );
  }

  

  Widget BuildRoom() {
    return TextFormField(
      decoration: InputDecoration(labelText: '     Room'),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'enter your room number';
        }
      },
      onSaved: (String? value) {
        Room_no = value!;
      },
    );
  }

  Widget BuildProgramme() {
    return TextFormField(
      decoration: InputDecoration(labelText: '    Programme'),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'enter your programme';
        }
      },
      onSaved: (String? value) {
        Programme = value!;
      },
    );
  }

  Widget BuildHall() {
    return TextFormField(
      decoration: InputDecoration(labelText: '      Hall'),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'enter your hall of residency';
        }
      },
      onSaved: (String? value) {
        Hall = value!;
      },
    );
  }

  Widget BuildSponsor() {
    return TextFormField(
      decoration: InputDecoration(labelText: '       Sponsor'),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'enter your sponsor name';
        }
      },
      onSaved: (String? value) {
        Sponsor = value!;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BuildName(),
            BuildReg(),
            BuildRoom(),
            BuildHall(),
            BuildSponsor(),
            SizedBox(
              height: 100,
            ),
            RaisedButton(
                child: Text('submit',
                    style: TextStyle(fontSize: 16, color: Colors.blue)),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    return _formKey.currentState!.save();
                  }
                })
          ],
        ),
      )),
    );
  }
}
