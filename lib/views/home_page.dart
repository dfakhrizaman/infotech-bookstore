import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infotech_bookstore/controllers/home_controller.dart';
import 'package:infotech_bookstore/widgets/books_grid.dart';
import 'package:infotech_bookstore/widgets/custom_searchbar.dart';

import 'package:sizer/sizer.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: ListView(
            shrinkWrap: true,
            children: [
              SizedBox(
                height: 5.h,
              ),
              Text(
                'Discover',
                style: Theme.of(context).textTheme.headline3,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 3.h),
                child: const CustomSearchBar(),
              ),
              BooksGrid(),
            ],
          ),
        ),
      ),
    );
  }
}
