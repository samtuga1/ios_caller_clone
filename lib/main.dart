import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const kCircleAvatarHeight = 80.0;
const kCircleAvatarWidth = 80.0;
const kInnerNumberStyle = TextStyle(fontSize: 38);
const kInnerLetterStyle = TextStyle(fontSize: 17, letterSpacing: 2.0);
const kSpaceBetweenRow = SizedBox(
  height: 15,
);
const callerIconSize = 38.0;
const Color colour = Color(0xFFa2a2a2);
const double kIconsSize = 32.0;

getIconsList() {
  List<Icon> icons = [
    const Icon(
      CupertinoIcons.star_fill,
      color: colour,
      size: kIconsSize,
    ),
    const Icon(
      CupertinoIcons.time_solid,
      color: colour,
      size: kIconsSize,
    ),
    const Icon(CupertinoIcons.person_crop_circle_fill,
        color: colour, size: kIconsSize),
    const Icon(CupertinoIcons.circle_grid_3x3_fill,
        color: colour, size: kIconsSize),
    const Icon(Icons.voicemail_sharp, color: colour, size: kIconsSize)
  ];
  return icons;
}

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
        mainAxisAlignment: MainAxisAlignment.end,
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
          kSpaceBetweenRow,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                Text(
                  '4',
                  style: kInnerNumberStyle,
                ),
                Text(
                  'GHI',
                  style: kInnerLetterStyle,
                ),
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
          kSpaceBetweenRow,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                Text(
                  '7',
                  style: kInnerNumberStyle,
                ),
                Text(
                  'PQRS',
                  style: kInnerLetterStyle,
                ),
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
          kSpaceBetweenRow,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CenterCircleAvatar(
                Text(
                  '*',
                  style: TextStyle(fontSize: 50),
                ),
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
                  style: TextStyle(fontSize: 25),
                ),
              ),
              SizedBox(
                width: 25,
              ),
              CenterCircleAvatar(Text(
                '#',
                style: kInnerNumberStyle,
              )),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: const Center(
                    child: Icon(
                  CupertinoIcons.phone_fill,
                  color: Colors.white,
                  size: callerIconSize,
                )),
                height: kCircleAvatarHeight,
                width: kCircleAvatarWidth,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF35c759),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: getIconsList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              IconNames('Favourites'),
              IconNames('Recents'),
              IconNames('Contacts'),
              IconNames('Keypad'),
              IconNames('Voicemail'),
            ],
          ),
        ],
      )),
    );
  }
}

class IconNames extends StatelessWidget {
  final String name;
  const IconNames(
    this.name, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(name);
  }
}

class CenterCircleAvatar extends StatelessWidget {
  final Widget numberText;

  const CenterCircleAvatar(
    this.numberText, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: numberText),
      height: kCircleAvatarHeight,
      width: kCircleAvatarWidth,
      decoration: const BoxDecoration(
        color: Color(0xFFe5e5e5),
        shape: BoxShape.circle,
      ),
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
