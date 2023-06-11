import 'package:exam_m5/1-savol.dart';

void main(){
  Words word=Words.fac("hello");
  print(word.reveseVowels());

  Words word1 = Words.fac("salom");
  print(word1.hashCode);
  print(word==word1);
  print(word);
}