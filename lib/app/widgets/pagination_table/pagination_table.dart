import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:yalla_reisen_withspringboot/app/api/responses/page_request.dart';
import 'package:yalla_reisen_withspringboot/app/api/responses/page_response.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/buttons/custom_icon_button.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/pagination_table/custom_data_column.dart';


part 'pagination_controller.dart';

class PaginationTable extends StatelessWidget {
  PaginationTable({
    required this.onSort,
    super.key,
    required this.columns,
    required this.onPageSizeChanged,
    required this.rows,
    required this.pageResponse,
    required this.changePagenumber,
    // required  this.pageRequest,
    this.currentSortValue,
    this.sortDirection = SortDirection.ASC,
    this.itemsPerPage = const [5, 10, 20, 30, 40, 50],
    this.ascArrow = const Icon(
      Icons.arrow_drop_up,
      size: 22,
      color: Colors.black,
    ),
    this.descArrow = const Icon(
      Icons.arrow_drop_down,
      size: 22,
      color: Colors.black,
    ),
  });

  final List<int> itemsPerPage;
  // final PageRequest pageRequest;
  final List<CustomDataColumn> columns;
  final List<DataRow2> rows;
  final PageResponse pageResponse;
  final void Function(int) changePagenumber;
  final void Function(String sortBy, SortDirection sortDirection)? onSort;
  final void Function(int?)? onPageSizeChanged;
  final Icon ascArrow;
  final Icon descArrow;
  final String? currentSortValue;
  SortDirection sortDirection;

  @override
  Widget build(BuildContext context) {
    final int pageNumber = (pageResponse.number + 1);
    return Column(
      children: [
        Expanded(
          child: DataTable2(
              sortAscending: false,
              sortColumnIndex: currentSortedColumnIndex() ?? 0,
              sortArrowIcon:
                  sortDirection.index == 0 ? ascArrow.icon! : descArrow.icon!,
              columns: columns
                  .map(
                    (e) => e.getDataColumn(
                      (index, asc) {
                        String sortBy = columns[index].sortBy!;
                        if (sortBy == currentSortValue) {
                          sortDirection == SortDirection.ASC
                              ? sortDirection = SortDirection.DESC
                              : sortDirection = SortDirection.ASC;
                        }

                        if (onSort != null) {
                          onSort!(sortBy, sortDirection);
                        }
                      },
                    ),
                  )
                  .toList(),
              showBottomBorder: true,
              headingRowColor: MaterialStatePropertyAll(
                Colors.blue[800],
              ),
              headingRowHeight: 40,
              headingTextStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              rows: rows),
        ),
        _PaginationController(
          itemsPerPage: itemsPerPage,
          firstItem: pageResponse.first
              ? 1
              : (pageResponse.number * pageResponse.size) + 1,
          lastItem: pageResponse.last
              ? pageResponse.totalElements
              : (pageNumber * pageResponse.size),
          totalElements: pageResponse.totalElements,
          numberOfElements: pageResponse.size,
          getNextPage: pageResponse.last
              ? null
              : () {
                  changePagenumber(pageResponse.number + 1);
                },
          getPreviusPage: pageResponse.first
              ? null
              : () {
                  changePagenumber(pageResponse.number - 1);
                },
          getFirstPage: pageResponse.first
              ? null
              : () {
                  changePagenumber(0);
                },
          getLastPage: pageResponse.last
              ? null
              : () {
                  changePagenumber(pageResponse.totalPages - 1);
                },
          onSelected: onPageSizeChanged,
        ),
      ],
    );
  }

  int? currentSortedColumnIndex() {
    CustomDataColumn? currentIndex = columns
        .where((element) =>
            element.sortBy != null && element.sortBy == currentSortValue)
        .firstOrNull;

    return currentIndex == null ? null : columns.indexOf(currentIndex);
  }
}
