import '../models/usuario.dart';

class UsuarioService {
  List<Usuario> usuarios = [];

  void adicionar(Usuario usuario) {
    usuarios.add(usuario);
  }

  void listar() {
    if (usuarios.isEmpty) {
      print("📭 Nenhum usuário cadastrado.");
    } else {
      for (int i = 0; i < usuarios.length; i++) {
        final u = usuarios[i];
        print(
          "${i + 1}. Nome: ${u.pessoa?.nome}, Email: ${u.pessoa?.email}, Login: ${u.login}, Ativo: ${u.ativo == true ? 'Sim' : 'Não'}",
        );
      }
    }
  }

  void editarNome(int index, String novoNome) {
    usuarios[index].pessoa?.nome = novoNome;
  }

  void editarEmail(int index, String novoEmail) {
    usuarios[index].pessoa?.email = novoEmail;
  }

  void editarLogin(int index, String novoLogin) {
    usuarios[index].login = novoLogin;
  }

  void editarSenha(int index, String novaSenha) {
    usuarios[index].senha = novaSenha;
  }

  void ativarOuDesativar(int index) {
    usuarios[index].ativo = !(usuarios[index].ativo ?? true);
  }

  void remover(int index) {
    usuarios.removeAt(index);
  }
}
