import 'package:flutter/material.dart';

void main()=> runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginPage(),
      theme: ThemeData(
        // primarySwatch: Colors.deepOrange
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State createState() => LoginPageState();
  
}

//it's a commit
class LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{

   AnimationController? _iconanimationController;
   late Animation<double> _iconAnimation;

  void initialState(){
    super.initState();
    _iconanimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500)
    );

    _iconAnimation = CurvedAnimation(
      parent: _iconAnimation, 
      curve: Curves.bounceOut
      );
      _iconAnimation.addListener(()=> setState(() {}));
      _iconanimationController!.forward();
  }
  
  @override
  Widget build(BuildContext context){
    return  Scaffold(
        backgroundColor: Colors.lime,
        body: Stack(
          fit: StackFit.expand,
          children: [
            const Image(image: AssetImage("assets/rain wallpaper.jpg"),
            fit: BoxFit.cover,
            color: Colors.black45,
            colorBlendMode: BlendMode.darken,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              FlutterLogo(
                size: _iconAnimation.value * 100,
                
              )
            ],)
          ],
        ),
    );
  }
}

