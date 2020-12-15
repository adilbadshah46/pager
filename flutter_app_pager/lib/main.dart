import 'package:flutter/material.dart';
import 'package:flutter_app_pager/model/slide.dart';
import 'package:flutter_app_pager/utilities/media_related.dart';
import 'package:flutter_app_pager/widget/slideitem.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonLabel = 'Next';

  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    mediaSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    onPageChanged: (currentIndex) {
                      if (currentIndex < 2) {
                        setState(() {
                          buttonLabel = 'Next';
                        });
                      } else {
                        setState(() {
                          buttonLabel = 'Finish';
                        });
                      }
                    },
                    //physics: NeverScrollableScrollPhysics(),
                    controller: _pageController,
                    scrollDirection: Axis.horizontal,
                    itemCount: slidelist.length,
                    itemBuilder: (context, i) => SlideItem(i),
                  ),
                ),
                SmoothPageIndicator(
                  controller: _pageController,
                  count: slidelist.length,
                  effect: JumpingDotEffect(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      FlatButton(
                        child:
                            Text(buttonLabel, style: TextStyle(fontSize: 18)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: EdgeInsets.all(15),
                        color: Theme.of(context).primaryColor,
                        onPressed: () {
                          // if(slider==4){routing to next page}
                          _pageController.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.ease);
                          // if (_pageController.page == (slidelist.length - 2)) {
                          //   setState(() {
                          //     buttonLabel = 'Finish';
                          //   });
                          // }
                        },
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
