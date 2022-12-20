import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ex_branding/pages/product_details.dart';

class gridView extends StatefulWidget {
  const gridView({Key? key}) : super(key: key);

  @override
  _gridViewState createState() => _gridViewState();
}

class _gridViewState extends State<gridView> {
  var productList = [
    {
      "name": "Shirt & Short",
      "picture": "images/product/Kargo.jpeg",
      "oldPrice": "7k",
      "currentPrice": "8k",
    },
    {
      "name": "Mug Plates",
      "picture": "images/product/melamine.png",
      "oldPrice": "9k",
      "currentPrice": "10k",
    },
    {
      "name": "Net Cap",
      "picture": "images/product/Mother.jpeg",
      "oldPrice": "7k",
      "currentPrice": "8k",
    },
    {
      "name": "Shirt & Short",
      "picture": "images/product/shirt short.jpeg",
      "oldPrice": "7k",
      "currentPrice": "8k",
    },
    {
      "name": "Throw Pillow",
      "picture": "images/product/Throw Pillow 2.jpeg",
      "oldPrice": "5.5k",
      "currentPrice": "6k",
    },
    {
      "name": "Tote Bag",
      "picture": "images/product/tote bag.jpeg",
      "oldPrice": "3.5k",
      "currentPrice": "4k",
    },
    {
      "name": "Wall Canvas",
      "picture": "images/product/Large Wall Art.jpeg",
      "oldPrice": "13k",
      "currentPrice": "15k",
    },
    {
      "name": "Mug Cup",
      "picture": "images/product/Honeycomb Mugs.png",
      "oldPrice": "3k",
      "currentPrice": "3.5k",
    },
    {
      "name": "Big Daddy",
      "picture": "images/product/green guy.jpeg",
      "oldPrice": "7k",
      "currentPrice": "8k",
    },
    {
      "name": "Blue Net Cap",
      "picture": "images/product/Copy and Paste.jpeg",
      "oldPrice": "4k",
      "currentPrice": "4.5k",
    },
    {
      "name": "Mug Cup",
      "picture": "images/product/LOVE Scottie.png",
      "oldPrice": "3k",
      "currentPrice": "3.5k",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return singleProd(
            prodName: productList[index]['name'],
            prodPicture: productList[index]['picture'],
            prodOldPrice: productList[index]['oldPrice'],
            prodCurrentPrice: productList[index]['currentPrice'],
          );
        });
  }
}

class singleProd extends StatelessWidget {
  final prodName;
  final prodPicture;
  final prodOldPrice;
  final prodCurrentPrice;

  const singleProd({
    required this.prodName,
    required this.prodPicture,
    required this.prodOldPrice,
    required this.prodCurrentPrice,
    Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prodName,
          child: Material(
            child: InkWell(
              onTap: () =>
                  Navigator.of(context).push(new MaterialPageRoute(
                    //Passing the product value to the product details page
                      builder: (context) =>
                      new productDetails(
                        detailsProdName: prodName,
                        detailsProdPicture: prodPicture,
                        detailsProdOldPrice: prodOldPrice,
                        detailsProdCurrentPrice: prodCurrentPrice,
                      ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        prodName,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        "\#$prodCurrentPrice",
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.w800),
                      ),
                      subtitle: Text(
                        "\#$prodOldPrice",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w800,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ),
                  ),
                  child: Image.asset(prodPicture, fit: BoxFit.cover)),
            ),
          )),
    );
  }
}
