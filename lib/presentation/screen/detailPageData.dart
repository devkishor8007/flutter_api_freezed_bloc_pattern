import 'package:flutter/material.dart';
import 'package:flutter_api_freezed/presentation/data/model/user.dart';
import 'package:flutter_api_freezed/presentation/widget/list.dart';

class DetailPageData extends StatelessWidget {
  final User? user;
  final String? image;

  DetailPageData({
    this.user,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    getImages.shuffle();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 30,
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 10,
                  top: 0,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.clear,
                      size: 27,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(80),
                        child: Image.network(
                          image!,
                          fit: BoxFit.cover,
                          height: 165,
                          width: 165,
                        ),
                      ),
                    ),
                    Text(
                      user!.name,
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.headline6!.fontSize,
                      ),
                      textScaleFactor: 1.3,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "${user!.address.suite}, ${user!.address.street}, ${user!.address.city}",
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.subtitle2!.fontSize,
                      ),
                      textScaleFactor: 1.1,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      user!.phone,
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.subtitle2!.fontSize,
                      ),
                      textScaleFactor: 1.1,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      user!.email,
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.subtitle2!.fontSize,
                      ),
                      textScaleFactor: 1.1,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    ...getImages.map(
                      (image) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          shadowColor: Colors.blueAccent,
                          elevation: 15,
                          child: Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            child: Image.network(
                              image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
