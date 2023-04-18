import 'package:flutter/material.dart';
import 'package:flutter_first/presentation/DashboardAnimation.dart';
import 'package:flutter_first/presentation/IncrementDefault.dart';
import 'package:flutter_first/presentation/bottom_sheet/bottom.dart';
import 'package:flutter_first/presentation/navigation-test/firstPage.dart';
import 'package:flutter_first/presentation/navigation-test/secondPage.dart';
import 'package:flutter_first/presentation/navigation-test/thirdPage.dart';
import './presentation/CardScroll.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Column with Navigator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Button Column with Navigator'),
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
  void navigateToPage(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => _getPageByIndex(index),
      ),
    );
  }

  Widget _getPageByIndex(int index) {
    switch (index) {
      case 1:
        return FirstPage();
      case 2:
        return SecondPage();
      default:
        return ThirdPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        // new
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.all(16.0), // end
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // new
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FirstPage(),
                    ));
              },
              child: Text('Go to first page')),
            SizedBox(height: 16.0), // new
            ElevatedButton(
              child: Text('Go to Second Page'),
              onPressed: () {
                navigateToPage(2);
              },
            ),
            SizedBox(height: 16.0), //new
            ElevatedButton(
              child: Text('Go to Third Page'),
              onPressed: () {
                navigateToPage(3);
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => IncrementDefault()),
                );
              }, child: Text('increment')
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              child: Text('Go to Card Scroll Page'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CardScroll()),
                );
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => BottomSheetScreen(),
                    )
                );
              }, child: Text('Go to bottom_sheet')
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => DashboardScreen(),
                  )
                );
              }, child: Text('Go to Dashboard animation')
            )
          ],
        ),
      ),
    );
  }
}

// class FirstPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('First Page'),
//       ),
//       body: Container( // new
//         alignment: Alignment.centerLeft,
//         padding: EdgeInsets.all(16.0), // end
//         child: Text('This is the first page', style: TextStyle(color: Colors.blue), // new
//         ),
//       ),
//     );
//   }
// }

// class SecondPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Second Page'),
//       ),
//       body: Container( // new
//         alignment: Alignment.centerLeft,
//         padding: EdgeInsets.all(16.0), // end
//         child: Text('This is the second page', style: TextStyle(color: Colors.green), // new
//         ),
//       ),
//     );
//   }
// }

// class ThirdPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Third Page'),
//       ),
//       body: Container( // new
//         alignment: Alignment.centerLeft,
//         padding: EdgeInsets.all(16.0), // end
//         child: Text('This is the third page', style: TextStyle(color: Colors.orange), // new
//         ),
//       ),
//     );
//   }
// }
