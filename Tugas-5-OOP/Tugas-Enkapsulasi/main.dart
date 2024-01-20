import 'lingkaran.dart';
void main() {
  var circle = new Lingkaran();
  circle.setR(14);
  var jari = circle.getR();
  var luasLingkaran = circle.hitungLuas();

  print(jari);
  print(luasLingkaran);
}