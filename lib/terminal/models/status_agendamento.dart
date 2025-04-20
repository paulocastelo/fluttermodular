enum StatusAgendamento {
  rascunho,
  agendado,
  emAndamento,
  finalizado,
  cancelado,
  reagendado;

  String get descricao {
    switch (this) {
      case StatusAgendamento.rascunho:
        return 'Rascunho';
      case StatusAgendamento.agendado:
        return 'Agendado';
      case StatusAgendamento.emAndamento:
        return 'Em Andamento';
      case StatusAgendamento.finalizado:
        return 'Finalizado';
      case StatusAgendamento.cancelado:
        return 'Cancelado';
      case StatusAgendamento.reagendado:
        return 'Reagendado';
    }
  }
}
