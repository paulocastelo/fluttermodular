import 'package:fluttermodular/terminal/services/service_base.dart';

import '../models/modulo_sistema.dart';

class ModuloSistemaService extends ServiceBase<ModuloSistema>{
  @override
  void editarCampo(int index, void Function(ModuloSistema item) callback){
    super.editarCampo(index, (modulo){
      callback(modulo);
      modulo.dataUltimaAlteracao = DateTime.now();
    });
  }
}
