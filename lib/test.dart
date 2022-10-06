import 'package:dars_uchun/my_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class test extends StatelessWidget {
  const test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          Row(
            children: [
              Image.asset(MyImages.Ilogo),
            ],
          )
        ],),
      ),
    );
  }
}
