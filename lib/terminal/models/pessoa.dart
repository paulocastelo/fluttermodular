import 'entidade_base.dart';
import 'categoria_pessoa.dart';

class Pessoa extends EntidadeBase<Pessoa> {
  String nome;
  String email;
  CategoriaPessoa categoria;

  Pessoa({
    required this.nome,
    required this.email,
    this.categoria = CategoriaPessoa.comum,
    int id = 0,
  }) : super(id);

  @override
  String toString() {
    return 'Pessoa{id: $id,👤 Nome: $nome | 📧 Email: $email | 🏷️ Categorias: ${categoria.descricao}}';
  }

  @override
  String toStringCustomizado() {
    return 'Pessoa{id: $id, nome: $nome, email: $email, categoria: ${categoria.descricao}}';
  }
  
}
