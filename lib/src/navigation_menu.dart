library desktop_navigation_menu;

import 'package:flutter/material.dart';

class DesktopNavigationMenu extends StatelessWidget {
  const DesktopNavigationMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body,
    );
  }

  Widget get _body {}
}
