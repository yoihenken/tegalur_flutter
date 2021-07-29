import 'package:flutter/material.dart';
import 'package:tegalur_flutter/routes.dart';

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
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, rDashboard);
          },
          child: Container(
            padding: EdgeInsets.all(20),
            child: Text('Home'),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, rAbout);
          },
          child: Container(
            padding: EdgeInsets.all(20),
            child: Text('About'),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, rFeedbackForm);
          },
          child: Container(
            padding: EdgeInsets.all(20),
            child: Text('Feedback'),
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
