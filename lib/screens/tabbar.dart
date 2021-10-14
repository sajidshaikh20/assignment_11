import 'package:flutter/material.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({Key? key}) : super(key: key);

  @override
  _TabbarState createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            elevation: 0,
            title: Text(
              'My tab Bar',
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            bottom: TabBar(
                unselectedLabelColor: Colors.white,
                // indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.black,
                indicatorWeight: 3,
                labelColor: Colors.black,
                tabs: [
                  Tab(
                    child: Container(
                      child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              Icon(
                                Icons.car_repair,
                                size: 25,
                              ),
                              Text(
                                'car',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          )),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              Icon(
                                Icons.train,
                                size: 21,
                              ),
                              Text(
                                'Train',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          )),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              Icon(
                                Icons.directions_bike,
                                size: 24,
                              ),
                              Text(
                                'Car',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          )),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              Icon(
                                Icons.airplanemode_on_rounded,
                                size: 20,
                              ),
                              Text(
                                'Tour',
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          )),
                    ),
                  ),
                ]),
          ),
          body: TabBarView(children: [
            Icon(
              Icons.car_repair,
              size: 60,
              color: Colors.black,
            ),
            Icon(
              Icons.tour_rounded,
              size: 60,
              color: Colors.black,
            ),
            Icon(
              Icons.directions_bike,
              size: 60,
              color: Colors.black,
            ),
            Icon(
              Icons.tour,
              size: 60,
              color: Colors.black,
            )
          ]),
        ));
  }
}
