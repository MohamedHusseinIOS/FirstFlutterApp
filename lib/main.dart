import 'package:first_app/SecondPage_page.dart';
import 'package:first_app/GridView_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar( 
        middle: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CupertinoButton(
              color: CupertinoColors.activeBlue,
              borderRadius: BorderRadius.circular(10),
              onPressed: () {
                Navigator
                .of(context)
                .push(
                  MaterialPageRoute(
                    builder: (context) => SecondPage(title: 'Seconde Page')
                  )
                );
              },
              child: Text('Seconde Page'),
            ),
            SizedBox(height: 10),
            CupertinoButton(
              color: CupertinoColors.activeGreen,
              borderRadius: BorderRadius.circular(10),
              onPressed: () {
                Navigator
                .of(context)
                .push(
                  MaterialPageRoute(
                    builder: (context) => GridViewPage(title: 'GridViewPage')
                  )
                );
              },
              child: Text('Graid View'),
            )
          ]
        ),
          
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
