---

# 🧪 Módulo Terminal - fluttermodular

Este módulo permite que você interaja com o sistema de sessões e mentorias diretamente pelo terminal, com um foco educativo e arquitetural em Dart.

---

## ▶️ Como executar

Execute o seguinte comando no terminal:

```bash
dart run bin/main_terminal.dart
```

Este comando redireciona para o arquivo principal localizado em `lib/terminal/main.dart`.

---

## 🧠 Arquitetura Atualizada

```
bin/
└── main_terminal.dart     # Ponto de entrada que referencia lib/terminal/main.dart

lib/
└── terminal/
    ├── main.dart                         # Menu principal do sistema via terminal
    ├── pages/                            # Telas do terminal (menus de cada entidade)
    ├── models/                           # Entidades e enums
    ├── services/                         # Serviços com lógica de negócio
    └── utils/                            # Funções auxiliares como validações e leitura
```

---

## ✅ Observações importantes

- O serviço anteriormente chamado `CadastroService` foi renomeado para `PessoaService` para refletir melhor sua responsabilidade.
- A função principal `main.dart` foi ajustada para rodar perfeitamente no terminal, sem nenhuma dependência de pacotes visuais como `flutter/rendering.dart`.
- Cada entidade possui seu próprio **menu de interação** e seu **serviço responsável pela lógica**.

---

## 🎯 Objetivo

Este módulo foi criado para:
- Treinar conceitos de **POO com Dart** em terminal.
- Desenvolver estrutura **modular, testável e reaproveitável**.
- Facilitar a migração posterior para **Flutter**, mantendo os serviços intactos.

---

## ✨ Autor
**Paulo Castelo**  
[github.com/paulocastelo](https://github.com/paulocastelo)

---
