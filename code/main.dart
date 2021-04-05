import 'package:creating_app/home.dart';
import 'package:creating_app/myimport.dart';
import 'package:creating_app/place.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:creating_app/login/login_main.dart';
import 'package:creating_app/setting/setting.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '착하니',
      theme: ThemeData(
        primaryColor: Colors.white,
          scaffoldBackgroundColor: Colors.white
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _currentIndex = 0;

  bool is_login = false;

  final List _children = [Home(), Place(), LoadImageFromGallery()];
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void _onTap(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  String email = "";
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key : _scaffoldKey,
      appBar: AppBar(
        title: Text('착하니'),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          new IconButton(
            icon: Icon(Icons.person),
            onPressed: () => _scaffoldKey.currentState.openEndDrawer()),
        ],
      ),
      endDrawer : Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/user.png'),
                backgroundColor: Colors.orangeAccent,
              ),
                accountName: is_login ? Text('hi') : Text('User Name'),
                accountEmail: Text('Email'),
              onDetailsPressed: () {}, // 밑으로 펼쳐지는 것
              decoration: BoxDecoration(
                color: Colors.orangeAccent[200],
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40))
              ),
            ),

            // 리스트타일 추가
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('설정'),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Setting()),
                );
              },
            ),
            // 리스트타일 추가
            ListTile(
              leading: Icon(Icons.login),
              title: Text('로그인'),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
            )
          ],
        ),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar : BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _onTap,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('홈'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.house),
            title: Text('맛집'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('내정보'),
          ),
        ],
      ),
    );
  }
}
