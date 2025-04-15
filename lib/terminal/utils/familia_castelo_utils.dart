/// Funções utilitárias para trabalhar com listas de nomes e mapas familiares.
/// Autor: Mr. Anderson 😎

/// Imprime os nomes de uma lista de strings.
void imprimirNomes(List<String> nomes) {
  for (var nome in nomes) {
    print(nome);
  }
}

/// Imprime os dados de uma lista de mapas representando membros da família.
/// Espera que cada mapa tenha as chaves 'nome' e 'ativo'.
void imprimirElementosDoMap(List<Map<String, dynamic>> familia) {
  for (var pessoa in familia) {
    print("Nome: ${pessoa['nome']}, Ativo: ${pessoa['ativo']}");
  }
}
