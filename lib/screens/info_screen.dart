import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : const Text("mejoras")),
     
     body:
     Column(mainAxisAlignment: MainAxisAlignment.center,
     children : [
     Text("aqui puede que se consigan las mejoras que qestoy pensado")
     ] , )
     );
  }
}