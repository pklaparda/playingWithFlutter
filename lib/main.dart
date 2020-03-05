import 'package:flutter/material.dart';
import 'package:gp_gifts/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GP - Gifts',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Let\'s go!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  // static const Color defaultBg = Color.fromRGBO(48, 79, 71, 1);
  // static const Color defaultBg = Colors.blueGrey;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text(
      '1..',
      style: optionStyle,
    ),
    Text(
      '2..',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        // backgroundColor: defaultBg,
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: SizedBox()),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline), title: SizedBox()),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), title: SizedBox())
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Theme.of(context).backgroundColor,
        // fixedColor: Colors.white,
        // unselectedItemColor: Colors.grey,
      ),
    );
  }
}
