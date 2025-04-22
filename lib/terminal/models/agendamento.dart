import 'assunto.dart';
import 'entidade_base.dart';
import 'pessoa.dart';
import 'ata_agendamento.dart';
import 'status_agendamento.dart';

class Agendamento extends EntidadeBase<Agendamento> {
  DateTime? dataAgendamento;
  DateTime? dataCriacao;
  DateTime? dataAtualizacao;
  int? duracao; // em minutos
  int? usuarioCriacao; // TO-DO: Criar classe Usuario
  int? usuarioAtualizacao;
  int? usuarioExclusao;
  bool? ativo;
  Assunto? assunto;
  List<Pessoa>? mentores;
  List<Pessoa>? mentorados;
  String? localOuLink;
  String? observacao;
  List<AtaAgendamento>? ataAgendamento = [];
  StatusAgendamento? status;

  Agendamento({
    int id = 0,
    this.dataAgendamento,
    this.dataCriacao,
    this.dataAtualizacao,
    this.duracao,
    this.usuarioCriacao,
    this.usuarioAtualizacao,
    this.usuarioExclusao,
    this.ativo,
    this.assunto,
    this.mentores,
    this.mentorados,
    this.localOuLink,
    this.observacao,
    this.status,
  }) : super(id);

  @override
  String toString() {
    return 'Agendamento{id: $id, dataAgendamento: $dataAgendamento, assunto: $assunto, mentores: $mentores, mentorados: $mentorados, localOuLink: $localOuLink, observacao: $observacao, status: $status}';
  }

  @override
  String toStringCustomizado() {
    return 'Agendamento{id: $id, dataAgendamento: $dataAgendamento, assunto: $assunto, mentores: $mentores, mentorados: $mentorados, localOuLink: $localOuLink, observacao: $observacao, status: $status}';
  }
}
