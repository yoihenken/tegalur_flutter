import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tegalur_flutter/ui/footer.dart';
import 'package:tegalur_flutter/ui/jumbotron.dart';
import 'package:tegalur_flutter/ui/navigation_bar.dart';

class About extends StatelessWidget {
  const About({Key key}) : super(key: key);

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
                  color: Color(0xfff4623a),
                  padding: EdgeInsets.fromLTRB(30, 80, 30, 80),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text('KOTA TEGAL',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            color: Colors.white,
                            height: 3,
                            width: 100,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              alignment: Alignment.center,
                              child: Text(
                                'Kota Tegal adalah salah satu kota yang terletak di Provinsi Jawa Tengah ini ternyata menyimpan banyak hal yang patut untuk di explore lebih dalam. Pasalnya, seringkali Kota Tegal dijadikan julukan sebagai warung serba aneka pinggir jalan yang berjualan makanan terutama makanan khasnya. Meski begitu dukungan dari Pemerintah sendirilah yang dapat membantu memajukan wisata kuliner ataupun wisata daerah ataupun situs bersejarah penting yang terdapat di Kota Tegal. Tegal dan alamnya sudah seperti kolaborasi yang memunculkan keindahan tak tertandingi dan membuat pengunjungnya merasakan keindahan.',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ), //Deskripsi
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
                            child: Text('OUR TEAM',
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
            GridView.extent(
              shrinkWrap: true,
              padding: EdgeInsets.all(100),
              maxCrossAxisExtent: 250,
              crossAxisSpacing: 100,
              mainAxisSpacing: 50,
              children: [
                Column(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('asset/img/ajeng.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Text(
                      'Ajeng Fitria Rahmawati',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('asset/img/bagus.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Text(
                      'Bagus Bayu Sasongko',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('asset/img/gamaliel.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Text(
                      'Gamaliel Widhi Pradhana',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('asset/img/vicky.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Text(
                      'Vicky Febiola Amanda Puspa',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
