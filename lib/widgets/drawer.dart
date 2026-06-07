import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://avatars.githubusercontent.com/u/232653574?s=400&u=b88ab6ec0a9e908d153c29b21e5ce9b82cd4be58&v=4";
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text('Ansh Sharma'), 
              accountEmail: Text('ansh6983@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
              ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
            ),
            title: Text(
              'Home',
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
            ),
            title: Text(
              'Profile',
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
            ),
            title: Text(
              'Mail me',
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.memories_badge_plus,
            ),
            title: Text(
              'Memories',
            ),
          ),
        ],
      ),
    );
  }
}