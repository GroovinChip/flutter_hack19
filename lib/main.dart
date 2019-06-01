import 'library.dart';

void main() {
  _setTargetPlatformForDesktop();
  runApp(MyApp());
}

/// If the current platform is desktop, override the default platform to
/// a supported platform (iOS for macOS, Android for Linux and Windows).
/// Otherwise, do nothing.
void _setTargetPlatformForDesktop() {
  TargetPlatform targetPlatform;
  if (Platform.isMacOS) {
    targetPlatform = TargetPlatform.iOS;
  } else if (Platform.isLinux || Platform.isWindows) {
    targetPlatform = TargetPlatform.android;
  }
  if (targetPlatform != null) {
    debugDefaultTargetPlatformOverride = targetPlatform;
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flubber Community Challenges',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        primaryColor: Colors.indigo,
        accentColor: Colors.indigoAccent,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(),
        ),
      ),
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        "/CurrentChallenge": (BuildContext context) => CurrentChallenge(),
        "/SubmitEntryToChallenge": (BuildContext context) => SubmitEntryToChallenge(),
        "/VoteOnChallengeSuggestions": (BuildContext context) => ChallengeSuggestions(),
        /*"/HallOfFame": (BuildContext context) => HallOfFame(),
        "/UpcomingChallenges": (BuildContext context) => UpcomingChallenges(),
        "/VoteOnChallengeSuggestions": (BuildContext context) => VoteOnChallengeSuggestions(),
        "/SuggestChallenge": (BuildContext context) => SuggestChallenge(),
        "/SubmitEntryToChallenge": (BuildContext context) => SubmitEntryToChallenge(),
        "/Settings": (BuildContext context) => Settings(),*/
      },
    );
  }
}