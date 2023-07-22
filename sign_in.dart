import 'dart:io';

signIn(Map<String, String> userData) {
  bool islogin;
  print(' ');
  stdout.write('User Name: ');
  String userName = stdin.readLineSync()!;
  stdout.write('Password: ');
  String password = stdin.readLineSync()!;

  if (userName == null || password == null) {
    print(' ');
    print('Please provide both user name and password.');
    return islogin = false;
  }

  if (userData.containsKey(userName) && userData[userName] == password) {
    print(' ');
    print('Welcome, $userName!');
    return islogin = true;
  } else {
    print(' ');
    print('Incorrect username or password! Please try again.');
    return islogin = false;
  }
}
