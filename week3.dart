void main() {
  //Practicum 1
  //Langkah 1
  String test = "test2";

  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }

  if (test == "test2") {
    print("Test2 again");
  }

  //Langkah 2 (fixed)
  bool test1 = true;
  if (test1) {
    print("Kebenaran");
  }
// Langkah 1 :
// Ketika kode dijalankan, output yang dihasilkan adalah "Test2" dan "Test2 again" karena kondisi kedua else if dan if yang memeriksa nilai "test2" terpenuhi.
// Langkah 2 :
// Terjadi error karena variabel test adalah tipe String, sedangkan kondisi dalam if membutuhkan tipe boolean (true/false)

//Practicum 2
  //Langkah 1 - 2 (fixed) :
  // Inisialisasi variabel counter
  int counter = 0;

  // Loop while yang akan terus berjalan selama counter < 33
  while (counter < 33) {
    print(counter);
    counter++;
  }

  //Langkah 3
  do {
    print(counter);
    counter++;
  } while (counter < 77);

//Langkah 1 - 2:
//Terjadi error karena variabel counter belum diinisialisasi.
//Langkah 3:
//Tidak terjadi error karena variabel counter sudah diinisialisasi kan.

//Practicum 3

  //Langkah 1 - 2 (fixed):
  // Inisialisasi variabel index
  for (int index = 10; index < 27; index++) {
    //Langkah 3
    if (index == 21) {
      break;
    } else if (index > 1 || index < 7) {
      continue;
    }
    print(index);
  }

//Langkah 1 - 2
//Terjadi error karena Variabel 'Index' belum dideklarasikan
//Perlu menambahkan perintah untuk mengubah nilai 'index'agar tidak terjadi infinite loop
//Langkah 3
//terjadi error karena penggunaan huruf kapital yang tidak tepat dan penempatan perintah continue yang tidak tepat
}
