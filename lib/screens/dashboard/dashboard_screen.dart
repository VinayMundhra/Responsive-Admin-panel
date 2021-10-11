import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iaminworld/constants.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Row(
              children: [
                Text('DashBoard',
                style: Theme.of(context).textTheme.headline6,
                ),
                const Spacer(),
                 const Expanded(
                  child: SearchField()),
                  Row(
                    children: [
                    Image.asset('assets/images/VinayMundhra.png'),
                    const Padding(padding: EdgeInsets.symmetric(
                      horizontal: defaultPadding/2),

                      child: Text('Vinay'),
                    )
                  ],
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: secondaryColor,
        filled: true,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        suffixIcon: InkWell(
          onTap: (){},
          child: Container(
            padding: const EdgeInsets.all(defaultPadding * 0.75),
            margin: const EdgeInsets.symmetric(horizontal: defaultPadding),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: primaryColor
            ),
            child: SvgPicture.asset('assets/icons/Search.svg'),
          ),
        )
      ),
    );
  }
}