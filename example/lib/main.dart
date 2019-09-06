import 'package:flutter/material.dart';
import 'package:flutter_global_navigator/flutter_global_navigator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: GlobalNavigator.navigatorKey,
      routes: {
        '/': (context) => MyHomePage()
      },
    );
  }
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sss'),
      ),
      body: Center(
        child: Text('xxx'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    GlobalNavigator.dialog(
      barrierColor: null,
      builder: (context) => new Theme(
        data: Theme.of(context).copyWith(
          dialogBackgroundColor: Colors.transparent,
        ),
        child: new AlertDialog(
          titlePadding: EdgeInsets.all(0.0),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 80.0
          ),
          shape: null,
          elevation: 0.0,
          content: new Container(
            padding: EdgeInsets.all(17.5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3.5),
                color: Color.fromRGBO(37, 37, 37, 0.62),
                boxShadow: [BoxShadow(
                    offset: Offset(0.0, 1.0),
                    color: Color.fromRGBO(0, 0, 0, 0.45),
                    blurRadius: 4.0
                )]
            ),
            child: Text(
              '我是提示Tip',
              style: TextStyle(
                  fontSize: 10.0,
                  color: Colors.white
              ),
              textAlign: TextAlign.center,
            ),
          ),
        )
      )
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title ?? '..'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
