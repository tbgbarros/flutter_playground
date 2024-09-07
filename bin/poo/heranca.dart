abstract class Pessoa {
  String? _nome;
  String? _sobrenome;
  String? _email;

  Pessoa({String? nome, String? sobrenome, String? email})
      : _nome = nome,
        _sobrenome = sobrenome,
        _email = email;

  get nome => _nome;
  set nome(novoNome) => _nome = novoNome;

  get nomeCompleto => '$_nome $_sobrenome';
  set sobrenome(value) => _sobrenome = value;

  get email => _email;
  set email(value) => _email = value;

  @override
  String toString() =>
      'Pessoa(_nome: $_nome, _sobrenome: $_sobrenome, _email: $_email)';
}

https://bit.ly/4eee1DA

class Estudante extends Pessoa {

  int? ra;

  Estudante(String nome, String sobrenome, String email, {required this.ra})
    :super(nome: nome, sobrenome: sobrenome, email: email);

}

class Desenvolvedor extends Pessoa with Cantor, Construtor {
  List<String> linguagens = [];

  Desenvolvedor(String nome, String sobrenome, String email, 
    {List<String>? outrasLinguagens});

  void goHorse() => print('Modo Go-HORSE habilitado!');
}

mixin Cantor {
  String musicaFavorita = 'Wars Pigs';
  void cantar() {
    print('Cantando Master of The Puppets!!!');
  }
}

mixin Construtor {
  void construir() {
    print('Construinfo uma casa agora!!!');
  }
}
