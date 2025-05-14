import 'package:fluttermodular/terminal/services/service_base.dart';

import '../models/agendamento.dart';
import '../models/pessoa.dart';
import '../models/assunto.dart';
import '../models/status_agendamento.dart';

class AgendamentoService extends ServiceBase<Agendamento> {
  final List<Agendamento> agendamentos = [];

  void adicionar(Agendamento agendamento) {
    agendamentos.add(agendamento);
  }

  void listar() {
    if (agendamentos.isEmpty) {
      print("📭 Nenhum agendamento encontrado.");
    } else {
      for (int i = 0; i < agendamentos.length; i++) {
        final a = agendamentos[i];
        print("${i + 1}. 📅 ${a.dataAgendamento?.toIso8601String() ?? 'sem data'} | "
              "Assunto: ${a.assunto?.titulo ?? 'sem assunto'} | "
              "Status: ${a.status?.name ?? 'indefinido'}");
      }
    }
  }

  void editarData(int index, DateTime novaData) {
    agendamentos[index].dataAgendamento = novaData;
    agendamentos[index].dataAtualizacao = DateTime.now();
  }

  void editarAssunto(int index, Assunto novoAssunto) {
    agendamentos[index].assunto = novoAssunto;
    agendamentos[index].dataAtualizacao = DateTime.now();
  }

  void editarMentores(int index, List<Pessoa> novosMentores) {
    agendamentos[index].mentores = novosMentores;
    agendamentos[index].dataAtualizacao = DateTime.now();
  }

  void editarMentorados(int index, List<Pessoa> novosMentorados) {
    agendamentos[index].mentorados = novosMentorados;
    agendamentos[index].dataAtualizacao = DateTime.now();
  }

  void editarStatus(int index, StatusAgendamento novoStatus) {
    agendamentos[index].status = novoStatus;
    agendamentos[index].dataAtualizacao = DateTime.now();
  }

  void remover(int index) {
    agendamentos.removeAt(index);
  }
}
