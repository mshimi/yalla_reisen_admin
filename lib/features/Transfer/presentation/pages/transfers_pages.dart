import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:yalla_reisen_withspringboot/app/router/route.dart';

class TransfersPages extends StatelessWidget {
  const TransfersPages(
      {super.key, required this.navigator, required this.path});
  final Widget navigator;
  final String path;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 2,
          ),
          TopNabigationBar(
              name: "Transfer",
              approutes: AppRoutes.appRoutes
                  .firstWhere((element) => element.name == "Transfer")
                  .subRoutes!,
              path: path),
          const Gap(
            12,
          ),
          Expanded(child: navigator)
        ],
      ),
    );
  }
}

class TopNabigationBar extends StatelessWidget {
  const TopNabigationBar(
      {super.key,
      required this.name,
      required this.approutes,
      required this.path});

  final String name;
  final List<AppRoute?> approutes;
  final String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  width: 1, color: Color.fromARGB(255, 214, 214, 214)))),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: approutes.length,
        itemBuilder: (context, index) {
          AppRoute e = approutes[index]!;

          return InkWell(
            onTap: () {
              e.function(context);
            },
            // child: _DataPageHeaderCard(path: path, e: e),
            child: _DataPageHeaderNew(path: path, e: e),
          );
        },
        separatorBuilder: (context, index) {
          return const Gap(0);
        },
      ),
    );
  }
}

class _DataPageHeaderNew extends StatelessWidget {
  const _DataPageHeaderNew({
    super.key,
    required this.path,
    required this.e,
  });

  final String path;
  final AppRoute e;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 120,
      child: PopupMenuButton(
        enabled: false,
        tooltip: "",
        position: PopupMenuPosition.under,
        itemBuilder: (context) {
          return [
            PopupMenuItem(child: Text("data")),
          ];
        },
        child: Column(
          children: [
            Expanded(
                child: Center(
              child: Text(
                e.name,
                style: TextStyle(
                  color: path == e.path ? Colors.blue[900] : null,
                  fontWeight: path == e.path ? FontWeight.bold : null,
                  fontSize: 16,
                ),
              ),
            )),
            Container(
              height: 2,
              color: path == e.path ? Colors.blue[900] : null,
            )
          ],
        ),
      ),
    );
  }
}
