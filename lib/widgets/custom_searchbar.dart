import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
            width: 0.0,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        // focusColor: Colors.white,
        filled: true,
        hintStyle: TextStyle(color: Colors.grey[500]),
        hintText: "Search books by title, author, or ISBN",
        fillColor: Colors.grey[100],
      ),
    );
  }
}

// "Search books by title, author, or ISBN",