import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  void _decreaseCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      } else {
        return;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:Center(
        child: Container(
            decoration: BoxDecoration(
              // TODO: change the background image size to fit the child and change style color
              image: DecorationImage(
                image: AssetImage("assets/image/dhikr_8bit_background.png"),
                fit: BoxFit.contain
                ),
              ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('You have pushed the button this many times:'),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                // TODO(): make auto resizing of each circle icon and the text inside
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DecoratedBox(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/image/button_circle.png"),
                      fit: BoxFit.contain)
                  ),
                  child:
                  TextButton(
                  onPressed: _incrementCounter,
                child: Text("Increase"),),
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/image/button_circle.png"),
                      fit: BoxFit.contain)
                  ),
                  child:
                  TextButton(
                  onPressed: _decreaseCounter,
                  child: Text("Decrease"),
                ),
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/image/button_circle.png"),
                      fit: BoxFit.contain)
                  ),                child:
                  TextButton(
                  onPressed: _resetCounter,
                  child: Text("Reset"),
                ),
                ),
                  ],
                )
              ],
            ),
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
