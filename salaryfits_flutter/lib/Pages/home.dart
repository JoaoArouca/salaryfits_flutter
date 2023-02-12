import 'package:flutter/material.dart';
import 'package:salaryfits_flutter/utils/get_data.dart';

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
        if(snapshot.hasError) {
          return const Center(
            child: Text('Request failed'),
          );
        }

        if(snapshot.hasData) {
          return ListView.builder( // Card
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Text(snapshot.data![index]['id'].toString()),
                title: Text(snapshot.data![index]['title']),
                subtitle: Text(snapshot.data![index]['body']),
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
