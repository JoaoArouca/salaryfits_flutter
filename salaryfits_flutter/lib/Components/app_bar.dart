import 'package:flutter/material.dart';

class AppBarCustom extends AppBar {
  @override
  var title;

  AppBarCustom(this.title, {super.key})
      : super(
    elevation: 5,
    title: title,
    centerTitle: true,
    leading: Builder(
      builder: (context) {
        return Visibility(
          visible: Navigator.of(context).canPop(),
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back_ios, color: Color(0xFFF5C600)),
          ),
        );
      },
    ),
  );
}
