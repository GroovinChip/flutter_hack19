import 'package:flubber_nyc_hack19/library.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PackageInfo _packageInfo = new PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
  );

  Future<Null> _initPackageInfo() async {
    final PackageInfo info = await PackageInfo.fromPlatform();
    setState(() {
      _packageInfo = info;
    });
  }

  void changeBrightness() {
    DynamicTheme.of(context).setBrightness(
      Theme.of(context).brightness == Brightness.dark
          ? Brightness.light
          : Brightness.dark,
    );
  }

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

        case "ChallengeSuggestions": {
          _currentScreen = ChallengeSuggestions();
          _currentTitle = "Challenge Suggestions";
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
  void initState() {
    _initPackageInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Theme.of(context).canvasColor,
        title: Text(
          _currentTitle,
          style: TextStyle(
            color: DynamicTheme.of(context).brightness == Brightness.light
              ? Colors.black
              : Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(OMIcons.home),
            color: DynamicTheme.of(context).brightness == Brightness.light
                ? Colors.black
                : Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, '/HomeScreen');
            },
          ),
        ],
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
                    icon: Icon(OMIcons.more),
                    onPressed: () => showRoundedModalBottomSheet(
                      context: context,
                      color: Theme.of(context).canvasColor,
                      dismissOnTap: false,
                      builder: (builder) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ModalDrawerHandle(
                                handleColor: Colors.indigoAccent,
                              ),
                            ),
                            ListTile(
                              leading: Icon(OMIcons.accountCircle),
                              title: Text('Flubber Team'),
                              subtitle: Text('flubberteam@gmail.com'),
                              trailing: FlatButton(
                                child: Text("Log Out"),
                                onPressed: () {
                                  Navigator.of(context).pushNamedAndRemoveUntil(
                                      '/LoginScreen', (Route<dynamic> route) => false);
                                },
                              ),
                            ),
                            Divider(
                              height: 0.0,
                              color: Colors.grey,
                            ),
                            Material(
                              child: ListTile(
                                title: Text("My Submissions"),
                                leading:
                                Icon(GroovinMaterialIcons.upload_multiple),
                                onTap: () {},
                              ),
                            ),
                            Material(
                              child: ListTile(
                                leading: DynamicTheme.of(context).brightness == Brightness.light
                                  ? Icon(GroovinMaterialIcons.weather_night)
                                  : Icon(Icons.wb_sunny),
                                title: DynamicTheme.of(context).brightness == Brightness.light
                                    ? Text("Turn on Dark Mode")
                                    : Text("Turn off Dark Mode"),
                                onTap: () {
                                  changeBrightness();
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                            Divider(
                              height: 0.0,
                              color: Colors.grey,
                            ),
                            ListTile(
                              leading: Icon(OMIcons.info),
                              title: Text("Flutter Community Challenges"),
                              subtitle: Text(_packageInfo.version),
                            ),
                          ],
                        );
                      },
                    ),
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
                      _changeCurrentScreen("ChallengeSuggestions");
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
