// v.1.0: Refatoração com inclusão do  lib/terminal/utils/validador.dart
// v.1.1: Refatoração com inclusão do lib/terminal/utils/io_helpers.dart
// v.1.2: Criação de função para o menu
// v.1.3: Inclusão das opções de categoria da pessoa
// v.1.4: Ajustes para utilizar enum CategoriaPessoa

import '../models/pessoa.dart';
import '../models/categoria_pessoa.dart';
import '../services/pessoa_service.dart';
import '../utils/validador.dart';
import '../utils/io_helpers.dart';

void mostrarMenuPessoa(PessoaService service) {
  while (true) {
    mostrarMenu();
    int? opcao = lerInt("Digite o número da opção: ");

    switch (opcao) {
      case 1:
        String nome = lerString("Digite o nome: ");
        if (!isNomeValido(nome)) {
          print("Nome inválido. Tente novamente.");
          continue;
        }
        String email = lerString("Digite o email: ");
        email = email.trim();
        if (!isEmailValido(email)) {
          print("Email inválido. Tente novamente.");
          continue;
        }

        exibirSubmenu();
        int categoria = lerInt("Digite apenas o número da categoria: ");
        if (categoria >= 1 && categoria <= CategoriaPessoa.values.length) {
          final categoriaSelecionada = CategoriaPessoa.values[categoria - 1];
          service.adicionar(
            Pessoa(nome: nome, email: email, categoria: categoriaSelecionada),
          );
        }
        print("Pessoa adicionada com sucesso!");
        break;
      case 2:
        print("==== LISTA DE PESSOAS ====");
        service.listar();
        break;
      case 3:
        print("==== EDITAR PESSOA ====");
        service.listar();
        int indice = lerInt("Digite o número da pessoa a ser editada: ");
        if (indice < 1 || indice > service.itens.length) {
          print("Índice inválido. Tente novamente.");
          continue;
        } else {
          print("O que deseja editar: ");
          print("1. Nome");
          print("2. Email");
          print("3. Categoria");
          int opcaoEditar = lerInt("Digite o número da opção: ");
          switch (opcaoEditar) {
            case 1:
              String novoNome = lerString("Digite o novo nome: ");
              if (!isNomeValido(novoNome)) {
                print("Nome inválido. Tente novamente.");
                continue;
              }
              service.editarCampo(indice -1, (p) => p.nome = novoNome);
              break;
            case 2:
              String novoEmail = lerString("Digite o novo email: ");
              novoEmail = novoEmail.trim();
              if (!isEmailValido(novoEmail)) {
                print("Email inválido. Tente novamente.");
                continue;
              }
              service.editarCampo(indice - 1, (p) => p.email = novoEmail);
              break;
            case 3:
              exibirSubmenu();
              int novaCategoria = lerInt("Digite a nova categoria da pessoa: ");

              if (novaCategoria >= 1 &&
                  novaCategoria <= CategoriaPessoa.values.length) {
                service.editarCampo(indice - 1, (p) => p.categoria = 
                    CategoriaPessoa.values[novaCategoria - 1]);
              }
              break;
            default:
              print("Opção inválida. Tente novamente.");
          }
          print("Pessoa editada com sucesso!");
        }
        break;
      case 4:
        print("==== REMOVER PESSOA ====");
        service.listar();
        int indiceRemover = lerInt(
          "Digite o número da pessoa a ser removida: ",
        );
        if (indiceRemover < 1 || indiceRemover > service.itens.length) {
          print("Índice inválido. Tente novamente.");
          continue;
        } else {
          service.remover(indiceRemover - 1);
          print("Pessoa removida com sucesso!");
        }
        break;
      case 5:
        print("Saindo do programa...");
        return;
    }
  }
}

void mostrarMenu() {
  print("==== MENU ====");
  print("1. Adicionar Pessoa");
  print("2. Listar Pessoas");
  print("3. Editar Pessoa");
  print("4. Remover Pessoa");
  print("5. Sair");
}

void exibirSubmenu() {
  print("==== MENU CATEGORIA ====");
  for (int i = 0; i < CategoriaPessoa.values.length; i++) {
    print("${i + 1}. ${CategoriaPessoa.values[i].descricao}"); // v. 1.4
  }
}
