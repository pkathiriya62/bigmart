import 'package:bigmart/utils/common/appcolor.dart';
import 'package:bigmart/utils/common/appimage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetoptions = <Widget>[
    Text('data'),
    Text('data1'),
    Text('data2'),
    Text('data3'),
    Text('data4'),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetoptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                Appimage.homelogo,
                height: 25,
                color:
                    _selectedIndex == 0 ? Appcolor.primerycolor : Colors.black,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Image.asset(
                Appimage.shoplogo,
                height: 25,
                color:
                    _selectedIndex == 1 ? Appcolor.primerycolor : Colors.black,
              ),
              label: "Shop"),
          BottomNavigationBarItem(
              icon: Image.asset(
                Appimage.storelogo,
                height: 25,
                color:
                    _selectedIndex == 2 ? Appcolor.primerycolor : Colors.black,
              ),
              label: "Stores"),
          BottomNavigationBarItem(
              icon: Image.asset(
                Appimage.cartlogo,
                height: 25,
                color:
                    _selectedIndex == 3 ? Appcolor.primerycolor : Colors.black,
              ),
              label: "Cart"),
          BottomNavigationBarItem(
              icon: Image.asset(
                Appimage.profilelogo,
                height: 25,
                color:
                    _selectedIndex == 4 ? Appcolor.primerycolor : Colors.black,
              ),
              label: "Profile"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Appcolor.primerycolor,
        unselectedItemColor: Appcolor.Greycolor,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}
