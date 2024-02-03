import 'package:sanberappflutter/Tugas/Tugas14/pages/page_1.dart';
import 'package:sanberappflutter/Tugas/Tugas14/pages/page_2.dart';
import 'package:sanberappflutter/Tugas/Tugas14/pages/page_3.dart';
import 'package:sanberappflutter/Tugas/Tugas14/routes/route_name.dart';
import 'package:get/get.dart';

class pageRouteApp {
  static final pages = [
      GetPage(
        name: RouteName.page_1,
        page: () => PageOne(),
      ),
      GetPage(
        name: RouteName.page_2,
        page: () => PageTwo(),
      ),
      GetPage(
        name: RouteName.page_3,
        page: () => PageThree(),
      ),
  ];
}
