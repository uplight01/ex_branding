import 'package:ex_branding/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class productDetails extends StatefulWidget {
  final detailsProdName;
  final detailsProdPicture;
  final detailsProdOldPrice;
  final detailsProdCurrentPrice;

  const productDetails(
      {required this.detailsProdName,
      required this.detailsProdPicture,
      required this.detailsProdOldPrice,
      required this.detailsProdCurrentPrice,
      Key? key})
      : super(key: key);

  @override
  _productDetailsState createState() => _productDetailsState();
}

class _productDetailsState extends State<productDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => new homePage()));
            },
            child: const Text('Excellent Branding')),
        actions: <Widget>[
          new IconButton(
              onPressed: () {}, icon: Icon(Icons.search, color: Colors.white)),
          new IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart, color: Colors.white))
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.00,
            child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.detailsProdPicture),
                ),
                footer: new Container(
                  color: Colors.white,
                  child: ListTile(
                    leading: new Text(
                      widget.detailsProdName,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    title: new Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text(
                            "\#${widget.detailsProdOldPrice}",
                            style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough),
                          ),
                        ),
                        Expanded(
                          child: new Text(
                            "\#${widget.detailsProdCurrentPrice}",
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: Text("Size"),
                          content: Text("Choose Size"),
                          actions: <Widget>[
                            new MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: new Text("close"),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(child: new Text("Size")),
                    Expanded(child: new Icon(Icons.arrow_drop_down))
                  ],
                ),
              )),
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: Text("Color"),
                          content: Text("Choose color"),
                          actions: <Widget>[
                            new MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: new Text("close"),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(child: new Text("Color")),
                    Expanded(child: new Icon(Icons.arrow_drop_down))
                  ],
                ),
              )),
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: Text("Quantity"),
                          content: Text("Choose quantity"),
                          actions: <Widget>[
                            new MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: new Text("close"),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(child: new Text("Qty")),
                    Expanded(child: new Icon(Icons.arrow_drop_down))
                  ],
                ),
              )),
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: Text("Quality"),
                          content: Text("Choose quality"),
                          actions: <Widget>[
                            new MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: new Text("close"),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(child: new Text("Qly")),
                    Expanded(child: new Icon(Icons.arrow_drop_down))
                  ],
                ),
              ))
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                onPressed: () {},
                color: Colors.deepOrange,
                textColor: Colors.white,
                elevation: 0.2,
                child: new Text("Order Now"),
              )),
              new IconButton(
                  onPressed: () {},
                  icon:
                      Icon(Icons.add_shopping_cart, color: Colors.deepOrange)),
              new IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.deepOrange,
                  ))
            ],
          ),
          new ListTile(
            title: new Text(
              "Product Details",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: new Text(
                "Lorem is simply dummy text of the printing and typesetting industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of a type and scrambled it to make a typr specimen book."),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product Name,",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text(widget.detailsProdName),
              )
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product Brand,",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text("Uplight Global Enterprises"),
              )
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product Condition,",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text("Latest"),
              )
            ],
          )
        ],
      ),
    );
  }
}
