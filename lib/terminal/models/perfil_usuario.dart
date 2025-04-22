import 'entidade_base.dart';
import 'modulo_sistema.dart';

class PerfilUsuario extends EntidadeBase<PerfilUsuario>{
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

  @override
  String toStringCustomizado(){
    return 'PerfilUsuario{id: $id, nome: $nome, descricao: $descricao, ativo: $ativo}';
  }

}