import '../models/categoria_mentoria.dart';

class CategoriaMentoriaService {
  final List<CategoriaMentoria> categorias = [];

  void adicionar(CategoriaMentoria categoria) {
    categorias.add(categoria);
  }

  void listar() {
    if (categorias.isEmpty) {
      print("🚫 Nenhuma categoria de mentoria cadastrada.");
    } else {
      for (int i = 0; i < categorias.length; i++) {
        final c = categorias[i];
        print('${i + 1}. ${c.titulo ?? "(Sem título)"} - ${c.descricao ?? "(Sem descrição)"}');
      }
    }
  }

  void editarTitulo(int index, String novoTitulo) {
    categorias[index].titulo = novoTitulo;
  }

  void editarDescricao(int index, String novaDescricao) {
    categorias[index].descricao = novaDescricao;
  }

  void remover(int index) {
    categorias.removeAt(index);
  }
}
