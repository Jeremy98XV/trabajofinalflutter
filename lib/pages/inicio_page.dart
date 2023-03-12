import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 134, 214, 181),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            const Text(
              'Bienvenido a \n"A COMPRAR!"',
              style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(height: 30.0),
            const Text(
              'Esta app busca mostrar una pequeña lista de supermercados en Teruel\n\nLas ventanas disponibles son:',
              style: TextStyle(fontSize: 18.0, color: Colors.black),
            ),
            SizedBox(height: 10.0),
            RichText(
              text: const TextSpan(
                style: TextStyle(fontSize: 16.0, color: Colors.black ,height: 1.5),
                children: <TextSpan>[
                  TextSpan(
                    text: '-Inicio',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: ': Es la ventana que estás viendo actualmente\n',
                  ),
                  TextSpan(
                    text: '-Mercado',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        ': Muestra una pequeña lista con supermercados cercanos, una foto y la direccion de estos\n',
                  ),
                  TextSpan(
                    text: '-Sitios',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: ': Muestra un mapa con un boton que te permite ir a "Alcampo"\n',
                  ),
                  TextSpan(
                    text: '-Lista',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: ': Te permite crear una lista a tiempo real con los productos que vas a ir a comprar',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
