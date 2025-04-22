import 'package:fluttermodular/terminal/models/agendamento.dart';
import 'package:fluttermodular/terminal/models/status_agendamento.dart';
import 'package:fluttermodular/terminal/services/agendamento_service.dart';
import 'package:fluttermodular/terminal/utils/io_helpers.dart';

void mostrarMenuAgendamento(AgendamentoService service) {
  while (true) {
    exibirMenuAgendamento();
    int? opcao = lerInt("Digite o número da opção: ");

    switch (opcao) {
      case 1:
        adicionarAgendamento(service);
        break;
      case 2:
        service.listar();
        break;
      case 3:
        editarAgendamento(service);
        break;
      case 4:
        removerAgendamento(service);
        break;
      case 5:
        return;
      default:
        print("❌ Opção inválida.");
    }
  }
}

void exibirMenuAgendamento() {
  print("==== MENU DE AGENDAMENTOS ====");
  print("1. Adicionar Agendamento");
  print("2. Listar Agendamentos");
  print("3. Editar Agendamento");
  print("4. Remover Agendamento");
  print("5. Sair");
}

void adicionarAgendamento(AgendamentoService service) {
  DateTime data = DateTime.parse(lerString("Digite a data (yyyy-MM-ddTHH:mm): "));
  String local = lerString("Digite o local ou link da sessão:");
  String observacao = lerString("Observações (opcional):");

  // Simulação simplificada — depois pode integrar com assunto e pessoas.
  Agendamento agendamento = Agendamento(
    dataAgendamento: data,
    localOuLink: local,
    observacao: observacao,
    status: StatusAgendamento.agendado,
    dataCriacao: DateTime.now(),
    ativo: true,
  );

  service.adicionar(agendamento);
  print("✅ Agendamento criado com sucesso!");
}

void editarAgendamento(AgendamentoService service) {
  service.listar();
  int index = lerInt("Digite o número do agendamento a editar:");

  if (index < 1 || index > service.agendamentos.length) {
    print("❌ Índice inválido.");
    return;
  }

  print("1. Editar Data");
  print("2. Editar Local");
  print("3. Editar Status");

  int opcao = lerInt("Escolha o que deseja editar:");
  switch (opcao) {
    case 1:
      DateTime novaData = DateTime.parse(lerString("Digite nova data (yyyy-MM-ddTHH:mm):"));
      service.editarData(index - 1, novaData);
      break;
    case 2:
      String novoLocal = lerString("Digite o novo local ou link:");
      service.agendamentos[index - 1].localOuLink = novoLocal;
      break;
    case 3:
      exibirSubmenuStatus();
      int statusIndex = lerInt("Digite o número do novo status:");
      if (statusIndex >= 1 && statusIndex <= StatusAgendamento.values.length) {
        final novoStatus = StatusAgendamento.values[statusIndex - 1];
        service.editarStatus(index - 1, novoStatus);
      } else {
        print("❌ Status inválido.");
      }
      break;
    default:
      print("❌ Opção inválida.");
  }

  print("✏️ Agendamento atualizado.");
}

void removerAgendamento(AgendamentoService service) {
  service.listar();
  int index = lerInt("Digite o número do agendamento para remover:");
  if (index < 1 || index > service.agendamentos.length) {
    print("❌ Índice inválido.");
    return;
  }
  service.remover(index - 1);
  print("🗑️ Agendamento removido.");
}

void exibirSubmenuStatus() {
  print("==== STATUS DISPONÍVEIS ====");
  for (int i = 0; i < StatusAgendamento.values.length; i++) {
    print("${i + 1}. ${StatusAgendamento.values[i].name}");
  }
}