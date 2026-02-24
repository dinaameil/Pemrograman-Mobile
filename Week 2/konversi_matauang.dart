void main() {
  // Menggunakan Map
  Map<String, double> kursIDR = {
    'USD': 16900, 
    'EUR': 19900, 
    'JPY': 108,  
    'MYR': 4300, 
  };

  String mataUangTujuan = 'USD';
  double jumlahIDR = 500000;
  
  print('--- Kalkulator Konversi Mata Uang ---');
  print('Jumlah IDR: Rp $jumlahIDR');
  print('Mata uang tujuan: $mataUangTujuan');

  // Cek apakah mata uang tujuan ada di Map kurs
  if (kursIDR.containsKey(mataUangTujuan)) {
    double kurs = kursIDR[mataUangTujuan]!; 
    double hasilKonversi = jumlahIDR / kurs;
    print('Hasil konversi: ${mataUangTujuan} ${hasilKonversi.toStringAsFixed(2)}');
  } else {
    print('Mata uang $mataUangTujuan tidak ditemukan.');
  }

  print('\n--- Contoh Konversi Lain ---');
  String mataUangTujuan2 = 'EUR';
  if (kursIDR.containsKey(mataUangTujuan2)) {
    double kurs2 = kursIDR[mataUangTujuan2]!;
    double hasil2 = jumlahIDR / kurs2;
    print('$jumlahIDR IDR = ${mataUangTujuan2} ${hasil2.toStringAsFixed(2)}');
  }
}