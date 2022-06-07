import 'package:flutter/material.dart';

class SearchClass extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return IconButton( 
      icon: Icon(
        Icons.search,
        color: Colors.white,
      ),
      tooltip: 'Search',
      onPressed: (){
        
      }, 
    );
  }
}