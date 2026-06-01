import 'package:flutter/material.dart';
import 'home_screen.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    
    String textoMejora1 = "";
    Color colorTextoMejora1 = Colors.black;
    void Function()? accionMejora1;
    if (poderClic >= 2) {
      textoMejora1 = "¡COMPRADO!";
      colorTextoMejora1 = Colors.green[700]!;
      accionMejora1 = null;
    } else {
      textoMejora1 = "Cuesta: 50 pts";
      colorTextoMejora1 = Colors.red[700]!;
      accionMejora1 = () {
        if (valor >= 50) {
          setState(() {
            valor -= 50;
            poderClic = 2;
          });
        }
      };}
    String textoMejora2 = "";
    Color colorTextoMejora2 = Colors.black;
    void Function()? accionMejora2;
    if (poderAuto >= 2) {
      textoMejora2 = "¡COMPRADO!";
      colorTextoMejora2 = Colors.green[700]!;
      accionMejora2 = null;
    } else {
      textoMejora2 = "Cuesta: 150 pts";
      colorTextoMejora2 = Colors.red[700]!;
      accionMejora2 = () {
        if (valor >= 150) {
          setState(() {
            valor -= 150;
            poderAuto = 2;
          });
        }
      };}
return Scaffold(
  body: Container(
  decoration: const BoxDecoration(
  image: DecorationImage(
  image: AssetImage('assets/fondo.png'),
    fit: BoxFit.cover,),),
      child: SafeArea(
      child: Column(
      children: [
        Align(
        alignment: Alignment.topLeft,
        child: Padding(
        padding: const EdgeInsets.all(16.0),
          child: CircleAvatar(
            backgroundColor: Colors.lightBlue[300],
              radius: 22,
              child: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new,
               color: Colors.white, size: 20),
                onPressed: () {
                  Navigator.pop(context);},
                    )),
                ),),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color(0xFFE5F1F8),
                  borderRadius: BorderRadius.circular(20),),
                child: Row(
                children: [
                  const CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage('assets/perfil.png'),),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                            "ROAND RODRIGUEZ",
                            style: TextStyle(fontFamily: 'Terraria', 
                             fontSize: 18, color: Colors.black),),
                          SizedBox(height: 5),
                          Text(
                            "Futuro Ingeniero de Sistemas o trabjador de MCdonals ,aficionado alos relojes y a mi mascota piru . Desarrollador de Piru Touch.",
                            style: TextStyle(fontFamily: 'Terraria',fontSize: 14, 
                          color: Colors.black54),),],
                      ),
                    ),
                  ],),),
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(15),),
                child: Text(
                  "Puntos disponibles: $valor",
                  style: const TextStyle(fontFamily: 'Terraria',
                   fontSize: 18, color: Colors.white),
                ),),
              const SizedBox(height: 15),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                    color: const Color(0xFFE5F1F8),
                      borderRadius: BorderRadius.circular(20),),
                      child: Row(
                      children: [
                        const CircleAvatar(
                            radius: 30,
                       backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage('assets/mejora1.png'),),
                          const SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              const Text("Doble comidita", 
                              style: TextStyle(fontFamily: 'Terraria'
                            , fontSize: 16)),
                          const Text("Tus clics valen el doble (+2)", style: TextStyle(fontFamily: 'Terraria',fontSize: 12, color: Colors.black54)),
                              const SizedBox(height: 5),
                              Text(
                                  textoMejora1,
                                  style: TextStyle(fontFamily: 'Terraria', color: colorTextoMejora1)),],
                            ),),
                      ElevatedButton(
                        onPressed: accionMejora1,
                          style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF006B8F),
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(12),),
                          child: const Icon(Icons.shopping_cart, 
                          color: Colors.white),)],
                      ),),
                    const SizedBox(height: 15),
                  Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE5F1F8),
                      borderRadius: BorderRadius.circular(20),),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 30,
                          backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage('assets/pirubuchana.gif'),),
                      const SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Sobrecarga de Buchanan's", 
                                style: TextStyle(fontFamily: 'Terraria',
                                     fontSize: 16)),
                                const Text("Auto-clickers trabajan el doble", 
                                style: TextStyle(fontFamily: 'Terraria',
                                fontSize: 12, color: Colors.black54)),
                                const SizedBox(height: 5),
                              Text(
                                  textoMejora2,
                                  style: TextStyle(fontFamily: 'Terraria', color: colorTextoMejora2)),],
                            ),),
                          ElevatedButton(
                            onPressed: accionMejora2,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF006B8F),
                              shape: const CircleBorder(),
                           padding: const EdgeInsets.all(12),
                            ),
                            child: const Icon(Icons.shopping_cart, color: Colors.white),),
                        ],
                      ),
                    ),],
                ),),
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            decoration: BoxDecoration(
             color: const Color(0xFFE5F1F8),
              borderRadius: BorderRadius.circular(25),),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Image.asset(
                      'assets/logo.png',
                      height: 40, 
                      fit: BoxFit.contain,),
                    const CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('assets/piru.png'),
                    ),
                  ],
                ),
              ),
            ],),
        ),
      ),
    );}
}