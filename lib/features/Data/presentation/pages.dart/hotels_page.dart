import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:yalla_reisen_withspringboot/app/api/responses/page_request.dart';
import 'package:yalla_reisen_withspringboot/app/api/responses/page_response.dart';
import 'package:yalla_reisen_withspringboot/app/di.dart';
import 'package:yalla_reisen_withspringboot/app/router/router.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/buttons/custom_icon_button.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/buttons/elevated_button_with_icon.dart';
import 'package:yalla_reisen_withspringboot/app/widgets/pagination_table/pagination_table.dart';
import 'package:yalla_reisen_withspringboot/features/Data/Domain/repository/hotel_repository.dart';
import 'package:yalla_reisen_withspringboot/features/Data/presentation/blocs/hotels_bloc/hotels_bloc.dart';


class HotelsPage extends StatelessWidget {
  HotelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "All Hotels",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: const Color.fromARGB(255, 3, 27, 54)),
                  ),
                  //TODO Search Hotels
                  TextFormField(
                    decoration: InputDecoration(hintText: "Find Hotel"),
                  ),
                ],
              ),
              Row(
                children: [
                  ElevatedButtonWithIcon(
                      iconData: Icons.add,
                      titel: "New Hotel",
                      onPressed: () {
                        AddHotelRoute().go(context);
                      }),
                  Gap(10),
                  CustomIconButton(
                      onPressed: () {
                        BlocProvider.of<HotelsBloc>(context)
                            .add(HotelsEvent.started());
                      },
                      iconData: Icons.refresh),
                ],
              )
            ],
          ),
        ),
        HotelsTable(),
      ],
    );
  }

  SortDirection getSortDirection(bool ascending) {
    return ascending ? SortDirection.ASC : SortDirection.DESC;
  }
}

class HotelsTable extends StatelessWidget {
  const HotelsTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocProvider(
        create: (context) =>
            HotelsBloc(hotelRepository: getIt<HotelRepository>())
              ..add(const HotelsEvent.started()),
        child: BlocBuilder<HotelsBloc, HotelsState>(
          builder: (context, state) {
            PageResponse pageResponse = state.maybeMap(
              orElse: () => PageResponse.defaultPageResponse,
              hasData: (value) {
                return value.pageResponse;
              },
            );
            return PaginationTable(
                sortDirection: BlocProvider.of<HotelsBloc>(context)
                        .pagerequest
                        .sortDirection ??
                    SortDirection.ASC,
                // pageRequest: BlocProvider.of<HotelsBloc>(context).pagerequest,
                onSort: (v, x) {
                  BlocProvider.of<HotelsBloc>(context).add(
                      HotelsEvent.changeSortedBy(sortBy: v, sortDirection: x));
                },
                currentSortValue:
                    BlocProvider.of<HotelsBloc>(context).pagerequest.sortBy ??
                        "id",
                columns: BlocProvider.of<HotelsBloc>(context).columns,
                onPageSizeChanged: (pageSize) {
                  BlocProvider.of<HotelsBloc>(context)
                      .add(HotelsEvent.changePageSized(pageSize: pageSize));
                },
                rows: state.maybeMap(
                  orElse: () => [],
                  hasData: (value) => value.hotels
                      .map((e) => DataRow2(cells: [
                            DataCell(Text(e.id.toString())),
                            DataCell(Text(e.hotelName!)),
                            DataCell(Text(e.gCode == null ? "null" : e.gCode!)),
                            DataCell(Text(e.area!.areaName!)),
                            DataCell(Text(e.area!.city!.cityName!)),
                            DataCell(Text(e.area!.city!.countryName!)),
                            DataCell(CustomIconButton(
                              iconData: Icons.delete_forever_sharp,
                              color: Colors.red,
                              onPressed: () {
                                BlocProvider.of<HotelsBloc>(context).add(
                      HotelsEvent.deleteHotel(id: e.id!));
                              },
                            )),
                          ]))
                      .toList(),
                ),
                pageResponse: pageResponse,
                changePagenumber: (pagenumber) {
                  BlocProvider.of<HotelsBloc>(context).add(
                      HotelsEvent.changePageNumber(pageNumber: pagenumber));
                });
          },
        ),
      ),
    );
  }
}
