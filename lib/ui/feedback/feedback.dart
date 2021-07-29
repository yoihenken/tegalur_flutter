import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tegalur_flutter/services/database.dart';
import 'package:tegalur_flutter/ui/footer.dart';
import 'package:tegalur_flutter/ui/jumbotron.dart';
import 'package:tegalur_flutter/ui/navigation_bar.dart';

class FeedbackForm extends StatefulWidget {
  const FeedbackForm({Key key}) : super(key: key);

  @override
  _FeedbackFormState createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  String name, email, comment;

  getName(name) {
    this.name = name;
  }

  getEmail(email) {
    this.email = email;
  }

  getComment(comment) {
    this.comment = comment;
  }

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
                            child: Text('Feedback Form',
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
            ), //Head
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: TextField(
                    onChanged: (String name) {
                      getName(name);
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 10),
                  child: TextField(
                    onChanged: (String email) {
                      getEmail(email);
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 10),
                  child: TextField(
                    minLines: 5,
                    maxLines: 10,
                    onChanged: (String comment) {
                      getComment(comment);
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Comment',
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 30, 30, 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0xfff4623a),
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)))),
                onPressed: () {
                  DatabaseService.addData(name, email, comment);
                },
                child: Text('Submit'),
              ),
            ),

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
                        child: Text('Review',
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
            ),
            StreamBuilder<QuerySnapshot>(
                stream: DatabaseService.snapshotFireshot,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: Text('Waiting ...'));
                  }
                  return ListView(
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      children: snapshot.data.docs
                          .map((DocumentSnapshot data) => Padding(
                                padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color(0xfff4623a),
                                            spreadRadius: 3)
                                      ]),
                                  child: Column(
                                    children: [
                                      Text(
                                        '${data['name']} || ${data['email']}',
                                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(20),
                                        color: Color(0xfff4623a),
                                        margin: EdgeInsets.fromLTRB(0, 5, 0, 10),
                                        height: 3,
                                        width: 50,
                                      ),
                                      Text(data['comment'],
                                          style: TextStyle(fontSize: 12))
                                    ],
                                  ),
                                ),
                              ))
                          .toList());
                }),
            Footer(),
          ],
        ),
      ),
    );
  }
}
