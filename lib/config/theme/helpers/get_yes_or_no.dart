import 'package:amor/dominio/entidades/mesaje.dart';
import 'package:amor/infraestrutura/models/yes_no_models.dart';
import 'package:dio/dio.dart';

class get_yes_or_no {
  final _dio = Dio();
  Future<Mesaje> getAnswer() async {
    // ignore: unused_local_variable
    final respuesta = await _dio.get('https://yesno.wtf/api');

  
    final yesNoModel = YessOrNoModels.fromJson(respuesta.data);


    
    return yesNoModel.toMesajeEntity();
  }
}
