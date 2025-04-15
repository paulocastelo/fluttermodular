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
        print("${[i + 1]}. Pessoa ${pessoas[i].nome}:");
      }
    }
  }

  void editar(int indice, String novoNome){
    pessoas[indice].nome = novoNome;
  }

  void remover (int indice){
    pessoas.removeAt(indice);
  }

}
