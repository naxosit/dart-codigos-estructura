import 'dart:math';
import 'dart:io';

void main() {
  //lista con 5 elementos generados aleatoriamente
  List<int> lista_uno = List.generate(5, (index) => Random().nextInt(10));
  print(lista_uno);

  //lista con 5 elementos ingresados por el usuario
  List<int> lista_dos = [];
  for (int i = 0; i < 5; i++) {
    stdout.write('Ingrese un número entero: ');
    int numero_entero = int.parse(stdin.readLineSync()!);
    lista_dos.add(numero_entero);

    //lista resultante de la concatenación de la lista_uno con lista_dos+
    List<int> resultado = [];
    resultado.addAll(lista_uno);
    resultado.addAll(lista_dos);
    print(resultado);

//insertar en la 7°,8° y 9°  la posición los elementos 14,20,7 (agregando todos los elementos de una sola vez, utilizando un método en específico)
    List<int> elementos = [14, 20, 7];

    resultado.insertAll(6, elementos);
    print(resultado);

//obtener el promedio de la lista resultado
//para obtener el promedio de la lista resultado, se suman todos los elementos y se dividen por la cantidad de los mismos
//para ordenar de forma descendente esta lista, se ocupa el método resultado.sort((a, b) => b.compareTo(a))
  }
}
