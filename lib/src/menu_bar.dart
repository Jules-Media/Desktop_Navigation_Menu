library desktop_navigation_menu;

import 'desktop_menu_item.dart';

import 'package:flutter/material.dart';

/// The actual Navigation Menu Bar
/// for Desktoo Applications.
@protected
class NavigationMenuBar extends StatefulWidget {
  const NavigationMenuBar({
    required this.items,
    Key? key,
  }) : super(key: key);

  /// The Items on this Bar.
  final List<DesktopMenuItemWidget> items;

  @override
  State<NavigationMenuBar> createState() => _NavigationMenuBarState();
}

class _NavigationMenuBarState extends State<NavigationMenuBar> {
  @override
  Widget build(BuildContext context) {
    return _bar;
  }

  /// The bar of this
  /// Navigation Bar.
  Widget get _bar {
    return AnimatedSize(
      alignment: Alignment.center,
      curve: Curves.easeInOut,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      duration: const Duration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        textBaseline: TextBaseline.alphabetic,
        textDirection: TextDirection.ltr,
        verticalDirection: VerticalDirection.down,
        children: widget.items,
      ),
    );
  }
}
