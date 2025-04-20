import 'entidade.dart';
import 'pessoa.dart';
import 'agendamento.dart';
class AtaAgendamento extends Entidade{
  
  DateTime ? dataCriacao;
  DateTime ? dataAtualizacao;
  int ? usuarioCriacao;
  int ? usuarioAtualizacao;
  int ? usuarioExclusao;
  bool ? ativo;
  String ? titulo;
  String ? descricao;
  String ? observacao;
  List<Pessoa> ? participantes;
  Agendamento ? agendamento;
  List<Pessoa> ? mentores;
  List<Pessoa> ? mentorados;

  AtaAgendamento({
    int id = 0,
    this.dataCriacao,
    this.dataAtualizacao,
    this.usuarioCriacao,
    this.usuarioAtualizacao,
    this.usuarioExclusao,
    this.ativo,
    this.titulo,
    this.descricao,
    this.observacao,
    this.participantes,
    this.agendamento,
    this.mentores,
    this.mentorados
  }) : super(id);
}