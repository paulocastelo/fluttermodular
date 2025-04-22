import '../models/categoria_mentoria.dart';
import '../services/categoria_mentoria_service.dart';
import '../utils/io_helpers.dart';

void mostrarMenuCategoriaMentoria(CategoriaMentoriaService service) {
  while (true) {
    print('\n==== MENU CATEGORIA DE MENTORIA ====');
    print('1. Adicionar Categoria');
    print('2. Listar Categorias');
    print('3. Editar Categoria');
    print('4. Remover Categoria');
    print('5. Voltar');

    int opcao = lerInt("Digite o número da opção: ");

    switch (opcao) {
      case 1:
        String titulo = lerString("Título da categoria:");
        String descricao = lerString("Descrição:");
        service.adicionar(CategoriaMentoria(
          titulo: titulo,
          descricao: descricao,
          dataCriacao: DateTime.now(),
          ativo: true,
          usuarioCriacao: "admin",
        ));
        print("✅ Categoria adicionada com sucesso!");
        break;

      case 2:
        service.listar();
        break;

      case 3:
        service.listar();
        int index = lerInt("Número da categoria a editar:");
        if (index < 1 || index > service.categorias.length) {
          print("❌ Índice inválido.");
          break;
        }

        print("1. Editar Título");
        print("2. Editar Descrição");
        int opcaoEdit = lerInt("Opção:");
        switch (opcaoEdit) {
          case 1:
            String novoTitulo = lerString("Novo título:");
            service.editarTitulo(index - 1, novoTitulo);
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
        int indexRemover = lerInt("Número da categoria a remover:");
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
