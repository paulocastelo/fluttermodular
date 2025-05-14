import 'package:fluttermodular/terminal/models/assunto.dart';
import 'package:fluttermodular/terminal/models/ata_agendamento.dart';
import 'package:fluttermodular/terminal/services/service_base.dart';

class AtaAgendamentoService extends ServiceBase<AtaAgendamento>{
  @override
  void editarCampo (int index, void Function(AtaAgendamento item) callback) {
    super.editarCampo(index, (ata){
      callback(ata);
      ata.dataAtualizacao = DateTime.now();
    });
  }
}