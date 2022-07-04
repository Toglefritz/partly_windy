import 'package:flutter/material.dart';

/// A decorative gradient with a color palette for the current time of day.
///
/// This Widget is composed simply from a [Container] with a [BoxDecoration]
/// containing a [LinearGradient] with different colors depending upon the
/// current time of day. Each hour of the day is associated with a different
/// pair of colors used in the gradient. The [timeColors] [List] is used to
/// obtain the pair of colors for the current time where the current hour
/// is used as the List index.
class TimeGradient extends StatelessWidget {
  TimeGradient({Key? key, required this.child}) : super(key: key);

  final Widget child;

  final List<List<Color>> timeColors = [
    [const Color(0xff012459), const Color(0xff001322)], // 0
    [const Color(0xff003972), const Color(0xff001322)], // 1
    [const Color(0xff003972), const Color(0xff001322)], // 2
    [const Color(0xff004372), const Color(0xff00182b)], // 3
    [const Color(0xff004372), const Color(0xff011d34)], // 4
    [const Color(0xff016792), const Color(0xff00182b)], // 5
    [const Color(0xff07729f), const Color(0xff042c47)], // 6
    [const Color(0xff12a1c0), const Color(0xff07506e)], // 7
    [const Color(0xff74d4cc), const Color(0xff1386a6)], // 8
    [const Color(0xffefeebc), const Color(0xff61d0cf)], // 9
    [const Color(0xfffee154), const Color(0xffa3dec6)], // 10
    [const Color(0xfffdc352), const Color(0xffe8ed92)], // 11
    [const Color(0xffffac6f), const Color(0xffffe467)], // 12
    [const Color(0xfffda65a), const Color(0xffffe467)], // 13
    [const Color(0xfffd9e58), const Color(0xffffe467)], // 14
    [const Color(0xfff18448), const Color(0xffffd364)], // 15
    [const Color(0xfff06b7e), const Color(0xfff9a856)], // 16
    [const Color(0xffca5a92), const Color(0xfff4896b)], // 17
    [const Color(0xff5b2c83), const Color(0xffd1628b)], // 18
    [const Color(0xff371a79), const Color(0xff713684)], // 19
    [const Color(0xff28166b), const Color(0xff45217c)], // 20
    [const Color(0xff192861), const Color(0xff372074)], // 21
    [const Color(0xff040b3c), const Color(0xff233072)], // 22
    [const Color(0xff040b3c), const Color(0xff012459)], // 23
  ];

  @override
  Widget build(BuildContext context) {
    int currentHour = DateTime.now().hour;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: timeColors[currentHour],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter),
      ),
      child: child,
    );
  }
}
