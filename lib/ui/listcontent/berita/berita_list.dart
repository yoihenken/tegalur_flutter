import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tegalur_flutter/bloc/get_berita/get_berita_cubit.dart';
import 'package:tegalur_flutter/ui/jumbotron.dart';
import 'package:tegalur_flutter/ui/navigation_bar.dart';

class BeritaList extends StatefulWidget {
  const BeritaList({Key key}) : super(key: key);

  @override
  _BeritaListState createState() => _BeritaListState();
}

class _BeritaListState extends State<BeritaList> {
  @override
  void initState() {
    super.initState();
    context.read<GetBeritaCubit>().fetchBerita();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: NavigationBar(appBar: AppBar()),
        body: BlocBuilder<GetBeritaCubit, GetBeritaState>(
            builder: (context, state) {
          if (state is GetBeritaFailure) {
            return Text(state.msg);
          }
          if (state is GetBeritaSuccess) {
            final _data = state.data;
            print('Data Length :  ${_data.length}');
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
                                child: Text('List Berita',
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
                ), // List Berita
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 50, 30, 50),
                  child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: _data.length,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 400.0,
                        crossAxisSpacing: 20.0,
                        mainAxisSpacing: 20.0,),
                      itemBuilder: (context, i) {
                        final _item = _data[i];
                        return GestureDetector(
                          onTap: () {},
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
                                  Image.network(
                                    _item.img,
                                    fit: BoxFit.cover,
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
                                  ),
                                  Text(_item.date,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                )
              ],
            ));
          }
          return Container();
        }));
  }
}
