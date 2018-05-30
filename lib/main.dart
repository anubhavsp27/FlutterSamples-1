import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Container encloseInContainer(Widget child) {
      return new Container(
          padding: EdgeInsets.all(32.0),
          alignment: Alignment.center,
          decoration: new BoxDecoration(
              color: Colors.blue[100],
              border: new Border.all(color: Colors.black,
              )
          ),
          child: child);
    }

    Column returnIconColumn(Icon icon, String string, String time){
      return new Column(
        children: <Widget>[
          new Column(

        children: <Widget>[
          icon,
          new Text(string,style: new TextStyle(color: Colors.grey[500]),)
        ]),

          new Container(
          alignment: AlignmentDirectional.bottomCenter,
          child: new Text(time,
         style: new TextStyle(color: Colors.grey[500] )
      )
      )

        ],
      );
    }
    final titleBox = encloseInContainer(new Text('Strawberry Pavalova', textAlign: TextAlign.center
          ,style: new TextStyle(color: Colors.grey[500], fontSize: 24.0, fontWeight: FontWeight.bold)),);

    final textSection = encloseInContainer(new Text('Pavalova is a meringue based desert named after the Russian balerina Anna Pavalova. Some random information about Pavalova no one cares about.',
        textAlign: TextAlign.center,
        style: new TextStyle(color: Colors.grey[500], fontSize: 18.0,) ,
    softWrap: true,),
    );
    final fiveStars = new List<Icon>.generate(5, (int index) => new Icon(Icons.star, color: Colors.green,));
    final fiveStarsRow = new Row(
        mainAxisSize: MainAxisSize.min,
        children: fiveStars
    );
    final ratingsSection = encloseInContainer(new Row(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        fiveStarsRow,
        new Text('170 reviews',
            style: new TextStyle(color: Colors.grey[500], fontSize: 12.0)
        )

      ],)
    );
    Icon returnIcon(IconData icon) => new Icon(icon, color: Colors.green,);


    final iconSection = encloseInContainer(new Row(
        mainAxisSize: MainAxisSize.max,
      //mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        returnIconColumn(returnIcon(Icons.kitchen), 'PREP', '25 min'),
        returnIconColumn(returnIcon(Icons.kitchen), 'PREP', '25 min'),
        returnIconColumn(returnIcon(Icons.kitchen), 'PREP', '25 min')
      ],
    ) );


    final leftSide = new Container(
        padding: EdgeInsets.all(32.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
      //mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      titleBox,
      textSection,
      iconSection
    ],
    )
    );

    final finalBox = new Row(
      children: <Widget>[
        leftSide,
        new Image.asset('images/lake.jpg')
      ],
    );

    return new MaterialApp(
      title: 'Pavalova',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Pavalova'),
        ),
        body: finalBox,
      ),
    );
  }


}

