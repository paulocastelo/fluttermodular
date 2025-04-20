import 'package:fluttermodular/terminal/services/cadastro_service.dart';
import 'package:fluttermodular/terminal/services/assunto_service.dart';
import 'package:fluttermodular/terminal/views/pessoa_menu_crud.dart';
import 'package:fluttermodular/terminal/views/assunto_menu_crud.dart';
import 'package:fluttermodular/terminal/utils/io_helpers.dart';

void main() {
  final cadastroService = CadastroService();
  final assuntoService = AssuntoService();

  while (true) {
    exibirMenuPrincipal();

    int? opcao = lerInt("Digite o número de uma opção: ");

    switch (opcao) {
      case 1:
        mostraMenu(cadastroService);
        break;
      case 2:
        mostrarMenuAssunto(assuntoService);
        break;
      case 3:
        print("🚧 Em breve: Sessões, Usuários e mais!");
        break;
      case 9:
        print("Saindo do sistema...");
        return;
      default:
        print("❌ Opção inválida. Tente novamente.");
    }
  }
}

void exibirMenuPrincipal() {
  print("\n=== 🧠 Sistema de Sessões/Mentorias ===");
  print('1. Gerenciar Pessoas');
  print('2. Gerenciar Assuntos');
  print('3. Outros modulos (em breve)');
  print('9. Sair');
}
