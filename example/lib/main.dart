import 'package:flutter/material.dart';
import 'package:fancy_listview/fancy_listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fibonacci',
      theme: ThemeData.dark(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController con = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Fancy Listview'),
        backgroundColor: Colors.grey[900],
      ),
      backgroundColor: _getColorFromHex("#8E150D"),
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(height: 30),
            FancyListview(
                listviewHeight: 400,
                listItemPadding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                listItemBackgroundColor: Colors.black,
                listItemShape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                widgets: <ListTile>[
                  ListTile(
                    onTap: () {},
                    leading: Image.asset('images/man.png', height: 35),
                    title: Text(
                      "List Item number 1",
                      style: TextStyle(
                          fontFamily: "Poppins-Regular",
                          color: _getColorFromHex("#9E8F64"),
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    subtitle: Text(
                      "Description 1",
                      style: TextStyle(
                          fontFamily: "Poppins-Regular",
                          color: _getColorFromHex("#9E8F64"),
                          //fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete,
                            color: _getColorFromHex("#9E8F64"), size: 25)),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Image.asset('images/man.png', height: 35),
                    title: Text(
                      "List Item number 2",
                      style: TextStyle(
                          fontFamily: "Poppins-Regular",
                          color: _getColorFromHex("#9E8F64"),
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    subtitle: Text(
                      "Description 2",
                      style: TextStyle(
                          fontFamily: "Poppins-Regular",
                          color: _getColorFromHex("#9E8F64"),
                          //fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete,
                            color: _getColorFromHex("#9E8F64"), size: 25)),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Image.asset('images/woman.png', height: 35),
                    title: Text(
                      "List Item number 3",
                      style: TextStyle(
                          fontFamily: "Poppins-Regular",
                          color: _getColorFromHex("#9E8F64"),
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    subtitle: Text(
                      "Description 3",
                      style: TextStyle(
                          fontFamily: "Poppins-Regular",
                          color: _getColorFromHex("#9E8F64"),
                          //fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete,
                            color: _getColorFromHex("#9E8F64"), size: 25)),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Image.asset('images/woman.png', height: 35),
                    title: Text(
                      "List Item number 4",
                      style: TextStyle(
                          fontFamily: "Poppins-Regular",
                          color: _getColorFromHex("#9E8F64"),
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    subtitle: Text(
                      "Description 4",
                      style: TextStyle(
                          fontFamily: "Poppins-Regular",
                          color: _getColorFromHex("#9E8F64"),
                          //fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete,
                            color: _getColorFromHex("#9E8F64"), size: 25)),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Image.asset('images/woman.png', height: 35),
                    title: Text(
                      "List Item number 5",
                      style: TextStyle(
                          fontFamily: "Poppins-Regular",
                          color: _getColorFromHex("#9E8F64"),
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    subtitle: Text(
                      "Description 5",
                      style: TextStyle(
                          fontFamily: "Poppins-Regular",
                          color: _getColorFromHex("#9E8F64"),
                          //fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete,
                            color: _getColorFromHex("#9E8F64"), size: 25)),
                  ),
                ]),
            Container(height: 30),
            const Center(
                child: SelectableText(
                    "Package created By: Gauthiii's Applications",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black))),
            Container(height: 30),
          ],
        ),
      ),
    );
  }
}

_getColorFromHex(String hexColor) {
  hexColor = hexColor.replaceAll("#", "");
  if (hexColor.length == 6) {
    hexColor = "FF$hexColor";

    return Color(int.parse("0x$hexColor"));
  }

  if (hexColor.length == 8) {
    return Color(int.parse("0x$hexColor"));
  }
}
