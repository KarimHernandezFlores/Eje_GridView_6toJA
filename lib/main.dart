import 'package:flutter/material.dart';

void main() {
  runApp(KFCApp());
} //Funcion principal

class KFCApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Aprendiendo GridView',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: Pagi());
  } //
} //Widget sin estado

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
} //widget con estado

class _MyHomePageState extends State<MyHomePage> {
  List<String> images = [
    "assets/images/menu1.jpg",
    "assets/images/sucursal1.jpg",
    "assets/images/men2.jpg",
    "assets/images/promo1.jpg",
    "assets/images/logo.jpg",
    "assets/images/promo2.jpg",
    "assets/images/menu1.jpg",
    "assets/images/sucursal1.jpg",
    "assets/images/men2.jpg",
    "assets/images/promo1.jpg",
    "assets/images/logo.jpg",
    "assets/images/promo2.jpg",
    "assets/images/menu1.jpg",
    "assets/images/sucursal1.jpg",
    "assets/images/men2.jpg",
    "assets/images/promo1.jpg",
    "assets/images/logo.jpg",
    "assets/images/promo2.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter GridView"),
        ),
        body: GridView.builder(
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(images[index], fit: BoxFit.cover);
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}
