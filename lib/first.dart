import 'package:flutter/material.dart';
class Homescreen extends StatefulWidget{
  const Homescreen ({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();

}
class _HomescreenState extends State<Homescreen> {
  int counter = 0;
  void incrementcounter(){
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("StateFulWidget"),),
      body: Column(
        children: [
          Text("You have pushed the button this many times"),
          Text("$counter"),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        incrementcounter();
      },
      child: Icon(Icons.add),),
    );
  }
}