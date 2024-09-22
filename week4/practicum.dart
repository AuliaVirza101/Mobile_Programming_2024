// void main() {
//   var list = [1, 2, 3];
//   var list2 = [0, ...list];

//   print(list2);
//   print(list2.length);

//   var list1 = [1, 2, null];
//   print(list1);
//   var list3 = [0, ...?list1];
//   print(list3.length);
//   //variable dengan nim nama
//   var nimNama = ["virza Aulia", "2241720078"];
//   print(nimNama);

//   bool promoActive = false;
//   var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
//   print(nav);

//   var login = 'Selain Manager';
//   var nav2 = [
//     'Home',
//     'Furniture',
//     'Plants',
//     if (login case 'Manager') 'Inventory'
//   ];
//   print(nav2);

//   var listOfInts = [1, 2, 3];
//   var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
//   assert(listOfStrings[1] == '#1');
//   print(listOfStrings);
// }

void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  var record2 = tukar((1, 2));
  print(record2);

  // Record type annotation in a variable declaration:

  (String, int) mahasiswa = ('Virzaaaaa', 2231223);
  print(mahasiswa);

  var mahasiswa2 = ('Virzaaa', a: 2, b: true, '22312312312');

  print(mahasiswa2.$1);
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2);
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
