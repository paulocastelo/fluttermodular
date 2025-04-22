import '../models/categoria_mentoria.dart';
import '../services/categoria_mentoria_service.dart';
import '../utils/io_helpers.dart';

void mostrarMenuCategoriaMentoria(CategoriaMentoriaService service) {
  while (true) {
    mostrarMenu();

    int opcao = lerInt("Escolha uma opção:");

    switch (opcao) {
      case 1:
        final titulo = lerString("Título da categoria:");
        final descricao = lerString("Descrição da categoria:");
        final categoria = CategoriaMentoria(
          titulo: titulo,
          descricao: descricao,
          dataCriacao: DateTime.now(),
          ativo: true,
        );
        service.adicionar(categoria);
        print("✅ Categoria adicionada!");
        break;

      case 2:
        service.listar();
        break;

      case 3:
        service.listar();
        final index = lerInt("Número da categoria a editar:");
        if (index < 1 || index > service.categorias.length) {
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
        final indexRemover = lerInt("Número da categoria a remover:");
        if (indexRemover < 1 || indexRemover > service.categorias.length) {
          print("❌ Índice inválido.");
          break;
        }
        service.remover(indexRemover - 1);
        print("🗑️ Categoria removida.");
        break;

      case 5:
        return;

      default:
        print("❌ Opção inválida.");
    }
  }
}

void mostrarMenu() {
  print('\n📚 === MENU CATEGORIA DE MENTORIA ===');
  print('1. Adicionar Categoria');
  print('2. Listar Categorias');
  print('3. Editar Categoria');
  print('4. Remover Categoria');
  print('5. Voltar');
}
