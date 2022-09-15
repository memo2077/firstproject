import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wish',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  int _counter = 0;

  void _erhoeheCounter(int wert) {
    setState(() {
      _counter += wert;
    });
  }

  void _verringereCounter(int wert) {
    setState(() {
      _counter -= wert;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables

    return Scaffold(
      appBar: AppBar(
        title: Text('Wish'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('How many monitors do you want to buy?'),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline4,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            TextButton(
              onPressed: (() {
                _verringereCounter(10);
              }),
              child: const Text(
                "-10",
                style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
              ),
            ),
            IconButton(
              iconSize: 75,
              onPressed: () {
                _verringereCounter(1);
              },
              color: Colors.blue,
              icon: const Icon(
                Icons.remove_circle,
              ),
            ),
            IconButton(
              iconSize: 75,
              onPressed: () {},
              color: Colors.blue,
              icon: const Icon(
                Icons.five_k_plus,
              ),
            ),
            IconButton(
              iconSize: 75,
              onPressed: () {},
              color: Colors.blue,
              icon: const Icon(
                Icons.hdr_on,
              ),
            ),
            IconButton(
              iconSize: 75,
              onPressed: () {},
              color: Colors.blue,
              icon: const Icon(
                Icons.monitor,
              ),
            ),
            IconButton(
              iconSize: 75,
              onPressed: () {},
              color: Colors.blue,
              icon: const Icon(
                Icons.sixty_fps_rounded,
              ),
            ),
            IconButton(
              iconSize: 75,
              onPressed: () {
                _erhoeheCounter(1);
              },
              color: Colors.blue,
              icon: const Icon(Icons.add_circle),
            ),
            TextButton(
              onPressed: (() {
                _erhoeheCounter(10);
              }),
              child: const Text(
                "+10",
                style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
