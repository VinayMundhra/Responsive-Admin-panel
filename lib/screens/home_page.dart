import 'package:flutter/material.dart';
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
     body: SafeArea(
       child: Row(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: const [
            Expanded(
             child: SideMenu()
               ),
                Expanded(
                  flex: 5,
             child: DashboardScreen()
               ),
         ],
       ),
     ),
    );
    }
}

