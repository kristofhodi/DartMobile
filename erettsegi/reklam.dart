import "dart:io";

void main() {
  File file = File("rendel.txt");
  List<String> contents = file.readAsLinesSync();
  //print(contents[0]);
  List<Map<String, dynamic>> rendelesek = [];
  for (var row in contents) {
    var line = row.split(" ");
    rendelesek.add({
      "nap": int.parse(line[0]),
      "tipus": line[1],
      "darab": int.parse(line[2]),
    });
  }

  print("2. feladat");
  print("A rendelések száma: ${rendelesek.length}");

  print("3. feladat");
  print("Adjon meg egy napot: ");
  int day = int.parse(stdin.readLineSync()!);
  var eredmeny = rendelesek.where((x) => x["nap"] == day);
  print("a rendelések száma az adott napon: ${eredmeny.length}");

  print("4. feladat");
  var nr = rendelesek.where((x) => x["tipus"] == "NR");
  Set<int> napok = {};
  for (var rendeles in nr) {
    napok.add(rendeles["nap"]);
  }
  var calc = 30 - napok.length;
  if (calc == 0) {
    print("Minden nap volt érintett város");
  }
  print("${calc} nap nem volt reklam");
}
