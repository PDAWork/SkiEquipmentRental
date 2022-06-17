import 'package:flutter/material.dart';
import 'package:ski_equipment_rental/common/icon/icons_icons.dart';

class InformationTovar extends StatefulWidget {
  const InformationTovar({Key? key}) : super(key: key);

  @override
  State<InformationTovar> createState() => _InformationTovarState();
}

class _InformationTovarState extends State<InformationTovar> {
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
    ));
  }
}
