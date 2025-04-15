bool isNomeValido(String? nome){
  return nome != null && nome.isNotEmpty;
}

bool isEmailValido(String? email){
  if(email == null || email.trim().isEmpty) return false;
  final regex = RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");
  return regex.hasMatch(email.trim());
}