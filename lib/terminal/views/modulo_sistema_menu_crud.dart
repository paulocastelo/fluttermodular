import '../models/modulo_sistema.dart';
import '../services/modulo_sistema_service.dart';
import '../utils/io_helpers.dart';

void mostrarMenuModuloSistema(ModuloSistemaService service) {
  while (true) {
    print('\n==== MENU MÓDULOS DO SISTEMA ====');
    print('1. Adicionar Módulo');
    print('2. Listar Módulos');
    print('3. Editar Módulo');
    print('4. Remover Módulo');
    print('5. Voltar');

    int opcao = lerInt("Digite o número da opção: ");

    switch (opcao) {
      case 1:
        String nome = lerString("Nome do módulo:");
        String descricao = lerString("Descrição:");
        String usuarioCriacao = lerString("Usuário criador:");
        service.adicionar(ModuloSistema(
          nome: nome,
          descricao: descricao,
          dataCriacao: DateTime.now(),
          ativo: true,
          usuarioCriacao: usuarioCriacao,
        ));
        print("✅ Módulo adicionado com sucesso!");
        break;

      case 2:
        service.listar();
        break;

      case 3:
        service.listar();
        int index = lerInt("Número do módulo a editar:");
        if (index < 1 || index > service.modulos.length) {
          print("❌ Índice inválido.");
          break;
        }

        print("1. Editar Nome");
        print("2. Editar Descrição");
        print("3. Desativar Módulo");
        print("4. Reativar Módulo");
        int opcaoEdit = lerInt("Opção:");
        switch (opcaoEdit) {
          case 1:
            String novoNome = lerString("Novo nome:");
            service.editarNome(index - 1, novoNome);
            break;
          case 2:
            String novaDescricao = lerString("Nova descrição:");
            service.editarDescricao(index - 1, novaDescricao);
            break;
          case 3:
            service.ativaDesativar(index - 1, false);
            break;
          case 4:
            service.ativaDesativar(index - 1, true);
            break;
          default:
            print("❌ Opção inválida.");
        }
        break;

      case 4:
        service.listar();
        int indexRemover = lerInt("Número do módulo a remover:");
        if (indexRemover < 1 || indexRemover > service.modulos.length) {
          print("❌ Índice inválido.");
          break;
        }
        service.remover(indexRemover - 1);
        print("🗑️ Módulo removido.");
        break;

      case 5:
        return;

      default:
        print("❌ Opção inválida.");
    }
  }
}
