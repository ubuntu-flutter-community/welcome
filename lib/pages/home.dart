import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: YaruPage(
          children: [
            const Image(image: AssetImage('assets/ubuntu.png')),
            const SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                    onPressed: () {},
                    child: Text('Introduction'),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            YaruColors.ubuntuOrange))),
                ElevatedButton(
                    onPressed: () {},
                    child: Text('Getting Started'),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            YaruColors.ubuntuOrange))),
                ElevatedButton(
                    onPressed: () {},
                    child: Text('Personalize'),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            YaruColors.ubuntuOrange))),
                ElevatedButton(
                    onPressed: () {},
                    child: Text('Recommendations'),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            YaruColors.ubuntuOrange))),
                ElevatedButton(
                    onPressed: () {},
                    child: Text('Community'),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            YaruColors.ubuntuOrange))),
              ],
            ),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                    onPressed: () {},
                    child: Text('Store'),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            YaruColors.ubuntuOrange))),
                ElevatedButton(
                    onPressed: () {},
                    child: Text('Gaming'),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            YaruColors.ubuntuOrange))),
                ElevatedButton(
                    onPressed: () {},
                    child: Text('Opportunities'),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            YaruColors.ubuntuOrange))),
                ElevatedButton(
                    onPressed: () {},
                    child: Text('Get Involved'),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            YaruColors.ubuntuOrange))),
                ElevatedButton(
                    onPressed: () {},
                    child: Text('Donate'),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            YaruColors.ubuntuOrange))),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: YaruColors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.facebook)),
            IconButton(onPressed: () {}, icon: Icon(Icons.telegram))
          ],
        ),
      ),
    );
  }
}
