import 'package:fluttermodular/terminal/services/service_base.dart';

import '../models/assunto.dart';

class AssuntoService extends ServiceBase<Assunto> {
  List<Assunto> assuntos = [];
  @override
  void editarCampo(int index, void Function(Assunto item) callback) {
    super.editarCampo(index, (assunto) {
      callback(assunto);
      assunto.dataAtualizacao = DateTime.now();
    });
  }
}