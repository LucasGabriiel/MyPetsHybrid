import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  void initializeSplash()async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacementNamed(context, "/home");
  }


  @override
  void initState() {
    initializeSplash();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFa2af9d),
        body: Center(
          child:  Padding(
            padding: const EdgeInsets.all(16.16),
            child: Column(
              children: [
                Image.asset("images/logo.png"),
                SizedBox(height: 16,),
                Text("My Pets", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFFEEEEEE),),)
              ],
            ),
          ),
        )
    );
  }
}
