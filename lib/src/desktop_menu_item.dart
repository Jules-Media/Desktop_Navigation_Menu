library desktop_navigation_menu;

import 'package:flutter/material.dart';

class DesktopMenuItem {
  const DesktopMenuItem({
    required this.label,
    this.description,
    this.icon,
  });

  /// The Label for
  /// this Menu Item.
  ///
  /// This should be short
  /// and precice.
  final String label;

  /// The Description
  /// for this Item.
  /// This is shown underneeth
  /// the Label.
  ///
  /// Can be longer than the
  /// label, but should also be short,
  /// precice and not longer than one sentence.
  final String? description;

  /// The Icon for this
  /// Item.
  final Icon? icon;
}

/// A single Item inside
/// of the Navigation Bar.
class DesktopMenuItemWidget extends StatelessWidget {
  const DesktopMenuItemWidget({
    required this.label,
    required this.onTap,
    this.description,
    this.icon,
    Key? key,
  }) : super(key: key);

  /// The Label for
  /// this Menu Item.
  ///
  /// This should be short
  /// and precice.
  final String label;

  /// The Description
  /// for this Item.
  /// This is shown underneeth
  /// the Label.
  ///
  /// Can be longer than the
  /// label, but should also be short,
  /// precice and not longer than one sentence.
  final String? description;

  /// The Icon for this
  /// Item.
  final Icon? icon;

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      autofocus: false,
      enableFeedback: true,
      enabled: true,
      isThreeLine: false,
      leading: icon,
      title: Text(label),
      subtitle: description != null ? Text(description!) : null,
      onTap: onTap,
    );
  }
}
