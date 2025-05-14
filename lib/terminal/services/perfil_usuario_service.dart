import '../models/perfil_usuario.dart';
import 'service_base.dart';

class PerfilUsuarioService extends ServiceBase<PerfilUsuario> {
  @override
  void editarCampo(int index, void Function(PerfilUsuario item) callback) {
    super.editarCampo(index, (perfil) {
      callback(perfil);
      perfil.dataUltimaAlteracao = DateTime.now();
    });
  }

  void ativarDesativar (int index, bool novoStatus) {
    if(index >= 0 && index < itens.length) {
      itens[index].ativo = novoStatus;
      itens[index].dataUltimaAlteracao = DateTime.now();
    }
  }
}
