void main() {
  print('--- DEMONSTRASI OPERATOR DART ---\n');

  print('--- 1. OPERATOR ARITMATIKA ---');
  int a = 15;
  int b = 4;
  print('a = $a, b = $b');
  print('Penjumlahan (a + b)        : ${a + b}');
  print('Pengurangan (a - b)        : ${a - b}');
  print('Perkalian (a * b)          : ${a * b}');
  double pembagian = a / b; 
  print('Pembagian (a / b)          : $pembagian');
  int pembagianBulat = a ~/ b; 
  print('Pembagian bulat (a ~/ b)   : $pembagianBulat');
  int sisaBagi = a % b;
  print('Sisa bagi / Modulo (a % b) : $sisaBagi');

  print('\n--- 2. OPERATOR RELASIONAL ---');
  int x = 10;
  int y = 5;
  print('x = $x, y = $y');
  print('x == y : ${x == y}'); 
  print('x != y : ${x != y}'); 
  print('x > y  : ${x > y}');  
  print('x < y  : ${x < y}');  
  print('x >= y : ${x >= y}'); 
  print('x <= y : ${x <= y}'); 

  print('\n--- 3. OPERATOR LOGIKA ---');
  bool kondisi1 = true;
  bool kondisi2 = false;
  print('kondisi1 = $kondisi1, kondisi2 = $kondisi2');
  print('kondisi1 && kondisi2 (DAN) : ${kondisi1 && kondisi2}'); // Harus dua-duanya true
  print('kondisi1 || kondisi2 (ATAU) : ${kondisi1 || kondisi2}'); // Cukup salah satu true
  print('!kondisi1 (NOT)             : ${!kondisi1}');           // Membalikkan nilai boolean

  int umur = 20;
  bool punyaSIM = true;
  bool bolehMenyetir = (umur >= 17) && punyaSIM;
  print('\nUmur $umur, Punya SIM: $punyaSIM');
  print('Boleh menyetir? $bolehMenyetir');

  print('\n--- 4. OPERATOR PENUGASAN ---');
  int angka = 5;
  print('Nilai awal angka = $angka');
  angka += 3; 
  print('Setelah += 3  : $angka');
  angka -= 2; 
  print('Setelah -= 2  : $angka');
  angka *= 4; 
  print('Setelah *= 4  : $angka');
  double angkaDouble = angka.toDouble(); 
  angkaDouble /= 5; 
  print('Setelah /= 5 (double) : $angkaDouble');

  print('\n--- 5. OPERATOR TERNARY ---');
  int nilai = 75;
  String status = (nilai >= 70) ? 'LULUS' : 'TIDAK LULUS';
  print('Nilai: $nilai, Status: $status');

  int nilai2 = 60;
  String status2 = (nilai2 >= 70) ? 'LULUS' : 'TIDAK LULUS';
  print('Nilai: $nilai2, Status: $status2');
}