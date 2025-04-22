import 'entidade.dart';
import 'modulo_sistema.dart';

class PerfilUsuario extends Entidade{
  String? nome;
  String? descricao;
  List<ModuloSistema>? modulosSistema;
  DateTime? dataCriacao;
  DateTime? dataUltimaAlteracao;
  DateTime? dataDesativacao;
  String? usuarioCriacao;
  String? usuarioUltimaAlteracao;
  bool? ativo;

  PerfilUsuario({
    int id = 0,
    this.nome,
    this.descricao,
    this.modulosSistema,
    this.dataCriacao,
    this.usuarioCriacao,
    this.ativo,
  }) : super (id);

}