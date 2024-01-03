import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:yalla_reisen_withspringboot/app/router/route.dart';

class DataPage extends StatelessWidget {
  final Widget navigator;
  final String path;

  const DataPage({super.key, required this.navigator, required this.path});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 2,
          ),
          Container(
            height: 40,
            width: double.infinity,
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 1, color: Color.fromARGB(255, 214, 214, 214)))),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: AppRoutes.appRoutes
                  .firstWhere((element) => element.name == "Data")
                  .subRoutes!
                  .length,
              itemBuilder: (context, index) {
                AppRoute e = AppRoutes.appRoutes
                    .firstWhere((element) => element.name == "Data")
                    .subRoutes![index]!;
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
          ),
          const Gap(
            12,
          ),
          Expanded(child: navigator)
        ],
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
                  color: path.contains(e.path) ? Colors.blue[900] : null,
                  fontWeight: path.contains(e.path) ? FontWeight.bold : null,
                  fontSize: 16,
                ),
              ),
            )),
            Container(
              height: 2,
              color: path.contains(e.path) ? Colors.blue[900] : null,
            )
          ],
        ),
      ),
    );
  }
}

class _DataPageHeaderCard extends StatelessWidget {
  const _DataPageHeaderCard({
    super.key,
    required this.path,
    required this.e,
  });

  final String path;
  final AppRoute e;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      margin: const EdgeInsets.symmetric(horizontal: 0),
      color: path.contains(e.path) ? Colors.blue[900] : null,
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
                child: Icon(e.icon,
                    size: 60,
                    color: path.contains(e.path) ? Colors.white : null)),
            Text(
              e.name,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: path.contains(e.path) ? Colors.white : null),
            )
          ],
        ),
      ),
    );
  }
}
