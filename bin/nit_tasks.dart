
import 'dart:io';

import 'package:nit_tasks/nti_tasks/task1.dart';

void main(List<String> arguments) {
  num number1=int.parse(stdin.readLineSync()!);
//String? or=stdin.readLineSync();
num number2=int.parse(stdin.readLineSync()!);
num number3=int.parse(stdin.readLineSync()!);
num number4=int.parse(stdin.readLineSync()!);
//calculator(number1,or,number2);

// difference(number1,number2,number3,number4);
// area(number1);
// ageInDays(number1);
// summationToN(number1);
last2Digits(number1, number2, number3, number4);
}
