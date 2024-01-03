import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class CustomSearchDropDownWithoutTitel<T> extends StatelessWidget {
  CustomSearchDropDownWithoutTitel({
    super.key,
    required this.name,
    this.enabled = true,
    this.initialValue,
    this.validators,
    this.suffixIcon,
    this.width = 300,
    required this.itemBuilder,
    this.prefixText,
    required this.itemAsString,
    required this.getItems,
    this.formKey,
    this.onChanged,
    this.selectedItem,
    this.duration = const Duration(milliseconds: 500),
  });
  final double width;
  final Widget Function(T) itemBuilder;
  final Duration duration;
  final String name;
  final bool enabled;
  final String? prefixText;
  String? Function(T?)? validators;
  final T? initialValue;
  final Widget? suffixIcon;
  final GlobalKey<FormBuilderState>? formKey;
  String Function(T)? itemAsString;
  Future<List<T>> Function(String)? getItems;
  Function(T?)? onChanged;
  T? selectedItem;
  @override
  Widget build(BuildContext context) {
    return DropdownSearch<T>(
      selectedItem: selectedItem,
      dropdownDecoratorProps: DropDownDecoratorProps(
          dropdownSearchDecoration: InputDecoration(
              prefixIcon: prefixText != null
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Text(
                        "$prefixText",
                        style: TextStyle(
                            color: Colors.blue[800],
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  : null,
              prefixIconConstraints: prefixText != null
                  ? const BoxConstraints(minWidth: 0, minHeight: 0)
                  : null,
              border: OutlineInputBorder(),
              constraints: BoxConstraints.loose(Size.fromWidth(width)))),
      popupProps: PopupProps.menu(
          showSearchBox: true,
          searchDelay: duration,
          itemBuilder: (context, item, isSelected) {
            return itemBuilder(item);
          }),
      asyncItems: getItems,
      itemAsString: itemAsString,
      onChanged: onChanged ??
          (value) {
            if (value != null && formKey != null) {
              formKey!.currentState!.setInternalFieldValue(name, value);
            }
          },
      validator: validators ??
          FormBuilderValidators.compose([
            FormBuilderValidators.required(),
          ]),
    );
  }
}
