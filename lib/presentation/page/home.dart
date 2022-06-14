import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Лучшие прокаты'),
                IconButton(onPressed: () {}, icon: Icon(IconsCustom.filter))
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Color(0xFFF7F7F8),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 1,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: (context, index) {
                    return Card(
                      child: Column(
                        children: [
                          Container(
                            width: 200,
                            height: 140,
                          ),
                          Text('')
                        ],
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
