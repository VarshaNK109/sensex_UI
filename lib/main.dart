import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () => Fluttertoast.showToast(
                        msg: "This is Toast message for Back button",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.black,
                        textColor: Colors.white,
                        fontSize: 16.0),
                  ),
                  Text(
                    'Sensex',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70.0, bottom: 10.0),
                child: Text(
                  'Summary',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Mybar1(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      Mybar(
                        color: Colors.blue[300],
                      ),
                      Mybar(
                        color: Colors.black54,
                      ),
                      Mybar(
                        color: Colors.pink[300],
                      ),
                      Mybar1(
                        color: Colors.pink,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 100.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            ClipPath(
                              child: Container(
                                height: 20.0,
                                width: 20.0,
                                color: Colors.black54,
                              ),
                              clipper: getClipper(),
                            ),
                            Container(
                              padding: EdgeInsets.all(5.0),
                              height: 40.0,
                              width: 100.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: Colors.black54,
                              ),
                              child: Text('Neutral',style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 0, bottom: 17),
                        child: Container(
                          height: 30,
                          width: 65.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 2.3,
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                            ),
                          ),
                          child: Text(
                            '1 MIN',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                      Mysummaryrightside(
                        text: '5 MIN',
                      ),
                      Mysummaryrightside(
                        text: '15 MIN',
                      ),
                      Mysummaryrightside(
                        text: '30 MIN',
                      ),
                      Mysummaryrightside(
                        text: '1 HR',
                      ),
                      Mysummaryrightside(
                        text: '5 HR',
                      ),
                      Mysummaryrightside(
                        text: '1 DAY',
                      ),
                      Mysummaryrightside(
                        text: '1 WK',
                      ),
                      Mysummaryrightside(
                        text: '1 MON',
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0, bottom: 15.0),
                child: Text(
                  'Moving Averages',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              GestureDetector(
                onTap: () => Fluttertoast.showToast(
                    msg: "This is Toast message for Buy button",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.black,
                    textColor: Colors.white,
                    fontSize: 16.0),
                child: Container(
                  height: 30,
                  width: 80.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                    ),
                  ),
                  child: Text(
                    'Buy',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 17.0, bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Mymovingaverages(
                      text: '7',
                      label: 'Buy',
                    ),
                    Mymovingaverages(
                      text: '-',
                      label: 'Neutral',
                    ),
                    Mymovingaverages(
                      text: '5',
                      label: 'Sell',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50.0,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.grey[200],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Mycolumn(
                          text: 'TITLE',
                        ),
                      ),
                      Mycolumn(
                        text: "VALUE",
                      ),
                      Mycolumn(
                        text: "TYPE",
                      ),
                    ],
                  ),
                ),
              ),
              Myrowmodify(
                text1: "MA10",
                text2: "465.28",
                text3: "SELL",
                color: Colors.pink,
              ),
              Myrowmodify(
                text1: "MA20",
                text2: "465.28",
                text3: "BUY",
                color: Colors.blue,
              ),
              Myrowmodify(
                text1: "MA50",
                text2: "465.28",
                text3: "BUY",
                color: Colors.blue,
              ),
              Myrowmodify(
                text1: "MA100",
                text2: "465.28",
                text3: "SELL",
                color: Colors.pink,
              ),
              Myrowmodify(
                text1: "MA200",
                text2: "465.28",
                text3: "BUY",
                color: Colors.blue,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0, bottom: 15.0),
                child: Text(
                  'Technical Indicators',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              GestureDetector(
                onTap: () => Fluttertoast.showToast(
                    msg: "This is Toast message for Buy button",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.black,
                    textColor: Colors.white,
                    fontSize: 16.0),
                child: Container(
                  height: 34,
                  width: 130.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                    ),
                  ),
                  child: Text(
                    'Strong Sell',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 17.0, bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Mytechnical(
                      text: "1",
                      label: "Buy",
                    ),
                    Mytechnical(
                      text: "1",
                      label: "Neutral",
                    ),
                    Mytechnical(
                      text: "9",
                      label: "Sell",
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.grey[200],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Mycolumn(
                          text: "NAME",
                        ),
                      ),
                      Mycolumn(
                        text: "ACTION",
                      ),
                      Mycolumn(
                        text: "VALUE",
                      ),
                    ],
                  ),
                ),
              ),
              Myrowmodify(
                text1: "MA10",
                text2: "465.28",
                text3: "SELL",
                color: Colors.pink,
              ),
              Myrowmodify(
                text1: "MA20",
                text2: "465.28",
                text3: "BUY",
                color: Colors.blue,
              ),
              Myrowmodify(
                text1: "MA50",
                text2: "465.28",
                text3: "BUY",
                color: Colors.blue,
              ),
              Myrowmodify(
                text1: "MA10",
                text2: "465.28",
                text3: "SELL",
                color: Colors.pink,
              ),
              Myrowmodify(
                text1: "MA20",
                text2: "465.28",
                text3: "BUY",
                color: Colors.blue,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0, bottom: 50.0),
                child: Text(
                  'Pivot Points',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Mypivot(
                text1: "S3",
                text2: "465.28",
              ),
              Mypivot(
                text1: "S2",
                text2: "465.28",
              ),
              Mypivot(
                text1: "S1",
                text2: "465.28",
              ),
              Mypivot(
                text1: "PIVOT POINTS",
                text2: "465.28",
              ),
              Mypivot(
                text1: "R1",
                text2: "465.28",
              ),
              Mypivot(
                text1: "R2",
                text2: "465.28",
              ),
              Mypivot(
                text1: "R3",
                text2: "465.28",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Mybar extends StatelessWidget {
  final Color color;
  Mybar({this.color});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 50),
      child: Container(
        color: color,
        height: 70,
        width: 8,
      ),
    );
  }
}

class Mybar1 extends StatelessWidget {
  final BorderRadius borderRadius;
  final Color color;
  Mybar1({this.borderRadius, this.color});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 50),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius,
        ),
        height: 70,
        width: 8,
      ),
    );
  }
}

class Mysummaryrightside extends StatelessWidget {
  final String text;
  Mysummaryrightside({this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 0, bottom: 17),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.normal,
          color: Colors.grey,
          fontSize: 17,
        ),
      ),
    );
  }
}

class Mymovingaverages extends StatelessWidget {
  final String text;
  final String label;
  Mymovingaverages({this.text, this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}

class Mycolumn extends StatelessWidget {
  final String text;
  Mycolumn({this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.grey,
        fontSize: 17,
      ),
    );
  }
}

class Myrow extends StatelessWidget {
  final String text;
  final Color color;
  Myrow({this.text, this.color});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }
}

class Mytechnical extends StatelessWidget {
  final String text;
  final String label;
  Mytechnical({this.text, this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}

class Myrowmodify extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final Color color;
  Myrowmodify({this.text1, this.text2, this.text3, this.color});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Myrow(
            text: text1,
          ),
        ),
        Myrow(
          text: text2,
        ),
        Myrow(
          text: text3,
          color: color,
        ),
      ],
    );
  }
}

class Mypivot extends StatelessWidget {
  final String text1;
  final String text2;
  Mypivot({this.text1, this.text2});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text1,
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ),
        Text(
          text2,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(size.height, 0.0);
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width,size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
