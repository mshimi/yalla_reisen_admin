import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class CustomDataColumn {
  final String column;
  final String? sortBy;
  bool isSorted;

  bool? isAsc;
  final ColumnSize columnSize;

  CustomDataColumn({
    required this.column,
    this.columnSize = ColumnSize.M,
    this.sortBy,
    this.isSorted = false,
    this.isAsc,
  });

  DataColumn2 getDataColumn(
      void Function(int, bool)? onSort) {
    return DataColumn2(
      label: Text(column),
      size: columnSize,
      onSort: sortBy == null ? null : onSort,
    );
  }
}
