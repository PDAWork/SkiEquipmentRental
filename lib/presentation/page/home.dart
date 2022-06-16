import 'package:flutter/material.dart';
import 'package:ski_equipment_rental/common/icon/icons_icons.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(IconsCustom.home),
              label: 'Главная',
            ),
            BottomNavigationBarItem(
              icon: Icon(IconsCustom.basket),
              label: 'Заказы',
            ),
            BottomNavigationBarItem(
              icon: Icon(IconsCustom.user),
              label: 'Профиль',
            ),
          ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // AppBar
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(14),
                bottomRight: Radius.circular(14),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Лучшие прокаты',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    ),
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(IconsCustom.filter))
                ],
              ),
            ),
          ),
          // Основной контент
          Expanded(
            child: Container(
              color: const Color(0xFFF7F7F8),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          child: Image.asset(
                                            'assets/test_image.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Align(
                                          alignment:
                                              const Alignment(1, 1 / 0.85),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Color(0xFFF9D725),
                                                borderRadius:
                                                    BorderRadius.circular(17)),
                                            width: 60,
                                            height: 30,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                const Icon(
                                                  IconsCustom.star,
                                                  size: 18,
                                                  color: Colors.white,
                                                ),
                                                Container(width: 5),
                                                const Text(
                                                  '4.1',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 7),
                                  child: Text(
                                    'Название проекта',
                                    style: TextStyle(fontSize: 24),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
