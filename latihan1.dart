void main() {
  String namaMatkul = 'Aplikasi Mobile';
  int sks = 3;
  double waktuMasuk = 10.40;
  bool semesterGanjil = true;

  print(namaMatkul);
  print(sks);
  print(waktuMasuk);
  print(semesterGanjil);
  print('Nama Matakuliah $namaMatkul, dimulai jam $waktuMasuk');

  String? judulSkripsi = 'Pengaruh MBG terhadap daya ingat';
  print(judulSkripsi);
  print(judulSkripsi.length);
  judulSkripsi = null;
  print(judulSkripsi);

  final String nim = '1124160211';
  print(nim);
  const String namaKampus = 'Institut Teknologi & Bisnis Bina Sarana Global';
  print(namaKampus.toUpperCase());

  int x = 2;
  int y = 10;
  print(x + y);

  List<String> namaRestoranSushi = [
    'Umaku',
    'Sushiyay',
    'Tomsushi',
  ];
  namaRestoranSushi.add('Sushihiro');
  print(namaRestoranSushi);

  int nilaiMahasiswa = 50;
  if (nilaiMahasiswa > 80){
    print('Selamat anda lulus!');
  }else if (nilaiMahasiswa > 75){
    print('Lulus sih tapi kechil');
  }else if (nilaiMahasiswa  >60){
    print('Belajar lagi');
  }else{
  print('pulang sana');
  }

  Map<String, dynamic> biodataMahasiswa = {
    'Nim': '1124160211',
    'Nama': 'Maharani Kusuma Dewi',
    'Semester': 5,
    'IPK': 4.00,
    'Prodi': 'Teknik Informatika',
    'Aktif': true,
  };
  print(biodataMahasiswa);
}
