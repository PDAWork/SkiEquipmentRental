import 'package:flutter/material.dart';
import 'package:ski_equipment_rental/common/icon/icons_icons.dart';
import 'package:ski_equipment_rental/common/page_url.dart';

class CardRoll extends StatefulWidget {
  const CardRoll({Key? key}) : super(key: key);

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
            icon: const Icon(IconsCustom.share),
          ),
          Container(width: 15),
          IconButton(
            onPressed: () {},
            icon: const Icon(IconsCustom.favorite),
          ),
          Container(width: 10),
        ]),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
                width: double.infinity,
                height: 300,
                child: ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(bottom: Radius.circular(14)),
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
                  const Text(
                    '5.3 км от вас',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFFAAABAF),
                    ),
                  ),
                  Container(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Ski & Winter',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
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
                      const Text(
                        'Товары',
                        style: TextStyle(fontSize: 16),
                      ),
                      Container(width: 10),
                      const Text(
                        '9',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFAAABAF),
                        ),
                      ),
                      Expanded(child: Container()),
                      const Text(
                        'Все товары',
                        style: TextStyle(
                          color: Color(0xFF3CAAE8),
                        ),
                      ),
                    ],
                  ),
                  Container(height: 15),
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () =>
                                Navigator.pushNamed(context, PageUrl.tovar),
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  alignment: Alignment.topCenter,
                                  width: 140,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: const [
                                          Expanded(
                                              child: Text(
                                            'Горные лыжи',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          )),
                                          Icon(
                                            IconsCustom.arrowleft,
                                            color: Color(0xFF3CAAE8),
                                            size: 20,
                                          )
                                        ],
                                      ),
                                      const Divider(
                                        color: Color(0xFFF8F9FB),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        const Text(
                                                          '1 день',
                                                          style: TextStyle(
                                                            fontSize: 13,
                                                            color: Color(
                                                                0xFFAAABAF),
                                                          ),
                                                        ),
                                                        Container(height: 5),
                                                        const Text('10 000 ₽')
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        const Text(
                                                          '1 день',
                                                          style: TextStyle(
                                                            fontSize: 13,
                                                            color: Color(
                                                                0xFFAAABAF),
                                                          ),
                                                        ),
                                                        Container(height: 5),
                                                        const Text('10 000 ₽')
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        const Text(
                                                          '1 день',
                                                          style: TextStyle(
                                                            fontSize: 13,
                                                            color: Color(
                                                                0xFFAAABAF),
                                                          ),
                                                        ),
                                                        Container(height: 5),
                                                        const Text('10 000 ₽')
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        const Text(
                                                          '1 день',
                                                          style: TextStyle(
                                                            fontSize: 13,
                                                            color: Color(
                                                                0xFFAAABAF),
                                                          ),
                                                        ),
                                                        Container(height: 5),
                                                        const Text('10 000 ₽')
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        itemCount: 10),
                  ),
                  Container(height: 25),
                  const Text(
                    'Описание',
                    style: TextStyle(fontSize: 16),
                  ),
                  Container(height: 15),
                  const Text(
                    'Крепкий и удобный шлем и тому подобное лалала Крепкий и удобный шлем и тому  тому ',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
