import 'dart:io';

void main() {
  //   Olvasd ki a fájl tartalmát!
  //   Tárold el az adatokat!
  //   Adj hozzá egy új adatot!
  //   Ments az új adatot a fájlba!

  File books = File("books.txt");

  String bookContents = books.readAsStringSync();
  print(bookContents);

  // books.writeAsStringSync(
  //   '\nHarmat Balázs \t LoL \t Champek \t 1st \t 2026',
  //   mode: FileMode.append,
  // );
  print('--------------------------');
  File cars = File("cars.txt");

  String carsContent = cars.readAsStringSync();
  print(carsContent);

  // cars.writeAsStringSync(
  //   "Lamborghini, 2020, Yellow, 12000000",
  //   mode: FileMode.append,
  // );

  print('--------------------------');

  File cars2 = File("cars2.txt");

  String cars2Content = cars2.readAsStringSync();
  print(cars2Content);

  // cars2.writeAsStringSync(
  //   "Lamborghini \t Aventador \t Red \t 2016",
  //   mode: FileMode.append,
  // );

  print('--------------------------');

  File numbers = File("numbers.txt");

  String numbersContent = numbers.readAsStringSync();
  print(numbersContent);

  // numbers.writeAsStringSync(
  //   "321, 543, 123, 453, 654, 768, 345, 234, 678",
  //   mode: FileMode.append,
  // );
}
