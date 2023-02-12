import 'package:flutter/material.dart';
import 'package:salaryfits_flutter/Components/card.dart';
import 'package:salaryfits_flutter/utils/get_data.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        leading: _logo(),
        leadingWidth: 100,
        centerTitle: true,
      ),
      body: _body(),
    );
  }

  _logo() => Container(
        padding: const EdgeInsets.all(10),
        child: Image.asset('lib/assets/images/logo.png'),
      );

  _body() {
    return FutureBuilder<List>(
      future: Get().execute(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Center(
            child: Text('Request failed'),
          );
        }

        if (snapshot.hasData) {
          return ListView.builder(
              // Card
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'detail_card',
                        arguments: snapshot.data![index]);
                  },
                  child: CustomCard(snapshot.data![index]['title'],
                      snapshot.data![index]['body']),
                );
              });
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
