import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class q extends StatefulWidget {
  const q({super.key});

  @override
  State<q> createState() => _qState();
}

class _qState extends State<q> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              
              
              color: Colors.red,
              child: Image.network('https://picsum.photos/200/300',fit: BoxFit.fitHeight,),),
              
          ],
        ),
      ),
    );
  }
}