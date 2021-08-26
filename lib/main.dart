import 'package:flutter/material.dart';
import 'package:flutter_api_freezed/presentation/bloc/user_bloc.dart';
import 'package:flutter_api_freezed/presentation/bloc/user_event.dart';
import 'package:flutter_api_freezed/presentation/data/repositories/user_repo.dart';
import 'package:flutter_api_freezed/presentation/screen/datashow.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UserRepositoryImplement _repositoryImplement = UserRepositoryImplement();
    return BlocProvider(
      create: (context) =>
          UserBloc(_repositoryImplement)..add(InitialUserFirst()),
      child: MaterialApp(
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Colors.indigo,
            elevation: 0,
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: DataShow(),
      ),
    );
  }
}
