// v.1.0: Refatoração com inclusão do  lib/terminal/utils/validador.dart
// v.1.1: Refatoração com inclusão do lib/terminal/utils/io_helpers.dart
// v.1.2: Criação de função para o menu 

import 'dart:io';
import '../models/pessoa.dart';
import '../services/cadastro_service.dart';
import '../utils/validador.dart';
import '../utils/io_helpers.dart';

void mostraMenu(CadastroService service) {
  while (true) {
    exibirMenu();
    // v. 1.2
    // print("\n==== MENU CRUD ====");
    // print("1. Adicionar Pessoa");
    // print("2. Listar Pessoas");
    // print("3. Editar Pessoa");
    // print("4. Remover Pessoa");
    // print("5. Sair");

    stdout.write("Digite o numero da opcao: ");
    int? opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        // v. 1.1
          // stdout.write("Digite o nome: ");
          // String? nome = stdin.readLineSync();
        String nome = lerString("Digite o nome: ");
        if (!isNomeValido(nome)) {
          print("Nome inválido. Tente novamente.");
          continue;
        }
        // v. 1.1
        // stdout.write("Digite o email: ");
        // String? email = stdin.readLineSync();
        String email = lerString("Digite o email: ");
        if (email != null) {
          email = email.trim();
        }
        if (!isEmailValido(email)) {
          print("Email inválido. Tente novamente.");
          continue;
        }
        service.adicionar(Pessoa(nome, email));
        print("Pessoa adicionada com sucesso!");
        break;
      case 2:
        print("==== LISTA DE PESSOAS ====");
        service.listar();
        break;
      case 3:
        print("==== EDITAR PESSOA ====");
        service.listar();
        // v. 1.1
          // stdout.write("Digite o número da pessoa a ser editada: ");
          // int? indice = int.parse(stdin.readLineSync()!);
        int indice = lerInt("Digite o número da pessoa a ser editada: ");
        if (indice < 1 || indice > service.pessoas.length) {
          print("Índice inválido. Tente novamente.");
          continue;
        } else {
          print("O que deseja editar: ");
          print("1. Nome");
          print("2. Email");
          // v. 1.1
            // stdout.write("Digite o número da opção: ");
            // int? opcaoEditar = int.parse(stdin.readLineSync()!);
          int opcaoEditar = lerInt("Digite o número da opção: ");
          switch (opcaoEditar) {
            case 1:
            // v. 1.1
                // stdout.write("Digite o novo nome: ");
                // String? novoNome = stdin.readLineSync();
              String novoNome = lerString("Digite o novo nome: ");
              if (!isNomeValido(novoNome)) {
                print("Nome inválido. Tente novamente.");
                continue;
              }
              service.editar(indice - 1, novoNome);
              break;
            case 2:
              // v. 1.1
                // stdout.write("Digite o novo email: ");
                // String? novoEmail = stdin.readLineSync();
              String novoEmail = lerString("Digite o novo email: ");
              if(novoEmail != null) {
                novoEmail = novoEmail.trim();
              }
              if (!isEmailValido(novoEmail)) {
                print("Email inválido. Tente novamente.");
                continue;
              }
              service.editar(indice - 1, novoEmail!);
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
        // v. 1.1
          // stdout.write("Digite o número da pessoa a ser removida: ");
          // int? indiceRemover = int.parse(stdin.readLineSync()!);
        int indiceRemover = lerInt("Digite o número da pessoa a ser removida: ");
        if (indiceRemover < 1 || indiceRemover > service.pessoas.length) {
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

void exibirMenu(){
  print("==== MENU ====");
  print("1. Adicionar Pessoa");
  print("2. Listar Pessoas");
  print("3. Editar Pessoa");
  print("4. Remover Pessoa");
  print("5. Sair");
}

// V.1.0
// Substituídos por lib/terminal/utils/validador.dart
// bool validaNome(String? nome) {
//   if (nome != null && nome.isNotEmpty) {
//     return true;
//   } else {
//     return false;
//   }
// }

// V.1.0
// bool validaEmail(String? email) {
//   if (email == null) return false;
//   final regex = RegExp(r"^[\w\.-]+@[\w\.-]+\.\w+$");
//   return regex.hasMatch(email.trim());
// }
