import 'dart:io';

void main() {
  List<int> numeros = [];

  int tamano = solicitarTamanoLista();
  numeros = solicitarElementosLista(tamano);

  print('\nLista original: $numeros');

  numeros.sort();
  print('\nLista ordenada ascendentemente: $numeros');

  numeros.sort((a, b) => b.compareTo(a));
  print('Lista ordenada descendentemente: $numeros');

  int minimo = numeros.reduce((a, b) => a < b ? a : b);
  int maximo = numeros.reduce((a, b) => a > b ? a : b);

  print('Mínimo: $minimo');
  print('Máximo: $maximo');
}

int solicitarTamanoLista() {
  int tamano;
  do {
    stdout.write('Ingresa el tamaño de la lista: ');
    tamano = int.tryParse(stdin.readLineSync()!) ?? 0;
  } while (tamano <= 0);

  return tamano;
}

List<int> solicitarElementosLista(int tamano) {
  List<int> elementos = [];

  for (int i = 0; i < tamano; i++) {
    int elemento;
    do {
      stdout.write('Ingresa el elemento ${i + 1}: ');
      elemento = int.tryParse(stdin.readLineSync()!) ?? 0;
    } while (elemento <= 0);

    elementos.add(elemento);
  }

  return elementos;
}
