import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api_freezed/presentation/bloc/user_bloc.dart';
import 'package:flutter_api_freezed/presentation/bloc/user_state.dart';
import 'package:flutter_api_freezed/presentation/screen/detailPageData.dart';
import 'package:flutter_api_freezed/presentation/widget/list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DataShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fetcher-Thron",
        ),
      ),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state is UserInitialState) {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.green[900],
              ),
            );
          }
          if (state is UserLoadedState) {
            return ListView.separated(
              separatorBuilder: (context, value) => Divider(),
              itemCount: state.user.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DetailPageData(
                          user: state.user[index],
                          image: getImages[index],
                        ),
                      ),
                    );
                  },
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: CachedNetworkImage(
                        imageUrl: getImages[index],
                        placeholder: (context, url) => Text(""),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      state.user[index].name,
                    ),
                    subtitle: Text(
                      state.user[index].address.suite,
                    ),
                  ),
                );
              },
            );
          } else if (state is UserError) {
            return Center(
              child: Text(state.error.toString()),
            );
          }
          return Container();
        },
      ),
    );
  }
}
