import 'package:coba/Shared/colors.dart';
import 'package:coba/Shared/style.dart';
import 'package:coba/user.dart';
import 'package:flutter/material.dart';
import 'package:coba/Shared/itemShared.dart';
import 'main.dart';
import 'package:coba/Shared/login_data.dart';

void main() => runApp(SignIn());

const users = const {'bagus suharta': '12345'};

class SignIn extends StatefulWidget {
  Duration get loginTime => Duration(milliseconds: 2250);

  Future<String> _authUser(LoginData data) {
    print('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'Username not exists';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      return null;
    });
  }

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text('Sign In',
              style: TextStyle(
                  color: Colors.blue, fontFamily: 'poppins', fontSize: 15)),
          actions: [
            FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
                child: Text(
                  'Sign Up',
                ))
          ],
        ),
        body: ListView(
          shrinkWrap: true,
          children: [
            Container(
              padding: EdgeInsets.only(right: 18, left: 18),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome',
                        style: h3,
                      ),
                      inputData("Masukan Nama"),
                      inputPassword("Masukan Password"),
                      FlatButton(
                          onPressed: () {},
                          child: Text(
                            'forgot password',
                            style: contrastText,
                          ))
                    ],
                  ),
                  Positioned(
                      bottom: 15,
                      right: -15,
                      child: FlatButton(
                          onPressed: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return User();
                            }));
                          },
                          color: primaryColor,
                          padding: EdgeInsets.all(13),
                          shape: CircleBorder(),
                          child: Icon(
                            Icons.arrow_forward,
                            color: white,
                          )))
                ],
              ),
              height: 245,
              width: double.infinity,
              decoration: authPlateDecoration,
            )
          ],
        ),
      ),
    );
  }
}
