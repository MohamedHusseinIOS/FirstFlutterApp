import 'dart:ui' as prefix0;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix1;

class GridViewPage extends StatelessWidget {
  GridViewPage({Key key, String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
   List<String> names = ['Image1', 'Image2', 'Image3', 'Image4', 'Image5'];

   SliverAppBar getSliverAppBar() {
    return SliverAppBar(
      floating: true,
      expandedHeight: 200,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax,
        background: Image(
          image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
          fit: BoxFit.cover,
        )
      ),
    );
   }

   SliverGrid getCollection(List<String> elements){
      List<Widget> widgets = [];
      for(var i = 0; i < elements.length; i++){
        widgets.add(
          Container(
            color: Colors.blue[100],
            child: Center(
              child:Text(
                elements[i],
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center
              )
            )
          )
        );
      }
      Widget grid = SliverGrid.count(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: widgets,
      );
      return grid;
    }

    return new Scaffold(
      //appBar: CupertinoNavigationBar(middle: Text('Grid View')),
      body: CustomScrollView(
        slivers: <Widget>[
          getSliverAppBar(),
          getCollection(names)
        ],
      )
    );
  }
}
