import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Kubiki(),
    );
  }
}
class Kubiki extends StatelessWidget {
  const Kubiki({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar:AppBar(
        title:const  Text('First screen of my app',
        style:TextStyle(color: Colors.black),
        )
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:const [
            kubik(minas: MainAxisAlignment.start),
             kubik(minas: MainAxisAlignment.center,),
              kubik(minas: MainAxisAlignment.end,),
    ],),
      )
    );
  }
}
class kubik extends StatelessWidget {
  const kubik({Key? key,required this.minas, }) : super(key: key);
final MainAxisAlignment minas;
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: minas,
      children: [
            Container(
              width: 50,
              height: 50,
              color: Colors.red,
               child:Center(
                 child: const Text('1',
              style: TextStyle(fontSize: 24,),),
               ),
            ),
            Container(
              width: 85,
              height: 85,
              color: Colors.yellow,
               child:Center(
                 child: const Text('2',
              style: TextStyle(fontSize: 24,),),
               ),
            ),
            Container(
              width: 115,
              height: 115,
              color: Colors.green,
              child:Center(
                child: const Text('3',
                style: TextStyle(fontSize: 24,),),
              ),
            ),
          ],);
    
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 99;

  void _incrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
        backgroundColor: Color.fromARGB(255, 144, 52, 82),
        elevation: 25,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Nazhali na knopku stolko raz:',
              style: TextStyle(
                color: Colors.brown,
                fontSize: 22,
                fontWeight: FontWeight.w700
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.account_box),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
