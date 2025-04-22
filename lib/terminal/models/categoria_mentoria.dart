import 'entidade_base.dart';

class CategoriaMentoria extends EntidadeBase<CategoriaMentoria> {
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
    return 'CategoriaMentoria{id: $id,titulo: $titulo, descricao: $descricao, dataCriacao: $dataCriacao, ativo: $ativo}';
  }

  @override
  String toStringCustomizado() {
    return 'CategoriaMentoria{id: $id, titulo: $titulo, descricao: $descricao, ativo: $ativo}';
  }
}