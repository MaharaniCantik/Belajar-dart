// ==================================================
// Tugas Assigment (Pattroli Security)
// Nama : Maharani Kusuma Dewi
// Nim : 1124160211
//
// ====================================================
void main() {
  //  bool cp1 = true;
  //  bool cp2 = true;
  //  bool cp3 = true;
  //  bool cp4 = true;
  String urutanPerusahaan = 'CP1-CP2-CP3-CP4';
  String urutanPatroli = 'CP1-CP2-CP3-CP4';
  Map<String, dynamic> checkPoint = {
    'CP1': {'scan': true, 'waktu': 16},
    'CP2': {'scan': true, 'waktu': 10},
    'CP3': {'scan': true, 'waktu': 5},
    'CP4': {'scan': true, 'waktu': 15},
  };
  cekCp(checkPoint, urutanPatroli, urutanPerusahaan);
  final hasilCheckpoint = cekCp(checkPoint, urutanPatroli, urutanPerusahaan);
  print(hasilCheckpoint);
}

cekCp(Map<String, dynamic> checkPoint, String urutanPatroli, urutanPerusahaan) {
  if (urutanPatroli == urutanPerusahaan) {
    print('urutan Benar');
  } else {
    print('urutan salah');
  }
  //  cek CP1
  if (checkPoint['CP1']['scan'] == true) {
    print('sudah discan');
    int waktuCP1 = checkPoint['CP1']['waktu'];
    if (waktuCP1 >= 15) {
      print('Datang terlambat $waktuCP1');
    } else {
      print('Data sebelum waktu masuk $waktuCP1');
    }
  } else {
    print('Tidak terscan');
  }
  // cek cp2
  if (checkPoint['CP2']['scan'] == true) {
    print('sudah discan');
    int waktuCP2 = checkPoint['CP2']['waktu'];
    if (waktuCP2 >= 15) {
      print('Datang telambat $waktuCP2');
    } else {
      print('Datang sebelum waktu masuk $waktuCP2');
    }
  } else {
    print('Tidak terscan');
  }
  // cek cp3
  if (checkPoint['CP3']['scan'] == true) {
    print('sudah discan');
    int waktuCP3 = checkPoint['CP3']['waktu'];
    if (waktuCP3 >= 15) {
      print('Datang Terlambat  $waktuCP3');
    } else {
      print('Datang Sebelum waktu masuk $waktuCP3');
    }
  } else {
    print('Tidak terscan');
  }
  // cek cp4
  if (checkPoint['CP4']['scan'] == true) {
    print('sudah discan');
    int waktuCP4 = checkPoint['CP4']['waktu'];
    if (waktuCP4 >= 15) {
      print('Datang Terlambat $waktuCP4');
    } else {
      print('Datang sebelum waktu masuk $waktuCP4');
    }
  } else {
    print('Tidak terscan');
  }
}
