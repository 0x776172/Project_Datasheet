import 'package:datasheetlog/search_icon.dart';
import 'package:flutter/material.dart';

class AtmelPage extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          SearchClass(),
        ],
        title: Text(
          "Atmel Microcontrollers",
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(
                child: Image.asset('images/atmel.png'),
              ),
              SingleChildScrollView(
                child: Column(
                  
                ),
              ),
            ]
          ),
        ],
      ),
    );
  }
}