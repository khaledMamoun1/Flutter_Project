import 'package:flutter/material.dart';
import 'Account.dart';
import 'Category.dart';
import '../screens/home_screen.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  var currentIndex = 0;
  List<Widget> screens = [HoomeScreen(), Category(), Account()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('First App'),
      ),
      drawer: const Drawer(
          child: Center(
        child: Text('Menu'),
      )),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const
        [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'My Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'My Category'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'My Account'),
        ],
      ),
    );
  }
}
