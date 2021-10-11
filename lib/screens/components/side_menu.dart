import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const DrawerHeader(child: 
            Text('')),
            DrawerListTile(
             press: () {},
             svgSrc: 'assets/icons/menu_dashbord.svg',
             title: 'Dashboard'),
             DrawerListTile(
             press: () {},
             svgSrc: 'assets/icons/menu_store.svg',
             title: 'Store'),
             DrawerListTile(
             press: () {},
             svgSrc: 'assets/icons/menu_profile.svg',
             title: 'Profile'),
          ]
          ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

 final String title, svgSrc;
 final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
       leading: SvgPicture.asset(
         svgSrc,
       color: Colors.white),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white54)
      ),
    );
  }
}
