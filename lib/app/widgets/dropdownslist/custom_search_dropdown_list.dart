import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class CustomSearchDropDown<T> extends StatelessWidget {
  CustomSearchDropDown({
    super.key,
    required this.name,
    required this.titel,
    this.enabled = true,
    this.initialValue,
    this.validators,
    this.suffixIcon,
    required this.itemBuilder,
    required this.itemAsString,
    required this.getItems,
    required this.formKey,
    this.duration = const Duration(milliseconds: 500),
  });
  final Widget Function(T) itemBuilder;
  final Duration duration;
  final String titel;
  final String name;
  final bool enabled;
  String? Function(T?)? validators;
  final T? initialValue;
  final Widget? suffixIcon;
  final GlobalKey<FormBuilderState> formKey;
  String Function(T)? itemAsString;
  Future<List<T>> Function(String)? getItems;
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
        DropdownSearch<T>(
          popupProps: PopupProps.menu(
              showSearchBox: true,
              searchDelay: duration,
              itemBuilder: (context, item, isSelected) {
                return itemBuilder(item);
              }),
          asyncItems: getItems,
          itemAsString: itemAsString,
          onChanged: (value) {
            if (value != null) {
              formKey.currentState!.setInternalFieldValue(name, value);
            }
          },
          validator: validators ??
              FormBuilderValidators.compose([
                FormBuilderValidators.required(),
              ]),
        )
      ],
    );
  }
}
