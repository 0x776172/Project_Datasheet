import 'package:flutter/material.dart';
import 'package:datasheetlog/atmel_screen.dart';
import 'package:datasheetlog/search_icon.dart';

class MainPage extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        title: Text(
          'Datasheet Log',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
        actions: <Widget>[
          SearchClass(),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.cyan
              ),
              child: Text(
                'Category',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),

            ListTile(
              title: Text(
                'Atmel AVR',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return AtmelPage();
                }));
              },
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //Image.asset(),
            ],
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Center(
                  child: Text(
                    "Datasheet Log is An application to check about datasheet of microcontroller chip, such as Atmel and ARM.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return AtmelPage();
                      }));
                    },
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text("Atmel AVR",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}