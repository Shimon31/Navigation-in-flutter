import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_in_flutter/SecondPage.dart';

import 'HomePage.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

 initialRoute:"Home",
      routes: {
        "Home": (context) => HomePage(),
        // "second Page": (context) => SecondPage(data: 'Hello Shimon',),
      },

    onGenerateRoute: (settings){
        if(settings.name=="second Page"){
final args = settings.arguments as ScreenArguments;
return MaterialPageRoute(builder: (context)=>SecondPage(data: args.message));
        }
    },

      onUnknownRoute: (settings){
        return MaterialPageRoute(builder: (_) =>Scaffold(
          
          body: Center(child: Text("Page not found"),),
          
        ));
      },
    );
  }
}

class ScreenArguments {
  final String message;
  ScreenArguments(this.message);

}
