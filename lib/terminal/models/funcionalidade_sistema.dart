import 'entidade_base.dart';
import 'entidade.dart';

class FuncionalidadeSistema extends EntidadeBase<FuncionalidadeSistema> {
  String ? nome;
  String ? descricao;
  String ? totaOuAcao;
  DateTime ? dataCriacao;
  DateTime ? dataUltimaAlteracao;
  DateTime ? dataDesativacao;
  String ? usuarioCriacao;
  String ? usuarioUltimaAlteracao;
  bool ? ativo;

  FuncionalidadeSistema({
    int id = 0,
    this.nome,
    this.descricao,
    this.totaOuAcao,
    this.dataCriacao,
    this.usuarioCriacao,
    this.ativo,
  }) : super(id);

  @override
  String toStringCustomizado() {
    return 'FuncionalidadeSistema{id: $id, nome: $nome, descricao: $descricao, totaOuAcao: $totaOuAcao}';
  }

}
