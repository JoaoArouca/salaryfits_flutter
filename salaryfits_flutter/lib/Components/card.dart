import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String subtitle;

  const CustomCard(this.title, this.subtitle, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black12),
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ]),
      child: Column(
        children: <Widget>[
          Container(
            // Título
            margin: const EdgeInsets.only(bottom: 20),
            alignment: Alignment.center,
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color(0xFF26395C),
              ),
            ),
          ),
          Container(
            // Subtítulo
            padding: const EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            child: Text(subtitle,
                style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                    color: Color(0xFF656b89))),
          )
        ],
      ),
    );
  }
}
