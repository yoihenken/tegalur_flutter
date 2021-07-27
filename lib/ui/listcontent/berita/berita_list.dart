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
                    itemCount: _data.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 0.7, mainAxisSpacing: 15, crossAxisSpacing: 15
                    ),
                    itemBuilder: (context, i){
                      final _item = _data[i];
                      return GestureDetector(
                        onTap:  (){

                        },
                        child: Stack(
                          children: [
                            Container(
                              width: 180,
                              height: MediaQuery.of(context).size.height,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(_item.img),
                                  fit: BoxFit.cover
                                )
                              ),
                            )
                          ],
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
