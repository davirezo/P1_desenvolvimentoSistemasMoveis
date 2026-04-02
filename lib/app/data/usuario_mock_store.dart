import '../models/usuario_model.dart';

/// essa é a classe responsável por manter a lista de usuários durante a execução do app
/// ela utiliza o padrão Singleton para garantir uma única instância
class UsuarioMockStore {
  // instância única (Singleton)
  static final UsuarioMockStore _instance = UsuarioMockStore._internal();

  factory UsuarioMockStore() => _instance;

  UsuarioMockStore._internal();

  // lista mockada em memória
  final List<UsuarioModel> _usuarios = [
    // usuário padrão para facilitar os testes
    UsuarioModel(
      nome: 'Admin',
      email: 'admin@email.com',
      senha: '123456',
    ),
  ];

  /// retorna todos os usuários cadastrados
  List<UsuarioModel> get usuarios => List.unmodifiable(_usuarios);

  /// adiciona um novo usuário a lista
  void cadastrar(UsuarioModel usuario) {
    _usuarios.add(usuario);
  }

  /// verifica se já existe um usuário com o e-mail informado
  bool emailJaCadastrado(String email) {
    return _usuarios.any(
      (u) => u.email.toLowerCase() == email.toLowerCase(),
    );
  }

  /// busca usuário por e-mail e senha, retorna null se não encontrado
  UsuarioModel? autenticar(String email, String senha) {
    try {
      return _usuarios.firstWhere(
        (u) =>
            u.email.toLowerCase() == email.toLowerCase() &&
            u.senha == senha,
      );
    } catch (_) {
      return null;
    }
  }
}
