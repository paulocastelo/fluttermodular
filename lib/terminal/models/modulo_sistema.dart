import 'entidade.dart';
import 'funcionalidade_sistema.dart';

class ModuloSistema extends Entidade{
  String? nome;
  String? descricao;
  List<FuncionalidadeSistema>? funcionalidades;
  DateTime? dataCriacao;
  DateTime? dataUltimaAlteracao;
  DateTime? dataDesativacao;
  String? usuarioCriacao;
  String? usuarioUltimaAlteracao;
  bool? ativo;
  
  ModuloSistema({
    int id = 0,
    this.nome,
    this.descricao,
    this.funcionalidades,
    this.dataCriacao,
    this.usuarioCriacao,
    this.ativo,
  }) : super(id);
}