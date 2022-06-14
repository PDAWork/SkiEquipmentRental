import 'package:flutter/material.dart';
import 'package:ski_equipment_rental/common/page_url.dart';
import 'package:ski_equipment_rental/presentation/page/sing_in.dart';
import 'package:ski_equipment_rental/custom_router.dart';

void main() {
  runApp(MyApp(
    router: CustomRouter(),
  ));
}

class MyApp extends StatelessWidget {
  final CustomRouter router;

  const MyApp({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: router.generateRouter,
      debugShowCheckedModeBanner: false,
      initialRoute: PageUrl.singIn,
    );
  }
}
