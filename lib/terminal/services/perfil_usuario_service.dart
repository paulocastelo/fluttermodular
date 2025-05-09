import '../models/perfil_usuario.dart';

class PerfilUsuarioService {
  final List<PerfilUsuario> perfis = [];

  void adicionar(PerfilUsuario perfil) {
    perfis.add(perfil);
  }

  void listar() {
    if (perfis.isEmpty) {
      print("🚫 Nenhum perfil de usuário cadastrado.");
    } else {
      for (int i = 0; i < perfis.length; i++) {
        final p = perfis[i];
        print('${i + 1}. ${p.nome ?? "(Sem nome)"} - ${p.descricao ?? "(Sem descrição)"}');
      }
    }
  }

  void editarNome(int index, String novoNome) {
    perfis[index].nome = novoNome;
    perfis[index].dataUltimaAlteracao = DateTime.now();
  }

  void editarDescricao(int index, String novaDescricao) {
    perfis[index].descricao = novaDescricao;
    perfis[index].dataUltimaAlteracao = DateTime.now();
  }

  

  void ativaDesativar(int index, bool novoStatus) {
    perfis[index].ativo = novoStatus;
    perfis[index].dataUltimaAlteracao = DateTime.now();
  }

  void remover(int index) {
    perfis.removeAt(index);
  }
}
