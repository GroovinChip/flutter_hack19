import 'package:flubber_nyc_hack19/library.dart';


class UpcomingChallengesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        Container(
          height: 100,
          child: Card(

            child: Center(child: Text(
              "Challenge 1",
              style: TextStyle(fontSize: 20),

            ))
          ),
        ),
        Container(
          height: 100,
          child: Card(

              child: Center(child: Text(
                "Challenge 2",
                style: TextStyle(fontSize: 20),

              ))
          ),
        ),
        Container(
          height: 100,
          child: Card(

              child: Center(child: Text(
                "Challenge 3",
                style: TextStyle(fontSize: 20),

              ))
          ),
        ),

      ],
    );
  }

}