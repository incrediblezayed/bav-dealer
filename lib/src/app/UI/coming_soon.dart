import 'package:flutter/material.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
      ),
      body: Image.asset(
        'assets/images/coming_soon.png',
        fit: BoxFit.cover,
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
      ),
    );
  }
}
