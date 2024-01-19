void main() {
  // No. 3 List Multidimensi
  var input = [
    ["0001", "Roman Alamsyah", "Bandar Lampung","21/05/1989","Membaca"],
    ["0002", "Dika Serimbing", "Medan","10/10/1992","Bermain Gitar"],
    ["0003", "Winona", "Ambon","25/12/1965","Memasak"],
    ["0004", "Bintang Senjaya", "Martapura","6/4/1970","Berkebun"],
  ];

  dataHandling(input);
}

dataHandling(lists) {
  
  lists.forEach((i) => 
  print('''
  Nomor ID: ${i[0]}
  Nama Lengkap: ${i[1]}
  TTL: ${i[2]} ${i[3]}
  Hobi: ${i[4]} \t
  ''')); 
}