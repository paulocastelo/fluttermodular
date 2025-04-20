import 'entidade.dart';
import 'modulo_sistema.dart';

class PerfilUsuario extends Entidade{
  String? nome;
  String? descricao;
  List<ModuloSistema>? modulosSistema;

  PerfilUsuario({
    int id = 0,
    this.nome,
    this.descricao,
    this.modulosSistema,
  }) : super (id);

}