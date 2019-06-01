import 'package:flubber_nyc_hack19/library.dart';

class CurrentChallenge extends StatefulWidget {
  @override
  _CurrentChallengeState createState() => _CurrentChallengeState();
}

class _CurrentChallengeState extends State<CurrentChallenge> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Current Challenge',
      style: TextStyle(
        color: DynamicTheme.of(context).brightness == Brightness.light
          ? Colors.black
          : Colors.white,
      ),
    );
  }
}
