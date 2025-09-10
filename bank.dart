import 'dart:io';

int balance = 1000, input = 0;

String password = "0000";

void main() {
  CheckPassword();

  while (true) FunctionTree();
}

int readNumber(String message) {
  while (true) {
    try {
      stdout.write(message);
      String input = stdin.readLineSync() ?? "";
      if (input.isEmpty) {
        print("Enter a number!");
      } else {
        return int.parse(input);
      }
    } catch (e) {
      print("Enter only numbers, not chars!");
    }
  }
}

String readString(String message) {
  while (true) {
    stdout.write(message);
    String input = stdin.readLineSync() ?? "";
    if (input.isEmpty) {
      print("Input cannot be empty!");
    } else {
      return input;
    }
  }
}

void FunctionTree() {
  print(
    "\n\nWelcome, Belal Mohmed\n1. Deposit\n2. Withdraw\n3. Check Balance\n4. Exit",
  );

  input = readNumber("");
  switch (input) {
    case 1:
      Deposit();
      break;
    case 2:
      Withdraw();
      break;
    case 3:
      CheckBalance();
      break;
    case 4:
      Exit();
      break;
    default:
      print("Enter Number From The List");
  }
  OtherOperation();
}

void CheckPassword() {
  print("\tWelcome to our Bankok \n///////////////////////////////////////");

  for (int i = 0; i <= 3; i++) {
    //! exit State
    if (i == 3) {
      print("\nYou Failed 3 Try ");
      exit(exitCode);
    }

    //! take input
    String inputPassword;

    try {
      inputPassword = readString("\nEnter The Password : ");
      int.parse(inputPassword);
      //! Checks
      (inputPassword.length == 4)
          ? inputPassword == password
                ? i = 10
                : print("\nYou Enter Wrong Number")
          : print("\nThe Password Must Enter 4 Numbers");
    } catch (e) {
      print("Enter Only Numbers Not Chars");
    }
  }
}

void Deposit() {
  String input = "";
  print("You Choose an option: 1");

  int amount = readNumber("\nEnter The Amount : ");
  print("\nYou Enter Amount Is \$$amount");

  while (true) {
    try {
      print("\n\n1. Confirm\t2. Cancel");
      stdout.write("\tSelect : ");
      input = stdin.readLineSync() ?? "";
      if (input == "")
        print("\nEnter Number!");
      else {
        int.parse(input);
      }
      //! Checks
      if (input == "1") {
        balance += amount;
        print("\nDeposit successful! \n\nYour Balance Is \$$balance\n");

        break;
      } else if (input == "2") {
        print("\nDeposit Operation Is Canceled");

        break;
      }
    } catch (e) {
      print("\nEnter Only Numbers Not Chars");
    }
  }
}

void Withdraw() {
  String input = "";
  print("You Choose an option: 2");

  while (true) {
    try {
      stdout.write("\nEnter The Amount : ");
      input = stdin.readLineSync() ?? "";
      if (input == "")
        print("\nEnter Number!");
      else {
        int.parse(input);
      }
      //! Checks
      break;
    } catch (e) {
      print("\nEnter Only Numbers Not Chars");
    }
  }
  int amount = int.parse(input);
  if (amount > balance) {
    print("Insufficient funds! Balance: $balance");
  } else {
    balance -= amount;
    print("\nWithdraw successful!\n\nYour Balance Is \$$balance\n");
  }
}

void CheckBalance() {
  print("You Choose an option: 3");
  print("\nYour Balance Is \$$balance\n");
}

void Exit() {
  print("\nThanks for use us Bank <3");
  exit(exitCode);
}

void OtherOperation() {
  String input;
  while (true) {
    try {
      print("\n1. Other Operation\t2. Exit");
      stdout.write("\tSelect : ");
      input = stdin.readLineSync() ?? "";
      if (input == "")
        print("\nEnter Number!");
      else {
        int.parse(input);
      }
      //! Checks
      if (input == "1") {
        print('\n');
      } else if (input == "2") {
        Exit();
      }
      break;
    } catch (e) {
      print("\nEnter Only Numbers Not Chars");
    }
  }
}
