import 'entidade.dart';
import 'pessoa.dart';
import 'modulo_sistema.dart';  
import 'perfil_usuario.dart';

class Usuario extends Entidade{
  Pessoa ? pessoa;
  String? login; // Login deve ser o email e unico
  String? senha; // Senha deve ser criptografada
  DateTime? dataCriacao;
  DateTime? dataAtualizacao;
  DateTime? dataInativacao;
  bool ? ativo;
  List<PerfilUsuario>? perfisUsuario;

  Usuario({
    this.pessoa,
    this.login,
    this.senha,
    this.dataCriacao,
    // this.dataAtualizacao,
    // this.dataInativacao,
    this.ativo,
    // this.perfisUsuario,
  }) : super(0);

  @override
  String toStringCustomizado() {
    return 'Usuario{id: $id,👤 Nome: ${pessoa?.nome} | 📧 Email: ${pessoa?.email} | 🔑 Login: $login | 🗓️ Data Criação: $dataCriacao | 🗓️ Data Atualização: $dataAtualizacao | 🗓️ Data Inativação: $dataInativacao | 🔄 Ativo: $ativo | 🏷️ Perfis Usuário: ${perfisUsuario?.map((perfil) => perfil.nome).join(', ')}}';
  }
}