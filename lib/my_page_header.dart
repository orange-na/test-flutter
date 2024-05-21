import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:practice/button_holder.dart';

class MyPageHeader extends StatelessWidget {
  const MyPageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final settingButton = IconButton(
      onPressed: () => {debugPrint('Setting button pressed')},
      icon: const Icon(Icons.settings_outlined),
    );

    final userIcon = ClipOval(
      child: Image.asset('assets/images/photo.jpg',
          width: 60, height: 60, fit: BoxFit.cover),
    );

    const userNameText = Text(
      'Yuto',
      textAlign: TextAlign.left,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );

    final userDeatilButtonHolder = ButtonHolder(
      children: [
        IconButton(
          onPressed: () => {debugPrint('Setting button pressed')},
          icon: const Icon(
            Icons.qr_code_rounded,
            size: 18,
          ),
        ),
        IconButton(
          onPressed: () => {debugPrint('Setting button pressed')},
          icon: const Icon(
            Icons.location_on_outlined,
            size: 18,
          ),
        ),
      ],
    );

    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              const Spacer(),
              settingButton,
            ],
          ),
          SizedBox(
            height: 80,
            child: Row(
              children: [
                userIcon,
                const SizedBox(width: 20),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: userNameText,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        child: userDeatilButtonHolder,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
