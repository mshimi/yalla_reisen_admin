import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:yalla_reisen_withspringboot/app/di.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/buttons/elevated_button_with_icon.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/custom_text_formfield.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/data_table.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/widget_form_builder.dart';
import 'package:yalla_reisen_withspringboot/features/Data/data/entity/country_request.dart';
import 'package:yalla_reisen_withspringboot/features/Data/presentation/blocs/add_country_bloc/add_country_bloc.dart';

class AddCountryPage extends StatelessWidget {
  AddCountryPage({super.key});

  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddCountryBloc(countryRepositroy: getIt()),
      child: BlocConsumer<AddCountryBloc, AddCountryState>(
        listener: (context, state) {
          state.whenOrNull(
            loading: () {},
            saved: (id) {
              context.go("/data/countries/$id");
            },
          );
        },
        builder: (context, state) {
          return Container(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TableHeader(
                    header: "Add Country",
                    descreption: "Add new Country to the Database"),
                const Gap(12),
                Container(height: 600, child: CountryForm(formKey: _formKey)),
                const Spacer(),
                _FormButtons(formKey: _formKey)
              ],
            ),
          );
        },
      ),
    );
  }
}

class _FormButtons extends StatelessWidget {
  const _FormButtons({
    super.key,
    required GlobalKey<FormBuilderState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormBuilderState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          ElevatedButtonWithIcon(
              iconData: Icons.check,
              titel: "save",
              onPressed: () {
                if (_formKey.currentState!.saveAndValidate()) {
                  CountryRequest countryRequest =
                      CountryRequest.fromJson(_formKey.currentState!.value);

                  BlocProvider.of<AddCountryBloc>(context).add(
                      AddCountryEvent.saveCountry(
                          countryRequest: countryRequest));
                }
              }),
          const Gap(24),
          ElevatedButtonWithIcon(
            iconData: Icons.close,
            titel: "cancel",
            onPressed: () {
              context.pop();
            },
            backGroundColor: Colors.red,
          ),
        ],
      ),
    );
  }
}

class CountryForm extends StatelessWidget {
  const CountryForm({
    required GlobalKey<FormBuilderState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormBuilderState> _formKey;

  @override
  Widget build(BuildContext context) {
    return FormBuilderWidget(
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
        ),
        CustomTextFormField(
          titel: "Country Code",
          name: "countryCode",
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
          ]),
        ),
      ],
      formKey: _formKey,
    );
  }
}
