import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override

  int valor = 0 ;
  Widget build(BuildContext context) {
    return  Scaffold(appBar:
     AppBar(
  title: 
  Text("BELLAQUIANDO"),
  centerTitle: true,// titulo centrado
), 
body: Center(
  child:
   Column(mainAxisAlignment: MainAxisAlignment.center,
   children: [
    const Text("gosalo"), //texto en medio 
    Text('$valor', style: const TextStyle(fontSize: 40)),// valor mostrado en el centro
    ],
 ),
),

floatingActionButton: Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly ,

  children : [
    // boton restar
    FloatingActionButton(
      onPressed: () {valor--; setState(() {
        {};
      });}, 
      child: const Icon(Icons.remove),
    ),
    
    // boton reset
    FloatingActionButton(
      onPressed: () {valor = 0 ;
      setState(() {
        
      });}, 
      child: const Icon(Icons.refresh),
    ),

    // boton sumat
    FloatingActionButton(
      onPressed: () {valor ++;
      setState(() {
        {}
      });}, 
      child: const Icon(Icons.add),
    ),
]
),
) ;

  }
}