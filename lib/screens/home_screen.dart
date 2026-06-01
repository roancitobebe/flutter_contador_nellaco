import 'package:flutter/material.dart';
import 'dart:async';

int valor = 0;
int autoClickers = 0 ;
int clicsTotales = 0;
int poderClic = 1 ;
int poderAuto = 1 ;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  Timer? relojito;
  bool piruTaPicando = false; 

  @override
    void initState() {
      super.initState();
      relojito = Timer.periodic(const Duration(seconds: 1), (timer) {
        if (autoClickers > 0) {
          setState(() {
          valor += (autoClickers * poderAuto);
        });
      }
    });
  }
  @override
    void dispose() {
      relojito?.cancel();
      super.dispose();
    }

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(0, 46, 76, 105), 
        elevation: 0 ,
        centerTitle: true,
          title: Image.asset(
            'assets/logo.png', 
               height: 100, 
                  fit: BoxFit.contain,
                  ),
          actions: [
            IconButton(
              icon: const Icon(Icons.info_outline), // el iconito de informacionn
              onPressed: () {
                Navigator.pushNamed(context, '/info', arguments: clicsTotales);
              },
            ),
          ],
        ),
      body: Container(
        width: double.infinity,  // ancho infinito (toda la pantalla)
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondo.png'),
            fit: BoxFit.cover,
          ),
      ),child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 188), // espacio desde arriba
            Text('$valor', style: const TextStyle(fontFamily: 'Terraria', fontSize: 60, color: Colors.white)),
            Text('Auto-clickers: $autoClickers', style: const TextStyle(fontFamily: 'Terraria', fontSize: 20, color: Colors.white70)),
        
            const Spacer(),
            IconButton(
              iconSize: 200, 
              icon: Image.asset(
                piruTaPicando ? 'assets/piru_bocabierta.png' : 'assets/piru_bocacerrada.png',
              ),
              onPressed: () {
                setState(() {
                  
                  piruTaPicando = !piruTaPicando; 
                  
                  valor += poderClic;     // suma tu platica
                  clicsTotales++;         // guarda el historial
                });
              },
            ),
          ],
        ),
      ),
    ),

      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20.0, top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "VENDER",
                    style: TextStyle(fontFamily: 'Terraria' ),
                  ),
                  
                  FloatingActionButton(
                    heroTag: 'btnMenos',
                    onPressed: () {
                      if (autoClickers > 0) {
                        setState(() {
                          autoClickers--;
                        });
                      }
                    },
                    child: const Icon(Icons.remove),
                  ),
                ],
              ),

              
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "RESET",
                    style: TextStyle(fontFamily: 'Terraria' ),
                  ),
                  FloatingActionButton(
                    heroTag: 'btnReset',
                    onPressed: () {
                      if (valor >= 100) {
                        setState(() {
                          valor = 0;
                          autoClickers = 0;
                        });
                      }
                    },
                    child: const Icon(Icons.refresh),
                  ),
                ],),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "COMPRAR",
                    style: TextStyle(fontFamily: 'Terraria' ),
                  ),
                  FloatingActionButton(
                    heroTag: 'btnMas',
                    onPressed: () {
                      if (valor >= 10) {
                        setState(() {
                          valor -= 10;
                          autoClickers++;
                          {}
                        });
                      }
                    },
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}