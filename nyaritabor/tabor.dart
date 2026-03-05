import 'dart:io';

void main() {
  File file = File("nyaritabor\\taborok.txt");
  List<String> contents = file.readAsLinesSync();
  List<Map<String, dynamic>> taborok = [];

  for (var row in contents) {
    var lines = row.split("\t");
    taborok.add({
      "kezd_ho": int.parse(lines[0]),
      "kezd_nap": int.parse(lines[1]),
      "veg_ho": int.parse(lines[2]),
      "veg_nap": int.parse(lines[3]),
      "diak": lines[4],
      "szak": lines[5],
    });
  }

  stdout.write("Adja meg a tanuló kezdőbetűjét: ");
  String letter = stdin.readLineSync()!;
  List<int> time = [];
  List<String> keresett = [];
  for (var tabor in taborok) {
    if (tabor["diak"].toString().contains(letter)) {
      keresett.add(
        "${tabor["kezd_ho"]}.${tabor["kezd_nap"]}-${tabor["veg_ho"]}.${tabor["veg_nap"]}. ${tabor["szak"]}",
      );
      time.add(152);
    }
  }

  keresett.sort();
  File egytanulo = File("egytanulo.txt");
  egytanulo.writeAsStringSync(keresett.join("\n"));

}
