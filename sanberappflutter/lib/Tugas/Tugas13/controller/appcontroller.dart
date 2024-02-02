import 'package:sanberappflutter/Tugas/Tugas13/model/postmodel.dart';
import 'package:sanberappflutter/Tugas/Tugas13/services/services.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  var getposts = <Postmodel>[].obs;
  Services services = Services();
  var postloading = true.obs;
  @override
  void onInit() {
    callpostmethod();
    super.onInit();
  }

  callpostmethod() async {
    try {
      postloading.value = true;
      var result = await services.getallposts();
      if (result != null) {
        getposts.assignAll(result);
      } else {
        print("null");
      }
    } finally {
      postloading.value = false;
    }
    update();
  }
  
}