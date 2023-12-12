import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:yalla_reisen_withspringboot/app/api/failures.dart';
import 'package:yalla_reisen_withspringboot/app/di.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/custom_dropdown_menu.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/custom_text_formfield.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/data_table.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/form_buttons.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/widget_form_builder.dart';
import 'package:yalla_reisen_withspringboot/features/Data/Domain/repository/city_repository.dart';
import 'package:yalla_reisen_withspringboot/features/Data/Domain/repository/country_repository.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/city_model.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/country_model.dart';
import 'package:yalla_reisen_withspringboot/features/Data/presentation/blocs/add_city_bloc/add_city_bloc.dart';

class AddCityPage extends StatelessWidget {
  AddCityPage({
    super.key,
    this.countryId,
  });

  int? countryId;
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddCityBloc(cityRepository: getIt<CityRepository>())
        ..add(AddCityEvent.started(countryId: countryId)),
      child: BlocConsumer<AddCityBloc, AddCityState>(
        listener: (context, state) {
          state.whenOrNull(
            saved: (id) {
              int countryId =
                  BlocProvider.of<AddCityBloc>(context).currentCountryId!;

              context.go("/data/countries/$countryId");
            },
          );
        },
        buildWhen: (previous, current) {
          return current.maybeWhen(
            orElse: () => true,
            saved: (r) => false,
          );
        },
        builder: (context, state) {
          return Container(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TableHeader(
                    header: "Add City",
                    descreption: "Add new City to the Database"),
                const Gap(12),
                Container(
                    height: 600,
                    child: _CityForm(
                      countryId: countryId,
                      formKey: _formKey,
                    )),
                const Spacer(),
                FormButtons(
                  onSave: () {
                    if (_formKey.currentState!.saveAndValidate()) {
                      Map<String, dynamic> values =
                          _formKey.currentState!.value;
                      CityModel cityModel = CityModel(
                          cityCode: values["cityCode"],
                          cityName: values["cityName"]);
                      BlocProvider.of<AddCityBloc>(context).add(
                          AddCityEvent.saveCity(
                              cityModel: cityModel,
                              countryId: BlocProvider.of<AddCityBloc>(context)
                                  .currentCountryId!));
                    }
                  },
                  onCancel: () {},
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class _CityForm extends StatelessWidget {
  _CityForm({super.key, required this.formKey, this.countryId});

  int? countryId;

  final GlobalKey<FormBuilderState> formKey;
  @override
  Widget build(BuildContext context) {
    var addBloc = BlocProvider.of<AddCityBloc>(context);
    return FormBuilderWidget(childeren: [
      CountriesDropDownMenu(
          onChanged: (countryModel) {
            if (countryModel != null) {
              BlocProvider.of<AddCityBloc>(context).currentCountryId =
                  countryModel.id;
            } else {
              addBloc.currentCountryId = null;
            }
          },
          countryId: countryId),
      CustomTextFormField(
        name: "cityName",
        titel: "City Name",
        validator: FormBuilderValidators.compose([
          FormBuilderValidators.required(),
        ]),
      ),
      CustomTextFormField(
        name: "cityCode",
        titel: "City Code",
        validator: FormBuilderValidators.compose([
          FormBuilderValidators.required(),
        ]),
      ),
    ], formKey: formKey);
  }
}

class CountriesDropDownMenu extends StatelessWidget {
  CountriesDropDownMenu({
    super.key,
    required this.onChanged,
    required this.countryId,
  });

  final int? countryId;
  void Function(CountryModel?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return CustomDropDownMenu<CountryModel>(
      titel: 'Country',
      future: getIt<CountryRepositroy>().getAllCountries(),
      menuItem: (e) => Text(e!.countryName),
      onChanged: onChanged,
      selectedItemId: countryId,
      isSelected: (countryModel) {
        return countryId == countryModel.id;
      },
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
      ]),
    );
  }
}

class CountryDropDownMenu extends StatelessWidget {
  CountryDropDownMenu({super.key, required this.titel, this.selectedItem});

  final String titel;
  int? selectedItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ConstrainedBox(
            constraints: const BoxConstraints(minWidth: 150, maxWidth: 300),
            child: Text(
              titel,
              style: Theme.of(context).textTheme.labelLarge,
            )),
        FutureBuilder<Either<ApiFailure, List<CountryModel>>>(
          builder: (context, asyncshot) {
            if (!asyncshot.hasData) {
              return CircularProgressIndicator();
            } else {
              return DropdownButtonFormField<CountryModel>(
                  decoration: InputDecoration(),
                  value: selectedItem == null
                      ? null
                      : asyncshot.data!.fold(
                          (l) => null,
                          (r) => r.firstWhere(
                              (element) => element.id == selectedItem)),
                  items: asyncshot.data!.fold(
                      (l) => [],
                      (r) => r
                          .map((e) => DropdownMenuItem<CountryModel>(
                              value: e, child: Text(e.countryName)))
                          .toList()),
                  onChanged: (i) {
                    selectedItem = i!.id;
                  });
            }
          },
          future: getIt<CountryRepositroy>().getAllCountries(),
        ),
      ],
    );
  }
}
