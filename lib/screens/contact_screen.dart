import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:navigationdrawer/screens/note_screen.dart';

import 'event_screen.dart';
import 'home_screen.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Screen"),
        centerTitle: true,
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu));
        }),
        
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          DrawerHeader(
              child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 40,
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuSGj1RVzucZXJQEgvRbkWADFnRe0kl7BbMA&s"),
              ),
              Text(
                "John Cena",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                "johncena@gmail.com",
                style: TextStyle(color: Colors.white),
              )
            ],
          )),
          Expanded(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => HomeScreen()));
                    },
                    leading: Icon(Icons.dashboard),
                    title: Text("Dashboard"),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => ContactScreen()));
                    },
                    leading: Icon(Icons.contact_mail),
                    title: Text("Contacts"),
                  ),
                  ListTile(
                    leading: Icon(Icons.event),
                    title: Text("Events"),
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => EventScreen()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.notes),
                    title: Text("Notes"),
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => NoteScreen()));
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("Settings"),
                  ),
                  ListTile(
                    leading: Icon(Icons.notification_add),
                    title: Text("Notifications"),
                  ),
                  ListTile(
                    leading: Icon(Icons.privacy_tip),
                    title: Text("Privacy"),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
      body: Center(child: Text("Contact Screen")),
    );
  }
}
