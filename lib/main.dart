import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infotech_bookstore/views/home_page.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final ThemeData theme = ThemeData();

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          title: 'Infotech',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            primarySwatch: Colors.purple,
            colorScheme: theme.colorScheme.copyWith(
              primary: const Color(0xFF505ED8),
              secondary: const Color(0xFFCDC9FF),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF505ED8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          home: HomePage(),
        );
      },
    );
  }
}
