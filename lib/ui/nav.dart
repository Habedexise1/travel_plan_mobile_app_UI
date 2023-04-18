import 'package:flutter/material.dart';

class FloatingNavBar extends StatefulWidget {
  @override
  _FloatingNavBarState createState() => _FloatingNavBarState();
}

class _FloatingNavBarState extends State<FloatingNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            color: _selectedIndex == 0 ? Colors.black : Colors.grey,
            onPressed: () => _onItemTapped(0),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: _selectedIndex == 1 ? Colors.black : Colors.transparent,
              borderRadius: BorderRadius.circular(25),
            ),
            child: IconButton(
              icon: Icon(Icons.search),
              color: _selectedIndex == 1 ? Colors.white : Colors.grey,
              onPressed: () => _onItemTapped(1),
            ),
          ),
        ],
      ),
    );
  }
}
