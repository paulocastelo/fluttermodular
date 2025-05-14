import 'entidade_base.dart';
import 'pessoa.dart';
import 'perfil_usuario.dart';

class Usuario extends EntidadeBase<Usuario>{
  Pessoa ? pessoa;
  String? login; // Login deve ser o email e unico
  String? senha; // Senha deve ser criptografada
  DateTime? dataCriacao;
  DateTime? dataAtualizacao;
  DateTime? dataInativacao;
  bool ? ativo;
  List<PerfilUsuario>? perfisUsuario;

  Usuario({
    int id = 0,
    this.pessoa,
    this.login,
    this.senha,
    this.dataCriacao,
    this.ativo,
  }) : super(id);

  @override
  String toStringCustomizado() {
    return 'Usuario{id: $id,👤 Nome: ${pessoa?.nome} | 📧 Email: ${pessoa?.email} | 🔑 Login: $login | 🗓️ Data Criação: $dataCriacao | 🗓️ Data Atualização: $dataAtualizacao | 🗓️ Data Inativação: $dataInativacao | 🔄 Ativo: $ativo | 🏷️ Perfis Usuário: ${perfisUsuario?.map((perfil) => perfil.nome).join(', ')}}';
  }
}