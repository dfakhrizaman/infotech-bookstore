import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infotech_bookstore/controllers/home_controller.dart';
import 'package:infotech_bookstore/widgets/custom_searchbar.dart';
import 'package:loading_indicator/loading_indicator.dart';
// import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Map> myProducts =
      List.generate(100000, (index) => {"id": index, "name": "Product $index"})
          .toList();

  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
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
              Obx(
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
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        primary: false,
                        itemCount: homeController.bookThumbnailList.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (_, i) => ElevatedButton(
                          onPressed: () {},
                          child: ListTile(title: Text("Item $i")),
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
