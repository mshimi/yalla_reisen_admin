import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:yalla_reisen_withspringboot/app/di.dart';
import 'package:yalla_reisen_withspringboot/app/router/router.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/custom_text_formfield.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/data_table.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/dialogs/dialogs.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/elevated_button_with_icon.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/loading_widget.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/widget_form_builder.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/city_model.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/country_model.dart';
import 'package:yalla_reisen_withspringboot/features/Data/presentation/blocs/country_bloc/country_bloc.dart';
import 'package:yalla_reisen_withspringboot/features/Data/presentation/pages.dart/countries_page.dart';

class CountryPage extends StatelessWidget {
  CountryPage({super.key, required this.id});

  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
  final int id;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CountryBloc(countryRepositroy: getIt())
        ..add(CountryEvent.started(id: id)),
      child: BlocListener<CountryBloc, CountryState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () => null,
            deleted: () {
              CountriesRoute().push(context);
            },
          );
        },
        child: BlocBuilder<CountryBloc, CountryState>(
          buildWhen: (previous, current) {
            return current.maybeWhen(
              orElse: () => true,
              deleted: () => false,
            );
          },
          builder: (context, state) => state.maybeWhen(
            orElse: () => Placeholder(),
            initial: () => LoadingWidget(),
            success: (countryModel) => _SuccessGotData(
              countryModel: countryModel,
              formKey: formKey,
            ),
            failed: (apiFailure) {
              return FailedWidget();
            },
          ),
        ),
      ),
    );
  }
}

class _SuccessGotData extends StatelessWidget {
  const _SuccessGotData(
      {super.key, required this.countryModel, required this.formKey});

  final GlobalKey<FormBuilderState> formKey;
  final CountryModel countryModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    CountriesRoute().go(context);
                  },
                  icon: Icon(Icons.arrow_back)),
              PageHeader(
                  header: countryModel.countryName,
                  descreption: "id: ${countryModel.id}"),
            ],
          ),
          Gap(12),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(16)),
            child: _CountryForm(
              formKey: formKey,
              countryModel: countryModel,
            ),
          ),
          Gap(20),
          Expanded(
            child: CustomDataTable(
                pageHeader: TableHeader(
                  header: "Cities",
                  descreption: "Cities saved in ${countryModel.countryName}",
                  actions: [
                    ElevatedButtonWithIcon(
                        iconData: Icons.add,
                        titel: "Add City",
                        onPressed: () {
                          AddCityRoute(countryId: countryModel.id).go(context);
                        }),
                  ],
                ),
                columns: [
                  DataColumn2(label: Text("id")),
                  DataColumn2(label: Text("Name")),
                  DataColumn2(
                    label: Text("Code"),
                  ),
                  DataColumn2(label: Text("Image")),
                ],
                rows: countryModel.cities!
                    .map((e) => DataRow2(
                            onTap: () {
                              CityRoute(id: e.id!).go(context);
                            },
                            cells: [
                              DataCell(Text(e!.id.toString())),
                              DataCell(Text(e.cityName!)),
                              DataCell(Text(e.cityCode!)),
                              DataCell(e.imageLink != null
                                  ? Image.network(e.imageLink!)
                                  : Text("null")),
                            ]))
                    .toList()),
          ),
          Gap(20),
        ],
      ),
    );
  }
}

class _CountryForm extends StatefulWidget {
  _CountryForm({
    required GlobalKey<FormBuilderState> formKey,
    required this.countryModel,
  }) : _formKey = formKey;

  final CountryModel countryModel;
  final GlobalKey<FormBuilderState> _formKey;

  @override
  State<_CountryForm> createState() => _CountryFormState();
}

class _CountryFormState extends State<_CountryForm> {
  bool isChanged = false;

  @override
  Widget build(BuildContext context) {
    CountryBloc countryBloc = BlocProvider.of<CountryBloc>(context);
    return FormBuilderWidget(
      inistialValue: _initialValue(),
      onchange: () {
        widget._formKey.currentState!.saveAndValidate();

        if (mapEquals(widget._formKey.currentState!.value, _initialValue())) {
          isChanged = false;
        } else {
          isChanged = true;
        }
        print(widget.countryModel.id);

        setState(() {});
      },
      formKey: widget._formKey,
      childeren: [
        const CustomTextFormField(
          titel: "Id",
          name: "id",
          enabled: false,
        ),
        CustomTextFormField(
          titel: "Country Name",
          name: "countryName",
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
          ]),
          suffixIcon: IconButton(
              onPressed: isChanged &&
                      _initialValue()["countryName"] !=
                          widget._formKey.currentState!.value["countryName"]
                  ? () {
                      setState(() {
                        widget._formKey.currentState!..reset();
                      });
                    }
                  : null,
              icon: Icon(
                Icons.restore_rounded,
              )),
        ),
        CustomTextFormField(
          titel: "Country Code",
          name: "countryCode",
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
          ]),
          suffixIcon: IconButton(
              onPressed: isChanged &&
                      _initialValue()["countryCode"] !=
                          widget._formKey.currentState!.value["countryCode"]
                  ? () => widget._formKey.currentState!..reset()
                  : null,
              icon: Icon(Icons.restore_rounded)),
        ),
        Row(
          children: [
            ElevatedButtonWithIcon(
                iconData: Icons.check,
                titel: "update",
                onPressed: () {
                  //TODO: check if the values has been changed
                  if (widget._formKey.currentState!.saveAndValidate()) {
                    CountryModel countryModel = CountryModel(
                        id: widget.countryModel.id,
                        countryName:
                            widget._formKey.currentState!.value["countryName"],
                        countryCode:
                            widget._formKey.currentState!.value["countryCode"],
                        cities: widget.countryModel.cities);
                    BlocProvider.of<CountryBloc>(context)
                        .add(CountryEvent.update(countryModel: countryModel));
                  }
                }),
            Gap(20),
            ElevatedButtonWithIcon(
              iconData: Icons.delete_forever_outlined,
              titel: "delete",
              onPressed: () {
                Dialogs.showDialogWithTwoButtons(
                    text: "please confirm Deleting Object forever",
                    context: context,
                    confirmFunktion: () {
                      countryBloc
                          .add(CountryEvent.delete(id: widget.countryModel.id));
                      context.pop();
                    },
                    cancelFunktion: () {
                      context.pop();
                    },
                    confirmButtonText: "delete");
              },
              backGroundColor: Colors.red,
            )
          ],
        ),
      ],
    );
  }

  Map<String, dynamic> _initialValue() {
    return {
      "id": widget.countryModel.id.toString(),
      "countryName": widget.countryModel.countryName,
      "countryCode": widget.countryModel.countryCode
    };
  }
}
