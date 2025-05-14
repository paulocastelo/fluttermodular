import 'package:collection/collection.dart';
import '../models/entidade_base.dart';

abstract class ServiceBase<T extends EntidadeBase> {
  final List<T> _itens = []; // O _ indica que a variável é privada

  List<T> get itens => _itens; // Getter para acessar a lista de itens

  void adicionar(T item) {
    _itens.add(item);
  }

  void listar() {
    if (_itens.isEmpty) {
      print("🚫 Nenhum item cadastrado.");
    } else {
      for (int i = 0; i < _itens.length; i++) {
        print('${i + 1}. ${_itens[i].toStringCustomizado()}');
      }
    }
  }

  void editar(int index, T novoItem) {
    if (_validarIndice(index)) {
      _itens[index] = novoItem;
    }
  }

  // Método callback Editar
  // O método callback é uma função que é passada como argumento para outro método
  // e é chamada dentro desse método. Isso permite que você defina o comportamento
  // específico que deseja executar quando o método callback for chamado.
  void editarCampo(int index, void Function(T item) callback) {
    if (_validarIndice(index)) callback(_itens[index]);
  }

  void remover(int index) {
    if (_validarIndice(index)) {
      _itens.removeAt(index);
    }
  }

  bool _validarIndice(int index) {
    if (index < 0 || index >= _itens.length) {
      print("❌ Índice inválido.");
      return false;
    }
    return true;
  }

  T? buscarPorId(int id) {
    return _itens.firstWhereOrNull((e) => e.id == id);
  }
}
