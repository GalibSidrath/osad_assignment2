import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});
  static const routName = '/second';

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  late List getData;
  @override
  void didChangeDependencies() {
    getData = ModalRoute.of(context)!.settings.arguments as List;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${getData[0]}'),
      ),
      body: Center(
        child: Image.network('${getData[1]}'),
      ),
    );
  }
}
