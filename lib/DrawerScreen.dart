import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'main.dart';

class Drawerscreen extends StatefulWidget {
  const Drawerscreen({super.key});

  @override
  State<Drawerscreen> createState() => _DrawwerscreenState();
}

class _DrawwerscreenState extends State<Drawerscreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: <Widget>[
      UserAccountsDrawerHeader(
        accountName: Text("Fillah Septian"),
        currentAccountPicture:
            CircleAvatar(backgroundImage: AssetImage("assets/img/profil.png")),
        accountEmail: Text("fillah@gmail.com"),
      ),
      DrawerListTile(
        iconData: Icons.group,
        title: "NewGroup",
        onTilePressed: () {},
      ),
      DrawerListTile(
        key: null,
        iconData: Icons.lock,
        title: "New Secret Group",
        onTilePressed: () {},
      ),
      DrawerListTile(
        key: null,
        iconData: Icons.notifications,
        title: "New Channel Chat",
        onTilePressed: () {},
      ),
      DrawerListTile(
        key: null,
        iconData: Icons.contacts,
        title: "Contacts",
        onTilePressed: () {},
      ),
      DrawerListTile(
        key: null,
        iconData: Icons.bookmark_border,
        title: "Saved Message",
        onTilePressed: () {},
      ),
      DrawerListTile(
        key: null,
        iconData: Icons.logout,
        title: "Logout",
        onTilePressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyApp()),
          );
        },
      ),
    ]));
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTilePressed;
  const DrawerListTile(
      {Key? key,
      required this.iconData,
      required this.title,
      required this.onTilePressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(
        title,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
