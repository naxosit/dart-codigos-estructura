import 'dart:math';

void main() {
  List<int> primera_lista = [3, 4, 7, 9, 8, 5, 1, 2, 5, 7];
  print(primera_lista);

  final random = Random();
  List<int> segunda_lista = List.generate(10, (i) => -(random.nextInt(5) + 1));
  print(segunda_lista);

  dynamic resultadoFinal =
      ((primera_lista, segunda_lista) => primera_lista + segunda_lista);

  print("La suma de las listas es: $resultadoFinal");

  'Suponiendo que nos hubiese dado la lista resultante, para remover el séptimo elemento se usa removeAt(6)';
  'y para el octavo elemento, se usa removeAt(7). Eso se almacena en una nueva lista y se imprime,';
  'mostrando así una lista modificadad';
}
