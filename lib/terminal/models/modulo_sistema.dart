import 'entidade_base.dart';
import 'funcionalidade_sistema.dart';

class ModuloSistema extends EntidadeBase<ModuloSistema>{
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

  @override
  String toStringCustomizado() {
    return 'ModuloSistema{id: $id, nome: $nome, descricao: $descricao, ativo: $ativo}';
  }

}