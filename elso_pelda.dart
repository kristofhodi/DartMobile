void main() {
  var firstName = "John";
  var lastName = "Doe";
  dynamic age = 19;
  age = "20";
  final lista = [1, 2, 3, 4, 5];
  lista.add(21);
  const fibo = [0, 1, 1, 2, 3, 5];
  print("Full name is $firstName $lastName $age");
  print(lista);
  fibo.add(8);
  print(fibo);

  //constot nem lehet modositani, dynamic a legrugalmasabb

  int num1 = 10; //declaring number1
  int num2 = 3; //declaring number2

  // Calculation
  int sum = num1 + num2;
  int diff = num1 - num2;
  int mul = num1 * num2;
  double div =
      num1 / num2; // It is double because it outputs number with decimal.

  // displaying the output
  print("The sum is $sum");
  print("The diff is $diff");
  print("The mul is $mul");
  print("The div is $div");
  print("A tömb első eleme: ${lista[0]}");
}
