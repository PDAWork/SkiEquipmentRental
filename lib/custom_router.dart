import 'package:flutter/material.dart';
import 'package:ski_equipment_rental/common/page_url.dart';
import 'package:ski_equipment_rental/presentation/page/home.dart';
import 'package:ski_equipment_rental/presentation/page/sing_in.dart';
import 'package:ski_equipment_rental/presentation/page/sing_up.dart';

class CustomRouter {
  Route<dynamic>? generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case PageUrl.singIn:
        {
          return MaterialPageRoute(builder: (context) => const SingIn());
        }
      case PageUrl.singUp:
        {
          return MaterialPageRoute(builder: (context) => const SingUp());
        }

      case PageUrl.home:
        {
          return MaterialPageRoute(builder: (context) => const Home());
        }

      default:
        {
          return null;
        }
    }
  }
}
