import "dart:io";

void main() {
  print("Adj meg egy számot: ");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Adj meg egy másik számot: ");
  int num2 = int.parse(stdin.readLineSync()!);

  if (num2 < num1) {
    int temp = num1;
    num1 = num2;
    num2 = temp;
  }

  for (int i = num1; i <= num2; i++) {
    if (i.isEven) {
      print("${i} páros");
    }
    else {
      print("${i} páratlan");
    }
  }

  List<String> uefa2024euro = [
    "Spain",
    "Germany",
    "Portugal",
    "France",
    "Netherlands",
    "Turkey",
    "England",
    "Switzerland",
  ];

  uefa2024euro.asMap().forEach(
    (index, value) => print("$index ország: $value"),
  );

  for (int i = 0; i < uefa2024euro.length; i++) {
    for (int j = i+1; j < uefa2024euro.length; j++) {
      print("${uefa2024euro[i]} - ${uefa2024euro[j]}");
    }
  }

}
