import 'package:flutter/material.dart'
    show StatelessWidget, BuildContext, Widget, EdgeInsets, ListView, Drawer;

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(final BuildContext context) =>
      Drawer(child: ListView(padding: EdgeInsets.zero));
}
