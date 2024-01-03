import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class CustomFormFieldWithPrefixText extends StatelessWidget {
  const CustomFormFieldWithPrefixText(
      {super.key,
      required this.validators,
      required this.prefix,
      required this.name,
      this.initialValue,
      this.width = 300,
      this.inputDecoration = const OutlineInputBorder()});
  final List<String? Function(String?)> validators;
  final String prefix;
  final InputBorder inputDecoration;
  final String name;
  final double width;
  final String? initialValue;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: FormBuilderTextField(
        initialValue: initialValue,
        validator: FormBuilderValidators.compose(validators),
        decoration: InputDecoration(
          border: inputDecoration,
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Text(
              "$prefix",
              style: TextStyle(
                  color: Colors.blue[800], fontWeight: FontWeight.w600),
            ),
          ),
          prefixIconConstraints:
              const BoxConstraints(minWidth: 0, minHeight: 0),
        ),
        name: name,
      ),
    );
  }
}
