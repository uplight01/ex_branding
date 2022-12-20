import 'package:flutter/material.dart';

// My Imports
import 'package:ex_branding/components/cart_product.dart';

class shoppingCart extends StatefulWidget {
  const shoppingCart({Key? key}) : super(key: key);

  @override
  _shoppingCartState createState() => _shoppingCartState();
}

class _shoppingCartState extends State<shoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text('Shopping Cart'),
        actions: <Widget>[
          new IconButton(
              onPressed: () {}, icon: Icon(Icons.search, color: Colors.white)),
        ],
      ),
      body: new cartProducts(),
      bottomNavigationBar: new Container(
          color: Colors.white,
          child: new Row(
            children: <Widget>[
              Expanded(
                  child: ListTile(
                title: Text(
                  "Total",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("\#17k"),
              )),
              Expanded(
                  child: MaterialButton(
                onPressed: () {},
                color: Colors.deepOrange,
                child: Text(
                  "check out",
                  style: TextStyle(color: Colors.white),
                ),
              ))
            ],
          )),
    );
  }
}
