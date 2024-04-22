import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

var box = Hive.box('myList');

void main() async{
  box = await Hive.openBox('myList');
  await box.clear();
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
      home: HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  HomePage({super.key});

  final Map<String, dynamic> data = {
    'title': "The Devil Wears Prada",
    'year': "2006",
    'genre': "Comedy, Drama",
    'description': "A college grad discovers her own strength — and style — while suffering for success as an assistant to the tyrannical editor of a fashion magazine.",
    'actors': "Meryl Streep, Anne Hathaway, Stanley Tucci, Simon Baker, Emily Blunt, Adrian Grenier",
    'img_link': "https://occ-0-3032-3467.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABeRVPZPPeDpkfzuQLJBXMJS-cwhKXigg36DLHIdBb0T8O5sMMEuQPi4GPWXGPZ-8HxD7YcNjKptnShTfqRRPi05KeB1rAeKE21vW.jpg?r=3e8"
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const NavBar(),
            Header(data: data, imgPath: 'assets/tdwp-header.jpg'),
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
              child: SpecialSection(title: 'Netflix Originals', jsonFile: 'jsonData/originals.json'),
            ), 
          ],
        ),
      ),
    );
  }
}

class SeriesPage extends StatelessWidget {
  SeriesPage({super.key});

  final Map<String, dynamic> data1 = {
    'title': "Stranger Things",
    'year': "2016",
    'genre': "Drama",
    'description': "When a young boy vanishes, a small town uncovers a mystery involving secret experiments, terrifying supernatural forces and one strange little girl.",
    'actors': "Nathan Fillion, Alyssa Diaz, Richard T. Jones",
    'img_link': "https://occ-0-3032-3466.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABc_QuOdHzJa9WwBiBlfEvpcFRKq9TAIgdJv0KoSilQZ8JMEsdCdQS4VGD6gwVg2CYCYNhTJIald5uVsXbMf-3QaF1k1fnFRbovQr6ddWUtkSOUzil_dtlD1wOIeD_pSI6pAx.jpg?r=c68"
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const NavBar(),
            Header(data: data1, imgPath: 'assets/st-header.png'),
            Container(
              margin: const EdgeInsets.all(30),
              child: MovieSection(title: 'Popular Series', jsonFile: 'jsonData/popularSeries.json'),
            ),
            Container(
              margin: const EdgeInsets.all(30), 
              child: MovieSection(title: 'Top 10 - Romania', jsonFile: 'jsonData/top10ro.json'),
            ), 
            Container(
              margin: const EdgeInsets.all(30),
              child: SpecialSection(title: 'Netflix Originals', jsonFile: 'jsonData/originals.json'),
            ), 
          ],
        ),
      ),
    );
  }
}

class FilmsPage extends StatelessWidget {
  FilmsPage({super.key});

  final Map<String, dynamic> data1 = {
    'title': "Top Gun: Maverick",
    'year': "2022",
    'genre': "Action",
    'description': "After more than 30 years as one of the Navy's top aviators, Maverick trains a group of Top Gun graduates for a specialized — and dangerous — mission.",
    'actors': "Tom Cruise, Miles Teller, Jennifer Connelly",
    'img_link': "https://occ-0-3032-3466.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABZ_rblqcHBS4lWmBXoMr-JRL6-oiSRFQ6E7MK-fjDNzHYvnqMFBZ3HRAmWVbMGxQtZtegrI-3qLlGyBKggmn-ES-lwULU9Qao1M.jpg?r=67e"
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const NavBar(),
            Header(data: data1, imgPath: 'assets/tg-header.jpg'),
            Container(
              margin: const EdgeInsets.all(30),
              child: MovieSection(title: 'Popular Movies', jsonFile: 'jsonData/popularMovies.json'),
            ),
            Container(
              margin: const EdgeInsets.all(30), 
              child: MovieSection(title: 'Top 10 - Romania', jsonFile: 'jsonData/top10ro.json'),
            ), 
            Container(
              margin: const EdgeInsets.all(30),
              child: SpecialSection(title: 'Netflix Originals', jsonFile: 'jsonData/originals.json'),
            ), 
          ],
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
        title: const Text(
          'My List',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color.fromRGBO(255, 195, 195, 1),
      ),
      body: Center(
        child: 
          SectionMyList(),
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
              MaterialPageRoute(builder: (context) => HomePage()),
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
              MaterialPageRoute(builder: (context) => SeriesPage()),
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
              MaterialPageRoute(builder: (context) => FilmsPage()),
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
  const Header({super.key, required this.data, required this.imgPath});
  final Map<String, dynamic> data;
  final String imgPath;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(imgPath),
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
              Text(
                data['title'],
                style: const TextStyle(
                  fontSize: 60, 
                  color: Color.fromRGBO(255, 195, 195, 1),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Modal(data: data);
                    },
                  );
                },
                child: const Text('View More'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Modal extends StatelessWidget {
  final Map<String, dynamic> data;

  const Modal({super.key, 
              required this.data});
  
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 300,
        color: const Color.fromRGBO(255, 195, 195, 1),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                data['title'],
                style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data['year'],
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(width: 10),
                  const Text("| ", style: TextStyle(fontSize: 20)),
                  Text(
                    data['genre'],
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                data['description'],
                style: const TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                "Actors: ${data['actors']}",
                style: const TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () async {
                  if (box.values.contains(data)) {
                    final index = box.values.toList().indexWhere((element) => element == data);
                    await box.deleteAt(index);
                  } else {
                    await box.add(data);
                  }
                  // ignore: avoid_print
                  print(box.values.toList());
                },
                child: ValueListenableBuilder(
                  valueListenable: box.listenable(),
                  builder: (context, Box box, _) {
                    return Text(box.values.contains(data) ? '- My List' : '+ My List');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class MovieSection extends StatelessWidget {
  MovieSection({super.key, required this.title, required this.jsonFile});
  final String title;
  final String jsonFile;

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
                        _controller.offset - 300.0 * 1, 
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
                                    return Modal(data: snapshot.data?[index]);
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
                        _controller.offset + 300.0 * 1,
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

class SpecialSection extends StatelessWidget {
  SpecialSection({super.key, required this.title, required this.jsonFile});
  final String title;
  final String jsonFile;

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
                        _controller.offset - 300.0 * 1, 
                        curve: Curves.easeOut,
                        duration: const Duration(milliseconds: 300),
                      );
                    },
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 550,
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
                                    return Modal(data: snapshot.data?[index]);
                                  },
                                );
                              },
                              child: SizedBox(
                                width: 350,
                                height: 500,
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
                        _controller.offset + 300.0 * 1,
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

class SectionMyList extends StatelessWidget{
  SectionMyList({super.key});
  
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Hive.box('myList').listenable(),
      builder: (context, Box box, _) {
        var allData = box.values.toList();
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                _controller.animateTo(
                  _controller.offset - 300.0 * 1, 
                  curve: Curves.easeOut,
                  duration: const Duration(milliseconds: 300),
                );
              },
            ),
            Expanded(
              child: SizedBox(
                height: 200,
                child: ListView.separated(
                  // controller: _controller,
                  scrollDirection: Axis.horizontal,
                  itemCount: allData.length,
                  itemBuilder: (context, index) => Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return Modal(data: allData[index]);
                            },
                          );
                        },
                        child: SizedBox(
                          width: 300,
                          height: 170,
                          child: Image.network(
                            allData[index]['img_link'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        allData[index]['title'],
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
                  _controller.offset + 300.0 * 1,
                  curve: Curves.easeOut,
                  duration: const Duration(milliseconds: 300),
                );
              },
            ),
          ],
        );
      },
    );
  }
}