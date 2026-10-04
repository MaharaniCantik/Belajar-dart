// ==================================================
// Tugas Assigment (Pattroli Security)
// Nama : Maharani Kusuma Dewi
// Nim : 1124160211
//
// ====================================================
void main() {
  const CHECK_POINT = true;
  final  cekAbsen = cekPoint1(CHECK_POINT);
  cekUrutan();
  int waktu = 10;
  cekWaktu(waktu);
  final cekAbsenLagi = cekPasti(CHECK_POINT);
}

cekPoint1(bool CHECK_POINT) {
  if (CHECK_POINT == true) {
    print('Checkpoint sudah scan');
    return true;
  } else {
    print('Belum scan');
    return false;
  }
}

cekUrutan() {
  const String urutanPerusahaan = 'CP1-CP2-CP3-CP4';
  const String urutanSatpamScan = 'CP1-CP2-CP3-CP4';
  if (urutanSatpamScan != urutanPerusahaan) {
    print('Urutan SALAH');
  } else {
    print('urutan benar');
  }
}

cekWaktu(int waktu) {
  if (waktu >= 15) {
    print('Anda terlambat');
  } else {
    print('Yeayy ga telat absen');
  }
}

cekPasti(CHECK_POINT) {
  bool cekAbsenLagi = CHECK_POINT;
  if (CHECK_POINT == true) {
    print('Tidak perlu absen lagi');
  } else {
    print('anda belum absen');
  }
}
