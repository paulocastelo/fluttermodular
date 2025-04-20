import '../models/assunto.dart';

class AssuntoService {
  List<Assunto> assuntos = [];

  void adicionar(Assunto assunto) {
    assuntos.add(assunto);
  }

  void listar() {
    if (assuntos.isEmpty) {
      print("⚠️ Nenhum assunto cadastrado.");
      return;
    }

    for (int i = 0; i < assuntos.length; i++) {
      print(
        "${i + 1}. Título: ${assuntos[i].titulo}, Descrição: ${assuntos[i].descricao}, Ativo: ${assuntos[i].ativo}",
      );
    }
  }

  void editarTitulo(int index, String novoTitulo) {
    assuntos[index].titulo = novoTitulo;
  }

  void editarDescricao(int index, String novaDescricao) {
    assuntos[index].descricao = novaDescricao;
  }

  void remover(int index) {
    assuntos.removeAt(index);
  }
}