import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tegalur_flutter/bloc/get_berita/get_berita_cubit.dart';
import 'package:tegalur_flutter/bloc/get_event/get_event_cubit.dart';
import 'package:tegalur_flutter/bloc/get_wisata/get_wisata_cubit.dart';
import 'package:tegalur_flutter/routes.dart';

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
        BlocProvider(create: (_) => GetWisataCubit()),
        BlocProvider(create: (_) => GetEventCubit()),
      ],
      child: MaterialApp(
        title: 'Tegalur',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: rDashboard,
        onGenerateRoute: generateRoute,
      ),
    );
  }
}
