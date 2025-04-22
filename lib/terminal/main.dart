import 'package:flutter/rendering.dart';

import 'utils/io_helpers.dart';

// Imports dos menus
import 'pages/pessoa_menu_crud.dart';
import 'pages/usuario_menu_crud.dart';
import 'pages/assunto_menu_crud.dart';
import 'pages/agendamento_menu_crud.dart';
import 'pages/ata_agendamento_menu_crud.dart';
import 'pages/categoria_mentoria_menu_crud.dart';
import 'pages/funcionalidade_sistema_menu_crud.dart';
import 'pages/modulo_sistema_menu_crud.dart';
import 'pages/perfil_usuario_menu_crud.dart';

// Imports dos serviços correspondentes
import 'services/cadastro_service.dart';
import 'services/usuario_service.dart';
import 'services/assunto_service.dart';
import 'services/agendamento_service.dart';
import 'services/ata_agendamento_service.dart';
import 'services/categoria_mentoria_service.dart';
import 'services/funcionalidade_sistema_service.dart';
import 'services/modulo_sistema_service.dart';
import 'services/perfil_usuario_service.dart';

void main() {
  // Instanciar os serviços
  final pessoaService = CadastroService();
  final usuarioService = UsuarioService();
  final assuntoService = AssuntoService();
  final agendamentoService = AgendamentoService();
  final ataService = AtaAgendamentoService();
  final categoriaMentoriaService = CategoriaMentoriaService();
  final funcionalidadeService = FuncionalidadeSistemaService();
  final moduloSistemaService = ModuloSistemaService();
  final perfilUsuarioService = PerfilUsuarioService();

  while(true){
    exibirMenuPrincipal();

    final opcao = lerInt("Escolha uma opção:");

    switch (opcao) {
      case 1:
        mostrarMenuUsuario(usuarioService);
        break;
      case 2:
        mostrarMenuPessoa(pessoaService);
        break;
      case 3:
        mostrarMenuAssunto(assuntoService);
        break;
      case 4:
        mostrarMenuAgendamento(agendamentoService);
        break;
      case 5:
        mostrarMenuAtaAgendamento(ataService);
        break;
      case 6:
        mostrarMenuCategoriaMentoria(categoriaMentoriaService);
        break;
      case 7:
        mostrarMenuFuncionalidadeSistema(funcionalidadeService);
        break;
      case 8:
        mostrarMenuModuloSistema(moduloSistemaService);
        break;
      case 9:
        mostrarMenuPerfilUsuario(perfilUsuarioService);
        break;
      case 0:
        print("👋 Saindo...");
        return;
      default:
        print("❌ Opção inválida.");
    }
  }

}

void exibirMenuPrincipal() {
  print('\n📋 === MENU PRINCIPAL ===');
  print('1. Gerenciar Usuários');
  print('2. Gerenciar Pessoas');
  print('3. Gerenciar Assuntos');
  print('4. Gerenciar Agendamentos');
  print('5. Gerenciar Atas de Agendamento');
  print('6. Gerenciar Categorias de Mentoria');
  print('7. Gerenciar Funcionalidades do Sistema');
  print('8. Gerenciar Módulos do Sistema');
  print('9. Gerenciar Perfis de Usuário');
  print('0. Sair');
}
