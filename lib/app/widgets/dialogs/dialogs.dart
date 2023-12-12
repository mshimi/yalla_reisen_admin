import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gap/gap.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/custom_text_formfield.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/data_table.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/elevated_button_with_icon.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/widget_form_builder.dart';

class Dialogs {
  static void showDialogWithTwoButtons({
    required BuildContext context,
    required String text,
    required void Function() confirmFunktion,
    String confirmButtonText = "confirm",
    String cancelButtonText = "cancel",
    required void Function() cancelFunktion,
  }) {
    showAdaptiveDialog(
        context: context,
        builder: (context) => Center(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue[800],
                    borderRadius: BorderRadius.circular(16)),
                alignment: Alignment.center,
                height: 175,
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FittedBox(
                      child: Text(
                        text,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButtonWithIcon(
                            backGroundColor: Colors.red,
                            iconData: Icons.check,
                            titel: confirmButtonText,
                            onPressed: confirmFunktion),
                        ElevatedButtonWithIcon(
                            textColor: const Color.fromARGB(255, 21, 101, 192),
                            backGroundColor: Colors.white,
                            iconData: Icons.cancel,
                            titel: cancelButtonText,
                            onPressed: cancelFunktion)
                      ],
                    )
                  ],
                ),
              ),
            ));
  }

  static void showFormDialog({
    required BuildContext context,
    required void Function() confirmFunktion,
    String confirmButtonText = "confirm",
    String cancelButtonText = "cancel",
    required void Function() cancelFunktion,
    required GlobalKey<FormBuilderState> formKey,
  }) {
    showDialog(
      context: context,
      builder: (context) => Material(
        type: MaterialType.transparency,
        child: Center(
          child: Container(
            height: 270,
            width: 500,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.blue[800],
                borderRadius: BorderRadius.circular(16)),

            // height: 500,
            // width: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const PageHeader(
                    header: "New Area", descreption: "Add Area to Database"),
                Gap(15),
                FormBuilderWidget(childeren: const [
                  FittedBox(
                    child: CustomTextFormField(
                        name: "areaName", titel: "Area Name"),
                  ),
                ], formKey: formKey),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButtonWithIcon(
                        backGroundColor: Colors.green,
                        iconData: Icons.check,
                        titel: confirmButtonText,
                        onPressed: confirmFunktion),
                    ElevatedButtonWithIcon(
                        textColor: const Color.fromARGB(255, 21, 101, 192),
                        backGroundColor: Colors.white,
                        iconData: Icons.cancel,
                        titel: cancelButtonText,
                        onPressed: cancelFunktion)
                  ],
                ),
              ],
            ),

            // Spacer(),
          ),
        ),
      ),
    );
  }
}
