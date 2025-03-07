import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iiit_skeleton/Login_Page/Body.dart';
import 'package:iiit_skeleton/Login_Page/Second_Page.dart';
import 'package:iiit_skeleton/models/constants.dart';
import 'package:iiit_skeleton/screens/Faculty.dart';
import 'package:iiit_skeleton/screens/Socials.dart';
import 'package:iiit_skeleton/screens/attendance_page.dart';
import 'package:iiit_skeleton/screens/meet.dart';
import 'package:iiit_skeleton/screens/news.dart';
import 'package:iiit_skeleton/subjects/maths_screen.dart';
import 'package:iiit_skeleton/widgets/subjectIcon.dart';
import 'about_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:iiit_skeleton/widgets/slider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Color(0xFFF4F9F9),
        drawer: Drawer(
          child: Material(
            color: Colors.amber[500],
            child: ListView(
              children: [
                DrawerHeader(
                  padding: EdgeInsets.symmetric(vertical: 50),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/en/0/00/Indian_Institute_of_Information_Technology%2C_Sonepat_logo.png',
                          scale: 0.2),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ListTile(
                  tileColor: Colors.black87,
                  leading: Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                  title: Text(
                    'About',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AboutPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  tileColor: Colors.black87,
                  leading: Icon(
                    Icons.assignment_ind_rounded,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Attendance',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AttendancePage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  tileColor: Colors.black87,
                  leading: Icon(
                    Icons.work,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Faculty',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FacultyPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  tileColor: Colors.black87,
                  leading: Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Meeting',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Meeting(),
                      ),
                    );
                  },
                ),
                ListTile(
                  tileColor: Colors.black87,
                  leading: Icon(
                    Icons.article,
                    color: Colors.white,
                  ),
                  title: Text(
                    'News',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LatestNewsPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  tileColor: Colors.black87,
                  leading: Icon(
                    Icons.camera,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Socials',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SocialsPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  tileColor: Colors.black87,
                  leading: Icon(
                    Icons.star,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Rate Us',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AboutPage(),
                      ),
                    );
                  },
                ),
                Spacer(),
                ListTile(
                  tileColor: Colors.black87,
                  leading: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  title: Text(
                    'LogOut',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    showDialog(
                      // barrierColor: Colors.white,
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          // Retrieve the text the that user has entered by using the
                          // TextEditingController.
                          content: Text(
                            "Do you really want to log out?",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                            ),
                          ),

                          actions: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                FlatButton(
                                  onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => second(),
                                    ),
                                  ).then((value) {
                                    if (value != null) {
                                      final SnackBar snackbar = SnackBar(
                                        content: Text(
                                            "You have been successfully Logged Out"),
                                        backgroundColor:
                                            Colors.lightGreenAccent,
                                      );
                                      _scaffoldKey.currentState
                                          .showSnackBar(snackbar);
                                    }
                                  }),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Yes",
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  // style: ButtonStyle(
                                  //   elevation: MaterialStateProperty.all(0.0),
                                  //   textStyle: MaterialStateProperty.all(
                                  //     TextStyle(
                                  //       letterSpacing: 1.0,
                                  //       fontFamily: "MonoLisa",
                                  //     ),
                                  //   ),
                                  // ),
                                ),
                                SizedBox(
                                  width: 80.0,
                                ),
                                FlatButton(
                                  onPressed: () => Navigator.pop(context, 'No'),
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 50.0),
                                    child: Text(
                                      "No",
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  // style: ButtonStyle(
                                  //     elevation: MaterialStateProperty.all(0.0),
                                  //     textStyle:
                                  //         MaterialStateProperty.all(TextStyle(
                                  //       letterSpacing: 1.0,
                                  //       fontFamily: "MonoLisa",
                                  //     ))),
                                ),
                              ],
                            )
                          ],
                          backgroundColor: Colors.white,
                        );
                      },
                    );

                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => LoginPage(),
                    //   ),
                    // );
                  },
                ),
              ],
            ),
          ),
        ),
        body: Container(
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage("images/newback.jpg"),
          //     fit: BoxFit.cover,
          //     colorFilter: ColorFilter.mode(
          //         Colors.transparent.withOpacity(0.3), BlendMode.srcOver),
          //   ),
          // ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          _scaffoldKey.currentState.openDrawer();
                        }),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: SizeConfig.blockSizeVertical * 2.0,
                        ),
                        Text(
                          "Welcome,",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          "Aditya Chaudhary",
                          style: TextStyle(
                            textBaseline: TextBaseline.alphabetic,
                            fontSize: 25.0,
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage('images/1.png'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 4.0,
              ),
              Container(
                height: SizeConfig.blockSizeVertical * 28.0,
                child: Column(
                  children: [
                    SizedBox(
                      height: 2.0,
                    ),
                    CarouselSlider(
                      items: [
                        CarouselChild(
                          address: 'images/b.png',
                          onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LatestNewsPage(),
                              ),
                            );
                          },
                        ),
                        CarouselChild(
                          address: 'images/c.png',
                          onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AboutPage(),
                              ),
                            );
                          },
                        ),
                        CarouselChild(
                          address: 'images/d.jpg',
                          onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FacultyPage(),
                              ),
                            );
                          },
                        ),
                      ],
                      options: CarouselOptions(
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 2),
                        enlargeCenterPage: true,
                        height: SizeConfig.blockSizeVertical * 27.0,
                        aspectRatio: 16 / 9,
                        enableInfiniteScroll: true,
                        viewportFraction: 0.8,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 3.9,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'My Subjects',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeVertical * 3.0,
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 2.5,
              ),
              Container(
                height: SizeConfig.blockSizeVertical * 43.0,
                child: GridView.count(
                  primary: false,
                  childAspectRatio: width / (height / 2),
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  children: <Widget>[
                    Subject(
                      onPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MathsSubjectPage()));
                      },
                      address: 'images/m.png',
                      subjectName: 'Mathematics',
                    ),
                    Subject(
                      address: 'images/wd.png',
                      subjectName: 'Web Designing',
                    ),
                    Subject(
                      address: 'images/cs.png',
                      subjectName: 'Communication Skills',
                    ),
                    Subject(
                      address: 'images/ds.png',
                      subjectName: 'Data Structure',
                    ),
                    Subject(
                      address: 'images/de.png',
                      subjectName: 'Digital Electronics',
                    ),
                    Subject(
                      address: 'images/ad.png',
                      subjectName: 'Application Programming',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
