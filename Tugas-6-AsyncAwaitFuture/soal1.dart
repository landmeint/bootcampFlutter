void main() async {
  var h = Human();

  print("Luffy");
  print("Zoro");
  print("Killer");
  h.getData();
  print(h.name);

}

class Human  {
  String name = "nama character one piece";

  Future getData() async  {
    name = "hilmy";
    return Future.delayed(Duration(seconds: 3), () {
      print("get data [done]");
    });
   
  }
}