import 'package:flutter/material.dart';
import 'package:iaminworld/constants.dart';
import 'chart.dart';
import 'storage_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding/2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                     ),
                     SizedBox(height: defaultPadding,),
                     StorageInfoCard(
                   amountofFiles: '1.3 GB',
                    numOffiles: 79 ,
                     svgSrc: 'assets/icons/media.svg',
                     title: 'Media Files',
                     ),
                     SizedBox(height: defaultPadding,),
                     StorageInfoCard(
                   amountofFiles: '1.3 GB',
                    numOffiles: 1329 ,
                     svgSrc: 'assets/icons/media_file.svg',
                     title: 'Others Files',
                     ),
                     SizedBox(height: defaultPadding,),
                     StorageInfoCard(
                   amountofFiles: '1.3 GB',
                    numOffiles: 1329 ,
                     svgSrc: 'assets/icons/unknown.svg',
                     title: 'Unknown Files',
                     ),
            ],
          ),
        )
        );
  }
}