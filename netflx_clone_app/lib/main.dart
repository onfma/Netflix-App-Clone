import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix Clone App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 104, 94, 122),
          background: Colors.black, // Set background color to black
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  // @override
  // NavBar createState() => NavBar();
  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          NavBar(), // Add the NavBar widget
          Header(), // Add the Header widget
        ],
      ),
    );
  }
}

class Header extends StatelessWidget{
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
      return SizedBox(
        height: 500, // Set the height to 200
        width: MediaQuery.of(context).size.width, // Set the width to the screen width
        child: Image.network(
          'assets/tdwp-header.jpg',
          fit: BoxFit.fitWidth, // Use BoxFit.cover to scale and crop the image
        ),
      );
    }
}

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: SizedBox(
        width: 100,
        height: 50,
        child: Image.asset('assets/netflix-logo.png', fit: BoxFit.fitHeight),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Home',
            style: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(255, 195, 195, 1),
              ),
          ),
          onPressed: () {
            // Add your action here
          },
        ),
        TextButton(
          child: const Text('Series',
            style: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(255, 195, 195, 1),
              ),
          ),
          onPressed: () {
            // Add your action here
          },
        ),
        TextButton(
          child: const Text('Films',
            style: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(255, 195, 195, 1),
              ),
          ),
          onPressed: () {
            // Add your action here
          },
        ),
        TextButton(
          child: const Text('My List',
            style: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(255, 195, 195, 1),
              ),
          ),
          onPressed: () {
            // Add your action here
          },
        ),
      ],
    );
  }
}