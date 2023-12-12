import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormBuilderWidget extends StatelessWidget {
  const FormBuilderWidget({
    super.key,
    required this.childeren,
    required this.formKey,
    this.onchange,
    this.enabled = true,
    this.skipDisabled = false,
    this.clearValueOnUnregister = false,
    this.inistialValue = const {},
  });

  final List<Widget> childeren;
  final GlobalKey<FormBuilderState> formKey;
  final Function()? onchange;
  final bool skipDisabled;
  final bool enabled;
  final bool clearValueOnUnregister;
  final Map<String, dynamic> inistialValue;

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      initialValue: inistialValue,
      enabled: enabled,
      clearValueOnUnregister: enabled,
      skipDisabled: skipDisabled,
      onChanged: onchange,
      key: formKey,
      child: ListView.separated(
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return childeren[index];
        },
        itemCount: childeren.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 12,
          );
        },
      ),
    );
  }
}
