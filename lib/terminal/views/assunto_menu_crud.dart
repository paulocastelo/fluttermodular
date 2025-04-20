import 'package:fluttermodular/terminal/models/assunto.dart';
import 'package:fluttermodular/terminal/services/assunto_service.dart';
import 'package:fluttermodular/terminal/utils/io_helpers.dart';

void mostrarMenuAssunto(AssuntoService service) {
  while (true) {
    exibirMenuAssunto();
    int? opcao = lerInt("Digite o número de uma opção: ");

    switch (opcao) {
      case 1:
        adicionarAssunto(service);
        break;
      case 2:
        service.listar();
        break;
      case 3:
        editarAssunto(service);
        break;
      case 4:
        removerAssunto(service);
        break;
      case 5:
        return;
      default:
        print("Opção inválida. Tente novamente.");
    }
  }
}

void exibirMenuAssunto() {
  print('==== Menu de Assuntos ====');
  print('1. Adicionar Assunto');
  print('2. Listar Assuntos');
  print('3. Editar Assunto');
  print('4. Remover Assunto');
  print('5. Sair');
}

void adicionarAssunto(AssuntoService service) {
  String titulo = lerString("Digite o título do assunto: ");
  String descricao = lerString("Digite a descrição do assunto: ");

  final assunto = Assunto(
    titulo: titulo,
    descricao: descricao,
    dataCriacao: DateTime.now(),
    ativo: true,
    usuarioCriacao: 1, // TO-DO: Criar classe Usuario
  );
  service.adicionar(assunto);
  print("✅ Assunto adicionado com sucesso!");
}

void editarAssunto(AssuntoService service) {
  service.listar();
  int index = lerInt("Digite o número do assunto que deseja editar: ");
  if (index < 1 || index > service.assuntos.length) {
    print("Opção inválida. Tente novamente.");
    return;
  }
  print("1. Editar Título");
  print("2. Editar Descrição");
  int opcao = lerInt("Escolha uma opção: ");

  switch (opcao) {
    case 1:
      String novoTitulo = lerString("Digite o novo título: ");
      service.editarTitulo(index - 1, novoTitulo);
      break;
    case 2:
      String novaDescricao = lerString("Digite a nova descrição: ");
      service.editarDescricao(index - 1, novaDescricao);
      break;
    default:
      print("Opção inválida. Tente novamente.");
  }
  print("✏️ Assunto editado com sucesso!");
}

void removerAssunto(AssuntoService service) {
  service.listar();
  int index = lerInt("Digite o número do assunto que deseja remover: ");
  if (index < 1 || index > service.assuntos.length) {
    print("❌ Opção inválida. Tente novamente.");
    return;
  }
  service.remover(index - 1);
  print("🗑️ Assunto removido.");
}
