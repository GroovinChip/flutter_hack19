import 'package:flubber_nyc_hack19/library.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 4.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: IconButton(
                  icon: Icon(Icons.more),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: IconButton(
                  icon: Icon(GroovinMaterialIcons.crown),
                  onPressed: () {
                    Navigator.pushNamed(context, '/HallOfFame');
                  },
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 40.0),
                child: IconButton(
                  icon: Icon(GroovinMaterialIcons.calendar_text),
                  onPressed: () {
                    Navigator.pushNamed(context, '/UpcomingChallenges');
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: IconButton(
                  icon: Icon(GroovinMaterialIcons.ballot_outline),
                  onPressed: () {
                    Navigator.pushNamed(context, '/VoteOnChallengeSuggestions');
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
