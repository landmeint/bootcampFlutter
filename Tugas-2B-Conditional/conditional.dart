import 'dart:io';
void main() {
// Tugas Conditional
// 1. Soal Ternary

// print("apakah anda ingin menginstall aplikasi dart? Y/T"); 
// String? inputAnswer = stdin.readLineSync()!;

// inputAnswer == "Y" ? print('anda akan menginstall aplikasi dart') : print('aborted');



// 2. If-else If dan else

// print("masukkan nama anda :"); 
// String? nama = stdin.readLineSync()!;

// print("pilih peran anda : penyihir/guard/werewolf"); 
// String? peran = stdin.readLineSync()!;

// if (nama == "" && peran == "") {
//   print('nama harus diisi');
// } else if(peran == ""){
//   print('pilih peran anda untuk memulai game ini');
// } else {
//   if(peran == 'penyihir') {
//     print("Selamat datang di Dunia Werewolf, ${nama}");
//     print("Halo Penyihir ${nama}, kamu dapat melihat siapa yang menjadi werewolf!");
//   } else if(peran == 'guard') {
//     print("Selamat datang di Dunia Werewolf, ${nama}");
//     print("Halo Guard ${nama}, kamu akan membantu melindungi temanmu dari serangan werewolf");
//   } else {
//     print("Selamat datang di Dunia Werewolf, ${nama}");
//     print("Halo Werewolf ${nama}, Kamu akan memakan mangsa setiap malam!");
//   }
// }



// 3. Switch Case

// print("pilih dan tulis nama hari dan dapatkan quotes menarik : awali dengan huruf kapital"); 
// String? hari = stdin.readLineSync()!;

// switch(hari) {
//   case "Senin":   { print('Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.'); break; }
//   case "Selasa":   { print('Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.'); break; }
//   case "Rabu":   { print('Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.'); break; }
//   case "Kamis":   { print('Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.'); break; }
//   case "Jum'at":   { print('Hidup tak selamanya tentang pacar.'); break; }
//   case "Sabtu":   { print('Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.'); break; }
//   case "Ahad":   { print('Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.'); break; }
//   default:  { print('Anda belum menuliskan sesuatu / yang anda masukkan bukan nama hari'); }
// }



// 4. Switch Case 2

var tanggal = 12; 
var bulan = 12; 
var tahun = 1945;

switch(bulan) {
  case 1:   { print("${tanggal} January ${tahun}"); break; }
  case 2:   { print("${tanggal} February ${tahun}"); break; }
  case 3:   { print("${tanggal} March ${tahun}"); break; }
  case 4:   { print("${tanggal} April ${tahun}"); break; }
  case 5:   { print("${tanggal} May ${tahun}"); break; }
  case 6:   { print("${tanggal} June ${tahun}"); break; }
  case 7:   { print("${tanggal} July ${tahun}"); break; }
  case 8:   { print("${tanggal} August ${tahun}"); break; }
  case 9:   { print("${tanggal} September ${tahun}"); break; }
  case 10:   { print("${tanggal} October ${tahun}"); break; }
  case 11:   { print("${tanggal} November ${tahun}"); break; }
  case 12:   { print("${tanggal} December ${tahun}"); break; }
  default:  { print('Ada inputan yang kosong / kesalahan penulisan'); }
}
}