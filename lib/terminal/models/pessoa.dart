import 'entidade.dart';
import 'categoria_pessoa.dart';

class Pessoa extends Entidade {
  String nome;
  String email;
  CategoriaPessoa? categoria;

  Pessoa({
    required this.nome,
    required this.email,
    categoria = const [CategoriaPessoa.comum],    
    int id = 0, // O id padrão é 0, mas pode ser alterado
  }) : super(id);

  @override
  String toString() {
    return 'Pessoa{id: $id,👤 Nome: $nome | 📧 Email: $email | 🏷️ Categorias: ${categoria?.descricao}}';
  }

  @override
String toStringCustomizado() {
  return 'Pessoa{id: $id, nome: $nome, email: $email, categoria: ${categoria?.descricao}}';
}

}
