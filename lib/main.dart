import 'package:flutter/material.dart';

const kCircleAvatarHeight = 88.0;
const kCircleAvatarWidth = 88.0;
const kInnerNumberStyle = TextStyle(fontSize: 38);
const kInnerLetterStyle = TextStyle(fontSize: 17, letterSpacing: 2.0);

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
              CircleAvatar(
                Text(
                  '1',
                  style: kInnerNumberStyle,
                ),
                Text(''),
              ),
              SizedBox(
                width: 25,
              ),
              CircleAvatar(
                Text(
                  '2',
                  style: kInnerNumberStyle,
                ),
                Text(
                  'ABC',
                  style: kInnerLetterStyle,
                ),
              ),
              SizedBox(
                width: 25,
              ),
              CircleAvatar(
                Text(
                  '3',
                  style: kInnerNumberStyle,
                ),
                Text(
                  'DEF',
                  style: kInnerLetterStyle,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                Text(
                  '4',
                  style: kInnerNumberStyle,
                ),
                Text('GHI'),
              ),
              SizedBox(
                width: 25,
              ),
              CircleAvatar(
                Text(
                  '5',
                  style: kInnerNumberStyle,
                ),
                Text(
                  'JKL',
                  style: kInnerLetterStyle,
                ),
              ),
              SizedBox(
                width: 25,
              ),
              CircleAvatar(
                Text(
                  '6',
                  style: kInnerNumberStyle,
                ),
                Text(
                  'MNO',
                  style: kInnerLetterStyle,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                Text(
                  '7',
                  style: kInnerNumberStyle,
                ),
                Text('PQRS'),
              ),
              SizedBox(
                width: 25,
              ),
              CircleAvatar(
                Text(
                  '8',
                  style: kInnerNumberStyle,
                ),
                Text(
                  'TUV',
                  style: kInnerLetterStyle,
                ),
              ),
              SizedBox(
                width: 25,
              ),
              CircleAvatar(
                Text(
                  '9',
                  style: kInnerNumberStyle,
                ),
                Text(
                  'WXYZ',
                  style: kInnerLetterStyle,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                Text(
                  '*',
                  style: kInnerNumberStyle,
                ),
                Text(''),
              ),
              SizedBox(
                width: 25,
              ),
              CircleAvatar(
                Text(
                  '0',
                  style: kInnerNumberStyle,
                ),
                Text(
                  '+',
                  style: kInnerLetterStyle,
                ),
              ),
              SizedBox(
                width: 25,
              ),
              CircleAvatar(
                Text(
                  '#',
                  style: kInnerNumberStyle,
                ),
                Text(
                  '',
                  style: kInnerLetterStyle,
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}

class CircleAvatar extends StatelessWidget {
  final Widget numberText;
  final Widget lettersText;

  const CircleAvatar(this.numberText, this.lettersText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          numberText,
          lettersText,
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
