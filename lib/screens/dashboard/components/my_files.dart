import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:iaminworld/constants.dart';
import 'package:iaminworld/models/myfiles.dart';

import 'file_info_card.dart';

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
          itemCount: demoMyFields.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: defaultPadding,
            crossAxisCount: 4,
            childAspectRatio: 1.4
          ),
           itemBuilder: (ctx, index)=>
            FileInfoCard(info: demoMyFields[index]))
           
      ]
      );    
  }
}

