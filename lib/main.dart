import 'package:flutter/material.dart';

const kCircleAvatarHeight = 80.0;
const kCircleAvatarWidth = 80.0;

void main() {
  runApp(const MaterialApp(
    home: MainScreen(),
  ));
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(),
              SizedBox(
                width: 25,
              ),
              CircleAvatar(),
              SizedBox(
                width: 25,
              ),
              CircleAvatar(),
            ],
          )
        ],
      )),
    );
  }
}

class CircleAvatar extends StatelessWidget {
  const CircleAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: const [
          SizedBox(
            height: 18,
          ),
          Text(
            '1',
            style: TextStyle(fontSize: 35),
          ),
          Text(''),
        ],
      ),
      width: kCircleAvatarWidth,
      height: kCircleAvatarHeight,
      decoration: const BoxDecoration(
        color: Color(0xFFe5e5e5),
        shape: BoxShape.circle,
      ),
    );
  }
}
