import 'package:flutter/material.dart';
import 'menu_item.dart';

class MenuItems {
  static const List<MenuItem> itemsFirst = [itemUpdate, itemSignOut];
  static const itemUpdate = MenuItem(text: ' Update', icon: Icons.update);
  static const itemSignOut = MenuItem(text: 'Sign Out', icon: Icons.logout);
}
