import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            color: Colors.white,
            height: 100,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: Text(
              'Copyright © Tegalur 2021',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 12,
              ),
            ))
      ],
    );
  }
}
