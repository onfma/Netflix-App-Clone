import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

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
          background: Colors.black,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const NavBar(),
            const Header(),
            Container(
              margin: const EdgeInsets.all(30), 
              child: MovieSection(title: 'Top 10 - Romania', jsonFile: 'jsonData/top10ro.json'),
            ), 
            Container(
              margin: const EdgeInsets.all(30),
              child: MovieSection(title: 'Popular Series', jsonFile: 'jsonData/popularSeries.json'),
            ),
            Container(
              margin: const EdgeInsets.all(30), 
              child: MovieSection(title: 'Popular Movies', jsonFile: 'jsonData/popularMovies.json'),
            ),
            Container(
              margin: const EdgeInsets.all(30),
              child: SpecialSection(title: 'Netflix Originals', jsonFile: 'jsonData/top10ro.json'),
            ), 
          ],
        ),
      ),
    );
  }
}

class SeriesPage extends StatelessWidget {
  const SeriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Series Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go back'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

class FilmsPage extends StatelessWidget {
  const FilmsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Films Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go back'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

class MyListPage extends StatelessWidget {
  const MyListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My List Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go back'),
          onPressed: () {
            Navigator.pop(context);
          },
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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SeriesPage()),
            );
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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FilmsPage()),
            );
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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyListPage()),
            );
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
                child: const Text('View More'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class MovieSection extends StatelessWidget {
  MovieSection({super.key, required this.title, required this.jsonFile});
  final String title;
  String jsonFile;

  final ScrollController _controller = ScrollController();

  Future<List<dynamic>> loadJsonData() async {
    String jsonString = await rootBundle.loadString(jsonFile);
    return json.decode(jsonString)['elements'];
  }
  
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: loadJsonData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 40,
                  color: Color.fromRGBO(255, 195, 195, 1),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      _controller.animateTo(
                        _controller.offset - 300.0 * 4, 
                        curve: Curves.easeOut,
                        duration: const Duration(milliseconds: 300),
                      );
                    },
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 200,
                      child: ListView.separated(
                        controller: _controller,
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data?.length ?? 0,
                        itemBuilder: (context, index) => Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Dialog(
                                      child: Container(
                                        height: 200,
                                        color:const Color.fromRGBO(255, 195, 195, 1),
                                        child: Center(
                                          child: Text(
                                            snapshot.data?[index]['description'],
                                            style: const TextStyle(fontSize: 24),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: SizedBox(
                                width: 300,
                                height: 170,
                                child: Image.network(
                                  snapshot.data?[index]['img_link'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              snapshot.data?[index]['title'],
                              style: const TextStyle(
                                fontSize: 16,
                                color: Color.fromRGBO(255, 195, 195, 1),
                              ),
                            ),
                          ],
                        ),
                        separatorBuilder: (context, index) => const SizedBox(width: 20),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward),
                    onPressed: () {
                      _controller.animateTo(
                        _controller.offset + 300.0 * 4,
                        curve: Curves.easeOut,
                        duration: const Duration(milliseconds: 300),
                      );
                    },
                  ),
                ],
              ),
            ],
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}

// ignore: must_be_immutable
class SpecialSection extends StatelessWidget {
  SpecialSection({super.key, required this.title, required this.jsonFile});
  final String title;
  String jsonFile;

  final ScrollController _controller = ScrollController();

  Future<List<dynamic>> loadJsonData() async {
    String jsonString = await rootBundle.loadString(jsonFile);
    return json.decode(jsonString)['elements'];
  }
  
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: loadJsonData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 40,
                  color: Color.fromRGBO(255, 195, 195, 1),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      _controller.animateTo(
                        _controller.offset - 300.0 * 4, 
                        curve: Curves.easeOut,
                        duration: const Duration(milliseconds: 300),
                      );
                    },
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 200,
                      child: ListView.separated(
                        controller: _controller,
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data?.length ?? 0,
                        itemBuilder: (context, index) => Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Dialog(
                                      child: Container(
                                        height: 200,
                                        color:const Color.fromRGBO(255, 195, 195, 1),
                                        child: Center(
                                          child: Text(
                                            snapshot.data?[index]['description'],
                                            style: const TextStyle(fontSize: 24),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: SizedBox(
                                width: 300,
                                height: 170,
                                child: Image.network(
                                  snapshot.data?[index]['img_link'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              snapshot.data?[index]['title'],
                              style: const TextStyle(
                                fontSize: 16,
                                color: Color.fromRGBO(255, 195, 195, 1),
                              ),
                            ),
                          ],
                        ),
                        separatorBuilder: (context, index) => const SizedBox(width: 20),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward),
                    onPressed: () {
                      _controller.animateTo(
                        _controller.offset + 300.0 * 4,
                        curve: Curves.easeOut,
                        duration: const Duration(milliseconds: 300),
                      );
                    },
                  ),
                ],
              ),
            ],
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}

