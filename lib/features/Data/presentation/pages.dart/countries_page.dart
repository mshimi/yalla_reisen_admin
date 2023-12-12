import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:yalla_reisen_withspringboot/app/di.dart';
import 'package:yalla_reisen_withspringboot/app/router/router.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/data_table.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/loading_widget.dart';
import 'package:yalla_reisen_withspringboot/features/Data/Domain/repository/country_repository.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/country_model.dart';
import 'package:yalla_reisen_withspringboot/features/Data/presentation/blocs/countries_bloc/countries_bloc.dart';
import 'package:yalla_reisen_withspringboot/features/Data/presentation/pages.dart/data_page.dart';

class CountriesPage extends StatelessWidget {
  CountriesPage({super.key});
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CountriesBloc(countryRepositroy: getIt<CountryRepositroy>())
            ..add(const CountriesEvent.started()),
      child: BlocBuilder<CountriesBloc, CountriesState>(
        builder: (context, state) {
          return state.when(
              initial: () => const LoadingWidget(),
              successGotData: (countries, isFilterd) => _SuccessGotDataWidget(
                    countries: countries,
                    isFilterd: isFilterd,
                    formKey: _formKey,
                  ),
              failed: (apifailure) => FailedWidget());
        },
      ),
    );
  }
}

class FailedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("Some Thing went Wrong"),
          TextButton(
              onPressed: () {
                CountriesBloc countriesBloc =
                    BlocProvider.of<CountriesBloc>(context);
                countriesBloc.add(CountriesEvent.started());
              },
              child: Text("refresh"))
        ],
      ),
    );
  }
}

class _SuccessGotDataWidget extends StatelessWidget {
  _SuccessGotDataWidget(
      {super.key,
      required this.countries,
      required this.isFilterd,
      required this.formKey});
  final GlobalKey<FormBuilderState> formKey;

  final List<CountryModel> countries;
  final bool isFilterd;
  @override
  Widget build(BuildContext context) {
    CountriesBloc countriesBloc = BlocProvider.of(context);
    return CustomDataTable(
      pageHeader: TableHeader(
        header: "Countries",
        descreption: "All Destinations",
        actions: [
          ElevatedButton.icon(
              onPressed: () {
                AddCountryRoute().go(context);
              },
              icon: Icon(Icons.add_circle_outline),
              label: Text("Add Country")),
          IconButton(
              onPressed: () {
                countriesBloc.add(CountriesEvent.refresh());
              },
              icon: Icon(Icons.refresh))
        ],
        tableSearchBar: TableSearchBar(
            textHint: "Find Country",
            onSearch: () {
              if (formKey.currentState!.saveAndValidate()) {
                String value = formKey.currentState!.value["searchKey"];
                BlocProvider.of<CountriesBloc>(context)
                    .add(CountriesEvent.filter(keyWord: value));
              }
            },
            onSearchCancel: () {
              formKey.currentState!.reset();
              BlocProvider.of<CountriesBloc>(context)
                  .add(CountriesEvent.refresh());
            },
            formKey: formKey,
            isFiltered: isFilterd),
      ),
      columns: const [
        DataColumn2(label: Text("Id")),
        DataColumn2(label: Text("Country Name")),
        DataColumn2(label: Text("Country Code")),
      ],
      rows: countries
          .map(
            (e) => DataRow2(
              cells: [
                DataCell(Text(e.id.toString())),
                DataCell(Text(e.countryName)),
                DataCell(Text(e.countryCode)),
              ],
              onTap: () {
                CountryRoute(id: e.id).go(context);
              },
            ),
          )
          .toList(),
    );
  }
}
