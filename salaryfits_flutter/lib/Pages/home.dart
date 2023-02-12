import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home ({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        // title: const Text('Salary Fits - Flutter'),
        leading: _logo(),
        leadingWidth: 100,

        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                print('List');
              },
              icon: const Icon(Icons.list),
              color: const Color(0xFFF5C600),
          ),
          IconButton(
              onPressed: () {
                print('grid');
              },
              icon: const Icon(Icons.grid_on),
              color: const Color(0xFFF5C600),
          ),
        ],
      ),
    );
  }


  _logo() => Container(
    padding: const EdgeInsets.all(10),
    child: Image.asset('lib/assets/images/logo.png'),
  );
}
