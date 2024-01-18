

void main() {
  // No.1

  // print(teriak());



  // No.2

  // kalikan(int x,int y) {
  //   return x*y;
  // }
 
  // var num1 = 12;
  // var num2 = 4;
  
  // var hasilKali = kalikan(num1, num2);
  // print(hasilKali);



  // No.3

  // introduce(String nama, int umur, String alamat, String hobi) {
  //   return "Nama saya ${nama}, umur saya ${umur.toString()} tahun, alamat saya di ${alamat}, dan saya punya hobby yaitu ${hobi}!";
  // }

  // final String name = "Achmad";
  // final int age = 30;
  // final String address = "Jln. Malioboro, Yogyakarta";
  // final String hobby = "Gaming";
  
  // final perkenalan = introduce(name, age, address, hobby);
  // print(perkenalan);



  // No.4

  print(factorial(6));

}

factorial(int n) {
  var jwb = 1;

  if(n == 0) {
    return 1;
  }

  for (var i = 2; i <= n; i++) {
    jwb *= i;
  }

  return jwb;
}
 
teriak() {
    return 'Halo Sanbers!';
}