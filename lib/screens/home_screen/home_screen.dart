import 'package:flubber_nyc_hack19/library.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _currentScreen = CurrentChallenge();
  String _currentTitle = "Current Challenge";

  void _changeCurrentScreen(String screenName){
    setState(() {
      switch(screenName) {
        case "HallOfFame": {
          _currentScreen = HallOfFame();
          _currentTitle = "Hall of Fame";
        }
        break;

        case "UpComingChallenges": {
          _currentScreen = UpcomingChallengesList();
          _currentTitle = "Upcoming Challenges";
        }
        break;

        default: {
          //statements;
        }
        break;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Theme.of(context).canvasColor,
        title: Text(
          _currentTitle,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: _currentScreen,
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
                      _changeCurrentScreen("HallOfFame");
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
                      _changeCurrentScreen("UpComingChallenges");
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
