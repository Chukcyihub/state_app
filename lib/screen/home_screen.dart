import 'package:flutter/material.dart';
import 'package:state_app/widget/favorite_widget.dart';
import 'package:state_app/widget/home_widget.dart';
import 'package:state_app/widget/profile_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _appBarOption = [
    Text("Home"),
    Text("Favorite"),
    Text("Profile"),
  ];
  static const List _widgetOption = <Widget>[
    HomeWidget(),
    FavoriteWidget(),
    ProfileWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _appBarOption[_selectedIndex],
      ),
      body: _widgetOption.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        currentIndex: _selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_rounded), label: "favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],
      ),
    );
  }
}
