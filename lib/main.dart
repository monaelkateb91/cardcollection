import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
      title: Text(
      "SHRINE",
      style: TextStyle(fontSize: 30),
    ),
    leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.search),
      ),
      IconButton(onPressed: () {}, icon: Icon(Icons.filter_1_outlined))
    ],
    ),  body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(20),
        childAspectRatio: 8 / 9,
          children:buildGridCards(10)


      )),
    ));
  }
}
List<Card> buildGridCards(int count) {
  List<Card> cards = List.generate(
    count,
        (int index) {
      return Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 18.0 / 11.0,
              child: Image.asset('images/diamond.png'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text('Title'),
                  SizedBox(height: 8.0),
                  Text('Secondary Text'),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );return cards;}
