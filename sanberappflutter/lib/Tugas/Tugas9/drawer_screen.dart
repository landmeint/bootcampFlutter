import 'package:flutter/material.dart';


class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: const Text("Abdullah Zakaria"),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: const AssetImage("assets/img/profile.jpg") 
            ),
            accountEmail: const Text("zakariabdullah97@gmail.com")
            ),
          DrawerListTile(
            iconData: Icons.group,
            title: "NewGroup",
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData: Icons.lock,
            title: "New Secret Group",
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData: Icons.notifications,
            title: "New Channel Chat",
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData: Icons.contacts,
            title: "Contacts",
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData: Icons.bookmark_border,
            title: "Saved Message",
            onTilePressed: (){},
          ),
          DrawerListTile(
            iconData: Icons.phone,
            title: "Calls",
            onTilePressed: (){},
          )
        ],
      )
    );
  }
}

class DrawerListTile extends StatelessWidget {
  
  final IconData? iconData;
  final String? title;
  final VoidCallback? onTilePressed;
  const DrawerListTile({super.key, this.iconData, this.title, this.onTilePressed});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(title!, style: TextStyle(fontSize: 16))
    );
  }
}