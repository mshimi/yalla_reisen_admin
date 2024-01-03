import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';
import 'package:yalla_reisen_withspringboot/app/api/failures.dart';
import 'package:yalla_reisen_withspringboot/app/di.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/buttons/elevated_button_with_icon.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/custom_text_formfield.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/data_table.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/dropdownslist/custom_search_dropdown_list.dart';
import 'package:yalla_reisen_withspringboot/features/Data/Domain/repository/area_repository.dart';
import 'package:yalla_reisen_withspringboot/features/Data/Domain/repository/hotel_repository.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/adress.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/area_model.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/hotel_model.dart';

class AddHotelPage extends StatelessWidget {
  AddHotelPage({super.key});
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return FormBuilder(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const  PageHeader(
                header: "Add Hotel",
                descreption: "create hotel and save it to database"),
           const Gap(18),
            Text(
              "Information",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Colors.blue[900],
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline),
            ),
          const  Gap(8),
            CustomTextFormField(
              name: "hotelName",
              titel: "Hotel",
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
              ]),
            ),
           const Gap(8),
            CustomTextFormField(
              name: "gCode",
              titel: "IATA Code",
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
              ]),
            ),
           const Gap(8),
            CustomSearchDropDown<AreaModel>(
              name: "area",
              titel: "Area",
              itemAsString: (t) => t.areaName!,
              getItems: (v) async {
                return await getIt<AreaRepository>().getAllAreas().then(
                    (value) => value.fold(
                        (l) => throw const ApiFailure.BadRequestFailure(),
                        (r) => r));
              },
              formKey: _formKey,
              itemBuilder: (areaModel) {
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        areaModel.areaName!,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                     const Gap(3),
                      Text(
                        "${areaModel.city!.cityName}, ${areaModel.city!.countryName}",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: Colors.grey),
                      ),
                    ],
                  ),
                );
              },
            ),
          const  Gap(12),
            Text(
              "Address",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Colors.blue[900],
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline),
            ),
        const    CustomTextFormField(name: "street", titel: "Street"),
         const   Gap(8),
         const   CustomTextFormField(name: "houseNr", titel: "House Nr"),
         const   Gap(8),
         const   CustomTextFormField(name: "zipCode", titel: "Zipcode"),
         const   Gap(8),
         const   CustomTextFormField(name: "telephone", titel: "TelePhone"),
            ElevatedButtonWithIcon(
                iconData: Icons.check,
                titel: "save",
                onPressed: () async {
                  if (_formKey.currentState!.saveAndValidate()) {
                    var v = _formKey.currentState!.value;
                    AreaModel areaModel = v["area"];
                    HotelModel hotelModel = HotelModel(
                      // area: areaModel,
                      hotelName: v["hotelName"],
                      gCode: v["gCode"],
                    );

                    // ignore: unused_local_variable
                    var response = await getIt<HotelRepository>().saveHotel(
                        addressModel: AddressModel.fromJson(v),
                        parentId: areaModel.id!,
                        hotelModel: hotelModel);

                  }
                })
          ],
        ));
  }
}

class FormGroupWidget extends StatelessWidget {
  const FormGroupWidget({
    super.key,
    required GlobalKey<FormBuilderState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormBuilderState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      const  PageHeader(
            header: "Add Hotel",
            descreption: "create hotel and save it to database"),
      const  Gap(18),
        Stack(
          children: [
            Container(
              margin:const EdgeInsets.only(top: 8),
              padding:const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              foregroundDecoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
             const     CustomTextFormField(name: "hotelName", titel: "Hotel"),
               const   Gap(8),
                  CustomTextFormField(
                    name: "gCode",
                    titel: "IATA Code",
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                const  Gap(8),
                  CustomSearchDropDown<AreaModel>(
                      name: "area",
                      titel: "Area",
                      itemAsString: (t) => t.areaName!,
                      getItems: (v) async {
                        if (v.length > 3) {
                          return await getIt<AreaRepository>()
                              .searchAreaByKeyWord(keyword: v)
                              .then((value) => value.fold(
                                  (l) => throw const ApiFailure
                                      .BadRequestFailure(),
                                  (r) => r));
                        }
                        return [];
                      },
                      itemBuilder: (item) {
                        return const Text("10");
                      },
                      formKey: _formKey),
                  ElevatedButtonWithIcon(
                      iconData: Icons.check,
                      titel: "save",
                      onPressed: () {
                        _formKey.currentState!.saveAndValidate();
                      })
                ],
              ),
            ),
          const  Positioned(
                top: 0,
                left: 20,
                child: Text(
                  "Hotel Information",
                  style: TextStyle(
                      fontSize: 16,
                      backgroundColor: Colors.white,
                      color: Colors.red),
                )),
          ],
        ),
      const  Spacer(),
        ElevatedButtonWithIcon(
            iconData: Icons.check,
            titel: "save",
            onPressed: () {
              _formKey.currentState!.saveAndValidate();
            })
      ],
    );
  }
}
