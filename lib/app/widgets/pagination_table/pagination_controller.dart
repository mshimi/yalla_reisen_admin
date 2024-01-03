part of 'package:yalla_reisen_withspringboot/app/widgets/pagination_table/pagination_table.dart';

class _PaginationController extends StatelessWidget {
  _PaginationController({
    super.key,
    this.getFirstPage,
    this.getLastPage,
    this.getNextPage,
    this.getPreviusPage,
    required this.firstItem,
    required this.lastItem,
    required this.totalElements,
    required this.numberOfElements,
    required this.onSelected,
   required this.itemsPerPage ,
  });

  final dynamic Function()? getLastPage;
  final dynamic Function()? getNextPage;
  final dynamic Function()? getPreviusPage;
  final dynamic Function()? getFirstPage;
  final dynamic Function(int?)? onSelected;
  final int firstItem;
  final int lastItem;
  final int totalElements;
  final int numberOfElements;

  final List<int> itemsPerPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              Text("Items per page: "),
              FittedBox(
                fit: BoxFit.fitHeight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: DropdownMenu<int>(
                    onSelected: onSelected,
                    textStyle: TextStyle(fontSize: 24),
                    dropdownMenuEntries: itemsPerPage
                        .map((e) => DropdownMenuEntry<int>(
                            value: e, label: e.toString()))
                        .toList(),
                    initialSelection: numberOfElements,
                  ),
                ),
              )
            ],
          ),
          Gap(20),
          CustomIconButton(
            onPressed: getFirstPage,
            iconData: Icons.first_page,
          ),
          CustomIconButton(
            onPressed: getPreviusPage,
            iconData: Icons.arrow_back_ios,
            iconSize: 18,
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 6),
              child: Text("$firstItem - $lastItem of $totalElements")),
          CustomIconButton(
            onPressed: getNextPage,
            iconData: Icons.arrow_forward_ios,
            iconSize: 18,
          ),
          CustomIconButton(
            onPressed: getLastPage,
            iconData: Icons.last_page,
          ),
        ],
      ),
    );
  }
}
