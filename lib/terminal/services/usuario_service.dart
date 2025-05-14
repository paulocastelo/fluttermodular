import 'package:fluttermodular/terminal/services/service_base.dart';

import '../models/entidade_base.dart';
import '../models/usuario.dart';

class UsuarioService extends ServiceBase<Usuario> {
  List<Usuario> usuarios = [];

  void ativarDesativar(int index, bool novoStatus){
    final usuario = itens[index];
    usuario.ativo = novoStatus;
    usuario.dataAtualizacao = DateTime.now();
  }

  void remover(int index) {
    usuarios.removeAt(index);
  }
}
