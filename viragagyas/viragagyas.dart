import "dart:io";

void main() {
  print("1. feladat");
  File file = File("viragagyas\\felajanlas.txt");
  List<String> contents = file.readAsLinesSync();
  List<Map<String, dynamic>> viragagyasok = [];
  int viragagyasokszama = int.parse(contents[0]);
  contents.removeAt(0);
  for (var row in contents) {
    var line = row.split(" ");
    viragagyasok.add({
      "db": int.parse(line[0]),
      "felajanlasszam": int.parse(line[1]),
      "szin": line[2],
    });
  }

  print("6. feladat");
  List<String> adatok = [];
  for (var i = 0; i < viragagyasok.length; i++) {
    var szin = viragagyasok[i]["szin"];
    var index = i + 1;
    int mettol = viragagyasok[i]["mettol"];
    int meddig = viragagyasok[i]["meddig"];
    if (mettol < meddig) {
      for (var j = mettol; j <= meddig; j++) {
        if (adatok[j].isEmpty) {
          adatok[j] = '${szin} ${index}';
        }
      }
    } else {
      for (var k = meddig; k <= viragagyasokszama; k++) {
        if (adatok[k].isEmpty) {
          adatok[k] = '${szin} ${index}';
        }
      }
      for (var p = 1; p <= viragagyasokszama; p++) {
        if (adatok[p].isEmpty) {
          adatok[p] = '${szin} ${index}';
        }
      }
    }
  }
}
