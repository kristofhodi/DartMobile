void main() {
  List<int> szamok = [1,3,2,3,5,4];
  List<int> szamokCsakEgy = szamok.toSet().toList();
  szamokCsakEgy.sort();
  print(szamokCsakEgy);

  String word = "unique";
  String vowels = "aeoui";
  Map<String, int> vowelInWord = {
    "a" : 0,
    "e" : 0,
    "o" : 0,
    "u" : 0,
    "i" : 0
  };

  for (var vowel in word.split('')) {
    if (vowels.contains(vowel)) {
      vowelInWord[vowel] = vowelInWord[vowel]! + 1; 
    }
  }
  print(vowelInWord);

}