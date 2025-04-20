abstract class Entidade {
  final int id;
  Entidade(this.id);

  String toStringCustomizado() {
    return 'Entidade{id: $id}';
  }
}