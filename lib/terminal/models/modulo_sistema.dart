import 'entidade.dart';
import 'funcionalidade_sistema.dart';

class ModuloSistema extends Entidade{
  String? nome;
  String? descricao;
  List<FuncionalidadeSistema>? funcionalidades;
  
  ModuloSistema({
    int id = 0,
    this.nome,
    this.descricao,
    this.funcionalidades,
  }) : super(id);
}