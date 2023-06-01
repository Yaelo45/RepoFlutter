import 'package:flutter/material.dart';

class InicioSesion extends StatefulWidget {
  const InicioSesion({super.key});

  @override
  State<InicioSesion> createState() => InicioSesionState();
}

class InicioSesionState extends State<InicioSesion> {
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
  State<Contenido> createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Datos(),
          SizedBox(height: 30),
          Miembros(),
        ],
      ),
    );
  }
}

class Datos extends StatefulWidget {
  const Datos({super.key});

  @override
  State<Datos> createState() => _DatosState();
}

class _DatosState extends State<Datos> {
  bool obs = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 5, 54, 119)),
      child: Column(children: [
        Text(
          'INICIO DE SESIÓN',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 238, 88),
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 30),
        const Text(
          'Email: ',
          style: TextStyle(
              color: Color.fromARGB(255, 146, 4, 4),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        TextFormField(
          /*Tipo de texto a recibir*/
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              /*Placeholder*/
              hintText: 'email@example.com'),
        ),
        const SizedBox(height: 5),
        const Text(
          'Contraseña: ',
          style: TextStyle(
              color: Color.fromARGB(255, 146, 4, 4),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        TextFormField(
          /*Solo permite ver el texto en * */
          obscureText: obs,
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: '**********',
              suffixIcon: IconButton(
                icon: Icon(Icons.remove_red_eye_outlined),
                onPressed: () {
                  setState(() {
                    obs == true ? obs = false : obs = true;
                  });
                },
              )),
        ),
        SizedBox(height: 10),
        Botones(),
      ]),
    );
  }
}

class Botones extends StatefulWidget {
  const Botones({super.key});

  @override
  State<Botones> createState() => _BotonesState();
}

class _BotonesState extends State<Botones> {
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
                      const Color(0xff142047))),
              child: Text(
                'Inisiar sesión',
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              )),
        )
      ],
    );
  }
}

class Miembros extends StatefulWidget {
  const Miembros({super.key});

  @override
  State<Miembros> createState() => _MiembrosState();
}

class _MiembrosState extends State<Miembros> {
  bool obs = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 255, 234, 0)),
      child: Column(children: [
        Text(
          'VUELVETE PREMIUM',
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Image(
          image: AssetImage('assets/etiqueta_cono.png'),
          width: 200,
          alignment: Alignment(300, 100),
        ),
        SizedBox(height: 10),
        BotonIm(),
      ]),
    );
  }
}

class BotonIm extends StatefulWidget {
  const BotonIm({super.key});

  @override
  State<BotonIm> createState() => _BotonImState();
}

class _BotonImState extends State<BotonIm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xff142047))),
              child: Text(
                'Primer mes GRATIS',
                style: TextStyle(color: Color.fromARGB(255, 234, 234, 234)),
              )),
        )
      ],
    );
  }
}
