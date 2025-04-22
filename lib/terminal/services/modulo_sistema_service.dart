import '../models/modulo_sistema.dart';

class ModuloSistemaService {
  final List<ModuloSistema> modulos = [];

  void adicionar(ModuloSistema modulo) {
    modulos.add(modulo);
  }

  void listar() {
    if (modulos.isEmpty) {
      print("🚫 Nenhum módulo cadastrado.");
    } else {
      for (int i = 0; i < modulos.length; i++) {
        final m = modulos[i];
        print(
          '${i + 1}. ${m.nome ?? "(Sem nome)"} - ${m.descricao ?? "(Sem descrição)"}',
        );
      }
    }
  }

  void editarNome(int index, String novoNome) {
    modulos[index].nome = novoNome;
    modulos[index].dataUltimaAlteracao = DateTime.now();
  }

  void editarDescricao(int index, String novaDescricao) {
    modulos[index].descricao = novaDescricao;
    modulos[index].dataUltimaAlteracao = DateTime.now();
  }

  void ativaDesativar(int index, bool novoStatus) {
    modulos[index].ativo = novoStatus;
    modulos[index].dataUltimaAlteracao = DateTime.now();
  }

  void remover(int index) {
    modulos.removeAt(index);
  }
}
