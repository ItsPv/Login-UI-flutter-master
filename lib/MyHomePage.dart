import 'package:flutter/material.dart';
import 'package:loginuicolors/subPage.dart';
import 'search.dart';
import 'ForgotPassword.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  BoxDecoration getBoxDecoration() {
    return BoxDecoration(
      color: Colors.grey,
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(1),
          spreadRadius: 1,
          blurRadius: 2,
          offset: Offset(0, 1), // changes position of shadow
        ),
      ],
    );
  }

  Expanded getExpanded(String imageName, String mainText, String subText) {
    return Expanded(
      child: FlatButton(
        padding: EdgeInsets.all(0),
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    'images/main/$imageName.png',
                    height: 80.0,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  mainText,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  subText,
                  style: TextStyle(
//                              fontWeight: FontWeight.,
                    fontSize: 10.0,
                  ),
                ),
              ],
            ),
          ),
          margin:
          EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0, bottom: 10.0),
          decoration: getBoxDecoration(),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SubPage()));
        },
      ),
    );
  }

  BottomNavigationBarItem getBottomNavigationItem(String title,
      IconData IconName) {
    return BottomNavigationBarItem(
      icon: Icon(
        IconName,
        size: 35.0,
      ),
      title: Text(
        '$title',
        style: TextStyle(
          fontSize: 10.0,
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Rk Mart",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),

      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        height: MediaQuery
            .of(context)
            .size
            .height,
        color: Colors.grey.shade300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  getExpanded('beer', 'Bars & Hotels', '42 Place'),
                  getExpanded('cuisine', 'Fine Dining', '15 Place'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  getExpanded('cafe', 'Cafes', '28 Place'),
                  getExpanded('tracking', 'Nearby', '34 Place'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  getExpanded('dining', 'Fast Food', '29 Place'),
                  getExpanded('fast-food', 'Featured Foods', '21 Place'),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(

        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border_outlined),
              title: Text('Bookmark'),
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.star_border_outlined),
              title: Text('Top Foodies'),
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
              backgroundColor: Colors.black),
        ],


        selectedItemColor: Colors.amber[800],


      ),
    );
  }
}
