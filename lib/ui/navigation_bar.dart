import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget implements PreferredSizeWidget {

  final AppBar appBar;
  const NavigationBar({Key key, this.appBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color(0xfff4623a),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: Image.asset('asset/img/Logo.png'),
          )
        ],
      ),
      actions: [
        Container(
          padding: EdgeInsets.all(20),
          child: Text('Home'),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Text('About'),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Text('Login'),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
