import 'dart:math';

import 'package:dars_uchun/my_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class instagram extends StatefulWidget {
  const instagram({super.key});

  @override
  State<instagram> createState() => _instagramState();
}

class _instagramState extends State<instagram> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Image.asset(
              MyImages.Ilogo,
              width: 104,
            ),
            actions: [
              Image.asset(MyImages.addLogo),
              SvgPicture.asset(MyImages.likeLogo),
              Image.asset(MyImages.messengerLogo)
            ]),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.12,
                padding: EdgeInsets.only(left: 8, right: 8),
                child: ListView.builder(
                  itemBuilder: (context, index) =>
                      Storiy(index.toString(), name[index]),
                  itemCount: 26,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 12),
                width: double.infinity,
                height: 1,
                color: Colors.grey.withOpacity(0.3),
              ),
              Container(
                //height: MediaQuery.of(context).size.height*0.88,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: ((context, index) => Buldpost()),
                  itemCount: 30,
                  shrinkWrap: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget Storiy(String rasm, String name) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(left: 10),
        padding: EdgeInsets.all(1.8),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(colors: [Colors.red, Color(0xFFF7A34B)])),
        width: 68,
        height: 94,
        child: Container(
          padding: EdgeInsets.all(1.3),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Container(
            padding: EdgeInsets.all(1.5),
            decoration: BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage('https://picsum.photos/200/40${rasm}'),
                  fit: BoxFit.cover),
            ),
          ),
        ),
      ),
      Text(
        name,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      )
    ],
  );
}

List name = [
  'Sevara',
  'sayyora',
  'Hasan',
  'Akbar',
  'Zayniddin',
  'Dilmurod',
  'Sevara',
  'sayyora',
  'Hasan',
  'Akbar',
  'Zayniddin',
  'Dilmurod',
  'Sevara',
  'sayyora',
  'Hasan',
  'Akbar',
  'Zayniddin',
  'Dilmurod',
  'Sevara',
  'sayyora',
  'Hasan',
  'Akbar',
  'Zayniddin',
  'Dilmurod',
  'Sevara',
  'sayyora',
  'Hasan',
  'Akbar',
  'Zayniddin',
  'Dilmurod',
  'Sevara',
  'sayyora',
  'Hasan',
  'Akbar',
  'Zayniddin',
  'Dilmurod',
  'Sevara',
  'sayyora',
  'Hasan',
  'Akbar',
  'Zayniddin',
  'Dilmurod',
  'Sevara',
  'sayyora',
  'Hasan',
  'Akbar',
  'Zayniddin',
  'Dilmurod',
  'Sevara',
  'sayyora',
  'Hasan',
  'Akbar',
  'Zayniddin',
  'Dilmurod',
  'Sevara',
  'sayyora',
  'Hasan',
  'Akbar',
  'Zayniddin',
  'Dilmurod',
  'Sevara',
  'sayyora',
  'Hasan',
  'Akbar',
  'Zayniddin',
  'Dilmurod',
  'Sevara',
  'sayyora',
  'Hasan',
  'Akbar',
  'Zayniddin',
  'Dilmurod',
];
Widget Buldpost() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              height: 40,
              width: 40,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/200/300'),
                        fit: BoxFit.cover),
                    shape: BoxShape.circle),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              name[0],
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 230,
            ),
            IconButton(
                onPressed: (() {}), icon: Icon(Icons.more_horiz_rounded)),
          ]),
        ),
        rasmpost(),
      ],
    ),
  );
}

var ran = Random();

Widget rasmpost() {
  return Column(
    children: [
      Container(
        width: double.infinity,
        child: Image.network(
          'https://loremflickr.com/320/2${ran.nextInt(99).toString()}/oceans//all',
          fit: BoxFit.fitHeight,
        ),
      ),
      Padding(
        padding:
            const EdgeInsets.only(left: 12, top: 20, right: 20, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(onTap: () {}, child: SvgPicture.asset(MyImages.likeLogo)),
            SizedBox(
              width: 14,
            ),
            SvgPicture.asset(MyImages.comment),
            SizedBox(
              width: 12,
            ),
            SvgPicture.asset(MyImages.share),
            SizedBox(
              width: 233,
            ),
            SvgPicture.asset(MyImages.bokmark),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(right: 350),
        child: Text(
          '10 likes!',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ),
      SizedBox(
        height: 12,
      ),
      Container(
        margin: EdgeInsets.only(bottom: 12),
        width: double.infinity,
        height: 1,
        color: Colors.grey.withOpacity(0.3),
      ),
    ],
  );
}
