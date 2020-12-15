import 'package:flutter/material.dart';
import 'package:flutter_app_pager/model/slide.dart';
import 'package:flutter_app_pager/utilities/media_related.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: mediaSize.width,
        height: mediaSize.height,
        //color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(slidelist[index].imageUrl),
                      fit: BoxFit.fill)),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              slidelist[index].title,
              style: TextStyle(
                  fontSize: 22, color: Theme.of(context).primaryColor),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              slidelist[index].description,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
