import 'package:flutter_api_freezed/presentation/data/model/user.dart';
import 'package:flutter_api_freezed/presentation/data/repositories/user_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_api_freezed/presentation/bloc/user_event.dart';
import 'package:flutter_api_freezed/presentation/bloc/user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserRepositoryImplement _repositoryImplement;
  UserBloc(this._repositoryImplement) : super(UserInitialState());
  late List<User> _user;

  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    if (event is InitialUserFirst) {
      yield UserInitialState();
      try {
        _user = await _repositoryImplement.getUser();
        yield UserLoadedState(_user);
      } on Exception catch (e) {
        yield UserError(e);
      }
    }
  }
}
