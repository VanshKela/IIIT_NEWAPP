import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MathsSubjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //=========NavBar=========//
                  Container(
                    // height: height*0.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back_rounded,
                            size: 32,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        Text(
                          'Mathematics',
                          style: TextStyle(
                            fontSize: 35.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      height: height * 0.47,
                      // width: width*0.8,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('images/mathsscreen.webp'),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "By:- someone",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Ubuntu',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            OverheadWidget(width: width),
          ],
        ),
      ),
    );
  }
}

class OverheadWidget extends StatelessWidget {
  const OverheadWidget({
    Key key,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: width*0.8,
      child: Center(
        child: Text(
          "Mathematics is the language in which god has written the universe",
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.lightBlue.shade300,
        border: Border.all(
          color: Colors.red[500],
        ),
        borderRadius: BorderRadius.all(Radius.circular(35)),
      ),
    );
  }
}
