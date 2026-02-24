void main() {
  // sesuai berat dan tinggi saya
  double beratBadan = 60.0; 
  double tinggiBadan = 1.59; 

  double bmi = beratBadan / (tinggiBadan * tinggiBadan);

  print('--- Kalkulator BMI ---');
  print('Berat Badan: $beratBadan kg');
  print('Tinggi Badan: $tinggiBadan m');
  // Menggunakan toStringAsFixed(2) untuk membatasi 2 angka di belakang koma
  print('BMI Anda: ${bmi.toStringAsFixed(2)}');

  print('\n--- Interpretasi ---');
  if (bmi < 18.5) {
    print('Berat badan kurang');
  } else if (bmi >= 18.5 && bmi < 25) {
    print('Berat badan normal (ideal)');
  } else if (bmi >= 25 && bmi < 30) {
    print('Kelebihan berat badan');
  } else {
    print('Obesitas');
  }
}