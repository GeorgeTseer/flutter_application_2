import 'package:flutter/material.dart';
import 'package:flutter_application_2/main.dart';
import 'package:flutter_application_2/src/home/soundboard.dart';

import '../settings/settings_view.dart';

class GridViewPage extends StatelessWidget {
  static const routeName = '/grid';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.menu_book),
            onPressed: () {
              reklama();
            },
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.volume_up_outlined),
            onPressed: () {
              Navigator.restorablePushNamed(context, Soundboard.routeName);
            },
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              reklama();
              Navigator.restorablePushNamed(context, SettingsView.routeName);
            },
          ),
        ],
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: <Widget>[
          GestureDetector(
            onTap: () {
              reklama();
              Navigator.restorablePushNamed(context, '/article1');
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    image: const DecorationImage(
                      image: AssetImage(
                          'assets/images/Portrait_conceptualization_rank1.webp'),
                    )),
                child: Center(
                  child: Text(
                    'Category Name',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              reklama();
              Navigator.restorablePushNamed(context, '/article2');
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    image: const DecorationImage(
                        image: AssetImage(
                            'assets/images/Portrait_authority.webp'))),
                child: Center(
                  child: Text(
                    'Category Name',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              reklama();
              Navigator.restorablePushNamed(context, '/article3');
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    image: const DecorationImage(
                        image: AssetImage(
                            'assets/images/Portrait_conceptualization_rank1.webp'))),
                child: Center(
                  child: Text(
                    'Category Name',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              reklama();
              Navigator.restorablePushNamed(context, '/article4');
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    image: const DecorationImage(
                        image: AssetImage(
                            'assets/images/Portrait_authority.webp'))),
                child: Center(
                  child: Text(
                    'Category Name',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              reklama();
              Navigator.restorablePushNamed(context, '/article5');
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    image: const DecorationImage(
                        image: AssetImage(
                            'assets/images/Portrait_conceptualization_rank1.webp'))),
                child: Center(
                  child: Text(
                    'Category Name',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
