import 'package:flubber_nyc_hack19/library.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                "Flutter Community Challenges",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
              ),
              Image.asset(
                'assets/images/app-icon.png',
                height: 150,
                width: 150,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton.extended(
                    icon: Icon(GroovinMaterialIcons.flutter),
                    label: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () => Navigator.pushNamedAndRemoveUntil(context, '/HomeScreen', (Route<dynamic> route) => false),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
