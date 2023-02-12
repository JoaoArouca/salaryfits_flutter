import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salaryfits_flutter/Components/app_bar.dart';

// class Data {
//   final int userId;
//   final int id;
//   final String title;
//   final String body;
//
//   Data(this.userId, this.id, this.title, this.body);
// }

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
    return ListTile(
      title: Text(data!['title']),
      subtitle: Text(data!['body']),
    );
  }

  _logo() => Container(
    padding: const EdgeInsets.all(10),
    child: Image.asset('lib/assets/images/logo.png',
      width: 100,
    ),
  );
}
