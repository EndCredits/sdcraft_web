import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'maintainer/members.dart';
import 'background/background.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
            appBar: AppBar(
              title: Text('SD Minecraft Server'),
              elevation: 3.0,
              bottom: TabBar(
                unselectedLabelColor: Colors.black12,
                indicatorColor: Colors.white,
                isScrollable: true,
                tabs: [
                  SizedBox(
                    height: 30,
                    child: Text('主页'),
                  ),
                  SizedBox(
                    height: 30,
                    child: Text('特色'),
                  ),
                  SizedBox(
                    height: 30,
                    child: Text('管理'),
                  ),
                  SizedBox(
                    height: 30,
                    child: Text('加入我们'),
                  ),
                  ElevatedButton(
                    onPressed: () => _openExtern(),
                    child: SizedBox(
                      child: Text('工具书'),
                      height: 30,
                    ),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                Scaffold(
                  body: ITopBarMain(),
                ),
                Scaffold(
                  body: IServerSpecific(),
                ),
                Scaffold(
                  body: ITopBarAdministrator(),
                ),
                Scaffold(
                  body: IJoinUs(),
                ),
                Scaffold(
                  body: ElevatedButton(
                    onPressed: () => _openExtern(),
                    child: Text('工具书'),
                  ),
                ),
              ],
            ),
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    child: Column(children: [
                      Text(
                        'Copyright (C) 2020 - 2021, SDTeam All rights reserved.',
                        style: TextStyle(
                          fontSize: 8.0,
                        ),
                      ),
                      Text(
                        '“Minecraft” and “我的世界” is the trademarks of Mojang Synergies AB ',
                        style: TextStyle(fontSize: 8.0),
                      ),
                    ]),
                    decoration: BoxDecoration(color: Colors.grey[100]),
                  ),
                  ListTile(
                    title: Column(children: [
                      Text(
                        'This Flutter is super powerful.',
                        textAlign: TextAlign.left,
                      ),
                      Text('Made with ♥ by EndCredits.'),
                    ]),
                  )
                ],
              ),
            )),
      ),
      theme: ThemeData(
          primarySwatch: Colors.green,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70),
    );
  }
}

class ITopBarMain extends StatelessWidget {
  const ITopBarMain({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image:
              DecorationImage(image: NetworkImage(backgroundImage[0].imageURL)),
        ),
        child: Scaffold(body: IMainBody1()));
  }
}

class ITopBarAdministrator extends StatelessWidget {
  const ITopBarAdministrator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            body: ListView.builder(
      itemCount: maintainers.length,
      itemBuilder: _listItemBuilder,
    )));
  }

  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.only(left: 350.0, right: 350.0, top: 10, bottom: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.green,
            Colors.white,
          ]),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(4.0, 6.0), color: Colors.black54, blurRadius: 10)
          ],
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
              color: Colors.green, width: 3.0, style: BorderStyle.solid)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
              child: Image.asset(
            maintainers[index].imageURL,
            scale: 2.5,
          )),
          Center(
            child: Column(children: [
              Text(
                maintainers[index].name,
                style: TextStyle(fontSize: 24),
              ),
              Text(
                maintainers[index].moto,
                style: TextStyle(fontSize: 16),
              )
            ]),
          )
        ],
      ),
    );
  }
}

class IMainBody1 extends StatelessWidget {
  const IMainBody1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(backgroundImage[0].imageURL),
          ),
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '在这里建构，您的自由',
              style: TextStyle(fontSize: 48, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            Text(
              '欢迎您加入 SD Minecraft Server',
              style: TextStyle(fontSize: 36, color: Colors.white),
              textAlign: TextAlign.center,
            )
          ],
        )));
  }
}

class IJoinUs extends StatelessWidget {
  const IJoinUs({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(backgroundImage[0].imageURL))),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'QQ群: 1031419163',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            Text(
              '版本: 1.16.5',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            Text(
              '恭候您的光临',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class IServerSpecific extends StatelessWidget {
  const IServerSpecific({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Page Building ....',
        )
      ],
    )));
  }
}

void _openExtern() async {
  const gitBookUrl = 'https://book.sdcraft.fun/';
  if (true) {
    await launch(gitBookUrl);
  } else {
    throw 'Could not launch $gitBookUrl';
  }
}