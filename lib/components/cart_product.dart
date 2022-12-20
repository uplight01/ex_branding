import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cartProducts extends StatefulWidget {

  const cartProducts({Key? key}) : super(key: key);

  @override
  _cartProductsState createState() => _cartProductsState();
}

class _cartProductsState extends State<cartProducts> {
  var productsOnCart = [
    {
      "name": "Shirt & Short",
      "picture": "images/product/Kargo.jpeg",
      "size": "L",
      "quantity": 8,
      "quality": "Higher",
      "color": "Yellow",
      "currentPrice": "8k",
    },
    {
      "name": "Mug Plates",
      "picture": "images/product/melamine.png",
      "size": "M",
      "quantity": 15,
      "quality": "Higher",
      "color": "Red",
      "currentPrice": "10k",
    },
    {
      "name": "Net Cap",
      "picture": "images/product/Mother.jpeg",
      "size": "L",
      "quantity": 8,
      "quality": "Higher",
      "color": "Green",
      "currentPrice": "8k",
    },
    {
      "name": "Shirt & Short",
      "picture": "images/product/shirt short.jpeg",
      "size": "S",
      "quantity": 4,
      "quality": "Lower",
      "color": "Black",
      "currentPrice": "8k",
    },
    {
      "name": "Throw Pillow",
      "picture": "images/product/Throw Pillow 2.jpeg",
      "size": "S",
      "quantity": 7,
      "quality": "Medium",
      "color": "Black",
      "currentPrice": "6k",
    },
    {
      "name": "Tote Bag",
      "picture": "images/product/tote bag.jpeg",
      "size": "L",
      "quantity": 7,
      "quality": "Lower",
      "color": "Orange",
      "currentPrice": "4k",
    },
    {
      "name": "Wall Canvas",
      "picture": "images/product/Large Wall Art.jpeg",
      "size": "7:7",
      "quantity": 4,
      "quality": "Lower",
      "color": "grey",
      "currentPrice": "15k",
    },
    {
      "name": "Mug Cup",
      "picture": "images/product/Honeycomb Mugs.png",
      "size": "M",
      "quantity": 15,
      "quality": "Higher",
      "color": "White",
      "currentPrice": "3.5k",
    },
    {
      "name": "Big Daddy",
      "picture": "images/product/green guy.jpeg",
      "size": "S",
      "quantity": 4,
      "quality": "Lower",
      "color": "Green",
      "currentPrice": "8k",
    },
    {
      "name": "Blue Net Cap",
      "picture": "images/product/Copy and Paste.jpeg",
      "size": "S",
      "quantity": 4,
      "quality": "Medium",
      "color": "Red",
      "currentPrice": "4.5k",
    },
    {
      "name": "Mug Cup",
      "picture": "images/product/LOVE Scottie.png",
      "size": "S",
      "quantity": 4,
      "quality": "Lower",
      "color": "Black",
      "currentPrice": "3.5k",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: productsOnCart.length,
        itemBuilder: (context, index) {
          return singleCartProd(
            cartProdName: productsOnCart[index]['name'],
            cartProdPicture: productsOnCart[index]['picture'],
            cartProdSize: productsOnCart[index]['size'],
            cartProdQauntity: productsOnCart[index]['quantity'],
            cartProdQuality: productsOnCart[index]['quality'],
            cartProdColor: productsOnCart[index]['color'],
            cartProdPrice: productsOnCart[index]['currentPrice'],
          );
        });
  }
}

class singleCartProd extends StatelessWidget {
  final cartProdName;
  final cartProdPicture;
  final cartProdSize;
  final cartProdQauntity;
  final cartProdQuality;
  final cartProdColor;
  final cartProdPrice;

  const singleCartProd({
    required this.cartProdName,
    required this.cartProdPicture,
    required this.cartProdSize,
    required this.cartProdQauntity,
    required this.cartProdQuality,
    required this.cartProdColor,
    required this.cartProdPrice,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: new ListTile(
        leading: Image.asset(cartProdPicture, width: 80.0, height: 80.0,),
        title: Text(cartProdName),
        //testing about row and column
        subtitle: new Column(
          children: <Widget>[
            //==================ROW INSIDE COLUMN======================
            new Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text("Size:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(
                      cartProdSize, style: TextStyle(color: Colors.deepOrange)),
                ),

                new Padding(padding: EdgeInsets.fromLTRB(18.0, 8.0, 8.0, 8.0)),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text("Color:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(cartProdColor,
                      style: TextStyle(color: Colors.deepOrange)),
                )
              ],
            ),
            new Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text("Qly:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(cartProdQuality,
                      style: TextStyle(color: Colors.deepOrange)),
                ),

                new Padding(padding: EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0)),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text("Qty:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text("${cartProdQauntity}",
                      style: TextStyle(color: Colors.deepOrange)),
                ),
              ],
            ),
            new Container(
                alignment: Alignment.topLeft,
                child: new Text("\#${cartProdPrice}", style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold),)
            )
          ],
        ),
        // trailing: new Column(
        //   children: <Widget>[
        //     new IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_up)),
        //     new Text("${cartProdQauntity}"),
        //     new IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down))
        //   ],
        // ),
      ),
    );
  }
}

