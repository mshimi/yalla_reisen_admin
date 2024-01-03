import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';
import 'package:yalla_reisen_withspringboot/app/di.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/buttons/elevated_button_with_icon.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/data_table.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/formfields/custom_formfield_with_prefixtext.dart';
import 'package:yalla_reisen_withspringboot/features/Transfer/data/models/transport_vehicle_dto.dart';
import 'package:yalla_reisen_withspringboot/features/Transfer/domain/repositories/transport_vehicle_repository.dart';

class VehiclePage extends StatelessWidget {
  const VehiclePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const PageHeader(header: "header", descreption: "descreption"),
        const Gap(12),
        _FormBox(),
        const Gap(12),
        FutureBuilder(
          initialData: List<TransportVehicleDTO>.empty(),
          future: getIt<TransportVehicleRepository>()
              .getAllTransferVehicle()
              .then((value) => value.getOrElse(() => <TransportVehicleDTO>[])),
          builder: (context, snapshot) {
            List<TransportVehicleDTO> data;
            if (snapshot.hasData) {
              data = snapshot.data!;
            } else {
              data = [];
            }
            return _VehiclesTable(rows: data);
          },
        ),
      ],
    );
  }
}

class _FormBox extends StatelessWidget {
  _FormBox({
    super.key,
  });

  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(8),
      ),
      child: FormBuilder(
        key: _formKey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Gap(8),
            CustomFormFieldWithPrefixText(validators: [
              FormBuilderValidators.required(errorText: "can't be Empty"),
            ], prefix: "Type", name: "type"),
            const Gap(12),
            CustomFormFieldWithPrefixText(
              validators: [
                FormBuilderValidators.required(errorText: "can't be Empty"),
                FormBuilderValidators.integer(errorText: "only numbers")
              ],
              width: 150,
              prefix: "Min. Pax",
              name: "minPassengers",
            ),
            const Gap(12),
            CustomFormFieldWithPrefixText(
              validators: [
                FormBuilderValidators.required(errorText: "can't be Empty"),
                FormBuilderValidators.integer(errorText: "only numbers")
              ],
              width: 150,
              prefix: "Max. Pax",
              name: "maxPassengers",
            ),
            const Spacer(),
            Row(
              children: [
                ElevatedButtonWithIcon(
                    backGroundColor: Colors.green,
                    iconData: Icons.check_circle,
                    titel: "save",
                    onPressed: () async {
                      if (_formKey.currentState!.saveAndValidate()) {
                        TransportVehicleDTO transportVehicleDTO =
                            TransportVehicleDTO(
                                type: _formKey.currentState!.value["type"],
                                minPassengers: int.parse(_formKey
                                    .currentState!.value["minPassengers"]),
                                maxPassengers: int.parse(_formKey
                                    .currentState!.value["maxPassengers"]));

                        await getIt<TransportVehicleRepository>()
                            .createTransferVehicle(
                                transportVehicleDTO: transportVehicleDTO);
                      }
                    }),
                const Gap(8),
                ElevatedButtonWithIcon(
                    backGroundColor: Colors.red,
                    iconData: Icons.cancel,
                    titel: "cancel",
                    onPressed: () {
                      _formKey.currentState!.reset();
                    })
              ],
            ),
            const Gap(8),
          ],
        ),
      ),
    );
  }
}

class _VehiclesTable extends StatelessWidget {
  const _VehiclesTable({super.key, required this.rows});

  final List<TransportVehicleDTO> rows;
  @override
  Widget build(BuildContext context) {
    return CustomDataTable(
        columns: const [
          DataColumn2(
              size: ColumnSize.S,
              label: Text(
                "id",
                textAlign: TextAlign.center,
              )),
          DataColumn2(
              label: Text(
            "Type",
            textAlign: TextAlign.center,
          )),
          DataColumn2(
              size: ColumnSize.S,
              label: Text(
                "Min. Pax",
                textAlign: TextAlign.center,
              )),
          DataColumn2(
              size: ColumnSize.S,
              label: Text(
                "Max. Pax",
                textAlign: TextAlign.center,
              )),
          DataColumn2(
              size: ColumnSize.L,
              label: Text(
                "Created at",
                textAlign: TextAlign.center,
              )),
          DataColumn2(
              size: ColumnSize.L,
              label: Text(
                "Update at",
                textAlign: TextAlign.center,
              )),
          DataColumn2(
              size: ColumnSize.M,
              label: Text(
                "Actions",
                textAlign: TextAlign.center,
              )),
        ],
        rows: rows
            .map(
              (e) => DataRow2(
                cells: [
                  DataCell(
                    Text(
                      e.id.toString(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  DataCell(
                    Text(
                      e.type,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  DataCell(
                    Text(
                      e.minPassengers.toString(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  DataCell(
                    Text(
                      e.maxPassengers.toString(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  DataCell(
                    Text(
                      e.createdAt ?? "null",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  DataCell(
                    Text(
                      e.updatedAt ?? "null",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  DataCell(
                    Text(
                      "Actions",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            )
            .toList());
  }
}
