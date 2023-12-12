
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:yalla_reisen_withspringboot/app/api/failures.dart';

class CustomDropDownMenu<T> extends StatelessWidget {
  CustomDropDownMenu(
      {super.key,
      required this.titel,
      this.selectedItemId,
      required this.future,
      this.fallBackWidget = const CircularProgressIndicator(),
      required this.onChanged,
      required this.menuItem,
      required this.isSelected,
      this.validator});

  final String titel;
  int? selectedItemId;
  Widget fallBackWidget;
  Future<Either<ApiFailure, List<T>>> future;
  final String? Function(T?)? validator;
  bool Function(T) isSelected;

  void Function(T?)? onChanged;
  Widget Function(T?) menuItem;

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
        FutureBuilder<Either<ApiFailure, List<T>>>(
          builder: (context, asyncshot) {
            if (!asyncshot.hasData) {
              return fallBackWidget;
            } else {
              return DropdownButtonFormField<T>(
                  validator: validator,
                  decoration: InputDecoration(),
                  value: selectedItemId == null
                      ? null
                      : asyncshot.data!.fold(
                          (l) => null,
                          (r) => r.firstWhere(
                            (element) => isSelected(element),
                          ),
                        ),
                  items: asyncshot.data!.fold(
                      (l) => [],
                      (r) => r
                          .map((e) =>
                              DropdownMenuItem<T>(value: e, child: menuItem(e)))
                          .toList()),
                  onChanged: onChanged);
            }
          },
          future: future,
        ),
      ],
    );
  }
}
