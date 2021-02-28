import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> _listitem = [
    'assets/Accessories.png',
    'assets/Appliances.png',
    'assets/Fashion.png',
    'assets/food.png',
    'assets/Furniture.png',
    'assets/Transport.png',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Builder(
          builder: (context) => Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0x10000000),
              elevation: 0,
              actions: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Container(
                      child: Center(
                        child: Text(
                          '🔥',
                          style: TextStyle(
                              color: Colors.black87,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.yellow[500],
                          borderRadius: BorderRadius.circular(500)),
                    ),
                  ),
                )
              ],
              leading: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.green[100],
            body: SafeArea(
                child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('assets/AlterEco.png'),
                            fit: BoxFit.cover)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("")],
                    ),
                  ),
                  Expanded(
                      child: GridView.count(
                    crossAxisCount: 2,
                    padding: EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: _listitem
                        .map(
                          (item) => GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Detail())),
                            child: Card(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(250),
                                    image: DecorationImage(
                                        image: AssetImage(item),
                                        fit: BoxFit.cover)),
                                child: Transform.translate(
                                  offset: Offset(0, 50),
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 55, vertical: 65),
                                    decoration: BoxDecoration(
                                        color: Colors.green[100],
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: Icon(
                                      Icons.arrow_right_alt_rounded,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ))
                ],
              ),
            )),
          ),
        ));
  }
}
