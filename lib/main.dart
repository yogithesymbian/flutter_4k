import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter 4K',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Timeline Tile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 200,
                child: TimelineTile(
                    endChild: Text(" Pandangan Pertama"),
                    isFirst: true,
                    beforeLineStyle: LineStyle(color: Colors.red, thickness: 6),
                    afterLineStyle: LineStyle(color: Colors.red, thickness: 6),
                    alignment: TimelineAlign.manual,
                    lineXY: 0,
                    hasIndicator: true,
                    indicatorStyle: IndicatorStyle(
                      color: Colors.red,
                      width: 30,
                      height: 50,
                      iconStyle: IconStyle(
                          iconData: Icons.ac_unit, color: Colors.white),
                      // indicator: Container(
                      //   width: 30,
                      //   height: 50,
                      //   decoration: BoxDecoration(
                      //       color: Colors.purple,
                      //       borderRadius: BorderRadius.circular(8)),
                      // )
                    )),
              ),
              SizedBox(
                width: 215,
                child: TimelineDivider(
                  thickness: 6,
                  color: Colors.red,
                  begin: 0.07,
                  end: 0.93,
                ),
              ),
              SizedBox(
                width: 215,
                height: 300,
                child: TimelineTile(
                    startChild: Text(" Hati mulai bersalju dan hujan lebat"),
                    beforeLineStyle: LineStyle(color: Colors.red, thickness: 6),
                    afterLineStyle: LineStyle(color: Colors.blue, thickness: 6),
                    alignment: TimelineAlign.manual,
                    lineXY: 1,
                    hasIndicator: true,
                    indicatorStyle: IndicatorStyle(
                      color: Colors.red,
                      width: 30,
                      iconStyle: IconStyle(
                          iconData: Icons.ac_unit, color: Colors.white),
                    )),
              ),
              SizedBox(
                width: 215,
                child: TimelineDivider(
                  thickness: 6,
                  color: Colors.blue,
                  begin: 0.07,
                  end: 0.93,
                ),
              ),
              SizedBox(
                width: 200,
                height: 100,
                child: TimelineTile(
                    endChild: Text(
                        " 2 insan telah bersatu dalam ketenangan yang dalem"),
                    isLast: true,
                    beforeLineStyle:
                        LineStyle(color: Colors.blue, thickness: 6),
                    afterLineStyle: LineStyle(color: Colors.blue, thickness: 6),
                    alignment: TimelineAlign.manual,
                    lineXY: 0,
                    hasIndicator: true,
                    indicatorStyle: IndicatorStyle(
                      color: Colors.blue,
                      width: 30,
                      iconStyle: IconStyle(
                          iconData: Icons.ac_unit, color: Colors.white),
                    )),
              ),
              // Spacer()
              // oprek
              // SizedBox(
              //   width: 100,
              //   height: 300,
              //   child: TimelineTile(
              //       endChild: Text(" as"),
              //       beforeLineStyle: LineStyle(color: Colors.red, thickness: 6),
              //       afterLineStyle: LineStyle(color: Colors.blue, thickness: 6),
              //       hasIndicator: false,
              //       indicatorStyle: IndicatorStyle(
              //         color: Colors.purple,
              //         width: 30,
              //         height: 50,
              //         iconStyle:
              //             IconStyle(iconData: Icons.ac_unit, color: Colors.white),
              //         // indicator: Container(
              //         //   width: 30,
              //         //   height: 50,
              //         //   decoration: BoxDecoration(
              //         //       color: Colors.purple,
              //         //       borderRadius: BorderRadius.circular(8)),
              //         // )
              //       )),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
