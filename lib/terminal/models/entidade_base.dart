abstract class EntidadeBase<T>{
  int id = 0;

  EntidadeBase(id);

  // Retorna o identificador da entidade.
  int get getId => id;

  // Define o identificador da entidade.
  set setId(int novoId) => id = novoId;

  // Representação padrão para debugging.
  String toString() {
    return 'Entidade{id: $id}';
  }

// Força cada entidade a implementar sua descrição personalizada
String toStringCustomizado();

}