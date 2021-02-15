import 'package:flutter/material.dart';

Widget defaultAppBar() {
  return AppBar(
    backgroundColor: Colors.grey[700],
    title: Text(
      "Movie",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  );
}
