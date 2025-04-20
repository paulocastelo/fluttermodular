enum CategoriaPessoa{
  administrador,
  comum,
  convidado,
  mentor,
  mentorado,
  vip;

  String get descricao{
    switch(this){
      case CategoriaPessoa.comum:
        return 'Comum';
      case CategoriaPessoa.administrador:
        return 'Administrador';
      case CategoriaPessoa.convidado:
        return 'Convidado';
      case CategoriaPessoa.vip:
        return 'VIP';
      case CategoriaPessoa.mentor:
        return 'Mentor';
      case CategoriaPessoa.mentorado:
        return 'Mentorado';
    }
  }
}