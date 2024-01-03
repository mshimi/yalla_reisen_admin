import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yalla_reisen_withspringboot/app/di.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/data_table.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/loading_widget.dart';
import 'package:yalla_reisen_withspringboot/features/Data/Domain/repository/area_repository.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/area_model.dart';
import 'package:yalla_reisen_withspringboot/features/Data/presentation/blocs/areas_bloc/areas_bloc.dart';

class AreasPage extends StatelessWidget {
  const AreasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AreasBloc(areaRepository: getIt<AreaRepository>())
        ..add(AreasEvent.started()),
      child: BlocBuilder<AreasBloc, AreasState>(
        builder: (context, state) {
          return state.when(
            initial: () => const LoadingWidget(),
            failure: () => Placeholder(),
            hasData: (areas) => _HasDataWidget(
              areas: areas,
            ),
          );
        },
      ),
    );
  }
}

class _HasDataWidget extends StatelessWidget {
  const _HasDataWidget({super.key, required this.areas});

  final List<AreaModel> areas;

  @override
  Widget build(BuildContext context) {
    return CustomDataTable(
        pageHeader: TableHeader(
          header: "Areas",
          descreption: "All Areas",
          actions: [
            IconButton(
                onPressed: () {
                  BlocProvider.of<AreasBloc>(context)
                      .add(AreasEvent.refreshData());
                },
                icon: Icon(Icons.refresh_rounded))
          ],
        ),
        columns: [
          DataColumn2(
            label: Text("ID"),
          ),
          DataColumn2(
            label: Text("Area"),
          ),
          DataColumn2(label: Text("City")),
          DataColumn2(label: Text("Country")),
        ],
        rows: areas
            .map((e) => DataRow2(
                  cells: [
                    DataCell(Text(e.id.toString())),
                    DataCell(Text(e.areaName!)),
                    DataCell(Text(e.city != null
                        ? "${e.city!.id.toString()}. ${e.city!.cityName!}"
                        : "unasigned")),
                    DataCell(Text(e.country != null
                        ? "${e.country!.id.toString()}. ${e.country!.countryName}"
                        : "unasigned")),
                  ],
                ))
            .toList());
  }
}
