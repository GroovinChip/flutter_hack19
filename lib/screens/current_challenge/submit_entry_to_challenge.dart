import 'package:flubber_nyc_hack19/library.dart';

class SubmitEntryToChallenge extends StatefulWidget {
  @override
  _SubmitEntryToChallengeState createState() => _SubmitEntryToChallengeState();
}

class _SubmitEntryToChallengeState extends State<SubmitEntryToChallenge> {
  var repoSelection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Theme.of(context).canvasColor,
        title: Text(
          'Submit Challenge Entry',
          style: TextStyle(
            color: DynamicTheme.of(context).brightness == Brightness.light
                ? Colors.black
                : Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16),
                child: OutlineDropdownButton(

                  items: [
                    DropdownMenuItem(
                      child: Text('Demo Repository 1'),
                      value: 'Demo Repository 1',
                    ),
                    DropdownMenuItem(
                      child: Text('Demo Repository 2'),
                      value: 'Demo Repository 2',
                    ),
                    DropdownMenuItem(
                      child: Text('Demo Repository 3'),
                      value: 'Demo Repository 3',
                    ),
                  ],
                  hint: Row(
                    children: <Widget>[
                      Icon(
                        GroovinMaterialIcons.github_circle,
                        color: DynamicTheme.of(context).brightness == Brightness.light
                          ? Colors.black
                          : Colors.white,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text('Choose a repository'),
                    ],
                  ),
                  isExpanded: true,
                  value: repoSelection,
                  onChanged: (value) {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'App Description',
                      prefixIcon: Icon(
                        GroovinMaterialIcons.message_text,
                        color: DynamicTheme.of(context).brightness == Brightness.light
                          ? Colors.black
                          : Colors.white,
                      ),
                  ),
                  maxLines: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Divider(
                  color: DynamicTheme.of(context).brightness == Brightness.light
                    ? Colors.black
                    : Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
                child: ListTile(
                  //leading: Icon(OMIcons.image),
                  title: Text("Upload Screenshots"),
                  trailing: IconButton(
                    icon: Icon(Icons.add_photo_alternate,
                      color: DynamicTheme.of(context).brightness == Brightness.light
                      ? Colors.black
                      : Colors.white,
                    ),
                    onPressed: () {
                      //checkPermissions();
                      //getImage();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.cloud_upload),
        label: Text("Submit"),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
