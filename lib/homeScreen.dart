import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
class HomeScreen extends StatefulWidget {
  static String id='Home';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return
      DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
          floatingActionButton:
          FloatingActionButton(

            backgroundColor: Colors.teal,

            onPressed: (){


            },
            child: Icon(Icons.chat),


          ),
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text("w").tr(),
            actions: [
              Icon(Icons.search),
              PopupMenuButton(itemBuilder: (context)
              {
                return [
                  PopupMenuItem(child:
                  InkWell(
                      onTap: ()
                      {
                        context.locale=Locale('en',);
                      },
                      child: Text('English')),),
                  PopupMenuItem(child:
                  InkWell(
                      onTap: (){
                        context.locale=Locale('ar',);
                      },
                      child: Text('عربي'))),

                ];
              })

            ],
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Text("cam").tr(),
                Text('ch').tr(),
                Text('st').tr(),
                Text('ca').tr(),

              ],
            ),
          ),
        ),

      );
  }
}
