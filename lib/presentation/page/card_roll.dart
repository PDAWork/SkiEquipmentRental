import 'package:flutter/material.dart';
import 'package:ski_equipment_rental/common/icon/icons_icons.dart';

class CardRoll extends StatefulWidget {
  CardRoll({Key? key}) : super(key: key);

  @override
  State<CardRoll> createState() => _CardRollState();
}

class _CardRollState extends State<CardRoll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar:
            AppBar(elevation: 0, backgroundColor: Colors.transparent, actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(IconsCustom.share),
          ),
          Container(width: 15),
          IconButton(
            onPressed: () {},
            icon: Icon(IconsCustom.favorite),
          ),
          Container(width: 10),
        ]),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                width: double.infinity,
                height: 300,
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(14)),
                  child: Image.asset(
                    'assets/test_image2.png',
                    fit: BoxFit.fill,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text('5.3 км от вас'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Ski & Winter'),
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0xFFF9D725),
                            borderRadius: BorderRadius.circular(17)),
                        width: 60,
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              IconsCustom.star,
                              size: 18,
                              color: Colors.white,
                            ),
                            Container(width: 5),
                            const Text(
                              '4.1',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: Icon(
                      IconsCustom.telefon,
                      size: 19,
                      color: Color(0xFF3CAAE8),
                    ),
                    title: Text('+ 7 911 111 11 11 '),
                  ),
                  const ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: Icon(
                      IconsCustom.pin,
                      size: 26,
                      color: Color(0xFF3CAAE8),
                    ),
                    title: Text('Сочи, Красная поляна, 2'),
                  ),
                  const ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: Icon(
                      IconsCustom.time,
                      size: 26,
                      color: Color(0xFF3CAAE8),
                    ),
                    title: Text('С 10 - 19 ч.'),
                  ),
                  Container(height: 24),
                  Row(
                    children: [
                      const Text('Товары'),
                      Container(width: 10),
                      const Text('9'),
                      Expanded(child: Container()),
                      Text('Все товары'),
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
