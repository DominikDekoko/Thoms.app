import 'package:flutter/material.dart';
import 'package:mebel_3d/pages/signup.dart';
//import 'shop.dart';
void main()=> runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),

      },
    );
  }
}




class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/img/koks.png'),
            fit: BoxFit.cover,
          )
        ),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: <Widget>[
                  _getHeader(),
                  _getInputs(),
                  _getSignIn(),
                  _getBottomRow(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
_getHeader() {
  return Expanded(
    flex: 3,
    child: Container(
      alignment: Alignment.bottomLeft,
      child: const Text(
        'Добро пожаловать',
        style: TextStyle(color: Colors.black, fontSize: 37),
      ),
    ),
  );
}
_getInputs(){
  return const Expanded(
    flex:4,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget> [
        TextField(
          decoration: InputDecoration(labelText: 'Email'),
        ),
        SizedBox(
            height: 15
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Password'),
        ),
        SizedBox(
            height:15
        ),
      ],
    ),
  );
}
_getSignIn() {
  return Expanded(
    flex: 1,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const Text(
          'Вход',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey.shade800,
          radius: 40,
          child: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
        )
      ],
    ),
  );
}
_getBottomRow() {
  return const Expanded(
    flex: 1,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Регистрация',
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline),
        ),
        Text(
          'Забыли пароль',
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline),
        )
      ],
    ),
  );
}

class BackgroundSignIn extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size){
    var sw = size.width;
    var sh = size.height;
    var paint = Paint();

    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0,0, sw, sh));
    paint.color = Colors.grey.shade100;
    canvas.drawPath(mainBackground,paint);
  }
  bool ShouldRepaint(CustomPainter OldDelegate){
    return OldDelegate != this;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    throw UnimplementedError();
  }
}
