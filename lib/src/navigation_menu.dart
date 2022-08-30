library desktop_navigation_menu;

import 'desktop_menu_item.dart';
import 'menu_bar.dart';
import 'navigation_item.dart';

import 'package:flutter/material.dart';

/// A Side Navigation Bar on the left Side
/// of the Screen.
///
/// Is designed to be used in Desktop
/// Applications.
class DesktopNavigationMenu extends StatefulWidget {
  const DesktopNavigationMenu({
    required this.views,
    Key? key,
  }) : super(key: key);

  /// The Views for the Navigation Bar.
  final List<NavigationItem> views;

  @override
  State<StatefulWidget> createState() => _DesktopNavigationMenuState();
}

class _DesktopNavigationMenuState extends State<DesktopNavigationMenu> {
  /// The index indicating which view
  /// should be shown at a specific moment.
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return _body;
  }

  /// The Body of this Widget.
  Row get _body {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      textBaseline: TextBaseline.alphabetic,
      textDirection: TextDirection.ltr,
      verticalDirection: VerticalDirection.down,
      children: _children,
    );
  }

  /// The Items for the [NavigationMenuBar].
  ///
  /// This Method extracts the items of every
  /// single [NavigationItem] into
  /// a List of [DesktopMenuItemWidget]
  List<DesktopMenuItemWidget> get _items {
    final List<DesktopMenuItemWidget> list = [];
    for (int c = 0; c < widget.views.length; c++) {
      /// The current Menu Item in the Iteration
      final DesktopMenuItem menuItem = widget.views[c].menuItem;

      list.add(
        DesktopMenuItemWidget(
          label: menuItem.label,
          description: menuItem.description,
          icon: menuItem.icon,
          onTap: () => _indexChanged(c),
        ),
      );
    }
    return list;
  }

  /// Returns the Children
  /// of the Row.
  List<Widget> get _children {
    return [
      NavigationMenuBar(
        items: _items,
      ),
      Expanded(
        child: _currentView,
      ),
    ];
  }

  /// Returns the current View.
  Widget get _currentView {
    return widget.views[_index].screen;
  }

  /// Called when the index of
  /// the [NavigationMenuBar]'s current Item
  /// changes.
  void _indexChanged(int i) => setState(() {
        _index = i;
      });
}
