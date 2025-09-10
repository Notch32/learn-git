import 'dart:io';
import 'dart:math';

void main() {
  int max = 0, counter = 0, gusseNumber;

  print(
    "This is Number Gussing Game\n"
    "try to geuss the number with the lowwest trys as you can"
  );

  while (true) {
    stdout.write("Enter The Max Number in Range : ");

    try {
      max = int.parse(stdin.readLineSync() ?? "");
      if (max < 10) {
        print("The Max might be more or equal then 10, pls enter again");
      } else {
        break;
      }
    } catch (e) {
      print("Pls Enter only number");
    }
  }
  int randomNumber = Random().nextInt(max + 1);
  while (true) {
    counter++;
    try {
      stdout.write("Enter your guess : ");
      gusseNumber = int.parse(stdin.readLineSync() ?? "");
      if (randomNumber < gusseNumber) {
        print("It's to High");
      } else if (randomNumber > gusseNumber) {
        print("It's To Low");
      } else {
        break;
      }
    } catch (e) {
      print("Pls Enter only number");
    }
  }
  print("You Geuss it right after $counter try");
}

// 12 < x 
// 18 /2