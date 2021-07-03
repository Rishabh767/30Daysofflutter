import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imgUrl =
        "https://instastory.net/gimages/https://instagram.fiev22-2.fna.fbcdn.net/v/t51.2885-19/s320x320/169497969_1644632092591408_4052803323558312961_n.jpg?tp=1&_nc_ht=instagram.fiev22-2.fna.fbcdn.net&_nc_ohc=vHaUq7MZFt0AX91C2MG&edm=ABfd0MgBAAAA&ccb=7-4&oh=11e710fddd0dcaf05adbccc77f09d908&oe=60E44803&_nc_sid=7bff83";
    return Drawer(
      child: Container(
        color: Colors.teal[100],
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                    margin: EdgeInsets.zero,
                    accountName: Text("Rishabh Rana"),
                    accountEmail: Text("rishabhrana765@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(imgUrl),
                    ))),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.teal),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.teal),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled, color: Colors.teal),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.teal),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.teal),
              title: Text(
                "Contact",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.teal),
              ),
            )
          ],
        ),
      ),
    );
  }
}
// Day-11  
// learnt about Flutter trees -
// 1.Widget-They are Immutable
// 2.Element-They contain widgets and update themselves by replacing the widgets on any change
// 3.Render -REnders all the info

// Constraints go down ,sizes go up, parent sets position
