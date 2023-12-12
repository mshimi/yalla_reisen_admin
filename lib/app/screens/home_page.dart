import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yalla_reisen_withspringboot/app/di.dart';
import 'package:yalla_reisen_withspringboot/app/router/route.dart';
import 'package:yalla_reisen_withspringboot/features/Authentication/presentation/bloc/authentication_bloc.dart';

class HomePage extends StatelessWidget {
  Widget navigator;
  String path;
  HomePage({super.key, required this.navigator, required this.path});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.20,
            height: MediaQuery.of(context).size.height,
            color: Colors.blue[900],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _UserInfo(),
                Expanded(
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: AppRoutes.appRoutes.length,
                    itemBuilder: (context, index) {
                      var appRoute = AppRoutes.appRoutes[index];
                      return _MenuItem(appRoute: appRoute, path: path);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 3,
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
            alignment: Alignment.topLeft,
            child: navigator,
          )),
        ],
      ),
    );
  }
}

class _MenuItem extends StatefulWidget {
  _MenuItem({
    super.key,
    required this.appRoute,
    required this.path,
  });

  String path;
  final AppRoute appRoute;
  bool isExpanded = false;
  ExpansionTileController controller = ExpansionTileController();

  @override
  State<_MenuItem> createState() => _MenuItemState();
}

class _MenuItemState extends State<_MenuItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.appRoute.function(context);
      },
      onHover: (value) {
        setState(() {
          if (value == true) {
          } else {}
        });
      },
      child: Container(
        color: AppRoutes.isCurrentSelectedRoute(
                path: widget.path, appRoute: widget.appRoute)
            ? Colors.blue[200]
            : null,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        height: 60,
        child: Row(
          children: [
            Icon(
              widget.appRoute.icon,
              color: Colors.white,
              size: 22,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              widget.appRoute.name,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                  tag: "logo",
                  child: Image.asset(
                    "assests/photos/logo2.png",
                    fit: BoxFit.fitWidth,
                    width: MediaQuery.of(context).size.width * 0.15,
                  )),
              FutureBuilder(
                  future: getIt<AuthenticationBloc>().currentUser,
                  builder: (context, user) {
                    if (!user.hasData) {
                      return CircularProgressIndicator();
                    }
                    String firstName = user.data!.firstName!;
                    String name = user.data!.lastName!;
                    String email = user.data!.email!;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "$firstName $name",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          email,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: Colors.grey[300]),
                        )
                      ],
                    );
                  }),
            ],
          ),
          IconButton(
              onPressed: () {
                getIt<AuthenticationBloc>()
                    .add(AuthenticationEvent.unAuthenticated());
              },
              icon: Icon(
                Icons.logout,
                color: Colors.white,
                size: 25,
              ))
        ],
      ),
    );
  }
}
