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
  String urutanPerusahaan = 'CP1-CP3-CP3-CP4';
  String urutanPatroli = 'CP1-CP2-CP3-CP4';
  // Skenario checkpoint
  Map<String, dynamic> checkPoint = {
    'CP1': {'scan': false, 'waktu': 16, 'kondisi': 'Aman'},
    'CP2': {'scan': false, 'waktu': 10, 'kondisi': 'mesin operator nyala'},
    'CP3': {'scan': true, 'waktu': 5, 'kondisi': 'Aman'},
    'CP4': {
      'scan': true,
      'waktu': 15,
      'kondisi': 'pintu gerbang gudang tidak di kunci',
    },
  };
  const int BATAS_TERLAMBAT = 15;
  cekCp(checkPoint, urutanPatroli, urutanPerusahaan, BATAS_TERLAMBAT);
}

void cekCp(
  Map<String, dynamic> checkPoint,
  String urutanPatroli,
  urutanPerusahaan,
  BATAS_TERLAMBAT,
) {
  // BR-002: Setiap checkpoint harus sesuai ururtan
  if (urutanPatroli == urutanPerusahaan) {
    print('Status Rute: Sesuai Urutan');
  } else {
    print('Status Rute: Tidak Sesuai Urutan');
  }
  //  cek CP1
  // BR-001: Setiap checkpoint wajib discan
  if (checkPoint['CP1']['scan'] == true) {
    int waktuCP1 = checkPoint['CP1']['waktu'];
    String kondisi = checkPoint['CP1']['kondisi']; //BR-004 menetukan kondisi
    // BR-003: Scan lebih dari 15 menit terlambat
    int statusWaktu = 0;
    if (waktuCP1 > BATAS_TERLAMBAT) {
      statusWaktu:
      'Terlambat (${waktuCP1 - BATAS_TERLAMBAT}menit)';
    } else {
      statusWaktu:
      "Tepat waktu";
    }
    if (kondisi == 'Aman') {
      print('Cp1\t: Discan | $statusWaktu | Kondisi: $kondisi');
    } else {
      print('cp1\t: Discan | $statusWaktu | Kondisi: PERINGATAN! $kondisi');
    }
  } else {
    print('Cp1\t: Tidak discan ');
  }
  // cek cp2

  if (checkPoint['CP2']['scan'] == true) {
    int waktuCP2 = checkPoint['CP2']['waktu'];
    String kondisi = checkPoint['CP2']['kondisi'];
    int statusWaktu = 0;
    if (waktuCP2 > BATAS_TERLAMBAT) {
      statusWaktu:
      'Terlambat (${waktuCP2 - BATAS_TERLAMBAT}menit)';
    } else {
      statusWaktu:
      "Tepat waktu";
      ;
    }

    if (kondisi == "Aman") {
      print('Cp2\t: Discan | $statusWaktu | Kondisi: $kondisi');
    } else {
      print('cp2\t: Discan | $statusWaktu | Kondisi: PERINGATAN! $kondisi');
    }
  } else {
    print('Cp2\t: Tidak discan');
  }
  // cek cp3
  if (checkPoint['CP3']['scan'] == true) {
    int waktuCP3 = checkPoint['CP3']['waktu'];
    String kondisi = checkPoint['CP3']['kondisi'];
    int statusWaktu = 0;
    if (waktuCP3 > BATAS_TERLAMBAT) {
      statusWaktu:
      'Terlambat (${waktuCP3 - BATAS_TERLAMBAT}menit)';
    } else {
      statusWaktu:
      "Tepat waktu";
      ;
    }
    if (kondisi == 'Aman') {
      print('Cp2\t: Discan | $statusWaktu | Kondisi: $kondisi');
    } else {
      print('cp2\t: Discan | $statusWaktu | Kondisi: PERINGATAN! $kondisi');
    }
  } else {
    print('Cp3\t: Tidak discan');
  }
  // cek cp4
  if (checkPoint['CP4']['scan'] == true) {
    int waktuCP3 = checkPoint['CP4']['waktu'];
    String kondisi = checkPoint['CP4']['kondisi'];
    int statusWaktu = 0;
    if (waktuCP3 > BATAS_TERLAMBAT) {
      statusWaktu:
      'Terlambat (${waktuCP3 - BATAS_TERLAMBAT}menit)';
    } else {
      statusWaktu:
      "Tepat waktu";
      ;
    }
    if (kondisi == 'Aman') {
      print('Cp2\t: Discan | $statusWaktu | Kondisi: $kondisi');
    } else {
      print('cp2\t: Discan | $statusWaktu | Kondisi: PERINGATAN! $kondisi');
    }
  } else {
    print('Cp3\t: Tidak discan');
  }
}
