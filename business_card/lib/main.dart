import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
void main(){
  runApp(MyApp(),
  );
}

class MyApp extends StatelessWidget{
  @override

  // functions for the implementation of button action in flutter.
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print(' could not launch $command');
    }
  }

  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: SafeArea(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(

                radius: 60,
                backgroundImage: AssetImage('image/self2.jpeg'),
              ),
              Text(
                'Aniket Singh',

                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize:40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),

              ),
              Text('F L U T T E R   D E V  E L O P E R',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color: Colors.black38
              )
              ),
              SizedBox(
                height: 30.0,
                width: 150.0,
                child: Divider(
                  color: Colors.black,
                ),
              ),

              Container(
                margin: new EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(
                        Radius.circular(10)
                    )
                ),
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.phone_android,
                    color: Colors.white,
                    ),
                    FlatButton(


                      onPressed: (){customLaunch('tel: 9075125922');},
                    ),

                    Text('9075125922',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: new EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10)
                    ),
                ),
                padding: const EdgeInsets.all(10),

                child: Row(
                  children: <Widget>[
                    Icon(Icons.email,
                  color: Colors.white
                  ),

                  FlatButton(onPressed: (){customLaunch('mailto:31aniket.singh@gmail.com');
                  },
                  ),

                  Center(
                    child: Text('   31aniket.singh@gmail.com',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,

                    ),
                    ),
                  ),
                ],


              ) ,
              ),
              SizedBox(height: 10),
              Container(
                margin: new EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(
                      Radius.circular(10)
                  ),
                ),
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Icon(
                        Icons.open_in_browser,
                        color: Colors.white
                    ),
                    FlatButton(onPressed: (){customLaunch('https://ian1tech.blogspot.com');},),

                    Text('   www.ian1tech.blogspot.com',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,

                      ),
                    ),
                  ],


                ) ,
              ),
            ],

          ),
        ),
      ),
    );
  }
}


