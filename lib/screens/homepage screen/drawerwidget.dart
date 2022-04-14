import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class NavigationDrawer extends StatelessWidget {
  final Padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    final name = 'Irene';
    final profile = 'Edit profile';
    return Drawer(
      child: Material(
        color: Colors.teal,
        child: ListView(
          padding: Padding,
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: Padding.add(EdgeInsets.symmetric(vertical: 20)),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.orangeAccent,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        profile,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.white70,
            ),
            const SizedBox(
              height: 10,
            ),
            buildMenuItem(
              text: 'Home',
              icon: (Icons.home),
            ),
            const SizedBox(
              height: 15,
            ),
            buildMenuItem(text: 'Promotion', icon: (Icons.local_offer)),
            const SizedBox(
              height: 15,
            ),
            buildMenuItem(text: 'Payment', icon: (Icons.payment)),
            const SizedBox(
              height: 15,
            ),
            buildMenuItem(text: 'Support', icon: (Icons.sms)),
            const SizedBox(
              height: 15,
            ),
            buildMenuItem(text: 'About', icon: (Icons.error_outline)),
          ],
        ),
      ),
    );
  }

  buildMenuItem({
    String text="",
    required IconData icon,
  }) {
    final color = Colors.white;
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(text, style: TextStyle(color: Colors.black)),
      onTap: () {},
    );
  }
}
