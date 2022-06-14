import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:ski_equipment_rental/common/icon/icons_icons.dart';
import 'package:ski_equipment_rental/common/page_url.dart';
import 'package:ski_equipment_rental/common/theme_pin_put.dart';

class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Регистриция',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            IconsCustom.arrow,
            color: Colors.black,
            size: 18,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'На указанный Вами номер, мы отправали одноразоваый CMC-код, введите его ниже',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
            Container(height: 100),
            Pinput(
              focusedPinTheme: ThemePinPut.focusedPinTheme,
              defaultPinTheme: ThemePinPut.defaultPinTheme,
            ),
            Expanded(child: Container()),
            Container(
              alignment: Alignment.center,
              height: 52,
              decoration: BoxDecoration(
                color: const Color(0xFFF8F9FB),
                borderRadius: BorderRadius.circular(8),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    PageUrl.home,
                    (route) => false,
                  );
                },
                child: const Text(
                  'Продолжить',
                  style: TextStyle(
                    color: const Color(0xFF87898D),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
