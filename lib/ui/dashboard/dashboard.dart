import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tegalur_flutter/routes.dart';
import 'package:tegalur_flutter/ui/footer.dart';
import 'package:tegalur_flutter/ui/jumbotron.dart';
import 'package:tegalur_flutter/ui/navigation_bar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavigationBar(appBar: AppBar()),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Jumbotron(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(20),
                            child: Text('MENU',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(20),
                            color: Color(0xfff4623a),
                            height: 3,
                            width: 100,
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, rBeritaList);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3,
                        height: MediaQuery.of(context).size.height / 3,
                        alignment: Alignment.center,
                        child: Text(
                          'BERITA',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.5),
                                    BlendMode.darken),
                                image: AssetImage('asset/img/berita.jpg'))),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, rWisataList);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3,
                        height: MediaQuery.of(context).size.height / 3,
                        alignment: Alignment.center,
                        child: Text(
                          'PARIWISATA',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.5),
                                    BlendMode.darken),
                                image: AssetImage('asset/img/wisata.jpg'))),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, rEventList);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3,
                        height: MediaQuery.of(context).size.height / 3,
                        alignment: Alignment.center,
                        child: Text(
                          'EVENT',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.5),
                                    BlendMode.darken),
                                image: AssetImage('asset/img/event.jpg'))),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
