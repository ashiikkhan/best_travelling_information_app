import 'package:flutter/material.dart';

class detailScreen extends StatelessWidget {
  const detailScreen({Key? key, required this.name, required this.continent, required this.flag})
      : super(key: key);

  final String name;
  final String continent;
  final String flag;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: Column(
        children: [
          Image(image: AssetImage(flag)),
          Text(name),
          Text(continent),
        ],
      ),
    );
  }
}
