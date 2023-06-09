import 'package:dwn_app/pages/widgets/drawer.header.dart';
import 'package:dwn_app/pages/widgets/drawer.item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const MyDrawerHeader(),
          MyDrawerItem(
              title: 'Home',
              itemIcon: const Icon(Icons.home),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/");
              }),
          MyDrawerItem(
              title: 'Counter',
              itemIcon: const Icon(Icons.ac_unit),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/counter");
              }),
          MyDrawerItem(
              title: 'Products',
              itemIcon: const Icon(Icons.account_balance),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/products");
              }),
        ],
      ),
    );
  }
}
