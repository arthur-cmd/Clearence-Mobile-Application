import 'package:flutter/material.dart';
import 'package:ocms/bloc%20navigation/navigation_block.dart';
import 'package:hexcolor/hexcolor.dart';

class Homepage extends StatefulWidget with NavigationStates {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String Name = "";
  String Regno = "";
  String Room_no = "";
  String Programme = "";
  String Hall = "";
  String Sponsor = "";

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Widget BuildName() {
    return TextFormField(
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.important_devices,
            color: HexColor("013221"),
          ),
          labelText: '     name'),
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
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.confirmation_number,
            color: HexColor("013221"),
          ),
          labelText: '     Registration number'),
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
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.bed,
            color: HexColor("013221"),
          ),
          labelText: '     Room'),
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
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.book,
            color: HexColor("013221"),
          ),
          labelText: '    Programme'),
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
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.room,
            color: HexColor("013221"),
          ),
          labelText: '      Hall'),
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
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.people,
            color: HexColor("013221"),
          ),
          labelText: '       Sponsor'),
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
            SizedBox(
              height: 100,
            ),
            BuildName(),
            BuildReg(),
            BuildRoom(),
            BuildHall(),
            BuildSponsor(),
            SizedBox(
              height: 100,
            ),
            RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                color: HexColor("013221"),
                child: Text('submit',
                    style: TextStyle(fontSize: 16, color: Colors.white)),
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
