import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:yalla_reisen_withspringboot/app/di.dart';
import 'package:yalla_reisen_withspringboot/app/router/router.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/data_table.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/loading_widget.dart';
import 'package:yalla_reisen_withspringboot/features/Data/Domain/repository/city_repository.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/city_model.dart';
import 'package:yalla_reisen_withspringboot/features/Data/presentation/blocs/cities_bloc/citites_bloc.dart';
import 'package:yalla_reisen_withspringboot/features/Data/presentation/pages.dart/countries_page.dart';

class CititesPage extends StatelessWidget {
  CititesPage({super.key});

  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CitiesBloc(cityRepository: getIt<CityRepository>())
        ..add(const CitiesEvent.started()),
      child: BlocBuilder<CitiesBloc, CitiesState>(
        builder: (context, state) {
          return state.when(
              initial: () => const LoadingWidget(),
              successGotData: (cities, isFilterd) => _SuccessGotData(
                    cities: cities,
                    formKey: _formKey,
                    isFilterd: isFilterd,
                  ),
              failed: (apifailure) => Placeholder());
        },
      ),
    );
  }
}

class _SuccessGotData extends StatelessWidget {
  _SuccessGotData(
      {super.key,
      required this.cities,
      required this.formKey,
      required this.isFilterd});

  final List<CityModel> cities;
  final GlobalKey<FormBuilderState> formKey;
  bool isFilterd;

  @override
  Widget build(BuildContext context) {
    CitiesBloc citiesBloc = BlocProvider.of<CitiesBloc>(context);
    return CustomDataTable(
      pageHeader: TableHeader(
        header: "Cities",
        descreption: "All Cities",
        actions: [
          ElevatedButton.icon(
              onPressed: () {
                AddCityRoute().go(context);
              },
              icon: Icon(Icons.add_circle_outline),
              label: Text("Add City")),
          IconButton(
              onPressed: () {
                citiesBloc.add(const CitiesEvent.refresh());
              },
              icon: Icon(Icons.refresh))
        ],
        tableSearchBar: TableSearchBar(
            textHint: "Find City",
            onSearch: () {
              if (formKey.currentState!.saveAndValidate()) {
                String value = formKey.currentState!.value["searchKey"];
                BlocProvider.of<CitiesBloc>(context)
                    .add(CitiesEvent.filter(keyWord: value));
              }
            },
            onSearchCancel: () {
              formKey.currentState!.reset();
              BlocProvider.of<CitiesBloc>(context).add(CitiesEvent.refresh());
            },
            formKey: formKey,
            isFiltered: isFilterd),
      ),
      columns: [
        DataColumn2(label: Text("ID")),
        DataColumn2(label: Text("Name")),
        DataColumn2(label: Text("Code")),
        DataColumn2(label: Text("Country")),
        DataColumn2(label: Text("Image")),
      ],
      rows: cities
          .map((e) => DataRow2(
                  onTap: () {
                    CityRoute(id: e.id!).go(context);
                  },
                  cells: [
                    DataCell(Text(e.id.toString())),
                    DataCell(Text(e.cityName!)),
                    DataCell(Text(e.cityCode!)),
                    DataCell(Text(e.countryName!)),
                    DataCell(e.imageLink != null
                        ? Image.network(e.imageLink!)
                        : Text("null")),
                  ]))
          .toList(),
    );
  }
}
