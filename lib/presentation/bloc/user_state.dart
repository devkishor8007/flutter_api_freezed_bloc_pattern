// initial state => use where there is no data present
//loading state => while fetching data is loading
// succesfull state => works successfully
//error state => api call give error

import 'package:flutter_api_freezed/presentation/data/model/user.dart';

abstract class UserState {}

class UserInitialState extends UserState {}

class UserLoadingState extends UserState {}

class UserLoadedState extends UserState {
  final List<User> user;
  UserLoadedState(this.user);
}

class UserError extends UserState {
  final Exception error;
  UserError(this.error);
}
