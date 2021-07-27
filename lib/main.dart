import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tegalur_flutter/bloc/get_berita/get_berita_cubit.dart';
import 'package:tegalur_flutter/routes.dart';
import 'package:tegalur_flutter/ui/dashboard/dashboard.dart';
import 'package:tegalur_flutter/ui/listcontent/berita/berita_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => GetBeritaCubit()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: rDashboard,
        onGenerateRoute: generateRoute,
      ),
    );
  }
}
