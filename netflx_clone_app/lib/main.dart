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

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( // Add this
        child: Column(
          children: [
            const NavBar(), // Add the NavBar widget
            const Header(), // Add the Header widget
            Container(
              margin: const EdgeInsets.all(30), // Set the margin you want
              child: const MovieSection(title: 'Top 10 - Romania'),
            ), 
            Container(
              margin: const EdgeInsets.all(30), // Set the margin you want
              child: const MovieSection(title: 'Popular Series'),
            ),
            Container(
              margin: const EdgeInsets.all(30), // Set the margin you want
              child: const MovieSection(title: 'Popular Movies'),
            ),
            Container(
              margin: const EdgeInsets.all(30), // Set the margin you want
              child: const SpecialSection(title: 'Netflix Originals'),
            ), 
          ],
        ),
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

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('assets/tdwp-header.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'The Devil Wears \n Prada',
                style: TextStyle(
                  fontSize: 60, 
                  color: Color.fromRGBO(255, 195, 195, 1),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Watch Now'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MovieSection extends StatelessWidget {
  const MovieSection({super.key, required this.title});
  final String title;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 40, 
            color: Color.fromRGBO(255, 195, 195, 1),
          ),
        ),
        SizedBox(
          height: 150,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 10, // Replace with the number of rectangles you want
            itemBuilder: (context, index) => Container(
              width: 130,
              color: Colors.blue, // Replace with the color you want
            ),
            separatorBuilder: (context, index) => const SizedBox(width: 20),
          ),
        ),
      ],
    );
  }
}

class SpecialSection extends StatelessWidget {
  const SpecialSection({super.key, required this.title});
  final String title;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 40, 
            color: Color.fromRGBO(255, 195, 195, 1),
          ),
        ),
        SizedBox(
          height: 150,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 10, // Replace with the number of rectangles you want
            itemBuilder: (context, index) => Container(
              width: 130,
              color: Colors.blue, // Replace with the color you want
            ),
            separatorBuilder: (context, index) => const SizedBox(width: 20),
          ),
        ),
      ],
    );
  }
}