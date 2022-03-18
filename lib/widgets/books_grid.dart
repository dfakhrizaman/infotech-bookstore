import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:infotech_bookstore/controllers/home_controller.dart';
import 'package:infotech_bookstore/widgets/grid_item.dart';

import 'package:loading_indicator/loading_indicator.dart';
import 'package:sizer/sizer.dart';

class BooksGrid extends StatelessWidget {
  BooksGrid({
    Key? key,
  }) : super(key: key);

  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => homeController.isLoading.value
          ? Center(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(38.w),
                  child: const LoadingIndicator(
                    indicatorType: Indicator.ballPulse,
                  ),
                ),
              ),
            )
          : GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 4,
              ),
              primary: false,
              itemCount: homeController.bookThumbnailList.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (_, index) => GridItem(
                bookController: homeController,
                index: index,
              ),
            ),
    );
  }
}
