// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:taskapp/screens/home/widgets/go_premium.dart';

import 'widgets/tasks.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        GoPremium(),
        Container(
          padding: EdgeInsets.all(15),
          child: Text(
            'Tasks',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(child: Tasks())
      ]),
      bottomNavigationBar: _buildBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 0,
        backgroundColor: Colors.black,
        onPressed: () {},
        child: Icon(Icons.add, size: 35),
      ),
    );
  }

  AppBar _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        children: [
          Container(
            height: 45,
            width: 45,
            margin: const EdgeInsets.only(left: 15),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                    'https://scontent.fhan15-2.fna.fbcdn.net/v/t1.6435-1/81235106_1244370689096258_2216400929454817280_n.jpg?stp=dst-jpg_p200x200&_nc_cat=107&ccb=1-5&_nc_sid=7206a8&_nc_ohc=jtMgz-vL5k0AX-Kza6r&tn=3wNU3mGP-kh3F5y4&_nc_ht=scontent.fhan15-2.fna&oh=00_AT9G7uyGqYVRQadtFlSKNrxbZ9SmaEFIcHMGclFUq7aPdQ&oe=62518068')),
          ),
          const SizedBox(width: 10),
          const Text(
            'Hi, Hạnh ❤',
            style: TextStyle(
                color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold),
          )
        ],
      ),
      actions: const [
        Icon(
          Icons.more_vert,
          color: Colors.black,
          size: 35,
        )
      ],
    );
  }
}

Widget _buildBottomNavigationBar() {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        boxShadow: const [
          BoxShadow(
              blurRadius: 10,
              color: Color.fromARGB(255, 226, 226, 226),
              spreadRadius: 5)
        ]),
    child: ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      child: BottomNavigationBar(
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueAccent,
          items: const [
            BottomNavigationBarItem(
                label: 'Home', icon: Icon(Icons.home_rounded, size: 30)),
            BottomNavigationBarItem(
                label: 'Person', icon: Icon(Icons.person_rounded, size: 30))
          ]),
    ),
  );
}
