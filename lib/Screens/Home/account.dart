import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: Text("Account"),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.security),
            title: Text("Security notification"),
          ),
          ListTile(
            leading: Icon(Icons.key),
            title: Text("Security notification"),
          ),
          ListTile(
            leading: Icon(Icons.email_outlined),
            title: Text("Email address"),
          ),
          ListTile(
            leading: Icon(Icons.password),
            title: Text("Two-step verificatoin"),
          ),
          ListTile(
            leading: Icon(Icons.app_blocking_outlined),
            title: Text("Change number"),
          ),
          ListTile(
            leading: Icon(Icons.person_add_alt_outlined),
            title: Text("Add account"),
          ),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text("Delete account"),
          ),
        ],
      ),
    );
  }
}
