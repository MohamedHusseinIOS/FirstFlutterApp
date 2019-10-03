import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SecondPage extends StatelessWidget {
  SecondPage({Key key, this.title}) : super(key: key);

 final String title;

  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
      appBar: CupertinoNavigationBar( 
        previousPageTitle: 'Home',
        middle: Text(title),
      ),
      body: Center(
        child: CupertinoButton(
          color: CupertinoColors.activeBlue,
          borderRadius: BorderRadius.circular(10),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('back'),
          ),
      ),

    );
  }
}
