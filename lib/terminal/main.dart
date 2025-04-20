import 'services/cadastro_service.dart';
import 'views/pessoa_menu_crud.dart';

void main(){
  CadastroService service = CadastroService();
  mostraMenu(service);
}