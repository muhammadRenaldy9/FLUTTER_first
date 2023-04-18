import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class IncrementDefault extends StatefulWidget {
  const IncrementDefault({super.key});

  @override
  State<IncrementDefault> createState() => _IncrementDefaultState();
}

class _IncrementDefaultState extends State<IncrementDefault> {
  int count = 0;

  diklik(){
    setState(() {
      count++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('increment'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('children1'),
            const Text('children2'),
            const Text('children3'),
            const Text('children4'),
            Text('$count')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: diklik,
        child: Icon(Icons.add),
      ),
    );
  }
}