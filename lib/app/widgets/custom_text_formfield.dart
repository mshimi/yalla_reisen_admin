import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.name,
    required this.titel,
    this.enabled = true,
    this.initialValue,
    this.validator,
    this.suffixIcon,
    this.constraints = const BoxConstraints(minWidth: 150, maxWidth: 300),
  });

  final String titel;
  final String name;
  final bool enabled;
  final String? Function(String?)? validator;
  final String? initialValue;
  final Widget? suffixIcon;
  final BoxConstraints constraints;
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width * 0.3,
      child: Row(
        children: [
          ConstrainedBox(
              constraints: constraints,
              child: Text(
                titel,
                style: Theme.of(context).textTheme.labelLarge,
              )),
          FormBuilderTextField(
            initialValue: initialValue,
            validator: validator,
            enabled: enabled,
            name: name,
            decoration: InputDecoration(
                filled: true,
                suffixIcon: suffixIcon,
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white))),
          )
        ],
      ),
    );
  }
}
