import 'package:fluttermodular/terminal/models/entidade.dart';

class CategoriaMentoria extends Entidade{
  String ? titulo;
  String ? descricao;
  DateTime ? dataCriacao;
  DateTime ? dataAtualizacao;
  String ? usuarioCriacao; // TO-DO: Criar classe Usuario
  String ? usuarioAtualizacao;
  String ? usuarioExclusao;
  bool ? ativo;

  // CategoriaMentoria();
  CategoriaMentoria({
    int id = 0, // O id padrão é 0, mas pode ser alterado
    this.titulo,
    this.descricao,
    this.dataCriacao,
    this.dataAtualizacao,
    this.usuarioCriacao,
    this.usuarioAtualizacao,
    this.usuarioExclusao,
    this.ativo,
  }) : super(id);

  @override
  String toString() {
    return 'CategoriaMentoria{id: $id,titulo: $titulo, descricao: $descricao, dataCriacao: $dataCriacao, dataAtualizacao: $dataAtualizacao, usuarioCriacao: $usuarioCriacao, usuarioAtualizacao: $usuarioAtualizacao, usuarioExclusao: $usuarioExclusao, ativo: $ativo}';
  }
}