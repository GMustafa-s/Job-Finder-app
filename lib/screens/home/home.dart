import 'package:flutter/material.dart';
import 'package:job_finder_app/screens/home/Widgets/JobList.dart';
import 'package:job_finder_app/screens/home/Widgets/SearchCard.dart';
import 'package:job_finder_app/screens/home/Widgets/taglist.dart';

import 'Widgets/HomeAppBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.grey.withOpacity(0.1),
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // HomeAppBar(),
              SearchCard(),
              Taglist(),
              JobList(),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Icon(
          Icons.abc_outlined,
          color: Colors.white,
          size: 10,
        ),
        child: Icon(Icons.add),
        foregroundColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Theme.of(context).primaryColor,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home_outlined,
              size: 20,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Jobs',
            icon: Icon(
              Icons.cases_outlined,
              size: 20,
            ),
          ),
          BottomNavigationBarItem(
            label: 'fab',
            icon: Text(''),
          ),
          BottomNavigationBarItem(
            label: 'chat',
            icon: Icon(
              Icons.chat_outlined,
              size: 20,
            ),
          ),
          BottomNavigationBarItem(
            label: 'User',
            icon: Icon(
              Icons.person_outlined,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
