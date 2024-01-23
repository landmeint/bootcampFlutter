void main() async {

  print("Ready. Sing");
  line();
  line2();
  line3();
  line4();

}

Future line() async  {
    return Future.delayed(Duration(seconds: 5), () {
      print("pernahkah kau merasa..");
    });
   
}

Future line2() async  {
    return Future.delayed(Duration(seconds: 8), () {
      print("pernahkah kau merasa....");
    });
   
}


Future line3() async  {
    return Future.delayed(Duration(seconds: 10), () {
      print("pernahkah kau merasa......");
    });
   
}


Future line4() async  {
    return Future.delayed(Duration(seconds: 11), () {
      print("hatimu hampa, pernahkah kau merasa hatimu kosong");
    });
   
}