import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iaminworld/constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('DashBoard',
        style: Theme.of(context).textTheme.headline6,
        ),
        const Spacer(flex: 2,),
         const Expanded(
          child: SearchField()
          ),
          const ProfileCard()
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: defaultPadding),
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding * 0.75
      ),
      decoration: const BoxDecoration(color: secondaryColor,
      borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        children: const [
        Padding(padding: EdgeInsets.symmetric(
          horizontal: defaultPadding/2),

          child: Text('Vinay'),
        ),
        Icon(Icons.keyboard_arrow_down)
      ],
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
        hintText: 'Search',
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
            margin: const EdgeInsets.symmetric(horizontal: defaultPadding/2),
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