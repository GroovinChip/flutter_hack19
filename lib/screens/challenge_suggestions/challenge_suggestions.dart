import 'package:flubber_nyc_hack19/library.dart';

class ChallengeSuggestions extends StatefulWidget {
  @override
  _ChallengeSuggestionsState createState() => _ChallengeSuggestionsState();
}

class _ChallengeSuggestionsState extends State<ChallengeSuggestions> {
  int voteCount = 0;
  Color upvoteColor = Colors.black;
  Color downvoteColor = Colors.black;
  String upvoteType;
  bool hasUpvoted = false;
  bool hasDownvoted = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          elevation: 0,
          color: Theme.of(context).canvasColor,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0),
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
                            padding: const EdgeInsets.only(top: 8.0, bottom: 20.0),
                            child: Row(
                              children: <Widget>[
                                Icon(OMIcons.checkCircleOutline),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text("Productivity"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 0.0),
                    child: Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.arrow_upward, color: upvoteColor),
                          onPressed: (){
                            /// Determine whether the user has vote already

                            if (hasUpvoted == false && hasDownvoted == false) {
                              setState(() {
                                voteCount += 1;
                                hasUpvoted = true;
                                upvoteColor = Colors.orange;
                              });
                            } else if (hasDownvoted == true && hasUpvoted == false) {
                              setState(() {
                                voteCount += 1;
                                hasUpvoted = true;
                                hasDownvoted = false;
                                upvoteColor = Colors.orange;
                                downvoteColor = Colors.black;
                              });
                            }
                          },
                        ),
                        Text(voteCount.toString()),
                        IconButton(
                          icon: Icon(Icons.arrow_downward, color: downvoteColor),
                          onPressed: (){
                            /// Determine whether the user has vote already

                            if (hasUpvoted == true && hasDownvoted == false) {
                              setState(() {
                                voteCount -= 1;
                                hasDownvoted = true;
                                hasUpvoted = false;
                                downvoteColor = Colors.indigo;
                                upvoteColor = Colors.black;
                              });
                            }
                          },
                        ),
                      ],
                    )
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
