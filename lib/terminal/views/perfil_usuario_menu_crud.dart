import '../models/perfil_usuario.dart';
import '../services/perfil_usuario_service.dart';
import '../utils/io_helpers.dart';

void mostrarMenuPerfilUsuario(PerfilUsuarioService service) {
  while (true) {
    print('\n==== MENU DE PERFIS DE USUÁRIO ====');
    print('1. Adicionar Perfil');
    print('2. Listar Perfis');
    print('3. Editar Perfil');
    print('4. Ativar/Desativar Perfil');
    print('5. Remover Perfil');
    print('6. Voltar');

    int opcao = lerInt("Digite o número da opção: ");

    switch (opcao) {
      case 1:
        String nome = lerString("Nome do perfil:");
        String descricao = lerString("Descrição do perfil:");
        service.adicionar(PerfilUsuario(nome: nome, descricao: descricao, ativo: true));
        print("✅ Perfil adicionado com sucesso!");
        break;

      case 2:
        service.listar();
        break;

      case 3:
        service.listar();
        int index = lerInt("Número do perfil a editar:");
        if (index < 1 || index > service.perfis.length) {
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
        int index = lerInt("Número do perfil para ativar/desativar:");
        if (index < 1 || index > service.perfis.length) {
          print("❌ Índice inválido.");
          break;
        }
        final perfil = service.perfis[index - 1];
        service.ativaDesativar(index - 1, !(perfil.ativo ?? false));
        print(perfil.ativo == true ? "✅ Perfil ativado." : "🛑 Perfil desativado.");
        break;

      case 5:
        service.listar();
        int indexRemover = lerInt("Número do perfil a remover:");
        if (indexRemover < 1 || indexRemover > service.perfis.length) {
          print("❌ Índice inválido.");
          break;
        }
        service.remover(indexRemover - 1);
        print("🗑️ Perfil removido.");
        break;

      case 6:
        return;

      default:
        print("❌ Opção inválida.");
    }
  }
}
