import 'package:flutter/material.dart';
import 'package:iaminworld/controlllers/menu_controller.dart';
import 'package:iaminworld/responsive.dart';
import 'package:provider/src/provider.dart';
import 'components/side_menu.dart';
import 'dashboard/dashboard_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: const SideMenu(),
     body: SafeArea(
       child: Row(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           if(Responsive.isDesktop(context))
            const Expanded(
             child: SideMenu()
               ),
                const Expanded(
                  flex: 5,
             child: DashboardScreen()
               ),
         ],
       ),
     ),
    );
    }
}

