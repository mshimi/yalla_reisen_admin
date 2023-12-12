import 'package:data_table_2/data_table_2.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:yalla_reisen_withspringboot/app/di.dart';
import 'package:yalla_reisen_withspringboot/app/file_picker.dart';
import 'package:yalla_reisen_withspringboot/app/router/router.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/custom_text_formfield.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/data_table.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/dialogs/dialogs.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/elevated_button_with_icon.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/loading_widget.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/widget_form_builder.dart';
import 'package:yalla_reisen_withspringboot/features/Data/Domain/repository/city_repository.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/city_model.dart';
import 'package:yalla_reisen_withspringboot/features/Data/presentation/blocs/city_bloc/city_bloc.dart';
import 'package:yalla_reisen_withspringboot/features/Data/presentation/pages.dart/add_city_page.dart';
import 'package:yalla_reisen_withspringboot/features/Data/presentation/pages.dart/countries_page.dart';

class CityPage extends StatelessWidget {
  CityPage({super.key, required this.id});
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

  final int id;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CityBloc(
        cityRepository: getIt<CityRepository>(),
      )..add(CityEvent.started(id: id)),
      child: BlocListener<CityBloc, CityState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () => null,
            deleted: () {
              CitiesRoute().go(context);
            },
          );
        },
        child: BlocBuilder<CityBloc, CityState>(
          buildWhen: (previous, current) {
            return current.maybeWhen(
              orElse: () => true,
              deleted: () => false,
              imageUpdated: () => false,
            );
          },
          builder: (context, state) => state.maybeWhen(
            orElse: () => const Placeholder(),
            initial: () => const LoadingWidget(),
            success: (cityModel) => _SuccessGotData(
              cityModel: cityModel,
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
  _SuccessGotData({super.key, required this.cityModel, required this.formKey});

  GlobalKey<FormBuilderState> addAreaFormKey = GlobalKey<FormBuilderState>();

  final GlobalKey<FormBuilderState> formKey;
  final CityModel cityModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    CitiesRoute().go(context);
                  },
                  icon: Icon(Icons.arrow_back)),
              PageHeader(
                  header: cityModel.cityName!,
                  descreption: "id: ${cityModel.id}"),
            ],
          ),
          const Gap(12),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            constraints: const BoxConstraints.tightFor(height: 400),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(16)),
            child: _CityForm(
              formKey: formKey,
              cityModel: cityModel,
            ),
          ),
          const Gap(20),
          CustomDataTable(
              pageHeader: TableHeader(
                header: "Areas",
                descreption: "Areas saved in ${cityModel.cityName}",
                actions: [
                  ElevatedButtonWithIcon(
                      iconData: Icons.add,
                      titel: "Add Area",
                      onPressed: () {
                        Dialogs.showFormDialog(
                            confirmButtonText: "Save",
                            context: context,
                            confirmFunktion: () {},
                            cancelFunktion: () {
                              context.pop();
                            },
                            formKey: addAreaFormKey);
                      }),
                ],
              ),
              columns: const [
                DataColumn2(label: Text("id")),
                DataColumn2(label: Text("Area Name")),
              ],
              rows: cityModel.areas!
                  .map((e) => DataRow2(cells: [
                        DataCell(Text(e.id.toString())),
                        DataCell(Text(e.areaName!)),
                      ]))
                  .toList()),
          const Gap(20),
        ],
      ),
    );
  }
}

class _CityForm extends StatefulWidget {
  _CityForm({
    required GlobalKey<FormBuilderState> formKey,
    required this.cityModel,
  }) : _formKey = formKey;

  final CityModel cityModel;
  int? changedCountryId;
  final GlobalKey<FormBuilderState> _formKey;

  @override
  State<_CityForm> createState() => _CityFormState();
}

class _CityFormState extends State<_CityForm> {
  bool isChanged = false;

