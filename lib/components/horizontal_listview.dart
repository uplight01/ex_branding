import 'package:flutter/material.dart';

class horizontalListview extends StatelessWidget {
  const horizontalListview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Category(
              imageLocation: 'images/icon/shirt icon.png',
              imageCaption: 'Shirt',
            ),
            Category(
              imageLocation: 'images/icon/cap icon.png',
              imageCaption: 'Cap',
            ),
            Category(
              imageLocation: 'images/icon/cup icon.png',
              imageCaption: 'Cup',
            ),
            Category(
              imageLocation: 'images/icon/frame icon.png',
              imageCaption: 'Frame',
            ),
            Category(
              imageLocation: 'images/icon/pillow icon.png',
              imageCaption: 'Throw pillow',
            ),
            Category(
              imageLocation: 'images/icon/shirt icon.png',
              imageCaption: 'Shirt',
            ),
            Category(
              imageLocation: 'images/icon/cap icon.png',
              imageCaption: 'Cap',
            ),
            Category(
              imageLocation: 'images/icon/cup icon.png',
              imageCaption: 'Cup',
            ),
            Category(
              imageLocation: 'images/icon/frame icon.png',
              imageCaption: 'Frame',
            ),
            Category(
              imageLocation: 'images/icon/pillow icon.png',
              imageCaption: 'Throw pillow',
            ),
          ],
        )
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  const Category(
      {required this.imageLocation, required this.imageCaption, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(onTap: () {},
        child: Container(
          width: 80.0,
          child: ListTile(
              title: Image.asset(imageLocation, width: 100.0, height: 50.0,),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(imageCaption),
              )
          ),
        ),
      ),
    );
  }
}

