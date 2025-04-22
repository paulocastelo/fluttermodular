import '../models/funcionalidade_sistema.dart';
import '../services/funcionalidade_sistema_service.dart';
import '../utils/io_helpers.dart';

void mostrarMenuFuncionalidadeSistema(FuncionalidadeSistemaService service) {
  while (true) {
    mostraMenu();

    int opcao = lerInt("Digite o número da opção: ");

    switch (opcao) {
      case 1:
        String nome = lerString("Nome da funcionalidade:");
        String descricao = lerString("Descrição:");
        service.adicionar(FuncionalidadeSistema(
          nome: nome,
          descricao: descricao,
          dataCriacao: DateTime.now(),
          ativo: true,
          usuarioCriacao: "admin",
        ));
        print("✅ Funcionalidade adicionada com sucesso!");
        break;

      case 2:
        service.listar();
        break;

      case 3:
        service.listar();
        int index = lerInt("Número da funcionalidade a editar:");
        if (index < 1 || index > service.funcionalidades.length) {
          print("❌ Índice inválido.");
          break;
        }

        print("1. Editar Nome");
        print("2. Editar Descrição");
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
          default:
            print("❌ Opção inválida.");
        }
        break;

      case 4:
        service.listar();
        int indexRemover = lerInt("Número da funcionalidade a remover:");
        if (indexRemover < 1 || indexRemover > service.funcionalidades.length) {
          print("❌ Índice inválido.");
          break;
        }
        service.remover(indexRemover - 1);
        print("🗑️ Funcionalidade removida.");
        break;

      case 5:
        return;

      default:
        print("❌ Opção inválida.");
    }
  }
}

void mostraMenu() {
  print("==== MENU FUNCIONALIDADE ====");
  print("1. Adicionar Funcionalidade");
  print("2. Listar Funcionalidades");
  print("3. Editar Funcionalidade");
  print("4. Remover Funcionalidade");
  print("5. Sair");
}