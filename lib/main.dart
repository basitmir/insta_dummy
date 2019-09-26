import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> products = [
    'Food Products',
    'New Products',
    'desert',
    'Food Products',
    'New Products',
    'desert',
    'Food Products',
    'New Products',
    'desert'
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              padding: EdgeInsets.only(left: 20.00),
              icon: Icon(Icons.power_settings_new),
              onPressed: () => {}),
          iconTheme: IconTheme.of(context),
          title: Text(
            'Instagram',
            style: TextStyle(color: Colors.white, fontSize: 21.0),
          ),
          actions: <Widget>[
            // action button
            IconButton(
              padding: EdgeInsets.only(right: 5.00),
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
            IconButton(
              padding: EdgeInsets.only(right: 5.00),
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 00.0),
              height: 80.0,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: products
                      .map(
                        (element) => Container(
                          child: CircleAvatar(
                            radius: 40.0,
                            //  backgroundImage: NetworkImage('https://via.placeholder.com/150'),
                            backgroundImage: AssetImage('assets/food.jpg'),
                            backgroundColor: Colors.black12,
                            // child: Text(
                            //   'Test',
                            //   style: TextStyle(color: Colors.white, fontSize: 12.0),
                            // ),
                          ),
                        ),
                      )
                      .toList()),
            ),
            Container(
              // margin: EdgeInsets.symmetric(vertical: 00.0),
              // height: 80.0,
              child: Expanded(
                child: ListView(
                  children: products
                      .map(
                        (element) => Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                  color: Colors.white10,
                                  height: 50.0,
                                  padding: EdgeInsets.all(10.00),
                                  child: Row(
                                    children: <Widget>[
                                      CircleAvatar(
                                        radius: 20.0,
                                        //  backgroundImage: NetworkImage('https://via.placeholder.com/150'),
                                        backgroundImage:
                                            AssetImage('assets/food.jpg'),
                                        backgroundColor: Colors.black12,
                                        // child: Text(
                                        //   'Test',
                                        //   style: TextStyle(color: Colors.white, fontSize: 12.0),
                                        // ),
                                      ),
                                      Text(
                                        '   Dummy'.toUpperCase(),
                                        style: TextStyle(
                                            color: Colors.orange,
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Spacer(),
                                       IconButton(
                                    // padding: EdgeInsets.only(right: 2.00),
                                    icon: Icon(Icons.notifications),
                                    onPressed: () {},
                                  ),

                                    ],
                                  )),
                              Image.asset('assets/food.jpg'),
                              Text(element),
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    // padding: EdgeInsets.only(right: 2.00),
                                    icon: Icon(Icons.notifications),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    // padding: EdgeInsets.only(right: 2.00),
                                    icon: Icon(Icons.notifications),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    // padding: EdgeInsets.only(right: 2.00),
                                    icon: Icon(Icons.notifications),
                                    onPressed: () {},
                                  ),
                                  Spacer(),
                                  IconButton(
                                    // padding: EdgeInsets.only(left: 50.00),
                                    icon: Icon(Icons.notifications),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
