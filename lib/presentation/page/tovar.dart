import 'package:flutter/material.dart';
import 'package:ski_equipment_rental/common/icon/icons_icons.dart';
import 'package:ski_equipment_rental/common/page_url.dart';

class Tovar extends StatefulWidget {
  const Tovar({Key? key}) : super(key: key);

  @override
  State<Tovar> createState() => _TovarState();
}

class _TovarState extends State<Tovar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            IconsCustom.arrow,
            color: Colors.black,
            size: 16,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: DefaultTabController(
          length: 5,
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  const Text(
                    'Товары',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                  ),
                  Container(width: 10),
                  const Text(
                    '9',
                    style: TextStyle(fontSize: 22, color: Color(0xFFAAABAF)),
                  ),
                ],
              ),
              Container(
                height: 15,
              ),
              Container(
                constraints: BoxConstraints.expand(height: 50),
                child: const TabBar(
                    isScrollable: true,
                    labelColor: Color(0xFF3CAAE8),
                    unselectedLabelColor: Color(0xFF87898D),
                    indicatorColor: Color(0xFF3CAAE8),
                    tabs: [
                      Tab(text: "Все"),
                      Tab(text: "Горные лыжи"),
                      Tab(text: "Сноуборд"),
                      Tab(text: "Шлем"),
                      Tab(text: "Перчатки"),
                    ]),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: TabBarView(children: [
                    ListView.builder(
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () => Navigator.pushNamed(
                              context, PageUrl.informationTovar),
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                children: [
                                  Row(
                                    children: const [
                                      Expanded(
                                          child: Text(
                                        'Горные лыжи',
                                        style: TextStyle(
                                          fontSize: 18,
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
                                  Container(
                                    height: 40,
                                    child: ListView.separated(
                                      separatorBuilder: (context, index) =>
                                          Container(width: 10),
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 4,
                                      itemBuilder: (context, index) {
                                        return Container(
                                          height: 40,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                '1 день',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Color(0xFFAAABAF),
                                                ),
                                              ),
                                              Container(height: 5),
                                              const Text('10 000 ₽')
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: 10,
                    ),
                    Container(
                      child: Text("Articles Body"),
                    ),
                    Container(
                      child: Text("User Body"),
                    ),
                    Container(
                      child: Text("User Body"),
                    ),
                    Container(
                      child: Text("User Body"),
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
