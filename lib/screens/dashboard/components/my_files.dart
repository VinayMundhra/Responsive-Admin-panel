import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iaminworld/constants.dart';
import 'package:iaminworld/models/myfiles.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'My Files',
            style: Theme.of(context).textTheme.subtitle1 ,
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding *1.5,
                  vertical: defaultPadding
                )
              ),
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('Add New')
                ),
                ],
        ),
        const SizedBox(height: defaultPadding),
        GridView.builder(
          shrinkWrap: true,
          itemCount: demoMyFiels.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: defaultPadding,
            crossAxisCount: 4
          ),
           itemBuilder: (ctx, index)=>
            FileInfoCard(info: demoMyFiels[index],))
           
      ]
      );    
  }
}

class FileInfoCard extends StatelessWidget {
  const FileInfoCard({
    Key? key, 
    required this.info,
  }) : super(key: key);

  final CloudStorageInfo info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding/2),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: info.color.withOpacity(0.1),
              borderRadius: const BorderRadius.all(Radius.circular(10))
            ),
          )
        ],
      ),
    );
  }
}