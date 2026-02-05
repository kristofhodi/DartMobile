import 'dart:io';

void main() {
  reverseInteger(234);
  gausSum(5);
  grade(100, 76);
}

void reverseInteger(integer) {
  String reversed = integer.toString().split('').reversed.join('');
  int reversedNumber = int.parse(reversed);
  print("fordított szám: $reversedNumber");
}

void grade(total, points) {
  int number;
  double scored = points/total; 

  if (scored < 0.45) {
    number = 1;
    print("Értékelés: $number");
  } else if (0.45 <= scored && scored < 0.60) {
    number = 2;
    print("Értékelés: $number");
  } else if (0.60 <= scored && scored < 0.75) {
    number = 3;
    print("Értékelés: $number");
  } else if (0.75 <= scored && scored < 0.90) {
    number = 4;
    print("Értékelés: $number");
  } else if (0.90 <= scored) {
    number = 5;
    print("Értékelés: $number");
  }
}

void gausSum(number) {
  int sum = 0;
  for (var i = 0; i <= number; i++) {
    sum += i;
  }
  print("Eredmény: $sum");
}
