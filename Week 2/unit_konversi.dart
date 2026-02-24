void main() {
  print('--- APLIKASI KONVERSI UNIT ---');

  Map<String, Map<String, double>> konversi = {
    'panjang': {
      'meter': 1.0,
      'kilometer': 1000.0,
      'centimeter': 0.01,
      'milimeter': 0.001,
      'inci': 0.0254,
    },
    'massa': {
      'kilogram': 1.0,
      'gram': 0.001,
      'miligram': 0.000001,
      'pon': 0.453592,
      'ons': 0.0283495,
    },
    'volume': {
      'liter': 1.0,
      'mililiter': 0.001,
      'galon': 3.78541, 
      'meter kubik': 1000.0,
      'inci kubik': 0.0163871,
    },
    'suhu': {
    }
  };

  //konversi 100 centimeter ke inci
  String kategoriDipilih = 'panjang';
  String dariUnit = 'centimeter';
  String keUnit = 'inci';
  double nilaiInput = 100.0;

  // validasi sederhana
  if (nilaiInput < 0) {
    print('Nilai input tidak boleh negatif untuk kategori $kategoriDipilih.');
    return; 
  }

  print('\nKategori: $kategoriDipilih');
  print('Konversi: $nilaiInput $dariUnit = ? $keUnit');

  // ambil Map untuk kategori yang dipilih
  Map<String, double>? unitKategori = konversi[kategoriDipilih];

  if (unitKategori != null) {
    if (unitKategori.containsKey(dariUnit) && unitKategori.containsKey(keUnit)) {
      double faktorDari = unitKategori[dariUnit]!;
      double faktorKe = unitKategori[keUnit]!;

      double nilaiDalamMeter = nilaiInput * faktorDari;
      double hasilKonversi = nilaiDalamMeter / faktorKe;

      print('Hasil: ${hasilKonversi.toStringAsFixed(4)} $keUnit');
    } else {
      print('Error: Unit "$dariUnit" atau "$keUnit" tidak ditemukan dalam kategori "$kategoriDipilih".');
    }
  } else {
    print('Error: Kategori "$kategoriDipilih" tidak ditemukan.');
  }

  print('\n--- Catatan Khusus Suhu ---');
  print('Untuk suhu, karena konversinya tidak linear sederhana (contoh: C ke F),');
  print('sebaiknya dibuat fungsi terpisah, misal:');
  print('- Celsius ke Fahrenheit: (C * 9/5) + 32');
  print('- Fahrenheit ke Celsius: (F - 32) * 5/9');
  print('- Celsius ke Kelvin: C + 273.15');
}