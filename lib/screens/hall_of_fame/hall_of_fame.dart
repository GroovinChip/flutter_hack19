import 'package:flubber_nyc_hack19/library.dart';

class HallOfFame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 100,
          child: Card(

              child: Center(child: Text(
                "Winner 1",
                style: TextStyle(fontSize: 20),

              ))
          ),
        ),
        Container(
          height: 100,
          child: Card(

              child: Center(child: Text(
                "Winner 2",
                style: TextStyle(fontSize: 20),

              ))
          ),
        ),
        Container(
          height: 100,
          child: Card(

              child: Center(child: Text(
                "Winner 3",
                style: TextStyle(fontSize: 20),

              ))
          ),
        ),

        Container(
          height: 100,
          child: Card(

              child: Center(child: Text(
                "Winner 4",
                style: TextStyle(fontSize: 20),

              ))
          ),
        ),

      ],
    );
  }
}