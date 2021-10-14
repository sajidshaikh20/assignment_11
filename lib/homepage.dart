import 'package:assignment_11/screens/fabmenu.dart';
import 'package:assignment_11/screens/groupbotton.dart';
import 'package:assignment_11/screens/tabbar.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        title: Text(
          'Assignment  1',
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
      ),

      // drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    child: Text(
                      'Tab bar',
                      style: TextStyle(fontSize: 12),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Tabbar(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.green,
                      shape: const BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                    ),
                  ),
                  TextButton(
                    child: Text(
                      'Group button',
                      style: TextStyle(fontSize: 12),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Groupbotton(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.green,
                      shape: const BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                    ),
                  ),
                  TextButton(
                    child: Text(
                      'Fab Menu',
                      style: TextStyle(fontSize: 12),
                    ),
                    onPressed: () {
                      // print('Pressed');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Myfabmenu(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.green,
                      shape: const BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              TextButton(
                child: Text(
                  'Radio button',
                  style: TextStyle(fontSize: 13),
                ),
                onPressed: () {
                  // print('Pressed');
                },
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.green,
                  shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextButton(
                child: Text(
                  'Menu button',
                  style: TextStyle(fontSize: 13),
                ),
                onPressed: () {
                  // print('Pressed');
                },
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.green,
                  shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextButton(
                child: Text(
                  'Reaction button',
                  style: TextStyle(fontSize: 13),
                ),
                onPressed: () {
                  // print('Pressed');
                },
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.green,
                  shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
              ),
              SizedBox(
                height: 140,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
