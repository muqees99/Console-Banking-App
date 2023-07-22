import 'dart:io';
import 'sign_in.dart';

import 'check_balance.dart';
import 'deposit_amount.dart';
import 'withdraw.dart';

mainMenu() {
  bool input = true;
  bool runMain;
  while (input == true) {
    print(' ');
    print('===========================');
    print('        Main Menu          ');
    print("Press 1 For Check Balance");
    print("Press 2 For Deposit");
    print("Press 3 For Withdraw");
    print("Press 5 For Exit");
    print('===========================');

    stdout.write("Enter your choice: ");
    var Input = stdin.readLineSync();

    if (Input == "1") {
      checkbalance();
    } else if (Input == "2") {
      deposit();
    } else if (Input == "3") {
      withdraw();
    } else if (Input == "5") {
      print(' ');
      print("Exiting main menu.");
      input = false;
      return runMain = false;
    }
  }
}
