import 'package:fluttermodular/terminal/models/assunto.dart';
import 'package:fluttermodular/terminal/models/ata_agendamento.dart';

class AtaAgendamentoService {
  List<AtaAgendamento> atas = [];

  /// Adiciona uma nova ata à lista
  void adicionar(AtaAgendamento ata) {
    atas.add(ata);
  }

  /// Lista todas as atas registradas
  void listar() {
    if (atas.isEmpty) {
      print("📭 Nenhuma ata de agendamento encontrada.");
    } else {
      for (int i = 0; i < atas.length; i++) {
        print("${i + 1}. Assunto: ${atas[i].agendamento?.assunto}");
        print("   Descrição: ${atas[i].descricao}");
        print("   Observação: ${atas[i].observacao ?? 'Nenhuma'}");
        print("   Criado em: ${atas[i].dataCriacao}");
        print("   -----------------------------");
      }
    }
  }

  /// Edita o assunto da ata
  void editarAssunto(int index, Assunto novoAssunto) {
    atas[index].agendamento?.assunto = novoAssunto;
  }

  /// Edita o titulo da ata
  void editarTitulo(int index, String novoTitulo) {
    atas[index].titulo = novoTitulo;
  }

  /// Edita a descrição da ata
  void editarDescricao(int index, String novaDescricao) {
    atas[index].descricao = novaDescricao;
  }

  /// Edita a observação da ata
  void editarObservacao(int index, String novaObs) {
    atas[index].observacao = novaObs;
  }

  /// Remove a ata da lista
  void remover(int index) {
    atas.removeAt(index);
  }
}