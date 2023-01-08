import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double widthOfScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/morning.png"),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(45, 65, 0, 0),
            child: Column(
              children: [
                const Text(
                  'Good Morning, Aadhi',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xff190F0E),
                      fontFamily: 'Poppins'),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Text(
                    '7 January 2023',
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Color(0xff190F0E),
                        fontFamily: 'Poppins'),
                  ),
                )
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 67,
              width: widthOfScreen,
              child: Row(
                children: [
                  SizedBox(
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/images/sun_morning.png'),
                    ),
                    width: widthOfScreen / 2,
                  ),
                  SizedBox(
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Screen2()));
                      },
                      icon: Image.asset('assets/images/moon_morning.png'),
                    ),
                    width: widthOfScreen / 2,
                  ),
                ],
              ),
              color: Color(0xff1D1111),
            ),
          )
        ],
      ),
    );
  }
}

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    double widthOfScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/night.png"),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(45, 65, 0, 0),
            child: Column(
              children: [
                const Text(
                  'Good Night, Aadhi',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xff111312),
                      fontFamily: 'Poppins'),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Text(
                    '7 January 2023',
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Color(0xff111312),
                        fontFamily: 'Poppins'),
                  ),
                )
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 67,
              width: widthOfScreen,
              child: Row(
                children: [
                  SizedBox(
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      icon: Image.asset('assets/images/sun_night.png'),
                    ),
                    width: widthOfScreen / 2,
                  ),
                  SizedBox(
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/images/moon_night.png'),
                    ),
                    width: widthOfScreen / 2,
                  ),
                ],
              ),
              color: Color(0xff202425),
            ),
          )
        ],
      ),
    );
  }
}
