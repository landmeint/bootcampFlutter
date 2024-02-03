import 'package:sanberappflutter/Tugas/Tugas14/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Halaman 2"),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteName.page_3);
              }, child: Text("Menuju Halaman Tiga")),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteName.page_1);
              }, child: Text("Kembali ke Halaman Satu"))
          ],
        ),
      ),
    );
  }
}