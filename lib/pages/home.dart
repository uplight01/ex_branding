import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//My imports
import 'package:ex_branding/components/horizontal_listview.dart';
import 'package:ex_branding/components/grid_view.dart';
import 'package:ex_branding/pages/shopping_cart.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
      height: 250.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/carousel/AgainTe Shorts Set.jpeg'),
          AssetImage('images/carousel/white guy.jpeg'),
          AssetImage('images/carousel/Throw Pillow.jpeg'),
          AssetImage('images/carousel/cap girl.jpeg'),
          AssetImage('images/carousel/Getting ready.png'),
          AssetImage('images/carousel/Magnetic frame.jpeg'),
          AssetImage('images/carousel/Handpainted Mugs.jpeg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotColor: Colors.deepOrange,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text('Excellent Branding'),
        actions: <Widget>[
          new IconButton(
              onPressed: () {}, icon: Icon(Icons.search, color: Colors.white)),
          new IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => shoppingCart()));
              },
              icon: Icon(Icons.shopping_cart, color: Colors.white))
        ],
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Ogunleye Sunday'),
              accountEmail: Text('ilesanmisunny@gmail.com'),
              currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('images/icon/my pic.jpg'),
              )),
              decoration: new BoxDecoration(color: Colors.deepOrange),
            ),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Home page'),
                  leading: Icon(Icons.home, color: Colors.deepOrange),
                )),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('My account'),
                  leading: Icon(Icons.person, color: Colors.deepOrange),
                )),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => shoppingCart()));
                },
                child: ListTile(
                  title: Text('My orders'),
                  leading:
                      Icon(Icons.shopping_basket, color: Colors.deepOrange),
                )),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Categories'),
                  leading: Icon(Icons.dashboard, color: Colors.deepOrange),
                )),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Favourites'),
                  leading: Icon(Icons.favorite, color: Colors.deepOrange),
                )),
            Divider(),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Settings'),
                  leading: Icon(Icons.settings, color: Colors.grey),
                )),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('About'),
                  leading: Icon(Icons.help, color: Colors.blueAccent),
                ))
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          //Carousel starts here
          imageCarousel,

          //Horizontal Listview starts here
          new Padding(
            padding: const EdgeInsets.all(20.0),
            child: new Text('Categories',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          horizontalListview(),

          //Listview starts here
          new Padding(
            padding: const EdgeInsets.all(20.0),
            child: new Text('Latest Branded Products',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Container(
            height: 320.0,
            child: gridView(),
          )
        ],
      ),
      // body: ListView(
      //   children: <Widget>[
      //     //image carousel begins here
      //     homeImageCarousel,
      //     new Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: new Text('Categories'),
      //     ),
      //
      //     //Horizontal listview starts from here
      //     horizontalListview(),
      //     new Padding(
      //       padding: const EdgeInsets.all(20.0),
      //       child: Text('Latest Products Made'),
      //     ),
      //
      //     //Gridview starts from here
      //     // Container(
      //     //   height: 320,
      //     //   child: Products(),
      //     // )
      //   ],
      // ),
    );
  }
}
