import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
         children: [
           Expanded(
             child: Column(
               children: const [
                 DrawerHeader(child: 
                 Text('')),
                 ListTile(leading: Text(''),
                   title: Text('Dashboard'),
                 )
               ]
               )
               ),
                Expanded(
                  flex: 5,
             child: Container(
               color: Colors.blue ,
               )
               ),
         ],
       ),
     ),
    );
    }
}
