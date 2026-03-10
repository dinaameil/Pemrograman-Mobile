void main() {
  // 1. Identitas
  String nama = "Dina Mei Lestari";
  String nim = "244107060105";

  // 2. Ambil 3 digit terakhir NIM (105)
  double nilaiUnikNIM = 105.0; 

  // 3. List<double> berisi harga barang + tambah nilaiUnikNIM
  List<double> hargaBarang = [25000.0, 40000.0, 60000.0, 15000.0, 30000.0];
  hargaBarang.add(nilaiUnikNIM);

  // 4. Null safety: variabel pesanDiskon
  String? pesanDiskon;

  // Hitung total belanja
  double totalAwal = hitungTotal(hargaBarang);

  // Logika diskon
  double diskon = 0.0;
  if (totalAwal > 200000) {
    diskon = totalAwal * 0.10;
    pesanDiskon = "Anda mendapat diskon 10%";
  } else if (totalAwal >= 100000 && totalAwal <= 200000) {
    diskon = totalAwal * 0.05;
    pesanDiskon = "Anda mendapat diskon 5%";
  } else {
    pesanDiskon = "Maaf, tidak ada diskon";
  }

  double totalAkhir = totalAwal - diskon;

  // Output
  print("Nama: $nama");
  print("NIM: $nim");
  print("Total Awal: Rp${totalAwal.toStringAsFixed(2)}");
  print("Besar Diskon: Rp${diskon.toStringAsFixed(2)}");

  print("Keterangan: ${pesanDiskon!}");
  print("Total Akhir: Rp${totalAkhir.toStringAsFixed(2)}");
}

// Fungsi hitungTotal dengan perulangan for-in
double hitungTotal(List<double> daftarHarga) {
  double total = 0.0;
  for (var harga in daftarHarga) {
    total += harga;
  }
  return total;
}