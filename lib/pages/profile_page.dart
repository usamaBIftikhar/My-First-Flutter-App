import 'package:flutter/material.dart';
import 'package:my_app/core/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Column(
        children: const [
          CircleAvatar(
            backgroundImage: AssetImage('images/yeah.png'),
            radius: 60,
          ),
          SizedBox(
            height: kDouble40,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Login'),
          ),
          ListTile(
            leading: Icon(Icons.contact_mail),
            title: Text('Contact'),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Info'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.dark_mode),
      ),
    );
  }
}
