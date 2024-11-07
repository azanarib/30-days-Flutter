import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const image =
        "data:image/webp;base64,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";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: const [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                ),
                margin: EdgeInsets.zero,
                accountName: Text("Maher Zain"),
                accountEmail: Text("maherzain@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                    image,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.white,
              ),
              title: Text(
                "Contact Us",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
