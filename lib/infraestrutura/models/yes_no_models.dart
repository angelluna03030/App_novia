import 'package:amor/dominio/entidades/mesaje.dart';

class YessOrNoModels {
  final String answer;
  final bool forced;
  final String image;

  YessOrNoModels({
    required this.answer,
    required this.forced,
    required this.image,
  });

  factory YessOrNoModels.fromJson(Map<String, dynamic> json) => YessOrNoModels(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
      };

  Mesaje toMesajeEntity () => Mesaje(fromWho: FromWho.hers, 
      imgeURl: image, 
      text: answer == "yes" ? "Si" : "No");
}
