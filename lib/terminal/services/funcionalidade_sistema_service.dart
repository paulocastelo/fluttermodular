import '../models/funcionalidade_sistema.dart';

class FuncionalidadeSistemaService {
  final List<FuncionalidadeSistema> funcionalidades = [];

  void adicionar(FuncionalidadeSistema funcionalidade) {
    funcionalidades.add(funcionalidade);
  }

  void listar() {
    if (funcionalidades.isEmpty) {
      print("🚫 Nenhuma funcionalidade cadastrada.");
    } else {
      for (int i = 0; i < funcionalidades.length; i++) {
        final f = funcionalidades[i];
        print('${i + 1}. ${f.nome ?? "(Sem nome)"} - ${f.descricao ?? "(Sem descrição)"}');
      }
    }
  }

  void editarNome(int index, String novoNome) {
    funcionalidades[index].nome = novoNome;
  }

  void editarDescricao(int index, String novaDescricao) {
    funcionalidades[index].descricao = novaDescricao;
  }

  void remover(int index) {
    funcionalidades.removeAt(index);
  }
}
