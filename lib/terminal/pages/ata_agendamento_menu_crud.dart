import '../models/ata_agendamento.dart';
import '../services/ata_agendamento_service.dart';
import '../utils/io_helpers.dart';

void mostrarMenuAtaAgendamento(AtaAgendamentoService service) {
  while (true) {
    print('\n📄 === MENU ATA DE AGENDAMENTO ===');
    print('1. Adicionar Ata');
    print('2. Listar Atas');
    print('3. Editar Ata');
    print('4. Remover Ata');
    print('5. Voltar');

    int opcao = lerInt("Escolha uma opção:");

    switch (opcao) {
      case 1:
        final titulo = lerString("Título da ata:");
        final descricao = lerString("Descrição da ata:");
        final ata = AtaAgendamento(
          titulo: titulo,
          descricao: descricao,
          dataCriacao: DateTime.now(),
          ativo: true,
        );
        service.adicionar(ata);
        print("✅ Ata adicionada!");
        break;

      case 2:
        service.listar();
        break;

      case 3:
        service.listar();
        final index = lerInt("Número da ata a editar:");
        if (index < 1 || index > service.atas.length) {
          print("❌ Índice inválido.");
          break;
        }

        print("1. Editar Título");
        print("2. Editar Descrição");
        final opcaoEdit = lerInt("Escolha uma opção:");

        switch (opcaoEdit) {
          case 1:
            final novoTitulo = lerString("Novo título:");
            service.editarTitulo(index - 1, novoTitulo);
            break;
          case 2:
            final novaDescricao = lerString("Nova descrição:");
            service.editarDescricao(index - 1, novaDescricao);
            break;
          default:
            print("❌ Opção inválida.");
        }

        break;

      case 4:
        service.listar();
        final indexRemover = lerInt("Número da ata a remover:");
        if (indexRemover < 1 || indexRemover > service.atas.length) {
          print("❌ Índice inválido.");
          break;
        }
        service.remover(indexRemover - 1);
        print("🗑️ Ata removida.");
        break;

      case 5:
        return;

      default:
        print("❌ Opção inválida.");
    }
  }
}
