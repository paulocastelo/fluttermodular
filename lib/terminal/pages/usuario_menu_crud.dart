import '../models/usuario.dart';
import '../models/pessoa.dart';
import '../utils/io_helpers.dart';
import '../services/usuario_service.dart';

void mostrarMenuUsuario(UsuarioService service) {
  while (true) {
    print('\n==== MENU DE USUÁRIOS ====');
    print('1. Adicionar Usuário');
    print('2. Listar Usuários');
    print('3. Editar Usuário');
    print('4. Remover Usuário');
    print('5. Voltar');

    int opcao = lerInt("Digite o número da opção: ");

    switch (opcao) {
      case 1:
        // listarPessoas(pessoas); // TO-DO: Integrar com o cadastro de pessoas
        String nome = lerString("Nome do usuário:");
        String email = lerString("Email:");
        String senha = lerString("Senha:");
        DateTime dataCriacao = DateTime.now();
        bool ativo = true;
        service.adicionar(
          Usuario(
            pessoa: Pessoa(nome: nome, email: email),
            senha: senha,
            dataCriacao: dataCriacao,
            ativo: ativo,
          ),
        );
        print("✅ Usuário adicionado com sucesso!");
        break;
      case 2:
        service.listar();
        break;

      case 3:
        service.listar();
        int index = lerInt("Número do usuário a editar:");
        if (index < 1 || index > service.usuarios.length) {
          print("❌ Índice inválido.");
          break;
        }

        print("1. Editar Nome");
        print("2. Editar Email");
        int opcaoEdit = lerInt("Opção:");
        switch (opcaoEdit) {
          case 1:
            String novoNome = lerString("Novo nome:");
            service.editarNome(index - 1, novoNome);
            break;
          case 2:
            String novoEmail = lerString("Novo email:");
            service.editarEmail(index - 1, novoEmail);
            break;
          default:
            print("❌ Opção inválida.");
        }
        break;

      case 4:
        service.listar();
        int indexRemover = lerInt("Número do usuário a remover:");
        if (indexRemover < 1 || indexRemover > service.usuarios.length) {
          print("❌ Índice inválido.");
          break;
        }
        service.remover(indexRemover - 1);
        print("🗑️ Usuário removido.");
        break;

      case 5:
        return;

      default:
        print("❌ Opção inválida.");
    }
  }
}

// Retorna todas as pessoas registradas
void listarPessoas(List<Pessoa> pessoas) {
  if (pessoas.isEmpty) {
    print("Não há pessoas cadastradas.");
  } else {
    for (var i = 0; i < pessoas.length; i++) {
      print(pessoas[i].toStringCustomizado());
    }
  }
}