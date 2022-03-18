import 'package:get/get.dart';
import 'package:infotech_bookstore/models/book_tumbnail.dart';
import 'package:infotech_bookstore/services/web_service.dart';

class HomeController extends GetxController {
  var bookThumbnailList = <BookThumbnail>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    populateList();
    super.onInit();
  }

  void populateList() async {
    try {
      isLoading(true);
      var books = await WebService().getNewBooks();

      // bookThumbnailList.addAll(books);

      bookThumbnailList.value = books;
    } finally {
      isLoading(false);
    }
  }

  String getTitle(int index) {
    return bookThumbnailList[index].title;
  }

  String getImage(int index) {
    return bookThumbnailList[index].image;
  }

  String getPrice(int index) {
    return bookThumbnailList[index].price;
  }
}
