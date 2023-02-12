import 'package:flutter/material.dart';
import 'package:salaryfits_flutter/Components/app_bar.dart';
import 'package:salaryfits_flutter/Components/card.dart';

class DetailPage extends StatelessWidget {
  static const routeName = 'detail_card';

  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)?.settings.arguments;
    return Scaffold(
      appBar: AppBarCustom(_logo()),
      body: _body(context, data),
    );


  }

  _body(context, data) {
    return Column(
        children: [
          CustomCard(
              data!['title'],
              data!['body']
          ),

        ]);
  }

  _logo() => Container(
    padding: const EdgeInsets.all(10),
    child: Image.asset('lib/assets/images/logo.png',
      width: 100,
    ),
  );
}
