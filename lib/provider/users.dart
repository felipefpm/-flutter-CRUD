import 'package:flutter/material.dart';
import 'package:project/data/dummy_user.dart';
import 'package:project/models/user.dart';

class Users with ChangeNotifier {
  final Map<String, User> _items = {...DUMMY_USERS};

  List<User> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }
}