  @override
  Widget build(BuildContext context) {
    CityBloc cityBloc = BlocProvider.of<CityBloc>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: FormBuilderWidget(
            inistialValue: _initialValue(),
            onchange: () {
              widget._formKey.currentState!.saveAndValidate();

              if (mapEquals(
                  widget._formKey.currentState!.value, _initialValue())) {
                isChanged = false;
              } else {
                isChanged = true;
              }

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
                titel: "City Name",
                name: "cityName",
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
                suffixIcon: IconButton(
                    onPressed: isChanged &&
                            _initialValue()["cityName"] !=
                                widget._formKey.currentState!.value["cityName"]
                        ? () {
                            setState(() {
                              widget._formKey.currentState!..reset();
                            });
                          }
                        : null,
                    icon: const Icon(
                      Icons.restore_rounded,
                    )),
              ),
              CustomTextFormField(
                titel: "City Code",
                name: "cityCode",
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
                suffixIcon: IconButton(
                    onPressed: isChanged &&
                            _initialValue()["cityCode"] !=
                                widget._formKey.currentState!.value["cityCode"]
                        ? () => widget._formKey.currentState!..reset()
                        : null,
                    icon: Icon(Icons.restore_rounded)),
              ),
              CountriesDropDownMenu(
                  onChanged: (countryModel) {
                    if (countryModel != null) {
                      widget.changedCountryId = countryModel.id;
                    } else {
                      widget.changedCountryId = null;
                    }
                  },
                  countryId: widget.cityModel.countryId),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ElevatedButtonWithIcon(
                      iconData: Icons.check,
                      titel: "update",
                      onPressed: () {
                        //TODO: check if the values has been changed
                        if (widget._formKey.currentState!.saveAndValidate()) {
                          CityModel cityModel = CityModel(
                            id: widget.cityModel.id,
                            cityName:
                                widget._formKey.currentState!.value["cityName"],
                            cityCode:
                                widget._formKey.currentState!.value["cityCode"],
                            countryId: widget.changedCountryId ??
                                widget.cityModel.countryId,
                          );
                          BlocProvider.of<CityBloc>(context).add(
                              CityEvent.update(
                                  cityModel: cityModel,
                                  countryId: widget.changedCountryId ??
                                      widget.cityModel.countryId!));
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
                            cityBloc.add(
                                CityEvent.delete(id: widget.cityModel.id!));
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
          ),
        ),
        _Image(cityModel: widget.cityModel)
      ],
    );
  }

  Map<String, dynamic> _initialValue() {
    return {
      "id": widget.cityModel.id.toString(),
      "cityName": widget.cityModel.cityName,
      "cityCode": widget.cityModel.cityCode
    };
  }
}

class _Image extends StatelessWidget {
  _Image({super.key, required this.cityModel});

  CityModel cityModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CityBloc, CityState>(
      buildWhen: (previous, current) {
        return current.maybeWhen(
          orElse: () => false,
          success: (cityModel) => cityModel.imageId != this.cityModel.imageId,
        );
      },
      builder: (context, state) {
        return Flexible(
          child: Stack(
            fit: StackFit.expand,
            children: [
              if (cityModel.imageLink != null)
                Image.network(
                  cityModel.imageLink!,
                  fit: BoxFit.cover,
                ),
              if (cityModel.imageLink != null)
                Positioned(
                    top: 10,
                    right: 10,
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.change_circle_sharp),
                          onPressed: () {
                            _uploadPhoto(BlocProvider.of<CityBloc>(context));
                          },
                          tooltip: "Change Image",
                          color: Colors.blue[800],
                        ),
                        IconButton(
                          icon: Icon(Icons.delete_forever_rounded),
                          onPressed: () {
                            BlocProvider.of<CityBloc>(context).add(
                                CityEvent.deleteImage(
                                    cityImageId: cityModel.id!));
                          },
                          tooltip: "Delete",
                          color: Colors.red,
                        ),
                      ],
                    )),
              if (cityModel.imageLink == null)
                Center(
                  child: ElevatedButtonWithIcon(
                      iconData: Icons.upload,
                      titel: "upload Image",
                      onPressed: () {
                        _uploadPhoto(BlocProvider.of<CityBloc>(context));
                      }),
                )
            ],
          ),
        );
      },
    );
  }

  void _uploadPhoto(CityBloc cityBloc) async {
    var fileOrCancelled = await getIt<CustomFilePicker>().pickFile();

    MultipartFile? multipartFile = fileOrCancelled.fold((l) => null, (r) => r);

    if (multipartFile != null) {
      cityBloc.add(
        CityEvent.uploadImage(image: multipartFile, cityId: cityModel.id!),
      );
    }
  }
}
