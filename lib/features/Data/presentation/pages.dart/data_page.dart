import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:yalla_reisen_withspringboot/app/router/route.dart';

class DataPage extends StatelessWidget {
 final Widget navigator;
final  String path;

const  DataPage({super.key, required this.navigator, required this.path});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 120,
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
                  child: Card(
                    elevation: 20,
                    margin:const EdgeInsets.symmetric(horizontal: 0),
                    color: path.contains(e!.path) ? Colors.blue[900] : null,
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Expanded(
                              child: Icon(e.icon,
                                  size: 60,
                                  color: path.contains(e.path)
                                      ? Colors.white
                                      : null)),
                          Text(
                            e.name,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: path.contains(e.path)
                                        ? Colors.white
                                        : null),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Gap(
                  10
                );
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
