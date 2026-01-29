import 'dart:io';

void main() {
  print("Enter name: ");
  String? name = stdin.readLineSync()!;
  String newName = name.toUpperCase();
  print("The name in uppercase: $newName");
}
