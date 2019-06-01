import 'package:flubber_nyc_hack19/library.dart';

class CurrentChallenge extends StatefulWidget {
  @override
  _CurrentChallengeState createState() => _CurrentChallengeState();
}

class _CurrentChallengeState extends State<CurrentChallenge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/SubmitEntryToChallenge");
        },
        child: Icon(Icons.file_upload),
        tooltip: "Submit Entry",
      ),
      bottomNavigationBar: BottomAppBar(
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
      ),
    );
  }
}
