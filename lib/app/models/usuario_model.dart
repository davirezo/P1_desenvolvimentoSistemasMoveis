class UsuarioModel {
  final String nome;
  final String email;
  final String senha;

  UsuarioModel({
    required this.nome,
    required this.email,
    required this.senha,
  });

  @override
  String toString() {
    return 'UsuarioModel(nome: $nome, email: $email)';
  }
}
