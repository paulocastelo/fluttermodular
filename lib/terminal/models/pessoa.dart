class Pessoa {
  String nome;
  String email;

  Pessoa(this.nome, this.email);

  void exibirResumo() {
    print("Nome: $nome, E-mail: $email");
  }
}