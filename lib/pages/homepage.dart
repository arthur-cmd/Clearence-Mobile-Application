import 'package:flutter/material.dart';
import 'package:ocms/bloc%20navigation/navigation_block.dart';

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
            color: Colors.blue,
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
            color: Colors.blue,
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
            color: Colors.blue,
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
            color: Colors.blue,
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
            color: Colors.blue,
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
            color: Colors.blue,
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
                color: Colors.blue,
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
