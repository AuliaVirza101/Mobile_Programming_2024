Jelaskan yang dimaksud Functions dalam bahasa Dart!
>Functions dalam bahasa Dart adalah blok kode yang dapat dipanggil untuk melakukan tugas tertentu, menerima input (parameter), dan dapat mengembalikan output (nilai) setelah menyelesaikan prosesnya.

Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!
>parameter posisi
    void greet(String name) {
  print('Hello, $name!');
}
>parameter default
void greet([String name = 'Guest']) {
  print('Hello, $name!');
}
>parameter named
void greet({String name, int age}) {
  print('Hello, $name! You are $age years old.');
}
>parameter required
void greet({required String name, required int age}) {
  print('Hello, $name! You are $age years old.');
}

Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!
>Functions sebagai first-class objects dalam Dart berarti fungsi dapat diperlakukan seperti objek lainnya: dapat disimpan dalam variabel, diteruskan sebagai argumen, dan dikembalikan dari fungsi lain
>Contoh:
// Menyimpan fungsi dalam variabel
void greet() {
  print('Hello!');
}

void main() {
  var sayHello = greet; // Menyimpan fungsi dalam variabel
  sayHello(); // Memanggil fungsi melalui variabel

  // Menggunakan fungsi sebagai argumen
  executeFunction(sayHello);
}

void executeFunction(Function func) {
  func(); // Memanggil fungsi yang diteruskan
}

Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!
>Anonymous Functions, atau fungsi tanpa nama, adalah fungsi yang tidak memiliki identitas yang didefinisikan dan biasanya digunakan untuk keperluan satu kali, seperti sebagai argumen untuk fungsi lain atau dalam ekspresi, sehingga memudahkan penulisan kode yang ringkas
>Contoh:
void main() {
  var list = [1, 2, 3];
  
  // Menggunakan anonymous function dengan forEach
  list.forEach((item) {
    print(item * 2); // Mencetak setiap item dikali 2
  });
}

Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!
>Lexical scope adalah konsep di mana fungsi dapat mengakses variabel yang dideklarasikan di dalam blok kode yang sama atau di luar blok tersebut
void main() {
  var x = 10; // x ada di scope main
  void printX() {
    print(x); // Mengakses x dari scope luar
  }
  printX(); // Output: 10
}
>lexical closures adalah fungsi yang "menangkap" variabel dari lexical scope-nya, sehingga variabel tersebut tetap dapat diakses meskipun fungsi tersebut dipanggil di luar konteks di mana variabel tersebut dideklarasikan
Function createCounter() {
  var count = 0; // count di-capture oleh closure
  return () {
    count++; // Mengakses count meskipun di luar scope asalnya
    return count;
  };
}

void main() {
  var counter = createCounter();
  print(counter()); // Output: 1
  print(counter()); // Output: 2
}

Jelaskan dengan contoh cara membuat return multiple value di Functions!
>Untuk mengembalikan beberapa nilai dari sebuah fungsi di Dart, kita dapat menggunakan tuple atau class
// Fungsi yang mengembalikan dua nilai
(int, int) calculate(int a, int b) {
  return (a + b, a * b); // Mengembalikan hasil penjumlahan dan perkalian
}

void main() {
  var results = calculate(3, 4);
  print('Sum: ${results.item1}, Product: ${results.item2}'); // Output: Sum: 7, Product: 12
}

