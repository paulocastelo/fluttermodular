# 🧪 Módulo Terminal - fluttermodular

Este módulo permite que você interaja com o sistema de cadastro diretamente pelo terminal (linha de comando), utilizando uma estrutura modular e reutilizável em Dart.

---

## ▶️ Como executar

Execute o seguinte comando no terminal:

```bash
dart run bin/terminal.dart
```

Este comando chamará o `main()` localizado em `lib/terminal/main.dart`.

---

## 📁 Estrutura

```
bin/
└── terminal.dart       # Ponto de entrada para o modo terminal

lib/
└── terminal/
    ├── main.dart       # Chamada do menu principal do CRUD
    ├── menu_crud.dart  # Lógica de navegação
    ├── models/
    ├── services/
    └── utils/
```

---

## 🎯 Objetivo

Este módulo foi criado para:
- Treinar conceitos de **POO**, **funções**, **validações** e **modularização**.
- Criar um CRUD completo usando apenas entrada/saída padrão (`stdin`/`stdout`).
- Reaproveitar as **mesmas lógicas e validações** que podem futuramente ser adaptadas para a versão com interface gráfica (Flutter Widgets).

---

## ✨ Autor
**Paulo Castelo**  
[github.com/paulocastelo](https://github.com/paulocastelo)
```