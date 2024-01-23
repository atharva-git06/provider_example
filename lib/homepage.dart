import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/models/username_provider.dart';
import 'package:provider_example/namepage.dart';

import 'change_name.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  int _selectedIndex = 0;
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }

  final List<Widget> _pages =[
    NamePage(),
    ChangeName(),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex)
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [

          BottomNavigationBarItem(

            icon: Icon(Icons.person_off),
            label: 'Random',
          ),
          BottomNavigationBarItem(

            icon: Icon(Icons.settings),
            label: 'Change Username',
          ),
        ],

        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
