import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tegalur_flutter/bloc/get_wisata/get_wisata_cubit.dart';
import 'package:tegalur_flutter/ui/jumbotron.dart';
import 'package:tegalur_flutter/ui/navigation_bar.dart';

class WisataList extends StatefulWidget {
  const WisataList({Key key}) : super(key: key);

  @override
  _WisataListState createState() => _WisataListState();
}

class _WisataListState extends State<WisataList> {
  @override
  void initState() {
    super.initState();
    context.read<GetWisataCubit>().fetchWisata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: NavigationBar(appBar: AppBar()),
        body: BlocBuilder<GetWisataCubit, GetWisataState>(
            builder: (context, state) {
              if (state is GetWisataFailure) {
                return Text(state.msg);
              }
              if (state is GetWisataSuccess) {
                final _data = state.data;
                return SingleChildScrollView(
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
                                        child: Text('List Pariwisata',
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
                        ), // List Wisata
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 50, 30, 50),
                          child: GridView.builder(
                            shrinkWrap: true,
                              itemCount: _data.length,
                              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 400.0,
                                  crossAxisSpacing: 20.0,
                                  mainAxisSpacing: 20.0),
                              itemBuilder: (context, i){
                                final _item = _data[i];
                                return GestureDetector(
                                  onTap:  (){},
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Color(0xfff4623a),
                                                spreadRadius: 3)
                                          ]),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: NetworkImage(_item.image)
                                                )
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(vertical: 10),
                                            child: Text(_item.title,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0xfff4623a),
                                                    fontWeight: FontWeight.bold)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }
                          ),
                        )
                      ],
                    ));
              }
              return Container();
            }));
  }
}
