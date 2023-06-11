class Words{
  String _word;

  Words(this._word);

  factory Words.fac (String text) {
    RegExp regex=RegExp('[A-Z]');
    if(text.isEmpty || regex.hasMatch(text)){
      throw CustomExeption;
    }
    return Words(text);
  }

  String get word => _word;

  @override
  String toString() {
    return "Words($_word)";
  }

  @override
  noSuchMethod(Invocation invocation) {
    return invocation;
  }

  @override
  int get hashCode => _word.hashCode;

  bool operator == (Object? other) => other is Words && _word==other._word;

  String reveseVowels(){
    List list=[];
    RegExp regex= RegExp('[aeiou]');
    String text=word;
    for(int i=0;i<=text.length;i++){
      int a=text.indexOf(regex,i);
      i=a+1;
      list.add(text[a]);
    }
    int b= list.length-1;
    String textesult="";
    for(int i=0;i<text.length;i++){
      if(regex.hasMatch(text[i])){
        textesult+=list[b];
        b--;
      }
      else{
        textesult += text[i];
      }
    }
    return textesult;
  }
}

class CustomExeption implements Exception{
  String text;

  CustomExeption(this.text);

  @override
  String toString() {
    return text;
  }
}