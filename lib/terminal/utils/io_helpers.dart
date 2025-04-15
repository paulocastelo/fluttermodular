import 'dart:io';

// Lê a entrada do usuário e retorna como String
String lerString(String mensagem) {
  stdout.write(mensagem);
  return stdin.readLineSync()!.trim();
}

// Lê um inteiro do usuário com validação
int lerInt(String mensagem) {
  while (true) {
    stdout.write(mensagem);
    final entrada = stdin.readLineSync();
    if (entrada != null) {
      final numero = int.tryParse(entrada);
      if (numero != null) {
        return numero;
      }
    }
    print("Entrada inválida. Digite um número inteiro.");
  }
}

// Lê um double do usuário com validação
double lerDouble(String mensagem){
  while(true){
    stdout.write(mensagem);
    final entrada = stdin.readLineSync();

    if(entrada != null){
      final numero = double.tryParse(entrada);
      if(numero != null){
        return numero;
      }
    }
    print("Entrada inválida. Digite um número decimal.");
  }
}

// Lê um booleano simples do usuário (s/n)
bool lerBoolSimNao(String mensagem){
  while(true){
    stdout.write("$mensagem (s/n): ");
    final resposta = stdin.readLineSync()?.trim().toLowerCase();
    if(resposta == 's') return true;
    if(resposta == 'n') return false;

    print("Entrada inválida. Digite 's' para sim ou 'n' para não.");
  }
}