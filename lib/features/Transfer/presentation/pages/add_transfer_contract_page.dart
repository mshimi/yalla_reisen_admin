import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';
import 'package:yalla_reisen_withspringboot/app/di.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/buttons/custom_icon_button.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/buttons/elevated_button_with_icon.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/dropdownslist/custom_search_dropdown_without_titel.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/formfields/custom_formfield_with_prefixtext.dart';
import 'package:yalla_reisen_withspringboot/features/Data/Domain/repository/city_repository.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/city_model.dart';
import 'package:yalla_reisen_withspringboot/features/Transfer/presentation/bloc/add_transfer_cubit/add_transfer_cubit.dart';

class AddTransferContractPage extends StatelessWidget {
  const AddTransferContractPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (conttext) => AddTransferCubit(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ChooseCityWidget(),
          _AddTransferPageBody(),
        ],
      ),
    );
  }
}

class _AddTransferPageBody extends StatelessWidget {
  const _AddTransferPageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AddTransferCubit addTransferCubit =
        BlocProvider.of<AddTransferCubit>(context);
    return BlocBuilder<AddTransferCubit, AddTransferState>(
      buildWhen: (previous, current) {
        return current.maybeWhen(
          orElse: () => false,
          chooseCityWidget: (isCityPositionsChanged) => true,
          pageBodyWidget: (citymodel1, cityModel2) => true,
        );
      },
      builder: (context, state) {
        if (addTransferCubit.cityModel1 == null ||
            addTransferCubit.cityModel1 == null) {
          return Container();
        }
        return Flexible(
          child: FormBuilder(
            key: addTransferCubit.formKey,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 12),
                  alignment: Alignment.center,
                  child: CustomFormFieldWithPrefixText(
                    name: "basePrice",
                    prefix: "Base Rate",
                    validators: [
                      FormBuilderValidators.required(),
                      (p) {
                        if (p != null && double.tryParse(p) != null) {
                          return null;
                        } else {
                          return "invalid Input";
                        }
                      }
                    ],
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        _TransferPageBodySide(
                            cityModel: addTransferCubit.cityModel1!),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          width: 1,
                          color: Colors.blue,
                        ),
                        _TransferPageBodySide(
                            cityModel: addTransferCubit.cityModel2!),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButtonWithIcon(
                      iconData: Icons.save,
                      titel: "Save",
                      onPressed: () {
                        if (addTransferCubit.formKey.currentState!
                            .saveAndValidate()) {
                          addTransferCubit.saveTransferRate();
                        }
                      }),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class _ChooseCityWidget extends StatelessWidget {
  const _ChooseCityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    AddTransferCubit addTransferCubit =
        BlocProvider.of<AddTransferCubit>(context);
    return BlocBuilder<AddTransferCubit, AddTransferState>(
      buildWhen: (previous, current) {
        return current.maybeMap(
          orElse: () => false,
          chooseCityWidget: (value) => true,
        );
      },
      builder: (context, state) {
        return Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: CustomSearchDropDownWithoutTitel<CityModel>(
                    width: 350,
                    prefixText: "Starting City",
                    name: "city1",
                    itemBuilder: (t) => _CityDropDownItemWidget(
                          cityModel: t,
                        ),
                    selectedItem: addTransferCubit.cityModel1,
                    onChanged: (p0) {
                      addTransferCubit.cityModel1 = p0;
                      addTransferCubit.showBodyWidget();
                      print(p0);
                    },
                    itemAsString: (t) => t.cityName!,
                    getItems: (p0) async {
                      var value = await getIt<CityRepository>()
                          .findCitiesByKeyWord(keyWord: p0);
                      return value.fold((l) => List.empty(), (r) => r);
                    },
                    formKey: GlobalKey<FormBuilderState>()),
              ),
              CustomIconButton(
                  onPressed: () {
                    addTransferCubit.changeCityPositions();
                  },
                  iconData: Icons.change_circle_outlined),
              Flexible(
                child: CustomSearchDropDownWithoutTitel<CityModel>(
                    width: 350,
                    prefixText: "Destination City",
                    name: "city2",
                    itemBuilder: (t) => _CityDropDownItemWidget(
                          cityModel: t,
                        ),
                    itemAsString: (t) => t.cityName!,
                    getItems: (p0) async {
                      var value = await getIt<CityRepository>()
                          .findCitiesByKeyWord(keyWord: p0);
                      return value.fold((l) => List.empty(), (r) => r);
                    },
                    selectedItem: addTransferCubit.cityModel2,
                    onChanged: (citymodel) {
                      print(citymodel);
                      addTransferCubit.cityModel2 = citymodel;
                      addTransferCubit.showBodyWidget();
                    },
                    formKey: GlobalKey<FormBuilderState>()),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _CityDropDownItemWidget extends StatelessWidget {
  const _CityDropDownItemWidget({super.key, required this.cityModel});

  final CityModel cityModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            cityModel.cityName!,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const Gap(3),
          Text(
            "${cityModel.countryName}",
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

class AreaTransferPrice {
  int id;
  String areaName;
  double price;

  AreaTransferPrice(
      {required this.areaName, required this.price, required this.id});

  late String _key;
}

class _TransferPageBodySide extends StatelessWidget {
  const _TransferPageBodySide({super.key, required this.cityModel});

  final CityModel cityModel;
  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Column(
      children: [
        ...cityModel.areas!
            .map((e) => Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.symmetric(
                    vertical: 8,
                  ),
                  child: Row(
                    children: [
                      Flexible(
                        child: Container(
                          width: 100,
                          child: Text(
                            e.areaName!,
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ),
                      ),
                      CustomFormFieldWithPrefixText(
                          initialValue: "0",
                          validators: [
                            FormBuilderValidators.required(),
                            (p) {
                              if (p != null && double.tryParse(p) != null) {
                                return null;
                              } else {
                                return "invalid Input";
                              }
                            }
                          ],
                          prefix: "+/-",
                          name: e.id.toString()),
                      Container()
                    ],
                  ),
                ))
            .toList()
      ],
    ));
  }
}
