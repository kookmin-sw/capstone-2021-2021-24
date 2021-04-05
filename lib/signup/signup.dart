import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final idController = TextEditingController();

  final pwController = TextEditingController();

  final rePwController = TextEditingController();

  bool _isObscure = true;

  bool _reIsObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '회원 정보 입력',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(8),
              child: TextField(
                controller: idController,
                decoration: InputDecoration(labelText: 'Enter \"User name\"'),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: TextField(
                obscureText: _isObscure,
                controller: pwController,
                decoration: InputDecoration(
                    labelText: 'Enter \"password\"',
                    suffixIcon: IconButton(
                        icon: Icon(_isObscure
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        })),
              ),
            ),
            Container(
                margin: EdgeInsets.all(8),
                child: TextField(
                  obscureText: _reIsObscure,
                  controller: rePwController,
                  decoration: InputDecoration(
                      labelText: 'Confirm \"password\"',
                      suffixIcon: IconButton(
                          icon: Icon(_reIsObscure
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _reIsObscure = !_reIsObscure;
                            });
                          })),
                )),
            Container(
              margin: EdgeInsets.all(8),
              width: 600,
              child: ElevatedButton(
                child: Text('약관동의하고 회원가입'),
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      return Colors.black;
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
