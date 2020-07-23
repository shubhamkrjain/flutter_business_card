
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

MyApp() {
  getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(50.0),

        ),
        border: Border.all(
          color: Colors.redAccent,
          width: 1.2,
        ),
        image: DecorationImage(image: NetworkImage('https://avatars3.githubusercontent.com/u/38971147?s=60&v=4'),
        fit: BoxFit.cover,
        )
      ),
    );
  }

  getCard() {
    return Container(
      margin: EdgeInsets.all(50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Shubham Kr Jain',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              
            ),
          ),
          Text('shubhamkrjain@icloud.com'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.person_outline),
              Text('@shubham27'),
            ],
          ),
        ],
          
      ),
      width: 350,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.amberAccent.shade700,
        borderRadius: BorderRadius.circular(14.5),
      ),
    );
  }
  var mybody = Container(
    alignment: Alignment.center,
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        getCard(),
        getAvatar(),
      ],
    ),
  );

  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Business Card'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add_to_photos), onPressed: null)
        ],
      ),
      body: mybody,
      backgroundColor: Colors.grey.shade300,
      ),
  );
}