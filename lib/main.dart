import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom]);
  runApp(MaterialApp(
    home: Morning(),
  ));
}

class Morning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(items: [
      //   BottomNavigationBarItem(icon: Image.asset('assets/images/morning.png')),
      //   BottomNavigationBarItem(icon: Image.asset('assets/images/night.png'))
      // ]),
    );
  }
}


// void main() => runApp(MaterialApp(
//       home: Scaffold(
//           body: Container(
//         decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage("assets/images/light.png"),
//                 fit: BoxFit.cover)),
//       )),
//     ));