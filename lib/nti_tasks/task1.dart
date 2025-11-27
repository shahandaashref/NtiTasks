import 'dart:math';

calculator(num number1, or, num numper2) {
  num reslut = 0;
  switch (or) {
    case '+':
      reslut = number1 + numper2;
      break;
    case '-':
      reslut = number1 - numper2;
      break;
    case '*':
      reslut = number1 * numper2;
      break;
    case '/':
      reslut = number1 / numper2;
      break;
    default:
      print('this or false');
  }
  if (or == '+' || or == '-' || or == '/' || or == '*') {
    print('''
$number1 $or $numper2 = $reslut
''');
  }
}

difference(a, b, c, d) {
  num reslut = (a * b) - (c * d);
  print('Difference = $reslut');
}

area(num r) {
  num reslut = pi * pow(r, 2);
  print(reslut);
}

ageInDays(num age) {
  int year = age ~/ 365;

  int months = (age % 365) ~/ 30;
  int days = age - (year * 365 + months * 30) as int;
  print('''
$year years
$months months
$days days
''');
}

summationToN(n) {
  num reslut = (n * (n + 1)) / 2;
  print(reslut);
}

last2Digits(num a, num b, num c, num d) {
  String reslut = (a * b * c * d).toString();
  reslut.length > 2
      ? print(reslut.substring(reslut.length - 2))
      : print(reslut);
}

last2DigitsV2(num a, num b, num c, num d) {
  int result = 1;
  result = (result * (a % 100)) % 100 as int;
  result = (result * (b % 100)) % 100 as int;
  result = (result * (c % 100)) % 100 as int;
  result = (result * (d % 100)) % 100 as int;
  if (result < 10)
    print('0$result');
  else
    print('result');
}
