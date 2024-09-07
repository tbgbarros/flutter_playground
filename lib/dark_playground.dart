import 'dart:math';

/// Função gatilho da aplicação, ou seja é o entry-point do projeto.
main() {
  //TODO: Comentários

  // Comentário de linha unica

  /**
   * Comentários de 
   * multiplas
   * linhas!
   */

  // Saida de dados
  print('Hello World');

  //TODO: Interpolação de Strings
  /**
   * A interpolacao em Dart é feita utilizando o prefixo $ em uma String.
   * A interpolacao de expressoes é feita com ${expressao}.
   */
  int value = 42;
  String language = 'Dart';
  print('O meu numero preferido é $value.');
  print('O meu numero preferido é ${7 * 6}.');
  print('Dart tem ${language.length} caracteres.');
  print('O \u{1f3af} é sensacional!');

  //TODO: Declaracao de variaveis tipadas
  int year = 2024;
  String bestStarWarsMovie = 'Rogue One -  A Star Wars History';
  double tempture = 28.9;

  print('year: $year, movie: $bestStarWarsMovie, temp: $tempture');

  //TODO: Declaracao de variaveis por inferencia
  var otherLanguage = 'Java';
  num dartVersion = 3.5;
  num androidSdk = 35;

  print('otherLanguage é do tipo ${otherLanguage.runtimeType}');
  print('dartVersion é do tipo ${dartVersion.runtimeType}');
  print('androidSdk é do tipo ${androidSdk.runtimeType}');
  print('"androidSdk" é do tipo ${androidSdk.toString().runtimeType}');

  //TODO: Declaracao de variaveis dinamicas
  dynamic myDynamic = 10;
  print('myDynamic é do tipo ${myDynamic.runtimeType}');
  myDynamic = 10.0;
  print('myDynamic é do tipo ${myDynamic.runtimeType}');
  myDynamic = '10.0';
  print('myDynamic é do tipo ${myDynamic.runtimeType}');
  myDynamic = false;
  print('myDynamic é do tipo ${myDynamic.runtimeType}');
  myDynamic = [3, 5, 6, 8, 10, null, 'Dart'];
  print('myDynamic é do tipo ${myDynamic.runtimeType}');
  myDynamic = {'id': 10, 'email': 'esdrasilva@gmail.com'};
  print('myDynamic é do tipo ${myDynamic.runtimeType}');

  //TODO: Declarar constantes e finals
  const String backendLanguage = 'Dart Shelf';

  final DateTime now = DateTime.now();
  print('Now: $now');

  //TODO: Tudo é objeto
  int number = 11;
  print('number é impar? ${number.isOdd ? 'SIM' : 'NAO'}');

  // String aula = 'Flutter & Dart';
  print('Flutter & Dart'.toUpperCase().replaceFirst('DART', 'D.A.R.T'));
  print(10.6766554333.toStringAsFixed(2));

  /*
  Uma Lista é uma estrutura de dados que é prativamente um Array, uma coleção de variáveis 
  que compartilha o mesmo nome e seus conteúdos são individualizados pelo índice de cada variável,
  ou seja o índice é que as diferenciam, são também conhecidas como variáveis indexadas unidimensionais.
  */

  //TODO: Listas, Maps e Sets

  // Declaração de lista tipada
  List<int> listaNumeros1 = [4, 6, 7, 8, 9, 12, 56];
  var listaNumeros2 = <double>[4, 6, 7, 8, 9, 12, 56];

  var listaNumeros3 = [4, 6, 7, 8, 9, 12, 56];

  print(
      'listNumeros[1]: ${listaNumeros1[1]} - listNumeros[2]: ${listaNumeros2[2]}');
  print('\nlistaNumeros1');
  print(listaNumeros1);
  print('\nlistaNumeros2');
  print(listaNumeros2);
  print('\nlistaNumeros3');
  print(listaNumeros3);

  // Maps
  var estados = {'SP': "São Paulo", 'RJ': 'Rio de Janeiro', 'CE': 'Ceará'};
  print(estados['CE']);

  Map<String, dynamic> json = {
    'id': 189,
    'name': 'Aline Alves',
    'email': {
      'pessoal': 'aline@gmail.com',
      'corporativo': 'aline@cps.sp.gov.br'
    }
  };
  print(json);

  // Sets
  var filmes = <String>{
    'Episodio I - A ameaça fantasma',
    'Episodio II - O ataque dos clones',
    'Episodio III - A vingança dos Sith'
  };
  print(filmes);
  filmes.add('Episodio II - O ataque dos clones');
  print(filmes);

  //TODO: Loops
  print('\nLoops FOR');
  for (int i = 0; i < listaNumeros1.length; i++) {
    print('listaNumeros1[$i]: ${listaNumeros1[i]}');
  }

  print('\nLoops FOR IN');
  for (final n in listaNumeros2) {
    print(n);
  }

  print('\nLoops FOREACH');
  listaNumeros3.forEach(print);

  for (var element in listaNumeros3) {
    print('element: $element');
  }

  print('\nEstados');
  estados.forEach((key, value) {
    print(('sigla: $key - estado: $value'));
  });

  //Cast

  // Nullables
  double? age = 10;
  double? myNull;
  age = myNull ?? 9;
  print(age.toStringAsPrecision(2));

  List<int?>? lista = [3, 56, 78, 32, null, 5];

  for (int? value in lista) {
    print(value?.isOdd);
  }

  //TODO: Funções
  exibirNumeroDaSorte(nome: 'Carlão', limite: 5);

  //TODO: Funcoes como Tipo
  Function mediaAritmetica = (double a, double b, double c, double d) {
    return (a + b + c + d) / 4;
  };

  Function mediaPonderada = (double a, double b, double c, double d) {
    return ((a * 1) + (b * 3) + (c * 2) + (d * 4)) / 10;
  };

  print('Funcao media é do tipo ${mediaAritmetica.runtimeType}');

  multiplyer(int x, int y) => x * y;

  print(multiplyer(6, 7));

  triple(int v) => multiplyer(v, 3);

  final v = 9;
  print('O triplo e $v é ${triple(v)}');
  print('triple é do tipo ${triple.runtimeType}');

  final media = (double a, double b, double c, double d,
      Function algoritmo(double a, double b, double c, double d)) {
    return algoritmo(a, b, c, d);
  };

  media(4, 5, 7, 9, mediaPonderada(media));

  //TODO: Desafio!!!!!!
}

// Funções com parametro nomeados, opcionais e posicionais.
void exibirNumeroDaSorte({String? nome, int? limite = 100}) {
  print(
      '${nome ??= 'Anonimo'}, seu numero da sorte é ${Random().nextInt(limite!) + 1}');
}




//https://bit.ly/3MxKf17