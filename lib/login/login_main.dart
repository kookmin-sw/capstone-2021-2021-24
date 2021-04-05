import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:creating_app/signup/signup.dart';

import '../main.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  FirebaseUser currentUser;
  String name = "";
  String email = "";
  String url = "";

  TextEditingController _emailController = TextEditingController();
  TextEditingController _nameController = TextEditingController();

  bool log_success = false;

  //구글 로그인을 통해 로그인을 하는 코드이다.
  Future<String> googleSingIn() async {
    final GoogleSignInAccount account = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth = await account.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final AuthResult authResult = await _auth.signInWithCredential(credential);
    final FirebaseUser user = authResult.user;

    assert(!user.isAnonymous);
    assert(await user.getIdToken() != null);

    currentUser = await _auth.currentUser();
    assert(user.uid == currentUser.uid);

//해당 부분을 통해 현재 로그인된 유저의 이메일, 사진, 닉네임을 설정해준다.
    setState(() {
      email = user.email;
      url = user.photoUrl;
      name = user.displayName;
      log_success = true;
      print('uid:');
      print(user.uid);
    });

    if(log_success == true) {
      _showAlert(title: "로그인", message: "성공");
    }

    return '구글 로그인 성공: $user';
  }


//구글 로그인에서 로그아웃 할때 설정해주었던 모든 것들을 다시 초기화 시켜주는 작업도 함께 해준다.
  void googleSignOut() async {
    await _auth.signOut();
    await googleSignIn.signOut();

    setState(() {
      email = "";
      url = "";
      name = "";
    });

    print("User Sign Out");
  }

  void _showAlert({String title, String message}) {
    showCupertinoDialog(context: context, builder: (context) {
      return CupertinoAlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          CupertinoDialogAction(isDefaultAction: true, child: Text("확인"), onPressed: () {
            Navigator.pop(context);
          })
        ],
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '로그인',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Center(
                    child: Image(
                      image: AssetImage('assets/logo.png'),
                      width: 150,
                    ),
                  )),
            email == "" ?
            TextField(
            decoration:
            InputDecoration(labelText: 'Enter "User Name"'),
            keyboardType: TextInputType.emailAddress,
          ) : Text(email),
          email == "" ?
          TextField(
            decoration:
            InputDecoration(labelText: 'Enter "password"'),
            keyboardType: TextInputType.text,
            obscureText: true, //비밀번호 입력시 안보이게 !!
          ) : Text(name),
          SizedBox(
            height: 20.0,
          ),
              email == "" ?
              ButtonTheme(
                minWidth: 400.0,
                height: 40.0,
                child: RaisedButton(
                  color: Colors.black,
                  textColor: Colors.white,
                  onPressed: () {},
                  child: Text('로그인', style: TextStyle(fontSize: 24)),
                ),
              ) : Container(),

        Row(children: <Widget>[
          Expanded(
            child: new Container(
                margin: const EdgeInsets.only(right: 20.0),
                child: Divider(
                  color: Colors.black,
                  height: 36,
                )),
          ),
          Text("OR"),
          Expanded(
            child: new Container(
                margin: const EdgeInsets.only(left: 20.0),
                child: Divider(
                  color: Colors.black,
                  height: 36,
                )),
          ),
        ],
        ),
              email == ""
                  ? Container()
                  : Column(
                children: <Widget>[
                ],
              ),
              FlatButton(
                color: Colors.black,
                onPressed: () {
                  //여기또한 이메일의 존재 여부를 통해 해당 버튼의 기능을 바꾸게 된다.
                  if (email == "") {
                    googleSingIn();
                  } else {
                    googleSignOut();
                    _showAlert(title: "로그아웃", message: "성공");
                  }
                },
                child: Container(
                    width: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image(image: AssetImage('assets/glogo.png')),
                        Text(email == "" ? 'Google Login' : "Google Logout", style: TextStyle(color: Colors.white),)
                      ],
                    ),
                ),
              ),

              SizedBox(
                height: 60,
              ),
        email == "" ?
        Align(
          child : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('계정이 없으신가요 ?  '),
              InkWell(
                child: Text('가입하기', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signup()),
                  );
                },
              )
            ],
          )
        ) : Container()
            ],
        ),
      ),
      ),
    );
  }
}
