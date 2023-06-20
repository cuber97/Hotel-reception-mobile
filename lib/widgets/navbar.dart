import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('Patryk Kapuściński'),
            accountEmail: Text('patryk0797@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Icon(Icons.face)),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.file_upload),
            title: const Text('Rooms'),
            onTap: () => print('tapped'),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.file_upload),
            title: const Text('Upload shot'),
            onTap: () => print('tapped'),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.file_upload),
            title: const Text('Upload shot'),
            onTap: () => print('tapped'),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.file_upload),
            title: const Text('Upload shot'),
            onTap: () => print('tapped'),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.file_upload),
            title: const Text('Upload shot'),
            onTap: () => print('tapped'),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.file_upload),
            title: const Text('Upload shot'),
            onTap: () => print('tapped'),
          )
        ],
      ),
    );
  }
}
