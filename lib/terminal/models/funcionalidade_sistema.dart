import 'entidade.dart';

class FuncionalidadeSistema extends Entidade {
  String ? nome;
  String ? descricao;
  String ? totaOuAcao;

  FuncionalidadeSistema({
    int id = 0,
    this.nome,
    this.descricao,
    this.totaOuAcao,
  }) : super(id);

}
