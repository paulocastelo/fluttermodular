import 'package:fluttermodular/terminal/services/service_base.dart';

import '../models/funcionalidade_sistema.dart';

class FuncionalidadeSistemaService extends ServiceBase<FuncionalidadeSistema>{
  @override
  void editarCampo(int index, void Function(FuncionalidadeSistema) callback){
    super.editarCampo(index, (funcionalidade){
      callback(funcionalidade);
      funcionalidade.dataUltimaAlteracao = DateTime.now();
    });
  }
}
