enum FromWho {
  me,
  hers,
}
class Mesaje  {
  final String text;
  final String imgeURl;
  final FromWho fromWho; 



  
  Mesaje({
required this.fromWho,
required this.imgeURl,
 required this.text,
  });
}
