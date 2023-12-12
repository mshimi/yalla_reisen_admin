import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:yalla_reisen_withspringboot/features/Data/presentation/pages.dart/data_page.dart';

class CustomDataTable extends StatelessWidget {
  const CustomDataTable(
      {super.key,
      required this.columns,
      required this.rows,
      this.pageHeader,
      this.headingRowheight = 40});

  final List<DataColumn2> columns;
  final List<DataRow2> rows;
  final TableHeader? pageHeader;
  final double headingRowheight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (pageHeader != null) pageHeader!,
            Container(
              height: (rows.length * 40) + 60,
              child: DataTable2(
                dataRowHeight: 40,
                isVerticalScrollBarVisible: true,
                isHorizontalScrollBarVisible: true,
                showBottomBorder: true,
                headingRowHeight: headingRowheight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                ),
                headingRowColor: MaterialStatePropertyAll(
                  Colors.blue[900],
                ),
                headingTextStyle: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                columns: columns,
                rows: rows,
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(top: 8),
              child: Text(
                "Total Rows: ${rows.length}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageHeaderActions extends StatelessWidget {
  const PageHeaderActions({
    super.key,
    required this.actions,
  });

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: actions == null ? 0 : 40,
      child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return actions![index];
          },
          separatorBuilder: (context, index) => SizedBox(
                width: 3,
              ),
          itemCount: actions != null ? actions!.length : 0),
    );
  }
}

class PageHeader extends StatelessWidget {
  const PageHeader({
    super.key,
    required this.header,
    required this.descreption,
    this.titelColor = Colors.black87,
    this.descreptionColor = const Color.fromARGB(255, 97, 97, 97),
  });

  final String header;
  final String descreption;
  final Color titelColor;
  final Color descreptionColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          header,
          style: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(color: titelColor),
        ),
        Text(
          descreption,
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: descreptionColor),
        )
      ],
    );
  }
}

class TableHeader extends PageHeader {
  const TableHeader(
      {super.key,
      required super.header,
      required super.descreption,
      this.actions,
      this.tableSearchBar});

  // final String header;
  // final String descreption;
  final List<Widget>? actions;
  final TableSearchBar? tableSearchBar;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    header,
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(color: Colors.black87),
                  ),
                  Text(
                    descreption,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Colors.grey[700]),
                  )
                ],
              ),
              PageHeaderActions(actions: actions),
            ],
          ),
          if (tableSearchBar != null) tableSearchBar!,
        ],
      ),
    );
  }
}

class TableSearchBar extends StatelessWidget {
  const TableSearchBar(
      {super.key,
      required this.textHint,
      required this.onSearch,
      required this.onSearchCancel,
      this.name = "searchKey",
      required this.formKey,
      required this.isFiltered});

  final void Function() onSearch;
  final void Function() onSearchCancel;
  final String textHint;
  final String name;
  final GlobalKey<FormBuilderState> formKey;
  final bool isFiltered;

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: formKey,
      child: FormBuilderTextField(
        decoration: InputDecoration(
            suffixIcon: IconButton(
              color: isFiltered ? Colors.red : null,
              onPressed: isFiltered ? onSearchCancel : onSearch,
              icon: Icon(isFiltered ? Icons.cancel : Icons.search),
            ),
            hintText: textHint),
        validator: (value) {
          if (value == null) {
            return "field can't be Embty";
          }
          return null;
        },
        name: name,
      ),
    );
  }
}
