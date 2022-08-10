import 'dart:io';

void main() {
  int verifica = 1;
  while (verifica != 0) {
    print('Digite um número:');
    int num = int.parse(stdin.readLineSync()!);
    if (num == 0) {
      verifica = 0;
    }
    num = _calcular(num);
    print(num);
  }
}

int _calcular(int numero) {
  int soma = 0;
  for (int i = 0; i < numero; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      soma += i;
    }
  }
  return soma;
}
