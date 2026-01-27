import 'dart:io';
void main() {
  print("Enter a sentence: ");
  String sentence = stdin.readLineSync()!;

  print("Sentence length is: ${sentence.length}");
}