import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});
  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:
      ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(color:Colors.blue, width: 7.5)),
            ),
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  height: 70,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/2.png'),
                    ),
                  ),
                ),
                const Text("malaklaksai21@gmail.com",
                    style: TextStyle(color:Colors.blue))
              ],
            ),
          ),
          ListTile(
            title: Text("home"),
            leading: const Icon(Icons.home),
            onTap:() => Navigator.of(context).pushNamed("home"),
          ),

        ],
      ),
    );
  }
}
