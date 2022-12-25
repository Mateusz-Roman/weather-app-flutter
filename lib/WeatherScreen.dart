import 'package:clean_air/PermissionScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'MyHomePage.dart';
import 'main.dart';

class WeatherScreen extends StatefulWidget {
  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: new Color(0xffffffff),
              gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [new Color(0xff6e6cd8), new Color(0xff77e1ee)],
              )),
        ),
        Align(
            alignment: FractionalOffset.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 45.0)),
                Image(image: AssetImage('icons/weather-sunny.png')),
                Padding(padding: EdgeInsets.only(top: 41.0)),
                Text("Niedziela 25.12.2022, 15:00, Słonecznie",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontSize: 14.0,
                          height: 1.2,
                          color: Colors.white,
                          fontWeight: FontWeight.w400)),
                ),
                Padding(padding: EdgeInsets.only(top: 12.0)),
                Text('15°C',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontSize: 64.0,
                          height: 1.2,
                          color: Colors.white,
                          fontWeight: FontWeight.w700)),
                ),
                Text('Odczuwalna 12°C',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontSize: 14.0,
                          height: 1.2,
                          color: Colors.white,
                          fontWeight: FontWeight.w700)),
                ),
                IntrinsicHeight(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 130,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Ciśnienie",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      fontSize: 14.0,
                                      height: 1.2,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300)),
                            ),
                            Padding(padding: EdgeInsets.only(top: 2.0)),
                            Text("1200 hPa",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      fontSize: 26.0,
                                      height: 1.2,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700)),
                            ),
                          ],
                        )),
                    VerticalDivider(
                      width: 48,
                      color: Colors.white,
                      thickness: 1,
                    ),
                    Container(
                        width: 130,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Wiatr",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      fontSize: 14.0,
                                      height: 1.2,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300)),),
                            Padding(padding: EdgeInsets.only(top: 2.0)),
                            Text("16 km/h",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      fontSize: 26.0,
                                      height: 1.2,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700)),
                            ),
                          ],
                        )),
                  ],
                )),
                Padding(padding: EdgeInsets.only(top: 24.0)),
                Text("Opady: 0,1 mm/12h",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontSize: 14.0,
                          height: 1.2,
                          color: Colors.white,
                          fontWeight: FontWeight.w400)),
                ),
                Padding(padding: EdgeInsets.only(top: 24.0)),
              ],
            )),
      ]), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
