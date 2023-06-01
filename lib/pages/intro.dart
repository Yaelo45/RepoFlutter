import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Fondo(),
          Contenido(),
        ],
      ),
    );
  }
}

class Fondo extends StatelessWidget {
  const Fondo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 176, 7, 7),
        Color.fromARGB(255, 140, 10, 169),
      ], begin: Alignment.centerRight, end: Alignment.centerLeft)),
    );
  }
}

class Contenido extends StatefulWidget {
  const Contenido({super.key});

  @override
  State<Contenido> createState() => InicioState();
}

class InicioState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'BIENVENIDO A DULZEREZA',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 40),
          Image(
            image: AssetImage('assets/etiqueta_cono.png'),
            width: 200,
            alignment: Alignment(300, 100),
          ),
          SizedBox(height: 30),
          Text(
            'La mejor app para tu paladar',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromARGB(255, 255, 252, 96),
                fontSize: 10,
                letterSpacing: 1.5),
          ),
          SizedBox(height: 40),
          Boton(),
        ],
      ),
    );
  }
}

class Boton extends StatefulWidget {
  const Boton({super.key});

  @override
  State<Boton> createState() => Boton1();
}

class Boton1 extends State<Boton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 69, 7, 102))),
              child: Text(
                'Iniciar Sesión',
                style: TextStyle(color: Colors.white),
              )),
        )
      ],
    );
  }
}
