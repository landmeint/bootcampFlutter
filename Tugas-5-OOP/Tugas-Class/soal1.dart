void main() {
  double setengah, alas, tinggi;
  setengah = 0.5;
  alas = 20.0;
  tinggi = 30.0;

  var triangle = new Segitiga();
  triangle.setengah = setengah;
  triangle.alas = alas;
  triangle.tinggi = tinggi;

  var luasSegitiga = triangle.hitungLuas();
  print(luasSegitiga);

}

class Segitiga {
  late double setengah, alas, tinggi;

  hitungLuas() {
    return this.setengah * this.alas * this.tinggi;
  }
}