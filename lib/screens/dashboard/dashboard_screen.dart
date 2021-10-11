import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iaminworld/constants.dart';
import 'components/chart.dart';
import 'components/header.dart';

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
                children: [
                  Expanded(
                      flex: 5,
                      child: Container(
                        height: 500,
                        color: Colors.white,
                      )),
                  const SizedBox(width: defaultPadding),
                  Expanded(
                      flex: 2,
                      child: Container(
                          height: 500,
                          decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: const [
                               Text('Storage Details',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500)),
                                 SizedBox(height: defaultPadding,),
                                 Chart(),
                                 StorageInfoCard(
                                   amountofFiles: '1.3 GB',
                                    numOffiles: 1329 ,
                                     svgSrc: 'assets/icons/Documents.svg',
                                     title: 'Document Files',
                                     )
                            ],
                          )
                          )
                          )
                ],
              ),
            ])));
  }
}

class StorageInfoCard extends StatelessWidget {
  const StorageInfoCard({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.amountofFiles,
    required this.numOffiles,
  }) : super(key: key);

 final String title, svgSrc, amountofFiles;
 final int numOffiles;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(
            width: 2,
            color: primaryColor.withOpacity(0.15)),
            borderRadius: const BorderRadius.all(
              Radius.circular(defaultPadding),
            )
            ),
            child: Row(
              children: [
                 SizedBox(
                  height: 20,
                  width: 20,
                  child: SvgPicture.asset(svgSrc),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(
                          title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '$numOffiles files',
                        style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Colors.white70),)
                      ],
                    ),
                  )
                  ),
                  Text(amountofFiles)
              ],
            ),
                              );
  }
}
// class Belowchart extends StatelessWidget {
//   const Belowchart({
//     Key? key,
//     required this.title,
//     required this.icon,
//     required this.press,
//   }) : super(key: key);

//  final String title, icon;
//  final VoidCallback press;

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       onTap: press,
//       horizontalTitleGap: 0.0,
//        leading: SvgPicture.asset(
//          icon,
//        color: Colors.white),
//       title: Text(
//         title,
//         style: const TextStyle(color: Colors.white54)
//       ),
//     );
//   }
// }

