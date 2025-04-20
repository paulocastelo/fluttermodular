// v. 1.0: Utilizando classes abstratas

import 'package:fluttermodular/terminal/models/categoria_pessoa.dart';
import '../models/pessoa.dart';

class CadastroService {
  List<Pessoa> pessoas = [];

  void adicionar(Pessoa pessoa) {
    pessoas.add(pessoa);
  }

  void listar() {
    if (pessoas.isEmpty) {
      print("Não há pessoas cadastradas.");
    } else {
      for (var i = 0; i < pessoas.length; i++) {
        print(pessoas[i].toStringCustomizado());
      }
    }
  }

  void editarNome(int indice, String novoNome) {
    pessoas[indice].nome = novoNome;
  }

  void editarCategoria(int indice, int novoNumero) {
    if (novoNumero < 0 || novoNumero >= CategoriaPessoa.values.length) {
      print("Número inválido. Escolha um número entre 0 e ${CategoriaPessoa.values.length - 1}.");
      return;
    }
    pessoas[indice].categoria = CategoriaPessoa.values[novoNumero];
  }

  void editarEmail(int indice, String novoEmail) {
    pessoas[indice].email = novoEmail;
  }

  void remover(int indice) {
    pessoas.removeAt(indice);
  }
}
