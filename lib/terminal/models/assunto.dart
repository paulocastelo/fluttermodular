import 'entidade_base.dart';
import 'categoria_mentoria.dart';

class Assunto extends EntidadeBase<Assunto> {
  String ? titulo;
  String ? descricao;
  DateTime ? dataCriacao;
  DateTime ? dataAtualizacao;
  int ? usuarioCriacao; // TO-DO: Criar classe Usuario
  int ? usuarioAtualizacao;
  int ? usuarioExclusao;
  bool ? ativo;
  CategoriaMentoria ? categoriaMentoria;

  Assunto({
    int id = 0, // O id padrão é 0, mas pode ser alterado
    this.titulo,
    this.descricao,
    this.dataCriacao,
    this.dataAtualizacao,
    this.usuarioCriacao,
    this.usuarioAtualizacao,
    this.usuarioExclusao,
    this.ativo,
    this.categoriaMentoria,
  }) : super(id);

  @override
  String toString() {
    return 'assunto{id: $id\nTitle: $titulo\ndescription: $descricao\nCreation: $dataCriacao, Update: $dataAtualizacao\nCreation User: $usuarioCriacao, \nAtivo: $ativo}';
  }

  @override
  String toStringCustomizado() {
    return 'Assunto{id: $id, titulo: $titulo, descricao: $descricao, dataCriacao: $dataCriacao, ativo: $ativo}';
  }

}