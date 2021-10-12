import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iaminworld/constants.dart';
import 'package:iaminworld/models/recentfiles.dart';
import 'package:iaminworld/responsive.dart';
import 'components/header.dart';
import 'components/my_files.dart';
import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(children: [
              const Header(),
              const SizedBox(height: defaultPadding),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 5,
                      child: Column(
                        children: [
                          const MyFiles(),
                          const SizedBox(height: defaultPadding),
                          Container(
                            padding: const EdgeInsets.all(defaultPadding),
                            decoration: const BoxDecoration(
                                color: secondaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Recent Files',
                                    style:
                                        Theme.of(context).textTheme.subtitle1),
                                SizedBox(
                                  width: double.infinity,
                                  child: DataTable(
                                      columns: const [
                                        DataColumn(
                                          label: Text('Files Name'),
                                        ),
                                        DataColumn(
                                          label: Text('Data'),
                                        ),
                                        DataColumn(
                                          label: Text('Size'),
                                        )
                                      ],
                                      rows: List.generate(
                                          demoRecentFiles.length,
                                          (index) => recentFileDataRow(
                                              demoRecentFiles[index]))),
                                )
                              ],
                            ),
                          ),
                          if (Responsive.isMobile(context))
                            const SizedBox(height: defaultPadding),
                          if (Responsive.isMobile(context))
                            const StorageDetails(),
                        ],
                      )),
                  if (!Responsive.isMobile(context))
                    const SizedBox(width: defaultPadding),
                  if (!Responsive.isMobile(context))
                    const Expanded(flex: 2, child: StorageDetails()),
                ],
              ),
            ])));
  }

  DataRow recentFileDataRow(RecentFile fileInfo) {
    return DataRow(cells: [
      DataCell(Row(
        children: [
          SvgPicture.asset(
            fileInfo.icon,
            height: 30,
            width: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text(fileInfo.title),
          )
        ],
      )),
       DataCell(Text(fileInfo.date)),
       DataCell(Text(fileInfo.size)),
    ]);
  }
}
