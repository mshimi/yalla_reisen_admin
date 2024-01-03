import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/buttons/elevated_button_with_icon.dart';

class FormButtons extends StatelessWidget {
  const FormButtons({
    super.key,
    required this.onCancel,
    required this.onSave,
  });
  final Function() onSave;
  final Function() onCancel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          ElevatedButtonWithIcon(
              iconData: Icons.check, titel: "save", onPressed: onSave),
          const Gap(24),
          ElevatedButtonWithIcon(
            iconData: Icons.close,
            titel: "cancel",
            onPressed: onCancel,
            backGroundColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
