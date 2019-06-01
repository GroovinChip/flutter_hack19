import 'package:flubber_nyc_hack19/library.dart';

class CurrentChallenge extends StatefulWidget {
  @override
  _CurrentChallengeState createState() => _CurrentChallengeState();
}

class _CurrentChallengeState extends State<CurrentChallenge> {
  @override
  Widget build(BuildContext context) {
    return           Card(
      elevation:1,
      color: Theme.of(context).canvasColor,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Wrap(
                        children: <Widget>[
                          Text(
                            "Flutter Community Challenges for Mods - Submitted by GroovinChip",
                            style: TextStyle(
                                fontSize: 16.0
                            ),
                          ),
                        ],
                      ),
                      Wrap(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              "An app for moderators of the Flutter Community Challenges app to monitor submissions",
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(GroovinMaterialIcons.clock_start),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text("Time remaining: 2 days"),
                                )
                              ],
                            ),
                            Text(
                                "2019-05-25"
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
