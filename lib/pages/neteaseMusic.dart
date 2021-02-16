import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final String neteaseImage = 'assets/img/wangyiyun.jpg';

class INeteasePage extends StatelessWidget {
  const INeteasePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: FittedBox(
            fit: BoxFit.contain,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: NetworkImage(neteaseImage)),
                Text('老网抑☁了'),
              ],
            )));
  }
}
